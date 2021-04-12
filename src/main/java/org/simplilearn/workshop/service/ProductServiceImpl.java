package org.simplilearn.workshop.service;

import java.util.List;

import org.simplilearn.workshop.model.Product;
import org.simplilearn.workshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service(value = "customerService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	@Transactional
	public List<Product> getProducts() {
		return productRepository.getProducts();
	}
	
	@Override
	@Transactional
	public void saveProduct(Product theCustomer) {

		productRepository.saveProduct(theCustomer);
	}

	@Override
	@Transactional
	public Product getProduct(int theId) {
		
		return productRepository.getProduct(theId);
	}

	@Override
	@Transactional
	public void deleteProduct(int theId) {
		
		productRepository.deleteProduct(theId);
	}

}