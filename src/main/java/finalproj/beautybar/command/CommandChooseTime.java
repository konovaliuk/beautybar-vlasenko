package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseTimeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class CommandChooseTime implements ICommand {

    private static CommandChooseTime instance;

    private CommandChooseTime(){}

    public static CommandChooseTime getInstance(){
        if (instance == null){
            instance = new CommandChooseTime();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        ChooseTimeService chooseTimeService = ChooseTimeService.getChooseTimeService();

        String selectedDate = request.getParameter(Parameter.DATE.toString());
        Date date = new SimpleDateFormat("EEE MMM dd yyyy").parse(selectedDate);
        String master = (String) session.getAttribute(Parameter.MASTER.toString());

        List<Integer> freetimes = chooseTimeService.getFreeTimes(master, date);

        session.setAttribute(Parameter.FREETIMES.toString(), freetimes);
        session.setAttribute(Parameter.DATE.toString(), date);

        page = Config.getInstance().getProperty(Config.CHOOSETIME);

        return page;
    }
}
