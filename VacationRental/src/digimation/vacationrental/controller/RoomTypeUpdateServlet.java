package digimation.vacationrental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import digimation.vacationrental.bean.HotelTypeBean;
import digimation.vacationrental.bean.RoomTypeBean;
import digimation.vacationrental.dao.HotelTypeDAO;
import digimation.vacationrental.dao.RoomTypeDAO;
import digimation.vacationrental.util.ValidationUtils;

public class RoomTypeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String rtype = request.getParameter("txtRType");
		String rtid = request.getParameter("rtypeId");
		
		boolean isError=false;
		RoomTypeBean roomTypeBean = new RoomTypeBean();
		
		if(ValidationUtils.isEmpty(rtype)){
			
			request.setAttribute("rtype", "<font color=red>* Room type  name is required</font>");
			isError=true;
		}else{
			roomTypeBean.setType_name(rtype);
		}	
		
		if(isError){
			request.getRequestDispatcher("HotelTypeEdit.jsp").forward(request, response);
		}
		else{
		
			int RtypeId = Integer.parseInt(rtid);
			roomTypeBean.setRtype_id(RtypeId);
			System.out.println("Data ready for updation...");
			
			if(new RoomTypeDAO().update(roomTypeBean)){
				System.out.println("data updated into database...");
				request.getRequestDispatcher("roomTypeList").forward(request, response);
				
			}
			else{
				System.out.println("ooops some problem occur..");
			}
			
		}
	}

}
