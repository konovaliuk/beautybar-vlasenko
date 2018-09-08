package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IFeedbackDAO;
import finalproj.beautybar.entity.Client;
import finalproj.beautybar.entity.Feedback;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.entity.Worker;
import finalproj.beautybar.logging.LoggerLoader;
import finalproj.beautybar.pool.ConnectionPool;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAOImpl extends AbstractDAO<Long, Feedback> implements IFeedbackDAO {

    protected final String SQL_INNER_JOIN = " INNER JOIN client ON feedback.idclient=client.idclient" +
            " INNER JOIN worker ON feedback.idmaster=worker.idworker  Order by feedback.date DESC ";
    protected final String SQL_LIMIT = " LIMIT ?, ?";


    protected static final int COLUMN_FEEDBACKID = 1;
    protected static final int COLUMN_CLIENTID = 2;
    protected static final int COLUMN_WORKERID = 3;
    protected static final int COLUMN_TEXT = 4;
    protected static final int COLUMN_MARK = 5;
    protected static final int COLUMN_DATE = 6;
    protected static final int COLUMN_CLIENT_CLIENTID = 7;
    protected static final int COLUMN_CLIENT_NAME = 8;
    protected static final int COLUMN_CLIENT_EMAIL = 9;
    protected static final int COLUMN_CLIENT_PHONE = 10;
    protected static final int COLUMN_CLIENT_PASSWORD_HASH = 11;
   // protected static final int COLUMN_CLIENT_SALT = 12;
    protected static final int COLUMN_WORKER_WORKERID = 12;
    protected static final int COLUMN_WORKER_ROLEID = 13;
    protected static final int COLUMN_WORKER_NAME = 14;
    protected static final int COLUMN_WORKER_EMAIL = 15;
    protected static final int COLUMN_WORKER_PHONE = 16;
    protected static final int COLUMN_WORKER_PASSWORD_HASH = 17;
    protected static final int COLUMN_WORKER_SALT = 18;

    private static final FeedbackDAOImpl feedbackDAO = new FeedbackDAOImpl();

    private FeedbackDAOImpl(){}

    public static FeedbackDAOImpl getFeedbackDAO(){
        return feedbackDAO;
    }

    @Override
    public List<Feedback> findAll(int offset, int numberOfRows) throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN + SQL_LIMIT, new Object[]{offset, numberOfRows});
    }

    @Override
    public int countRows() throws Exception {
        ResultSet rs = null;
        int numberOfRows = 0;
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_COUNT;
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            rs = statement.executeQuery();
            if (rs.next()) {
                numberOfRows = rs.getInt(1);
                statement.executeQuery();
            }
        } catch (Exception ex){
            ex.printStackTrace();
        }
        finally {
            close(connection);
        }
        return numberOfRows;
    }

    @Override
    public Feedback findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDFEEDBACK = ?" + SQL_INNER_JOIN, new Object[]{id});
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDFEEDBACK = ?";
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, id);
            statement.executeUpdate();
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }
        finally {
            close(connection);
        }
    }

    @Override
    public Boolean create(Feedback entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`idclient`, `idmaster`, `text`, `mark`, `date`) " +
                    "VALUES (?, ?, ?, ?, ?)";
            System.out.println("Executing " + SQL);
            Object[] sqlParams = new Object[]{entity.getClient().getId(), entity.getWorker().getId(),
                    entity.getText(), entity.getMark(), entity.getDate()};
            statement = connection.prepareStatement(SQL);
            setParams(statement, sqlParams);
            statement.executeUpdate();
            return true;

        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }finally {
            close(connection);
        }

    }

    @Override
    public Feedback update(Feedback entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `idclient`= ?, `idmaster`= ?, `text`= ?, " +
                    "`mark`= ?, `date`= ? WHERE `IDFEEDBACK`= ?";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getClient().getId(), entity.getWorker().getId(),
                    entity.getText(), entity.getMark(), entity.getDate(), entity.getId()};
            setParams(statement,sqlParams);
            statement.executeUpdate();
            return entity;
        } catch (Exception ex){
            ex.printStackTrace();
        }finally {
            close(connection);
        }
        return null;
    }

    @Override
    public String getTableName() {
        return "feedback";
    }

    @Override
    protected void populateDto(Feedback entity, ResultSet resultSet) throws SQLException {
        Client client = new Client();
        client.setId(resultSet.getLong(COLUMN_CLIENT_CLIENTID));
        client.setName(resultSet.getString(COLUMN_CLIENT_NAME));
        client.setEmail(resultSet.getString(COLUMN_CLIENT_EMAIL));
        client.setPhone(resultSet.getString(COLUMN_CLIENT_PHONE));
        client.setPasswordHash(resultSet.getString(COLUMN_CLIENT_PASSWORD_HASH));
        //client.setSalt(resultSet.getString(COLUMN_CLIENT_SALT));


        Worker worker = new Worker();
        worker.setId(resultSet.getLong(COLUMN_WORKER_WORKERID));
        worker.setRole(new Role(resultSet.getLong(COLUMN_WORKER_ROLEID)));
        worker.setName(resultSet.getString(COLUMN_WORKER_NAME));
        worker.setEmail(resultSet.getString(COLUMN_WORKER_EMAIL));
        worker.setPhone(resultSet.getString(COLUMN_WORKER_PHONE));
        worker.setPasswordHash(resultSet.getString(COLUMN_WORKER_PASSWORD_HASH));
        worker.setSalt(resultSet.getString(COLUMN_WORKER_SALT));


        entity.setId(resultSet.getLong(COLUMN_FEEDBACKID));
        entity.setClient(client);
        entity.setWorker(worker);
        entity.setText(resultSet.getString(COLUMN_TEXT));
        entity.setMark(resultSet.getInt(COLUMN_MARK));
        entity.setDate(resultSet.getDate(COLUMN_DATE));


    }

    @Override
    protected List<Feedback> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Feedback> resultList = new ArrayList();
        while (resultSet.next()) {
            Feedback entity = new Feedback();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected Feedback fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Feedback entity = new Feedback();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
