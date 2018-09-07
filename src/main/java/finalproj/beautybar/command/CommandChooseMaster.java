package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseMasterService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class CommandChooseMaster implements ICommand {

    private static CommandChooseMaster instance;

    private CommandChooseMaster(){}

    public static CommandChooseMaster getInstance(){
        if (instance == null){
            instance = new CommandChooseMaster();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        ChooseMasterService chooseMasterService = ChooseMasterService.getChooseMasterService();

        String service = request.getParameter(Parameter.SERVICE.toString());

        List<String> list = chooseMasterService.getAllMastersNamesByService(service);

        session.setAttribute(Parameter.MASTERS.toString(), list);
        session.setAttribute(Parameter.SERVICE.toString(), service);

        page = Config.getInstance().getProperty(Config.CHOOSEMASTER);

        return page;
    }
}
