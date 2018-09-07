package finalproj.beautybar.controller;

import finalproj.beautybar.command.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

public class ControllerHelper {
    private static ControllerHelper instance = null;
    HashMap<String, ICommand> commands = new HashMap<String, ICommand>();

    private ControllerHelper() {
        commands.put("login",  CommandLogin.getInstance());
        commands.put("signup",  CommandSignUp.getInstance());
        commands.put("settings",  CommandSettings.getInstance());
        commands.put("chooseservicetype",  CommandChooseServiceType.getInstance());
        commands.put("chooseservice",  CommandChooseService.getInstance());
        commands.put("choosedate", CommandChooseDate.getInstance());
        commands.put("choosemaster",  CommandChooseMaster.getInstance());
        commands.put("choosetime",  CommandChooseTime.getInstance());
        commands.put("recordbooking",  CommandRecordBooking.getInstance());

    }

    public ICommand getCommand(HttpServletRequest request) {
        ICommand command = commands.get(request.getParameter("command"));
        if (command == null) {
            command = CommandMissing.getInstance();
        }
        return command;
    }

    public static ControllerHelper getInstance() {
        if (instance == null) {
            instance = new ControllerHelper();
        }
        return instance;
    }
}
