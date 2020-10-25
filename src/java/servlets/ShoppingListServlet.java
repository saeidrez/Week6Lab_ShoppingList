
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ShoppingListServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
        String check = request.getParameter("logout");

        if (check != null) {
            session.invalidate();
            request.setAttribute("message", "You have successfully logged out.");
        }
        getServletContext().getRequestDispatcher("/register.jsp")
                .forward(request, response);

       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        ArrayList<String> items = new ArrayList<>();
        
        String item = request.getParameter("item");
                
     
        if(action.equals("register")) {
        String username = request.getParameter("username");
        session.setAttribute("username", username);
        
        getServletContext().getRequestDispatcher("/shoppingList.jsp")
                    .forward(request, response);
        }
        if(action.equals("add")) {
            items.add(item);
            session.setAttribute("items", items);
            getServletContext().getRequestDispatcher("/shoppingList.jsp")
                    .forward(request, response);
            if(action.equals("delete")) {
               items.remove(item);
                  getServletContext().getRequestDispatcher("/shoppingList.jsp")
                    .forward(request, response);
            }
        
    }
    }
  

}
