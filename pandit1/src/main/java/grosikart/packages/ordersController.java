package grosikart.packages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ordersController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/orders")
	public void func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		HttpSession session=request.getSession();
		String user_id=session.getAttribute("id").toString();
		
		String query="select * from grosikart_transactions where user_id="+user_id+" order by trans_id desc";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		
		
		ResultSet rd=st.executeQuery();
		
		
		int size =0;
		if (rd != null) 
		{
		  rd.last();    // moves cursor to the last row
		  size = rd.getRow(); // get row id 
		}
		rd.beforeFirst();
		
				

		request.setAttribute("rd", rd);
		request.setAttribute("size", size);
		request.getRequestDispatcher("orders.jsp").forward(request, response);
		
	}

}
