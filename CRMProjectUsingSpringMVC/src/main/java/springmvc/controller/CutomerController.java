package springmvc.controller;

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

import springmvc.dao.CustomerDao;
import springmvc.model.Customer;

@Controller
public class CutomerController {

	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping(path="/",method=RequestMethod.GET)
	public String homePage(Model m)
	{
		List<Customer> customers = customerDao.getAllCustomers();
		m.addAttribute("title", "CRM-HOME");
		m.addAttribute("customer", customers);
		return "index";
	}
	
	@RequestMapping("/addcustomer")
	public String addCustomer(Model m)
	{
	  m.addAttribute("title", "Add Customer");
	  return "add_customer";
	}
	
	@RequestMapping(path="/handle-customer",method=RequestMethod.POST)
	public RedirectView handleForm(@ModelAttribute Customer customer,HttpServletRequest request)
	{
		System.out.println(customer);
		this.customerDao.createCustomer(customer);
		RedirectView redirect = new RedirectView();
		redirect.setUrl(request.getContextPath()+"/");
		return redirect;
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteUser(@PathVariable("id") int id,HttpServletRequest request)
	{
		 System.out.println(id);
		 RedirectView redirect = new RedirectView();
		 this.customerDao.deleteCustomer(id);
		 redirect.setUrl(request.getContextPath()+"/");
		 return redirect;
		 
	}

	@RequestMapping("/update/{id}")
	public String updateCustomer(@PathVariable("id") int id,Model m )
	{
		Customer customer = this.customerDao.getCustomer(id);
		m.addAttribute("customer",customer);
		return "update_customer";
	}
	
	/*
	 * @RequestMapping(path="/updatecustomer",method=RequestMethod.PUT) public
	 * RedirectView updateForm(@ModelAttribute Customer customer,HttpServletRequest
	 * request) { System.out.println(customer);
	 * this.customerDao.updateCustomer(customer); RedirectView redirect = new
	 * RedirectView(); redirect.setUrl(request.getContextPath()+"/"); return
	 * redirect; }
	 */
}
