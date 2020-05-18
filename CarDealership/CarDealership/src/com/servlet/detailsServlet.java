package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import car.Car;
/**
 * Servlet implementation class DetailsServlet
 */
@WebServlet("/detailsServlet")
public class detailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		String stockId = request.getParameter("stockId");

		
		int carIdNum = Integer.parseInt(stockId);
		for (int i = 0; i < cars.size(); i++) {
			if(carIdNum == cars.get(i).getStockId()) {
				session.setAttribute("carDetails", cars.get(i));
			}
		}
		
		RequestDispatcher rs = request.getRequestDispatcher("details.jsp");
		rs.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
