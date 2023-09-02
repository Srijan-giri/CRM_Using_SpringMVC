package springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import springmvc.model.Customer;

@Component
public class CustomerDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void createCustomer(Customer customer)
	{
		this.hibernateTemplate.saveOrUpdate(customer);
		System.out.println("Customer Added Successfully");
	}
	
	public List<Customer> getAllCustomers()
	{
		List<Customer> customers=this.hibernateTemplate.loadAll(Customer.class);
		return customers;
	}
	
	@Transactional
	public void deleteCustomer(int customerId)
	{
		Customer customer = this.hibernateTemplate.get(Customer.class,customerId);
		this.hibernateTemplate.delete(customer);
	}
	
	public Customer getCustomer(int pid)
	{
		return this.hibernateTemplate.get(Customer.class,pid);
	}

	
//	@Transactional
//	public void updateCustomer(Customer customer)
//	{
//		this.hibernateTemplate.update(customer);
//	}
}
