import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //Desc: Initialize a collection, mutate the collection by putting the sink in it, assign the collection to a new collection, print the new collection.
        //source
        String s = request.getParameter("t1") ;
        String [] arr = {"haha"} ;
        arr[0]=s ;
        Object [] objArr;
        objArr = arr;
        response.getWriter().write(objArr[0].toString()) ; 
    }
}