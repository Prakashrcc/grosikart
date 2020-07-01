package grosikart.packages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class registerController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/register")
	public String register_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException,java.sql.SQLIntegrityConstraintViolationException {
		
		String name=request.getParameter("name").toString();
		String phone=request.getParameter("phone").toString();
		String password=request.getParameter("psw").toString();
		String email=request.getParameter("email").toString();
		HttpSession session=request.getSession();
		
		String query="insert into grosikart_users(user_name,user_password,user_phone,user_role,email,user_status) values(?,?,?,?,?,?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		preparedStatement.setString(3, phone);
		preparedStatement.setString(4, "1");
		preparedStatement.setString(5, email);
		preparedStatement.setString(6, "1");
	
		try {
		int count=preparedStatement.executeUpdate();
		session.setAttribute("registerUser","1");
		}
		catch(Exception e) {
			session.setAttribute("registerUser","2");
			
		}
		
		return "home";
		
		
	}

}
