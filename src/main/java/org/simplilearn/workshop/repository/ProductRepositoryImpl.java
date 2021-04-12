package org.simplilearn.workshop.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.simplilearn.workshop.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository(value = "customerRepository")
public class ProductRepositoryImpl implements ProductRepository {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getProducts() {
		// get the hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create a query ... sort by last name
		Query<Product> theQuery = currentSession.createQuery("from Product order by fname",Product.class);
		
		// execute query
		List<Product> products = theQuery.getResultList();
		
		return products;
	}
	
	

	@Override
	public void saveProduct(Product theProduct) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theProduct);
		
	}

	@Override
	public Product getProduct(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Product theProduct = currentSession.get(Product.class, theId);
		
		return theProduct;
	}

	@Override
	public void deleteProduct(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Product where id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();		
	}



}