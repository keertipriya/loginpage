package loginpage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class loginpage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public loginpage() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Name");
        String password = request.getParameter("Pass");
        response.setContentType("text/html");
        if(username.equals("kk") && password.equals("kk")) {
            response.getWriter().println("<html><body><Marquee>Welcome!!!</marquee></body></html>");                
        } 
        else {                
            String message = "OOps!!! Invalid Username/Password";
            request.setAttribute("message", message);
            request.getRequestDispatcher("/login.jsp").forward(request, response);                
        }
    }
}