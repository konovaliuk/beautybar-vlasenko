package finalproj.beautybar.service;

import finalproj.beautybar.dao.*;
import finalproj.beautybar.entity.*;

import java.sql.Timestamp;

public class RecordBookingService {

    private static final RecordBookingService RECORD_BOOKING_SERVICE = new RecordBookingService();

    private RecordBookingService(){}

    public static RecordBookingService getRecordBookingService(){
        return RECORD_BOOKING_SERVICE;
    }

    /**
     * Creates booking with selected values
     *
     * @param email
     * @param timestamp
     * @param master
     * @param serviceName
     * @return true if booking was created
     * @throws Exception
     */
    public boolean createBooking(String email, Timestamp timestamp, String master, String serviceName) throws Exception {
        boolean isCreated = false;

        IBookingDAO bookingDAO = DAOFactory.getBookingDAO();
        IClientDAO clientDAO = DAOFactory.getClientDAO();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        IServiceDAO serviceDAO = DAOFactory.getServiceDAO();
        IWorkerServiceDAO workerServiceDAO = DAOFactory.getWorkerServiceDAO();

        Client client = clientDAO.findByEmail(email);
        Worker worker = workerDAO.findEntityByName(master);
        Service service = serviceDAO.findEntityByName(serviceName);
        WorkerService workerService = workerServiceDAO.findEntityByWorkerIdAndServiceId(worker.getId(),service.getId());

        Booking booking = new Booking(client, timestamp, workerService, service.getDuration());
        isCreated = bookingDAO.create(booking);

        return isCreated;
    }
}
