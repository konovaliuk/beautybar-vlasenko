package finalproj.beautybar.command;

import finalproj.beautybar.entity.Feedback;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Paginator;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.FeedbackService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class CommandWriteFeedback implements ICommand{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        if (session.getAttribute(Parameter.MASTER.toString()) == null) {
            session.setAttribute(Parameter.MASTER.toString(), request.getParameter(Parameter.MASTER.toString()));
        }

        System.out.println(request.getParameter(Parameter.PAGENUMBER.toString()));
        int pageNumber =  Integer.parseInt(request.getParameter(Parameter.PAGENUMBER.toString()));
        FeedbackService feedbackService = FeedbackService.getFeedbackService();
        int maxResult = 5;
        Paginator paginator = new Paginator(feedbackService.getCountRows(), pageNumber, maxResult, 4);
        List<Feedback> feedbacks = feedbackService.getFeedbacks(paginator.getFromRecordIndex(),maxResult);
        session.setAttribute(Parameter.FEEDBACKS.toString(), feedbacks);
        session.setAttribute(Parameter.PAGENUMBERS.toString(), paginator.getNavigationPages());
        session.setAttribute(Parameter.TOTALPAGES.toString(), paginator.getTotalPages());


        page = Config.getInstance().getProperty(Config.WRITEFEEDBACK);
        return page;
    }

    private static CommandWriteFeedback instance;
    private CommandWriteFeedback(){}
    public static CommandWriteFeedback getInstance() {
        if (instance == null){
            instance = new CommandWriteFeedback();
        }
        return instance;
    }
}
