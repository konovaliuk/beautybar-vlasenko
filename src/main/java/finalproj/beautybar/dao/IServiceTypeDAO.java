package finalproj.beautybar.dao;

import finalproj.beautybar.entity.ServiceType;

import java.sql.SQLException;
import java.util.List;

public interface IServiceTypeDAO {
    /**
     * Gets all ServiceTypes from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<ServiceType> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return ServiceType with the given id
     * @throws Exception
     */
    ServiceType findEntityById(Long id) throws Exception;

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
    Boolean create(ServiceType entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    ServiceType update(ServiceType entity) throws SQLException;
}
