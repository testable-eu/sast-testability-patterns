import java.io.CharArrayReader;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharArrReader extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        char[] arr = s.toCharArray();
        CharArrayReader reader = new CharArrayReader(arr);
        int k = 0;
        String str = "";
        while ((k = reader.read()) != -1) {
            char ch = (char) k;
            str = str + ch;
        }
        response.getWriter().write(str) ; 
    }
}