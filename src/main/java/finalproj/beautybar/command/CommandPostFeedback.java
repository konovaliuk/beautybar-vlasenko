package finalproj.beautybar.command;

import finalproj.beautybar.entity.Feedback;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.FeedbackService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommandPostFeedback implements ICommand{

    private static CommandPostFeedback instance;
    private CommandPostFeedback(){}
    public static ICommand getInstance() {
        if (instance == null){
            instance = new CommandPostFeedback();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        FeedbackService feedbackService = FeedbackService.getFeedbackService();

        String userEmail = session.getAttribute(Parameter.USER.toString()).toString();
        String masterName = session.getAttribute(Parameter.MASTER.toString()).toString();
        String comment = request.getParameter(Parameter.COMMENT.toString());
        int mark = Integer.parseInt(request.getParameter(Parameter.MARK.toString()));
        if(feedbackService.createFeedback(comment, mark,userEmail,masterName)) {
            page = "/Servlettest?command=writefeedback&pagenumber=1";
        } else page = Config.getInstance().getProperty(Config.ERROR);
        return page;
    }
}
