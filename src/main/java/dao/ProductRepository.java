package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Product;

//Product 에 대한 기능을 정의
public class ProductRepository {
	 // 원래는 DB에서 가져올 데이터
    // 지금 DB 안 배워서 그냥 3개 만든 것임
	
	private  List<Product> products = new ArrayList<Product>();
	
	public ProductRepository() {
		
		Product phone = new Product("p123", "ipone 6s", 80000);
		phone.setDescription("4.7inchm523354");
		phone.setCategory("smart Phone");
		phone.setManufacturer("Apple");	
		phone.setUnitsInStock(1000);	
		phone.setCondition("New");	
		
	
		Product notebook = new Product ("p234", "Imac", 700000);
		notebook.setDescription("4.7inchm523354");
		notebook.setCategory("smart NoteBoook");
		notebook.setManufacturer("Apple");	
		notebook.setUnitsInStock(1000);	
		notebook.setCondition("New");	
			
			
	
		Product tv = new Product ("p1234", "AppleTV", 800000);
		tv.setDescription("4.7inchm");
		tv.setCategory("smart TV");
		tv.setManufacturer("Apple");	
		tv.setUnitsInStock(1000);	
	    tv.setCondition("New");	
				
				
		products.add(phone);
		products.add(notebook);
		products.add(tv);
		
	}
	// 모든 상품 정보
		public List <Product> getAllproducts() {
			return products;				
		}	
}


