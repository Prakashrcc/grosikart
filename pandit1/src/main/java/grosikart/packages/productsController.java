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
public class productsController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/products")
	public void func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		String category=request.getParameter("category").toString();
		String subcategory=request.getParameter("subcategory").toString();
		String category_id=request.getParameter("category_id").toString();
		String subcategory_id=request.getParameter("subcategory_id").toString();
		
		String query="select * from grosikart_products where subcategory_id="+subcategory_id;
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		
		
		ResultSet rd=st.executeQuery();
		request.setAttribute("category", category);
		request.setAttribute("subcategory", subcategory);
		
		int size =0;
		if (rd != null) 
		{
		  rd.last();    // moves cursor to the last row
		  size = rd.getRow(); // get row id 
		}
		rd.beforeFirst();
		
				

		request.setAttribute("rd", rd);
		request.setAttribute("size", size);
		request.getRequestDispatcher("products.jsp").forward(request, response);
		
	}

}
