package kz.techOrda.bitlab.servelet;

import com.sun.net.httpserver.HttpsServer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.techOrda.bitlab.db.DBConnection;
import kz.techOrda.bitlab.db.Item;
import kz.techOrda.bitlab.db.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value="/home.html")
public class HomeServelet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = DBConnection.getProduct();
        ArrayList<User> users = DBConnection.getUser();
        request.setAttribute("producty", items);
        request.setAttribute("usera", users);
        request.getRequestDispatcher("/sprint-task1.jsp").forward(request,response);
    }
}
