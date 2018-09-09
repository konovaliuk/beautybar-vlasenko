package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Client;
import finalproj.beautybar.entity.Worker;
import org.mindrot.jbcrypt.BCrypt;

public class WorkerLoginService {

    private static final WorkerLoginService loginService = new WorkerLoginService();

    private WorkerLoginService(){}

    public static WorkerLoginService getLoginService() {
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
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        Worker worker = null;
        try {
            worker = workerDAO.findByEmail(login);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (worker != null) {
            return BCrypt.checkpw(password, worker.getPasswordHash());
        } else return false;
    }

}
