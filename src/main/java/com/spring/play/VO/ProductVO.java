package com.spring.play.VO;

public class ProductVO {
	
	private int sale_productCode;
	private String product_name;
	private int product_price;
	private int product_count;
	private int product_size;
	private	String product_description;
	private String image_url;
	private String id;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getProduct_size() {
		return product_size;
	}

	public void setProduct_size(int product_size) {
		this.product_size = product_size;
	}

	public int getSale_productCode() {
		return sale_productCode;
	}
	
	public void setSale_productCode(int sale_productCode) {
		this.sale_productCode = sale_productCode;
	}
	
	public String getProduct_name() {
		return product_name;
	}
	
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public int getProduct_price() {
		return product_price;
	}
	
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	
	public String getProduct_description() {
		return product_description;
	}
	
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	
	public String getImage_url() {
		return image_url;
	}
	
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	
	
}
