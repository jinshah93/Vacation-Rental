package digimation.vacationrental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import digimation.vacationrental.dao.BookingStatusDAO;

public class BookingStatusDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String bookingStatusId = request.getParameter("bookingStatusId");
			System.out.println("id:"+bookingStatusId);
			
			if(new BookingStatusDAO().delete(bookingStatusId)){
				System.out.println("data deleted..");
				request.getRequestDispatcher("bookingStatusList").forward(request, response);
			}
			else{
				System.out.println("data not deleted...");
			}
			
	
	}

}
