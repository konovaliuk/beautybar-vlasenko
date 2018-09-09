package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseMasterService;
import finalproj.beautybar.service.WorkerLoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandWorkerLogin implements ICommand{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        WorkerLoginService workerLoginService = WorkerLoginService.getLoginService();
        ChooseMasterService chooseMasterService = ChooseMasterService.getChooseMasterService();

        String login = request.getParameter(Parameter.LOGIN.toString());
        String password = request.getParameter(Parameter.PASSWORD.toString());

        if (workerLoginService.authentificate(login, password)) {
            session.setAttribute(Parameter.USER.toString(), login);

            List<String> list = new ArrayList<>();
            list = chooseMasterService.getAllMastersNames();
            session.setAttribute(Parameter.MASTERS.toString(), list);

            page = Config.getInstance().getProperty(Config.MASTERS);

        } else {
            request.setAttribute("error", Message.getInstance().getProperty(Message.LOGIN_ERROR));
            page = Config.getInstance().getProperty(Config.ERROR);
        }
        return page;
    }

    private static CommandWorkerLogin instance;
    private CommandWorkerLogin(){}
    public static CommandWorkerLogin getInstance() {
        if (instance == null){
            instance = new CommandWorkerLogin();
        }
        return instance;
    }
}
