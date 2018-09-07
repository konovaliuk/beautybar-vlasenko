package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.EmailSender;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.RecordBookingService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CommandRecordBooking implements ICommand{

    private static CommandRecordBooking instance;

    private CommandRecordBooking(){}

    public static CommandRecordBooking getInstance(){
        if (instance == null){
            instance = new CommandRecordBooking();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        RecordBookingService recordBookingService = RecordBookingService.getRecordBookingService();

        String selectedDate =  session.getAttribute(Parameter.DATE.toString()).toString();
        Date dateFromString = new SimpleDateFormat("EEE MMM dd hh:mm:ss zzzz yyyy").parse(selectedDate);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateFromString);
        String time = request.getParameter(Parameter.TIME.toString());
        calendar.set(Calendar.HOUR_OF_DAY, Integer.parseInt(time));
        Date resultDate = calendar.getTime();

        Timestamp timestamp = new Timestamp(resultDate.getTime());
        String email = session.getAttribute(Parameter.USER.toString()).toString();
        String master = (String) session.getAttribute(Parameter.MASTER.toString());
        String service = session.getAttribute(Parameter.SERVICE.toString()).toString();

        if (recordBookingService.createBooking(email, timestamp, master, service)) {
            EmailSender emailSender = EmailSender.getInstance();
            emailSender.sendEmail(email,timestamp,master);
            session.setAttribute(Parameter.TIMESTAMP.toString(),timestamp);
            page = Config.getInstance().getProperty(Config.RECORDBOOKING);
        } else {
            page = Config.getInstance().getProperty(Config.ERROR);
        }

        return page;
    }
}
