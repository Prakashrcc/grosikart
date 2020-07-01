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
public class addCategoryController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/addCategory")
	public String register_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException,java.sql.SQLIntegrityConstraintViolationException, ServletException, IOException {
		
		String name=request.getParameter("category").toString();
		
		
		
		String query="insert into grosikart_category(category_name) values(?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, name);
		
		HttpSession session=request.getSession();
		
		try {
			int count=preparedStatement.executeUpdate();
			session.setAttribute("addCategory","1");
			}
			catch(Exception e) {
				session.setAttribute("addCategory","2");
				
			}
		
		
		return "addCategory.jsp";
		
		
	}
}
