package DAO;

import model.Order;
import java.util.ArrayList;
public class test {
	public static void main(String[] args) {
		OrderDAO OD=  new OrderDAO();
		ArrayList<Order> list= new ArrayList<Order>();
	
		list = OD.selectAll();
		for(Order a: list)
		System.out.println(a.getOrderID()+ " "+ a.getOrderPrice() +" "+a.getCustomerName());
		
	}
}