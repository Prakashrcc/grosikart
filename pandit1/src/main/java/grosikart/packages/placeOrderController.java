package grosikart.packages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class placeOrderController {
	/*
	String url="jdbc:mysql://localhost:3306/grosikart";
	String uname="root";
	String pass="Prakash1";
	 */
	
String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
String uname="admin";
String pass="uchiha7686";
	@RequestMapping("placeOrder")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		HttpSession orderSession=request.getSession();
		Enumeration<String> enumeration=request.getParameterNames();
		Map<String,Object> umap=new HashMap<String,Object>();
		while(enumeration.hasMoreElements()) {
			
			String inputnames=enumeration.nextElement();
			umap.put(inputnames,request.getParameter(inputnames));
		}
		String chefId=null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		for( String key: umap.keySet()) {
			
			String itemDetails=umap.get(key).toString();
			if(itemDetails!="no" && !key.equals("totalPrice")) {
				String query="select * from grosikart_products where product_id=?";
				PreparedStatement st=con.prepareStatement(query);
				String itemId=itemDetails.substring(0,6);
				st.setString(1,itemId );
				ResultSet r=st.executeQuery();
				r.next();
				
				break;
			}
		}
		
		String totalPrice=request.getParameter("totalPrice").toString();
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date=new Date();
		String transDateTime=formatter.format(date);
		
		//insertion of transaction
		String query="insert into grosikart_transactions (user_id,trans_price,trans_status,trans_date_time,valid) values(?,?,?,?,?)";
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, id);
		preparedStatement.setString(2, totalPrice);
		preparedStatement.setString(3, "Ordered");
		preparedStatement.setString(4, transDateTime);
		preparedStatement.setString(5, "0");
		
		
		int count=preparedStatement.executeUpdate();
		if(count>0) {
			query="select trans_id from grosikart_transactions where user_id=? and trans_date_time=?";
			PreparedStatement preparedStatement1=con.prepareStatement(query);
			preparedStatement1.setString(1, id);
			preparedStatement1.setString(2, transDateTime);
			
			ResultSet rd=preparedStatement1.executeQuery();
			rd.next();
			String transId=rd.getString(1);
			session.setAttribute("orderid", transId);
			session.setAttribute("price", totalPrice);
		
		
		for( String key: umap.keySet()) {
			System.out.println(key+" : "+umap.get(key));
			String itemDetails=umap.get(key).toString();
			if(itemDetails!="no" && !key.equals("totalPrice")) {
				String itemId=itemDetails.substring(0,5);
				String itemQuantity=itemDetails.substring(6,itemDetails.length());
				
				query="select * from grosikart_products where product_id=?";
				PreparedStatement preparedStatement3=con.prepareStatement(query);
				preparedStatement3.setString(1, itemId);
				ResultSet rd1=preparedStatement3.executeQuery();
				rd1.next();
				String itemPrice=rd1.getString(6);
				String itemName=rd1.getString(3) +" "+ rd1.getString(4);
				
				Integer totalQuantity=Integer.parseInt(rd1.getString(8));
				totalQuantity=totalQuantity-(Integer.parseInt(itemQuantity));
				query="update grosikart_products set product_quantity="+totalQuantity +" where product_id="+itemId;
				PreparedStatement preparedStatement5=con.prepareStatement(query);
				int v=preparedStatement5.executeUpdate();
				
				
				System.out.println(itemId+"  : "+itemQuantity);
				query="insert into grosikart_transactions_products (trans_id,product_id,quantity,price,product_name) values(?,?,?,?,?)";
				PreparedStatement preparedStatement2=con.prepareStatement(query);
				preparedStatement2.setString(1, transId);
				preparedStatement2.setString(2, itemId);
				preparedStatement2.setString(3, itemQuantity);
				preparedStatement2.setString(4, itemPrice);
				preparedStatement2.setString(5, itemName);
				
				
				int count1=preparedStatement2.executeUpdate();
				if(count1>0) {
					
					
					
				}
				
				
				
				
				
				
			}
		}
		System.out.println("Success order placed");
		
		
		return "checkout.jsp";
		
		
		
		
		}
		
	/*	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		preparedStatement.setString(3, phone);
		preparedStatement.setString(4, "2");
		preparedStatement.setString(5, email);
		int count=preparedStatement.executeUpdate(); */
		
		
		return "cart.jsp";
		
	}
}
