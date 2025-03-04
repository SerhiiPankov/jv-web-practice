package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;

@WebServlet(urlPatterns = "/index")
public class IndexController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("addDriverToCar", "/services/fix");
        request.setAttribute("createCar", "/cars/create");
        request.setAttribute("createDriver", "/drivers/create");
        request.setAttribute("createManufacturer", "/manufacturers/create");
        request.setAttribute("getAllDrivers", "/drivers/all");
        request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
    }
}
