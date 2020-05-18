package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import car.Car;
/**
 * Servlet implementation class AddCarServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);

		 
		String make = request.getParameter("make");
		String model = request.getParameter("model");
		double yearMade = Double.parseDouble(request.getParameter("yearMade"));
		String mpg = request.getParameter("mpg");
		long mileage = Long.parseLong(request.getParameter("mileage"));
		String engine = request.getParameter("engine");
		String trans = request.getParameter("trans");
		boolean isUsed = Boolean.parseBoolean(request.getParameter("isUsed"));
		double price = Double.parseDouble(request.getParameter("price"));
		String picture = request.getParameter("picture");
		
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		if(cars == null) {
			cars = new ArrayList<Car>();
		}
	
		Car newCar = new Car(make, model, yearMade, mpg, mileage, engine, trans, isUsed, price);
		newCar.setPicture(picture);
		newCar.setStockId(cars.size() + 1);
		
		cars.add(newCar);
		session.setAttribute("cars", cars);
		
		RequestDispatcher rs = request.getRequestDispatcher("admin.jsp");
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
