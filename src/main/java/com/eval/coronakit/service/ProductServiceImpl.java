package com.eval.coronakit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.ProductMasterRepository;
import com.eval.coronakit.entity.ProductMaster;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductMasterRepository repository;
	
	@Override
	public ProductMaster addNewProduct(ProductMaster product) {
		
		return product;
	}

	@Override
	public List<ProductMaster> getAllProducts() {
		
		return null;
		
	}
	public List<ProductMaster> getlistallproducts() {
		
		ProductMaster m1= new ProductMaster(1, "Mask" ,10,"Face Mask");
		ProductMaster m2= new ProductMaster(2, "Sanitizer" ,100,"Hand Sanitizer");
		ProductMaster m3= new ProductMaster(3, "PPE Kit" ,5000,"PPE Kit");
		ProductMaster m4= new ProductMaster(4, "FaceShield" ,80,"FaceShield");
		ArrayList List = new ArrayList<ProductMaster>();
		List.add(m1);
		List.add(m2);
		List.add(m3);
		List.add(m4);
		
		return List;
	}
	

	@Override
	public ProductMaster deleteProduct(int productId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductMaster getProductById(int productId) {
		// TODO Auto-generated method stub
		return null;
	}

}
