package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.entity.Worker;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WorkerDAOImpl extends AbstractDAO<Long, Worker> implements IWorkerDAO {

    protected final String SQL_INNER_JOIN = " INNER JOIN role ON worker.idrole=role.idrole";

    protected static final int COLUMN_WORKERID = 1;
    protected static final int COLUMN_ROLEID = 2;
    protected static final int COLUMN_NAME = 3;
    protected static final int COLUMN_EMAIL = 4;
    protected static final int COLUMN_PHONE = 5;
    protected static final int COLUMN_PASSWORD_HASH = 6;
    protected static final int COLUMN_SALT = 7;
    protected static final int COLUMN_ROLE_IDROLE = 8;
    protected static final int COLUMN_ROLE_NAME = 9;

    private static final WorkerDAOImpl workerDAO = new WorkerDAOImpl();

    private WorkerDAOImpl(){}

    public static WorkerDAOImpl getWorkerDAO(){
        return workerDAO;
    }

    @Override
    public List<Worker> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN, null);
    }

    @Override
    public Worker findEntityById(Long id)  {
        try {
            return  findOneByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN + " WHERE worker.IDWORKER = ?", new Object[]{id});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Worker findEntityByName(String name) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN + " WHERE worker.NAME = ?", new Object[]{name});
    }
    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDWORKER = ?";
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
    public Boolean create(Worker entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`idrole`, `name`, `email`, `phone`, `password_hash`, `salt`) VALUES (?, ?, ?, ?, ?, ?)";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getRole().getId(),
                    entity.getName(),entity.getEmail(),
                    entity.getPhone(), entity.getPasswordHash(),
                    entity.getSalt()};
            statement.executeUpdate();
            setParams(statement,sqlParams);
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }finally {
            close(connection);
        }
    }

    @Override
    public Worker update(Worker entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `idrole`= ?, `name`= ?, `email`= ?, `phone`, `password_hash`= ?, `salt`= ? WHERE `idworker`= ?";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getRole().getId(),
                    entity.getName(),entity.getEmail(),
                    entity.getPhone(), entity.getPasswordHash(),
                    entity.getSalt(), entity.getId()};
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
    public Worker findByEmail(String login) throws Exception {
        return findOneByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN + " WHERE EMAIL = ?", new Object[]{login});
    }

    @Override
    public String getTableName() {
        return "worker";
    }

    @Override
    protected List<Worker> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Worker> resultList = new ArrayList();
        while (resultSet.next()) {
            Worker entity = new Worker();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected void populateDto(Worker entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_WORKERID));
        entity.setRole(new Role(resultSet.getLong(COLUMN_ROLE_IDROLE),resultSet.getString(COLUMN_ROLE_NAME)));
        entity.setName(resultSet.getString(COLUMN_NAME));
        entity.setEmail(resultSet.getString(COLUMN_EMAIL));
        entity.setPhone(resultSet.getString(COLUMN_PHONE));
        entity.setPasswordHash(resultSet.getString(COLUMN_PASSWORD_HASH));
        entity.setSalt(resultSet.getString(COLUMN_SALT));
    }

    @Override
    protected Worker fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Worker entity = new Worker();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
