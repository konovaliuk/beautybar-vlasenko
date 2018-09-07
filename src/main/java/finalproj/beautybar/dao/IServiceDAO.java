package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Service;

import java.sql.SQLException;
import java.util.List;

public interface IServiceDAO {
    /**
     * Gets all Services from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<Service> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return Service with the given id
     * @throws Exception
     */
    Service findEntityById(Long id) throws Exception;

    /**
     * Gets entity from database by name
     *
     * @param name
     * @return Service with the given name
     * @throws Exception
     */
    Service findEntityByName(String name);

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
    Boolean create(Service entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    Service update(Service entity) throws SQLException;

}
