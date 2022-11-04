import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        try {
            String s = request.getParameter("t1");
            ScriptEngine runtime = null;
            StringBuffer javascript = null;
            HttpSession session = request.getSession();
            session.setAttribute("source", s);
            runtime = new ScriptEngineManager().getEngineByName("javascript");
            javascript = new StringBuffer();
            javascript.append("window.location='Foo.java'");
            String result = (String) runtime.eval(javascript.toString());
        } catch (Exception ex) {
        }
    }
}