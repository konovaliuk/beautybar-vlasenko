package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.entity.Client;

public class SignUpService {

    private static final SignUpService signUpService = new SignUpService();

    private SignUpService(){}

    public static SignUpService getSignUpService(){
        return signUpService;
    }

    /**
     * Registers user
     *
     * @param name
     * @param email
     * @param phone
     * @param hashedPassword
     * @return true if signing up was succeful
     */
    public boolean signUp(String name, String email, String phone, String hashedPassword){
        IClientDAO clientDAO = DAOFactory.getClientDAO();

        Client client = new Client(name, email, phone, hashedPassword);
        boolean isOk = false;
        try {
            if (clientDAO.findByEmail(email) == null) {
                isOk = clientDAO.create(client);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isOk;
    }
}
