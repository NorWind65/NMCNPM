package DAO;

import java.sql.Date;
import model.Order;

public class test {
	public static void main(String[] args) {
		OrderDAO OD=  new OrderDAO();
		Order a =OD.selectById("O001");
		Date date = Date.valueOf("1999-1-1");
		 
		System.out.println(a.getOrderID()+ " "+ a.getCustomerName() + " "+ a.getTimeStart() + " "+ a.getTimeEnd());
		a.setCustomerName("Nguyen Van B");
		a.setCustomerPhoneNumber("123123");
		a.setTimeStart(date);
		OD.update(a);
		
		System.out.println(a.getOrderID()+ " "+ a.getCustomerName() + " "+ a.getTimeStart() + " "+ a.getTimeEnd());
		Order na =OD.selectById("O001");
		System.out.println(na.getOrderID()+ " "+ na.getCustomerName() + " "+ na.getTimeStart() + " "+ na.getTimeEnd());
	}
}