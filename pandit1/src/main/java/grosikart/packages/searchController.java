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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class searchController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/search")
	public void func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		
		String id=request.getParameter("product-id").toString();
		String product_name=request.getParameter("product-name").toString();
		String query="select * from grosikart_products where product_id=? union select * from grosikart_products where product_id !=?";
				
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, id);
		st.setString(2, id);
		
		
		
		ResultSet rd=st.executeQuery();
		
		request.setAttribute("category", " ");
		request.setAttribute("subcategory","Search Result for: "+product_name);
				

		request.setAttribute("rd", rd);
		request.setAttribute("size", " ");
		request.getRequestDispatcher("products.jsp").forward(request, response);
		
	}


}
