package org.simplilearn.workshop.controller;

import java.util.List;

import org.simplilearn.workshop.model.Product;
import org.simplilearn.workshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	
	// GET http://localhost:8080/context-path/customer/list
		@GetMapping("/list")
		public String listProducts(Model theModel) {
			//get customers from the service
			List<Product> theProducts = productService.getProducts();
			
			//add the customers to the model
			theModel.addAttribute("products",theProducts);
			
			return "list-customers"; // logical view name
		}
		
		@GetMapping("/showFormForAdd")
		public String showFormForAdd(Model theModel) {
			
			// create model attribute to bind form data
			Product theProduct = new Product();
			
			theModel.addAttribute("product", theProduct);
			
			return "customer-form";
		}
		
		@GetMapping("/showFormForUpdate")
		public String showFormForUpdate(@RequestParam("customerId") int theId,
										Model theModel) {
			
			// get the customer from our service
			Product theCustomer = productService.getProduct(theId);	
			
			// set customer as a model attribute to pre-populate the form
			theModel.addAttribute("product", theCustomer);
			
			// send over to our form		
			return "customer-form";
		}
		
		@GetMapping("/delete")
		public String deleteCustomer(@RequestParam("customerId") int theId) {
			
			// delete the customer
			productService.deleteProduct(theId);
			
			return "redirect:/product/list";
		}

		
		@PostMapping("/saveProduct")
		public String saveCustomer(@ModelAttribute("product") Product theProduct) {
			
			// save the customer using our service
			productService.saveProduct(theProduct);	
			
			return "redirect:/product/list";
		}
		
		@GetMapping("/showUsers")
		public String showUsers(Model theModel) {
			
			// create model attribute to bind form data
			Product theProduct = new Product();
			
			theModel.addAttribute("product", theProduct);
			
			return "users";
		}
		
		@GetMapping("/searchUsers")
		public String searchUsers(Model theModel) {
			
			// create model attribute to bind form data
			Product theProduct = new Product();
			
			theModel.addAttribute("product", theProduct);
			
			return "search-users";
		}
		@GetMapping("/getUser")
		public String getUser(Model theModel) {
			
			// create model attribute to bind form data
			Product theProduct = new Product();
			
			theModel.addAttribute("product", theProduct);
			
			return "get-user";
		}
		@GetMapping("/reports")
		public String reports(Model theModel) {
			
			// create model attribute to bind form data
			Product theProduct = new Product();
			
			theModel.addAttribute("product", theProduct);
			
			return "purchase-reports";
		}
				
		
}
