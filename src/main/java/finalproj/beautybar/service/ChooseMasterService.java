package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IServiceDAO;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.dao.IWorkerServiceDAO;
import finalproj.beautybar.entity.Worker;
import finalproj.beautybar.entity.WorkerService;

import java.util.ArrayList;
import java.util.List;

public class ChooseMasterService {

    private static final ChooseMasterService chooseMasterService = new ChooseMasterService();

    private ChooseMasterService(){}

    public static ChooseMasterService getChooseMasterService() {
        return chooseMasterService;
    }

    /**
     * Gets all <code>WorkerService</code>
     *
     * @return list of <code>WorkerService</code>
     */
    public List<WorkerService> getAllWorkerServices(){
        List<WorkerService> list = new ArrayList<>();
        IWorkerServiceDAO workerServiceDAO = DAOFactory.getWorkerServiceDAO();
        try {
            list = workerServiceDAO.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * Gets all masters providing given service
     *
     * @param service
     * @return list of masters by service
     * @throws Exception
     */
    public List<Worker> getAllMastersByService(String service) throws Exception{
        List<Worker> list = new ArrayList<>();
        IServiceDAO serviceDAO = DAOFactory.getServiceDAO();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        getAllWorkerServices().stream()
                .filter((p) -> serviceDAO.findEntityByName(service).getId().equals(p.getService().getId()))
                .forEach((p) -> {
            list.add(workerDAO.findEntityById(p.getWorker().getId()));
                    System.out.println(workerDAO.findEntityById(p.getWorker().getId()));
        });
        return list;
    }

    /**
     * Gets all master's names providing given service
     *
     * @param service
     * @return list of master's names
     * @throws Exception
     */
    public List<String> getAllMastersNamesByService(String service) throws Exception{
        List<String> list = new ArrayList<>();
        getAllMastersByService(service).forEach((p) ->
            list.add(p.getName())
        );
        return list;
    }

    /**
     * Gets all master's names providing given service
     *
     * @return list of master's names
     * @throws Exception
     */
    public List<String> getAllMastersNames() throws Exception{
        List<String> list = new ArrayList<>();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();

        workerDAO.findAll().stream().filter((p)-> p.getRole().getId()==2).forEach((p)->list.add(p.getName()));
        return list;
    }
}
