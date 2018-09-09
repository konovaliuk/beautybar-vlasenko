package finalproj.beautybar.command;

import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseDateService;
import processing.data.JSONArray;
import processing.data.JSONObject;
//import org.codehaus.jettison.json.JSONArray;
//import org.codehaus.jettison.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class CommandSchedule implements ICommand{
    private static CommandSchedule instance;
    private CommandSchedule(){}

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        String masterName = request.getParameter(Parameter.MASTER.toString());
        session.setAttribute(Parameter.MASTER.toString(), masterName);
        List<Booking> bookingList = ChooseDateService.getChooseDateService().getAllBookingsByMasterAfterCurrentDate(masterName);
        List bookings = new ArrayList();
        JSONArray jsonArray = new JSONArray();
        for (int i = 0; i < bookingList.size(); i++) {

            JSONObject item = new JSONObject();

            DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm");
//            yourJsonObject.accumulate("yourDateVarible",dateFormat.format(new Date()));
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

            jsonArray.setJSONObject(i, item);
            bookings.add(item);

        }
        session.setAttribute(Parameter.BOOKINGS.toString(), bookings);
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
