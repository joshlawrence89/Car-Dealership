package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;


import car.Car;
import purchase.Purchase;
/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/purchaseServlet")
public class purchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public purchaseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		
		boolean goodBid = false;
		if (request.getParameter("customerBid") != null && !request.getParameter("customerBid").equals("")) {
		
			double customerBid = Double.parseDouble(request.getParameter("customerBid"));

			
			Car carToBuy = (Car) session.getAttribute("carToBuy");
			double minBid = carToBuy.getPrice() - carToBuy.getPrice() * .1;
			
			if (customerBid >= minBid) {
				goodBid = true;
			}
		}
		
		
		if (request.getParameter("customerBid") == null || request.getParameter("customerBid").equals("") || goodBid == true){
			
			
			ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
			Car carBought = (Car) session.getAttribute("carToBuy");
			
			for (Car car : cars) {
				if (car == carBought) {
					cars.remove(car);
					session.setAttribute("cars", cars);
					break;
				}
			}	
			
			
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");			
			Date dateSold = new Date();
			Purchase newPurchase = new Purchase(firstName, lastName, dateSold, carBought);
			
			
			ArrayList<Purchase> report = (ArrayList<Purchase>) session.getAttribute("report");
			
			if(report == null) {
				report = new ArrayList<Purchase>();
			}
			
			report.add(newPurchase);
			
			session.setAttribute("firstName", firstName);
					
			
			session.setAttribute("lowBid", false);
			
			session.setAttribute("report", report);
			
			
			RequestDispatcher rs = request.getRequestDispatcher("receipt.jsp");
			rs.forward(request, response);

		
		} else if (request.getParameter("customerBid") != null) {
			
			
			session.setAttribute("lowBid", true);
			RequestDispatcher rs = request.getRequestDispatcher("purchase.jsp");
			rs.forward(request, response);
			
		} 
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}