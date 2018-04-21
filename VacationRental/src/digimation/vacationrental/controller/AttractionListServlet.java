package digimation.vacationrental.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import digimation.vacationrental.bean.AmenitiesBean;
import digimation.vacationrental.bean.AttractionBean;
import digimation.vacationrental.dao.AmenitiesDAO;
import digimation.vacationrental.dao.AttractionDAO;

public class AttractionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<AttractionBean> listOfAttraction = new AttractionDAO().list();
		if(listOfAttraction!=null){
			request.setAttribute("listOfAttraction",listOfAttraction);
			request.getRequestDispatcher("AttractionList.jsp").forward(request, response);
		}
	

	
	}

}
