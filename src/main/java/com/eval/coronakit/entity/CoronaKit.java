package com.eval.coronakit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="CaronaKitDB")
public class CoronaKit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotNull(message = "Can not be null")
	@Min(value =1, message="ID can not be null")
	
	@Column(name="deliveryAddress")
	@NotNull(message = "Address is Required")
	@NotNull(message="Address is Required")
	@Size(min=0,max=30,message="can not excessed 30 characters")
	private String deliveryAddress;

	private String orderDate;
	private int totalAmount;
	
	public CoronaKit() {
		
	}

	public CoronaKit(int id, String deliveryAddress, String orderDate, int totalAmount) {
		super();
		this.id = id;
		this.deliveryAddress = deliveryAddress;
		this.orderDate = orderDate;
		this.totalAmount = totalAmount;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

}
