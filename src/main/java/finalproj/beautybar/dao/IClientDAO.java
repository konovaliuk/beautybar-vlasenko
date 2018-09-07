package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Client;

import java.sql.SQLException;
import java.util.List;

public interface IClientDAO {

    /**
     * Gets all Clients from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<Client> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return Client with the given id
     * @throws Exception
     */
    Client findById(Long id) throws Exception;

    /**
     * Gets entity from database by email
     *
     * @param email
     * @return Client with the given email
     * @throws Exception
     */
    Client findByEmail(String email) throws Exception;

    /**
     * Deletes record with given id
     *
     * @param id
     * @return true if delete was succeful and false if wasn't
     * @throws Exception
     */
    Boolean delete(Long id) throws Exception;

    /**
     * Records <code>entity</code> to  database
     *
     * @param entity
     * @return true if create was succeful and false if wasn't
     * @throws Exception
     */
    Boolean create(Client entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    Client update(Client entity) throws SQLException;

}
