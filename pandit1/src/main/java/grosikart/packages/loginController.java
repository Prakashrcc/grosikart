package grosikart.packages;

import java.io.IOException;
import java.io.PrintWriter;
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
public class loginController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	
	@RequestMapping("/login")
public void login(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
		
		String phone=request.getParameter("uname");
		String password=request.getParameter("psw");
		HttpSession session=request.getSession();
		String query="select * from grosikart_users where user_phone=? and user_password=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement pr=con.prepareStatement(query);
		pr.setString(1, phone);
		pr.setString(2, password);
		ResultSet rd=pr.executeQuery();
		if(rd.next()) {
			HttpSession ses=request.getSession();
			ses.setAttribute("id", rd.getString(1));
			ses.setAttribute("name", rd.getString(2));
			ses.setAttribute("address", rd.getString(3));
			ses.setAttribute("phone", rd.getString(4));
			ses.setAttribute("email", rd.getString(8));
			
			System.out.println("Success");
			session.setAttribute("loginUser", "1");
			request.getRequestDispatcher("home").forward(request, response);
		}
		else {
			session.setAttribute("loginUser", "2");
			
		request.getRequestDispatcher("home").forward(request, response);
		}
		
	}
	
	
}
