package spring.strore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import spring.strore.Dao.ProductDao;
import spring.strore.Model.Product;

@Controller
public class StoreController {
	
	@Autowired
	private ProductDao dao;
	
	@RequestMapping("/")
	public String getStorea(Model model){
		
		
		return"index";
	}
	
	@RequestMapping("/list")
	public String productList( Model model){
		List<Product> allProducts = dao.getAllProducts();
		model.addAttribute("allProducts",allProducts);
		return "list";
	}
	
	@RequestMapping("/store")
	public String addProduct(){
		return"store";
	}
	
	
	@RequestMapping(path = "/addform", method = RequestMethod.POST)
	public String addForm(@ModelAttribute Product product, Model model,HttpServletRequest request) {
		
		System.out.println(product);
		
		this.dao.saveProduct(product);
		return "redirect:/list";
	}

	@RequestMapping("/delete/{prodID}")
	public RedirectView deleteProduct(@PathVariable("prodID") int prodID,HttpServletRequest request){
		this.dao.deleteProduct(prodID);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/list");
		return redirectView;
		
	}
	
	@RequestMapping("/update/{prodID}")
	public String updateProduct(@PathVariable("prodID") int prodID,HttpServletRequest request,Model model){
		Product product = dao.getProduct(prodID);
		model.addAttribute("product",product);
		return "update";
		
	}
	@RequestMapping(value = "/updateform", method = RequestMethod.POST)
	public RedirectView updatedProduct(@ModelAttribute Product product, HttpServletRequest request){
		this.dao.updateProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/list");
		return redirectView;
	}
}
