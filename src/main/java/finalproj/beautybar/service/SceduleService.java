package finalproj.beautybar.service;

public class SceduleService {

    private static final SceduleService signUpService = new SceduleService();
    private SceduleService(){}
    public static SceduleService getSceduleService(){
        return signUpService;
    }


}
