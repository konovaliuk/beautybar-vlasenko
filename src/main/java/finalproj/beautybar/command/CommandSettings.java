package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommandSettings implements ICommand {

    private static CommandSettings instance;

    private CommandSettings(){}

    public static CommandSettings getInstance(){
        if (instance == null){
            instance = new CommandSettings();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession(false);
        if (session.getAttribute(Parameter.USER.toString()) == null){
            page = Config.getInstance().getProperty(Config.LOGIN);
        } else
            page = Config.getInstance().getProperty(Config.SETTINGS);
        return page;
    }
}
