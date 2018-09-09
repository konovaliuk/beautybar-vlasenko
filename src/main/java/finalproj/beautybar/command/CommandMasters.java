package finalproj.beautybar.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandMasters implements ICommand{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        return null;
    }

    private static CommandMasters instance;
    private CommandMasters(){}
    public static CommandMasters getInstance() {
        if (instance == null){
            instance = new CommandMasters();
        }
        return instance;
    }
}
