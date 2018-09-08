package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.dao.IFeedbackDAO;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Client;
import finalproj.beautybar.entity.Feedback;
import finalproj.beautybar.entity.Worker;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FeedbackService {

    private static final FeedbackService FEEDBACK_SERVICE = new FeedbackService();
    private FeedbackService(){}
    public static FeedbackService getFeedbackService(){
        return FEEDBACK_SERVICE;
    }

    public boolean createFeedback(String comment, int mark, String userEmail, String masterName) throws Exception {
        boolean isCreated = false;
        IFeedbackDAO feedbackDAO = DAOFactory.getFeedbackDAO();
        IClientDAO clientDAO = DAOFactory.getClientDAO();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        Client client = clientDAO.findByEmail(userEmail);
        Worker master = workerDAO.findEntityByName(masterName);
        Feedback feedback = new Feedback(client, master, comment, mark , new Date());
        isCreated = feedbackDAO.create(feedback);
        return isCreated;
    }

    public List<Feedback> getFeedbacks(int offset, int numberOfRows) throws Exception {
        IFeedbackDAO feedbackDAO = DAOFactory.getFeedbackDAO();
        List<Feedback>  list = feedbackDAO.findAll(offset, numberOfRows);
        return list;
    }

    public int getCountRows() throws Exception {
        IFeedbackDAO feedbackDAO = DAOFactory.getFeedbackDAO();
        return feedbackDAO.countRows();
    }
}
