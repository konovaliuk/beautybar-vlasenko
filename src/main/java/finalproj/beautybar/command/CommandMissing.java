/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandMissing implements ICommand {

    private static CommandMissing instance;

    private CommandMissing(){}

    public static CommandMissing getInstance(){
        if (instance == null){
            instance = new CommandMissing();
        }
        return instance;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
        return Config.getInstance().getProperty(Config.ERROR);
    }
}
