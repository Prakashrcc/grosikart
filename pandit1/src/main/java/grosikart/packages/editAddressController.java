package grosikart.packages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class editAddressController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	
	
	@RequestMapping("/editAddress")
public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
		
		String address=request.getParameter("user_house");
		
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		String query="update grosikart_users set user_address=?  where user_id=? ";
		System.out.println(query);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		st.setString(1, address);
		st.setString(2, id);
		
		
		int count=st.executeUpdate();
		System.out.println(count);
		
		session.setAttribute("address", address);
		
		
		
		return "profile.jsp";
		
	}

}
