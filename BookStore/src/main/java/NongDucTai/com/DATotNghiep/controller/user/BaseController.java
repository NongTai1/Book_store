package NongDucTai.com.DATotNghiep.controller.user;

import java.util.List;

import NongDucTai.com.DATotNghiep.entities.*;
import NongDucTai.com.DATotNghiep.repositories.*;
import NongDucTai.com.DATotNghiep.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;



public abstract class BaseController {
	
	@Autowired //lấy bean từ container's spring.
	CategoryRepo categoryRepo;
		
	@Autowired
	ContactRepo contactRepo;
	
	@Autowired
	ProductRepo productRepo;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	UserRepo userRepo;

	@Autowired
	RoleRepo roleRepo;
	
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryRepo.findAll();
	}
	
	@ModelAttribute("contacts")
	public List<Contact> getContacts() {
		return contactRepo.findAll();
	}
	
	@ModelAttribute("products")
	public List<Product> getProducts() {
		return productService.findProductByStatus();
	}						
	
	@ModelAttribute("users")
	public List<User> getUsers() {
		return userRepo.findAll();
	}
	
	@ModelAttribute("roles")
	public List<Role> getRoles() {
		return roleRepo.findAll();
	}

	
	
	
}
