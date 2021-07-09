package spring.strore.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import spring.strore.Model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemp;
	
	
	
	public HibernateTemplate getHibernateTemp() {
		return hibernateTemp;
	}



	public void setHibernateTemp(HibernateTemplate hibernateTemp) {
		this.hibernateTemp = hibernateTemp;
	}

	// to save product
	@Transactional
	public void saveProduct(Product product){
		 this.hibernateTemp.save(product);
	}
	
	// get all products
	public List<Product> getAllProducts(){
		List<Product> loadAll = this.hibernateTemp.loadAll(Product.class);
		
		return loadAll;
		
	}
	
	
	//delete 
	public void deleteProduct(int id){
		Product prod = this.hibernateTemp.load(Product.class, id);
		this.hibernateTemp.delete(prod);
		
	}
	
	//get single product 
	public Product getProduct(int id){
		return this.hibernateTemp.get(Product.class, id);
	}
	
	//update product
	@Transactional
	public void updateProduct(Product product){
		this.hibernateTemp.update(product);
	}
	
	
}
