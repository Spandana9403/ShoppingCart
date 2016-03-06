package com.marlabs.cart;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class signupregister {
	
	public static void register(signup u)
	{
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
        
        Transaction t=session.beginTransaction();
        
        session.saveOrUpdate(u);
        
        t.commit();
        session.close();
        
	}

}
