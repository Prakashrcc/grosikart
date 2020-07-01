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
public class addSubcategoryController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/addSubcategory")
	public String register_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException,java.sql.SQLIntegrityConstraintViolationException, ServletException, IOException {
		
		String categoryId=request.getParameter("category").toString();
		String subcategoryName=request.getParameter("subCategory").toString();
		String image=request.getParameter("subCategory_image").toString();
		
		
		
		String query="insert into grosikart_subcategory(category_id,subcategory_name,image) values(?,?,?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, categoryId);
		preparedStatement.setString(2, subcategoryName);
		preparedStatement.setString(3, image);
		
		HttpSession session=request.getSession();
		
		try {
			int count=preparedStatement.executeUpdate();
			session.setAttribute("addSubcategory","1");
			}
			catch(Exception e) {
				session.setAttribute("addSubcategory","2");
				
			}
		
		
		return "addSubcategory.jsp";
		
		
	}
}
