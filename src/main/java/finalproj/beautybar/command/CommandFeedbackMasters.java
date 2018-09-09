package finalproj.beautybar.command;

import finalproj.beautybar.logging.MyErrorHandler;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseMasterService;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandFeedbackMasters implements ICommand{

    private static CommandFeedbackMasters instance;

    private static final Logger logger = Logger.getLogger(CommandFeedbackMasters.class);

    private CommandFeedbackMasters(){}
    public static CommandFeedbackMasters getInstance() {
        if (instance == null){
            instance = new CommandFeedbackMasters();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {

        logger.info("test " + System.currentTimeMillis());

        String page = null;
        HttpSession session = request.getSession(true);
        ChooseMasterService chooseMasterService = ChooseMasterService.getChooseMasterService();

        session.setAttribute(Parameter.CURRENTQUERY.toString(), request.getQueryString());

        if (session.getAttribute(Parameter.USER.toString()) == null) {
            page = Config.getInstance().getProperty(Config.LOGIN);
        } else  {
            List<String> list = chooseMasterService.getAllMastersNames();
            session.setAttribute(Parameter.MASTERS.toString(), list);

            page = Config.getInstance().getProperty(Config.FEEDBACKMASTERS);
        }

        return page;
    }
}
