import finalproj.beautybar.command.CommandLogin;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.LoginService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import static org.powermock.api.mockito.PowerMockito.when;

@RunWith(PowerMockRunner.class)
@PrepareForTest(LoginService.class)
public class CommandLoginTest {

    @Mock
    HttpSession session;
    @Mock
    HttpServletRequest request;
    @Mock
    HttpServletResponse response;
    @Mock
    LoginService loginService;

    String login = null;
    String pass = null;
    CommandLogin commandLogin = null;

    @Before
    public void setUp() {
        when(request.getSession()).thenReturn(session);
        when(request.getParameter("login")).thenReturn(login);
        when(request.getParameter("password")).thenReturn(pass);
        PowerMockito.mockStatic(LoginService.class);
        when(LoginService.getLoginService()).thenReturn(loginService);
        commandLogin = CommandLogin.getInstance();
    }

    @Test
    public void testExecute() throws Exception {
        when(loginService.authentificate(login, pass)).thenReturn(true);
        when(session.getAttribute("currentquery")).thenReturn("command=login");
        String page = commandLogin.execute(request, response);
        verify(session, times(1)).setAttribute("user", login);
        assertEquals(request.getRequestURI() + "?command=login", page);
    }

    @Test
    public void testExecuteElse() throws Exception {
        when(loginService.authentificate(login, pass)).thenReturn(false);
        when(session.getAttribute("currentquery")).thenReturn("command=login");
        String page = commandLogin.execute(request, response);
        verify(session, never()).setAttribute("user", login);
        assertEquals(Config.getInstance().getProperty(Config.ERROR), page);
    }
}
