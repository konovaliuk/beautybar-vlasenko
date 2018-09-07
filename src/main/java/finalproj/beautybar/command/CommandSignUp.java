package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.SignUpService;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandSignUp implements ICommand{

    private static CommandSignUp instance;

    private CommandSignUp(){}

    public static CommandSignUp getInstance(){
        if (instance == null){
            instance = new CommandSignUp();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        String email = request.getParameter(Parameter.EMAIL.toString());
        String salt = BCrypt.gensalt();
        String hashedPassword = BCrypt.hashpw(request.getParameter(Parameter.PASSWORD.toString()), salt);
        String name = request.getParameter(Parameter.NAME.toString());
        String phone = request.getParameter(Parameter.PHONE.toString());

        SignUpService signUpService = SignUpService.getSignUpService();

        if (signUpService.signUp(name, email, phone, hashedPassword)){
            page = Config.getInstance().getProperty(Config.LOGIN);
        }else {
            request.setAttribute("error", Message.getInstance().getProperty(Message.SIGNUP_ERROR));
            page = Config.getInstance().getProperty(Config.ERROR);
        }

        return page;
    }
}
