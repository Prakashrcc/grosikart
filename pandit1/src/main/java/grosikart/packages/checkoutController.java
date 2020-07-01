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
public class checkoutController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/checkout")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		String deliveryAddress=request.getParameter("address").toString();
		HttpSession session=request.getSession();
		String id=session.getAttribute("orderid").toString();
		String finalAmount=session.getAttribute("finalAmount").toString();
		String deliveryAmount=session.getAttribute("deliveryAmount").toString();
		
		String query="update grosikart_transactions set trans_address=? , delivery_amount=? , final_amount=?  where trans_id=? ";
		System.out.println(query);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		st.setString(1, deliveryAddress);
		st.setString(2, deliveryAmount);
		st.setString(3, finalAmount);
		st.setString(4, id);
		
		session.setAttribute("orderid", "0");
		
		int count=st.executeUpdate();
		System.out.println(count);
		
		if(count>0) {
		session.setAttribute("orderUser", "1");
		}
		else {
			
			session.setAttribute("orderUser", "1");
		}
		
		return "orders";
		
	}
		
}
