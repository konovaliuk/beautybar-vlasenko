package finalproj.beautybar.command;

import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.entity.Feedback;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Paginator;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseDateService;
import finalproj.beautybar.service.FeedbackService;
import org.apache.log4j.Logger;
import processing.data.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class CommandSchedule implements ICommand{
    private static CommandSchedule instance;
    private CommandSchedule(){}
    private static final Logger logger = Logger.getLogger(CommandSchedule.class);


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        String masterName = request.getParameter(Parameter.MASTER.toString());
        session.setAttribute(Parameter.MASTER.toString(), masterName);
        List<Booking> bookingList = ChooseDateService.getChooseDateService().getAllBookingsByMasterAfterCurrentDate(masterName);
        List bookings = new ArrayList();
        for (int i = 0; i < bookingList.size(); i++) {

            JSONObject item = new JSONObject();

            DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm");
            String start = dateFormat.format(bookingList.get(i).getTimestamp());
            System.out.println(start);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(bookingList.get(i).getTimestamp());
            calendar.set(Calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY) + bookingList.get(i).getDuration());
            String end = dateFormat.format(calendar.getTime());
            System.out.println(end);
            item.setString("title", bookingList.get(i).getWorkerService().getService().getName());
            item.setString("start", start);
            item.setString("end", end);
            bookings.add(item);

        }
        logger.debug(session.getAttribute(Parameter.ROLEID.toString()) + " = roleId");
        if (session.getAttribute(Parameter.ROLEID.toString()).toString().equals("1")) {
            session.setAttribute(Parameter.BOOKINGS.toString(), bookings);
            int pageNumber = Integer.parseInt(request.getParameter(Parameter.PAGENUMBER.toString()));
            FeedbackService feedbackService = FeedbackService.getFeedbackService();
            int maxResult = 5;
            Paginator paginator = new Paginator(feedbackService.getCountRows(), pageNumber, maxResult, 4);
            List<Feedback> feedbacks = feedbackService.getFeedbacks(paginator.getFromRecordIndex(), maxResult);
            session.setAttribute(Parameter.FEEDBACKS.toString(), feedbacks);
            session.setAttribute(Parameter.PAGENUMBERS.toString(), paginator.getNavigationPages());
            session.setAttribute(Parameter.TOTALPAGES.toString(), paginator.getTotalPages());
        }
        page = Config.getInstance().getProperty(Config.SCEDULE);
        return page;
    }

    public static CommandSchedule getInstance() {
        if (instance == null){
            instance = new CommandSchedule();
        }
        return instance;
    }
}
