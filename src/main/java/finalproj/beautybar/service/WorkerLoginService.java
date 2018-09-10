package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Worker;
import org.apache.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;

public class WorkerLoginService {

    private static final WorkerLoginService loginService = new WorkerLoginService();

    private WorkerLoginService(){}

    public static WorkerLoginService getLoginService() {
        return loginService;
    }

    private static final Logger logger = Logger.getLogger(WorkerLoginService.class);

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

    public Long getRole(String login){
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        Worker worker = null;
        try {
            worker = workerDAO.findByEmail(login);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(login + ": no such login found " + System.currentTimeMillis());
        }
        return worker.getRole().getId();


    }

}
