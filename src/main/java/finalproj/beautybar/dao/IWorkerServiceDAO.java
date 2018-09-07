package finalproj.beautybar.dao;

import finalproj.beautybar.entity.WorkerService;

import java.sql.SQLException;
import java.util.List;

public interface IWorkerServiceDAO {
    /**
     * Gets all WorkerServices from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<WorkerService> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return WorkerService with the given id
     * @throws Exception
     */
    WorkerService findEntityById(Long id) throws Exception;

    WorkerService findEntityByWorkerIdAndServiceId(Long workerId, Long serviceId) throws Exception;

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
    Boolean create(WorkerService entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    WorkerService update(WorkerService entity) throws SQLException;

}
