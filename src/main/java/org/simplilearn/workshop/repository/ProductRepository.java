package org.simplilearn.workshop.repository;

import java.util.List;

import org.simplilearn.workshop.model.Product;

public interface ProductRepository {

	public List<Product> getProducts();
	
	public void saveProduct(Product theCustomer);

	public Product getProduct(int theId);

	public void deleteProduct(int theId);
}
