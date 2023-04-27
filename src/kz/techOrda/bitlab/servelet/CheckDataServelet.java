package kz.techOrda.bitlab.servelet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.techOrda.bitlab.db.DBConnection;
import kz.techOrda.bitlab.db.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value="/check_data")
public class CheckDataServelet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email_input");
        String password = request.getParameter("password_input");
        System.out.println(email);
        System.out.println(password);
        System.out.println();
        ArrayList<User> users = new ArrayList<>();
        users = DBConnection.getUser();

        if(email == null && password == null){
            request.getRequestDispatcher("/sign-in.jsp").forward(request, response);
        }else {
            for (int i = 0; i < users.size(); i++) {
                System.out.println(users.get(i).getPassword() + " " + users.get(i).getEmail());
                if (users.get(i).getPassword().equals(password) && users.get(i).getEmail().equals(email)) {
                    request.getRequestDispatcher("/user-profile.jsp").forward(request, response);
                } else {
                    request.setAttribute("find", true);
                    request.getRequestDispatcher("/sign-in.jsp").forward(request, response);

                }
            }
        }

    }
}
