package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Feedback;

import java.sql.SQLException;
import java.util.List;

public interface IFeedbackDAO {

    /**
     * Gets all Bookings from database
     *
     * @return List of all bookings
     * @throws Exception
     */
    List<Feedback> findAll() throws Exception;

    /**
     * Gets entity from database by id
     *
     * @param id
     * @return Booking with the given id
     * @throws Exception
     */
    Feedback findEntityById(Long id) throws Exception;

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
    Boolean create(Feedback entity) throws Exception;

    /**
     * Updates record with given <code>entity</code>
     *
     * @param entity
     * @return updated <code>entity</code>
     * @throws SQLException
     */
    Feedback update(Feedback entity) throws SQLException;

}
