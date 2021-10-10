package com.FinAssist.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.FinAssist.Dao.DataBase;
import com.FinAssist.Model.UserId;
import com.FinAssist.Model.wageid;

/**
 * Servlet implementation class WageServlet
 */
@WebServlet("/Wage")
public class WageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WageServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		wageid admin1 = new wageid();

		admin1.userId = request.getParameter("txtuserid");

		System.out.println("ADMIN:" + admin1);

		DataBase db = new DataBase();
		db.fetch1(admin1);

		response.setContentType("text/html");

		PrintWriter writer = response.getWriter();

		String html = "";
		if (true) {
			HttpSession session = request.getSession();
			session.setAttribute("keyUser1", admin1);

			html = "<html><body  style=\"background-color: #fefbd8\"><center>THANK YOU " +"<br><br>Your ID Is Saved With Us</br></br>"+"<br><h3>Your ID:</h3></b>"+admin1.userId+ "<br><br><b><h2>Success</h2></b></br></br>"
					+ "<a href='home1.jsp'><h1><b>Add Wages</b></h1></a>" + "<html><body><center>";
		}

		writer.println(html);
	}

}