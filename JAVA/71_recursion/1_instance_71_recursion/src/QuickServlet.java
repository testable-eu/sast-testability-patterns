import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;


public class QuickServlet extends HttpServlet {
    void myCopy(char s1[], char s2[], int index)
    {
        // copying each character from s1 to s2
        s2[index] = s1[index];

        // if string reach to end then stop
        if (s1[index] == '\0')
            return;

        // increase character index by one
        myCopy(s1, s2, index + 1);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        // Create WeakReference object using innerObject reference.
        char[] sChar = s.toCharArray() ;
        char[] s1 = new char[20];
        myCopy(sChar,s1,0);
        response.getWriter().write(sChar) ;
    }
}
