package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Worker;

import java.sql.SQLException;
import java.util.List;

public interface IWorkerDAO {
    /**
     * Gets all Workers from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<Worker> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return Worker with the given id
     * @throws Exception
     */
    Worker findEntityById(Long id);

    /**
     * Gets entity from database by name
     *
     * @param name
     * @return Worker with the given name
     * @throws Exception
     */
    Worker findEntityByName(String name) throws Exception;

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
    Boolean create(Worker entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    Worker update(Worker entity) throws SQLException;

}
