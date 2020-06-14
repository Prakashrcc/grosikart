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
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	
	
	@RequestMapping("/login")
public void login(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
		
		String phone=request.getParameter("uname");
		String password=request.getParameter("psw");
		
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
			
			System.out.println("Success");
			request.getRequestDispatcher("home").forward(request, response);
		}
		else {
			PrintWriter out=response.getWriter();
			System.out.println("Failure");
			out.println("<h1>yes i was here</h1>");
			out.println(" <script src=\"https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js\"></script>");
			out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>");
			out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( \"Welcome\" ,  \"Successfull!\" ,  \"error\" );");
			out.println("});");
			out.println("</script>");
			
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}
	
	
}
