package grosikart.packages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class addProductController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/addProduct")
	public String register_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException,java.sql.SQLIntegrityConstraintViolationException, ServletException, IOException {
		
		String name=request.getParameter("product_name").toString();
		String brandName=request.getParameter("product_brand_name").toString();
		
		String subCategory=request.getParameter("subCategory").toString();
		String productMrp=request.getParameter("product_mrp").toString();
		String productSell=request.getParameter("product_selling").toString();
		String productWeight=request.getParameter("product_weight").toString();
		String productQuantity=request.getParameter("product_quantity").toString();
		String productImage=request.getParameter("product_image").toString();
		
		
		String query="insert into grosikart_products(subcategory_id,product_brand_name,product_name,product_marked_price,product_sell_price,product_weight,product_quantity,product_image) values(?,?,?,?,?,?,?,?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, subCategory);
		preparedStatement.setString(2, brandName);
		preparedStatement.setString(3, name);
		preparedStatement.setString(4,productMrp);
		preparedStatement.setString(5, productSell);
		preparedStatement.setString(6, productWeight);
		preparedStatement.setString(7, productQuantity);
		preparedStatement.setString(8, productImage);
		HttpSession session=request.getSession();
		
		try {
			int count=preparedStatement.executeUpdate();
			session.setAttribute("addProduct","1");
			}
			catch(Exception e) {
				session.setAttribute("addProduct","2");
				
			}
		
		
		return "addProduct.jsp";
		
		
	}
}
