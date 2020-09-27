package com.eval.coronakit.controller;

import com.eval.coronakit.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eval.coronakit.entity.ProductMaster;
import com.eval.coronakit.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductService productService;
	
	@GetMapping("/header")
	public String home() {
		return "admin-home";
	}
	
	@GetMapping("/product-entry")
	public String productEntry(Model model) {
		
		return "add-new-item";
	}
	
	@PostMapping("/product-save")
	public String productSave(@ModelAttribute ProductMaster product, BindingResult result ) {
		ProductServiceImpl ProdServiceImpl=new ProductServiceImpl();
		ProdServiceImpl.addNewProduct(product);
		return null;
	}
	

	@GetMapping("/product-list")
	public String productList(Model model) {
		return "show-all-item-admin";
	}
	
	

	@GetMapping("/product-delete/{productId}")
	public String productDelete(@PathVariable("productId") int productId) {
		return null;
	}
	
}
