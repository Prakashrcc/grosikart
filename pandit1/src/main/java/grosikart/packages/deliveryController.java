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
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class deliveryController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("/delivery")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		String delivery=request.getParameter("delivery").toString();
		HttpSession session=request.getSession();
		String id=session.getAttribute("orderid").toString();
		
		String query="update grosikart_transactions set delivery=?  where trans_id=? ";
		System.out.println(query);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		st.setString(1, delivery);
		st.setString(2, id);
		
		
		int count=st.executeUpdate();
		System.out.println(count);
		
		Integer totalPrice=Integer.parseInt(session.getAttribute("price").toString());
		session.setAttribute("delivery", delivery);
		int deliveryAmount=0;
		if(delivery.equals("Delivery")) {
			if(totalPrice<600) {
				deliveryAmount=49;
			}
		}
		session.setAttribute("deliveryAmount", deliveryAmount);
		totalPrice=totalPrice+deliveryAmount;
		session.setAttribute("finalAmount", totalPrice);
		
		
		return "finalCheckout.jsp";
		
	}
		
}

