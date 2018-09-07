package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IBookingDAO;
import finalproj.beautybar.dao.ISceduleDAO;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.entity.Scedule;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.*;

import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.summingInt;

public class ChooseDateService {

    private static final ChooseDateService CHOOSE_DATE_SERVICE = new ChooseDateService();

    private ChooseDateService() {
    }

    public static ChooseDateService getChooseDateService() {
        return CHOOSE_DATE_SERVICE;
    }

    /**
     * Gets <code>Scedule</code> by master's name
     *
     * @param name
     * @return <code>Scedule</code> by given name
     * @throws Exception
     */
    public Scedule getSceduleByMasterName(String name) throws Exception {
        Scedule scedule = null;
        List<Scedule> sceduleList = new ArrayList<>();
        ISceduleDAO sceduleDAO = DAOFactory.getSceduleDAO();
        sceduleDAO.findAll().stream().filter((p) -> p.getWorker().getName().equals(name)).forEach(sceduleList::add);
        scedule = sceduleList.get(0);
        return scedule;
    }

    /**
     * Gets not working weekdays by master's name
     *
     * @param name
     * @return list of weekday's numbers
     * @throws Exception
     */
    public List<Integer> getDisabledDaysByMasterName(String name) throws Exception {
        List<Integer> list = new ArrayList<>();
        Scedule scedule = getSceduleByMasterName(name);

        if (scedule.getStartMon() == null) list.add(1);
        if (scedule.getStartTue() == null) list.add(2);
        if (scedule.getStartWed() == null) list.add(3);
        if (scedule.getStartThu() == null) list.add(4);
        if (scedule.getStartFri() == null) list.add(5);
        if (scedule.getStartSat() == null) list.add(6);
        if (scedule.getStartSun() == null) list.add(0);

        return list;
    }

    /**
     * Gets busy dates by master's name
     *
     * @param name
     * @return list of dates not havin free slots for booking
     * @throws Exception
     */
    public List<Date> getDisabledDatesByMasterName(String name) throws Exception {
        List<Date> dates = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();
        Map<Date, Integer> hoursPerDate = getHoursPerDateByMaster(name);
        Map<Integer, Integer> workingHours = getWorkingDaysAndHoursByMaster(name);

        hoursPerDate.forEach((k, v) -> {
            calendar.setTime(k);
            if ((workingHours.get(calendar.get(Calendar.DAY_OF_WEEK)) - v) < 1) dates.add(k);
        });
        dates.add(new Date());
        return dates;
    }

    /**
     * Gets all master's bookings after current date
     *
     * @param name
     * @return list of bookings after current date by given master
     * @throws Exception
     */
    public List<Booking> getAllBookingsByMasterAfterCurrentDate(String name) throws Exception {
        List<Booking> list = new ArrayList<>();
        IBookingDAO bookingDAO = DAOFactory.getBookingDAO();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();

        bookingDAO.findAll().stream()
                .filter(
                        (p) -> (workerDAO.findEntityById(p.getWorkerService().getWorker().getId()).getName().equals(name))
                                && ((p.getTimestamp().after(new Timestamp(new Date().getTime()))))
                )
                .forEach(list::add);
        return list;
    }

    /**
     * Gets working houts by start and end times
     *
     * @param startTime
     * @param endTime
     * @return amount of working hours
     */
    public int getWorkingHours(Time startTime, Time endTime) {
        return (int) ((endTime.getTime() - startTime.getTime()) / 3600000);
    }

    /**
     * Gets working hours per week day
     *
     * @param name
     * @return <code>Map</code> of working hours per week day
     * @throws Exception
     */
    private Map<Integer, Integer> getWorkingDaysAndHoursByMaster(String name) throws Exception {
        Map<Integer, Integer> map = new HashMap<>();
        Scedule scedule = getSceduleByMasterName(name);
        if (scedule.getStartSun() != null) {
            map.put(1, getWorkingHours(scedule.getStartSun(), scedule.getEndSun()));
        }
        if (scedule.getStartMon() != null) {
            map.put(2, getWorkingHours(scedule.getStartMon(), scedule.getEndMon()));
        }
        if (scedule.getStartTue() != null) {
            map.put(3, getWorkingHours(scedule.getStartTue(), scedule.getEndTue()));
        }
        if (scedule.getStartWed() != null) {
            map.put(4, getWorkingHours(scedule.getStartWed(), scedule.getEndWed()));
        }
        if (scedule.getStartThu() != null) {
            map.put(5, getWorkingHours(scedule.getStartThu(), scedule.getEndThu()));
        }
        if (scedule.getStartFri() != null) {
            map.put(6, getWorkingHours(scedule.getStartFri(), scedule.getEndFri()));
        }
        if (scedule.getStartSat() != null) {
            map.put(7, getWorkingHours(scedule.getStartSat(), scedule.getEndSat()));
        }
        return map;
    }

    /**
     * Gets amount of busy hours grouping by date
     *
     * @param name
     * @return <code>Map</code> of busy hours grouping by date
     * @throws Exception
     */
    private Map<Date, Integer> getHoursPerDateByMaster(String name) throws Exception {
        Map<Date, Integer> hoursPerDate = new HashMap<>();
        List<Booking> bookingList = getAllBookingsByMasterAfterCurrentDate(name);
        Calendar calendar = Calendar.getInstance();
        hoursPerDate = bookingList.stream().collect(groupingBy((p) -> {
            calendar.setTime(p.getTimestamp());
            calendar.set(Calendar.HOUR_OF_DAY, 0);
            calendar.set(Calendar.MINUTE, 0);
            calendar.set(Calendar.SECOND, 0);
            calendar.set(Calendar.MILLISECOND, 0);
            return calendar.getTime();
        }, summingInt(Booking::getDuration)));
        return hoursPerDate;
    }
}
