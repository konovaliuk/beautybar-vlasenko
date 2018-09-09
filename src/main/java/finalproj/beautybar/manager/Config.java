/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package finalproj.beautybar.manager;

import java.util.ResourceBundle;


public class Config {

    private static Config instance;
    private ResourceBundle resource;
    private static final String BUNDLE_NAME = "config";
    public static final String DRIVER = "DRIVER";
    public static final String MAIN = "MAIN";
    public static final String INDEX = "INDEX";
    public static final String ERROR = "ERROR";
    public static final String LOGIN = "LOGIN";
    public static final String SIGNUP = "SIGNUP";
    public static final String SETTINGS = "SETTINGS";
    public static final String CHOOSESERVICE = "CHOOSESERVICE";
    public static final String CHOOSESERVICETYPE = "CHOOSESERVICETYPE";
    public static final String CHOOSEDATE = "CHOOSEDATE";
    public static final String CHOOSEMASTER = "CHOOSEMASTER";
    public static final String CHOOSETIME = "CHOOSETIME";
    public static final String RECORDBOOKING = "RECORDBOOKING";
    public static final String FEEDBACKMASTERS = "FEEDBACKMASTERS";
    public static final String WRITEFEEDBACK = "WRITEFEEDBACK";
    public static final String WORKERLOGIN = "WORKERLOGIN";
    public static final String MASTERS = "MASTERS";
    public static final String SCEDULE = "SCEDULE";

    public static Config getInstance() {
        if (instance == null) {
            instance = new Config();
            instance.resource = ResourceBundle.getBundle(BUNDLE_NAME);
        }
        return instance;
    }

    public String getProperty(String key) {
        return (String) resource.getObject(key);
    }
}
