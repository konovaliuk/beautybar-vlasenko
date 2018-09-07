package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.entity.Client;
import org.mindrot.jbcrypt.BCrypt;

public class LoginService {

    private static final LoginService loginService = new LoginService();

    private LoginService(){}

    public static LoginService getLoginService() {
        return loginService;
    }

    /**
     * Checks login and password
     *
     * @param login
     * @param password
     * @return true if user with such login and password exists
     */
    public boolean authentificate(String login, String password){
        IClientDAO clientDAO = DAOFactory.getClientDAO();
        Client client = null;
        try {
            client = clientDAO.findByEmail(login);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (client != null) {
            return BCrypt.checkpw(password, client.getPasswordHash());
        } else return false;
    }

}
