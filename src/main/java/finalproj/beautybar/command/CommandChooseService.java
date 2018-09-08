package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseServiceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandChooseService implements ICommand {

    private static CommandChooseService instance;
    private CommandChooseService(){}
    public static CommandChooseService getInstance(){
        if (instance == null){
            instance = new CommandChooseService();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        List<String> list = new ArrayList<>();
        ChooseServiceService chooseServiceService = ChooseServiceService.getChooseServiceService();
        HttpSession session = request.getSession(true);

        String serviceType = request.getParameter(Parameter.SERVICETYPE.toString());

        chooseServiceService.getAllServices().stream()
                .filter((p) -> p.getServiceType().getName().equals(serviceType))
                .forEach((p) -> {
                    list.add(p.getName());
                    System.out.println(p);
                });
        session.setAttribute(Parameter.SERVICES.toString(), list);

        page = Config.getInstance().getProperty(Config.CHOOSESERVICE);

        return page;

    }
}
