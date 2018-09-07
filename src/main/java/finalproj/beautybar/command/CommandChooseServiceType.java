package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseServiceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandChooseServiceType implements ICommand {

    private static CommandChooseServiceType instance;

    private CommandChooseServiceType(){}

    public static CommandChooseServiceType getInstance(){
        if (instance == null){
            instance = new CommandChooseServiceType();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession(true);
        ChooseServiceService chooseServiceService = ChooseServiceService.getChooseServiceService();

        session.setAttribute(Parameter.CURRENTQUERY.toString(), request.getQueryString());

        if (session.getAttribute(Parameter.USER.toString()) == null) {
            page = Config.getInstance().getProperty(Config.LOGIN);
        } else  {
            List<String> list = new ArrayList<>();
            chooseServiceService.getAllServiceTypes().forEach((p) -> {
                list.add(p.getName());
                System.out.println(p);
            });
            session.setAttribute(Parameter.SERVICES.toString(), list);

            page = Config.getInstance().getProperty(Config.CHOOSESERVICETYPE);
        }

        return page;
    }
}
