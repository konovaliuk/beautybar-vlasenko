package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.manager.Password;
import finalproj.beautybar.service.LoginService;

public class CommandLogin implements ICommand {

    private static CommandLogin instance;

    private CommandLogin(){}

    public static CommandLogin getInstance(){
        if (instance == null){
            instance = new CommandLogin();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        LoginService loginService = LoginService.getLoginService();

        String login = request.getParameter(Parameter.LOGIN.toString());
        String password = request.getParameter(Parameter.PASSWORD.toString());

        if (loginService.authentificate(login, password)) {
            session.setAttribute(Parameter.USER.toString(), login);
            if (session.getAttribute(Parameter.CURRENTQUERY.toString()) == null){
                page = Config.getInstance().getProperty(Config.INDEX);
            } else {
                page = request.getRequestURI() +       // "/servlettest"
                        "?" + session.getAttribute(Parameter.CURRENTQUERY.toString()).toString();
            }
        } else {
            request.setAttribute("error", Message.getInstance().getProperty(Message.LOGIN_ERROR));
            page = Config.getInstance().getProperty(Config.ERROR);
        }
        System.out.println(Password.hashPassword("admin"));

        return page;
    }
}
