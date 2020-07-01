package grosikart.packages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.protocol.Resultset;

@Controller
public class editPasswordController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	
	@RequestMapping("/editPassword")
public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
		
		String oldPassword=request.getParameter("user_old_password").toString();
		String newPassword=request.getParameter("user_new_password").toString();
		
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		String query1="select * from grosikart_users where user_id=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement pa=con.prepareStatement(query1);
		pa.setString(1, id);
		ResultSet rd=pa.executeQuery();
		rd.next();
		String user_pass=rd.getString(5);
		if(user_pass.equals(oldPassword)) {
			String query="update grosikart_users set user_password=?  where user_id=? ";
			System.out.println(query);
			
			PreparedStatement st=con.prepareStatement(query);
			
			st.setString(1, newPassword);
			st.setString(2, id);
			
			
			int count=st.executeUpdate();
			System.out.println(count);
			
			
			PrintWriter out=response.getWriter();
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( ' Success !' ,  'Password Changed Successfully' ,  'success' );");
			out.println("});");
			out.println("</script>");
			
			RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
			res.include(request, response);
			
			
		}
		else {
			PrintWriter out=response.getWriter();
			System.out.println("Failure");
			
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( ' Failed!' ,  'Please enter your old password correctly' ,  'error' );");
			out.println("});");
			out.println("</script>");
			
			RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
			res.include(request, response);
		}
		
		
		
		
		
		
		
		
		
		return "profile.jsp";
		
	}

}
