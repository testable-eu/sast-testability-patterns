import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewCharacter extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1");
        char [] charArray =  new char[100] ;
        s.getChars(0,s.length(),charArray,0);
        String sout= "" ;
        for (int i=0 ; i<s.length(); i++) {
            char a1 = charArray[i] ;
            sout = sout+ a1 ;
        }
        response.getWriter().write(sout);
    }
}
