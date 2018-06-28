package com.qa.controllers;

import com.qa.models.*;
import com.qa.services.AddressService;
import com.qa.services.CustomerOrderService;
import com.qa.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Map;

@SessionAttributes(names = {"book_counts", "books", "cart_items", "filtered_books", "logged_in_customer","grand_total", "Address"})
@Controller
public class CheckoutController {

    @Autowired
    CustomerService customerService;

    @Autowired
    AddressService addressService;

    @Autowired
    CustomerOrderService customerOrderService;

    @RequestMapping("/checkoutProcess")
    public ModelAndView checkoutProcess(@RequestParam("firstName") String firstName,
                                        @RequestParam("lastName") String lastName,
                                        @RequestParam("addressLine1") String address1,
                                        @RequestParam("addressLine2") String address2,
                                        @RequestParam("city") String city,
                                        @RequestParam("Country") String country,
                                        @RequestParam("state") String state,
                                        @RequestParam("postcode") String postcode,
                                        @RequestParam("phone") String phone,
                                        @RequestParam("orderTotalVar") String orderTotal,
                                        @ModelAttribute("filtered_books") ArrayList<Book> books,
                                        @ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
        System.out.println("First name: " + loggedInCustomer.getFirstName());
        System.out.println("Books are: " + books);
        int recordsUpdated = customerService.updateCustomer(loggedInCustomer.getFirstName(),
                loggedInCustomer.getLastName(),
                loggedInCustomer.getEmail(),
                loggedInCustomer.getPassword(),
                loggedInCustomer.getCustomerId());
        System.out.println(recordsUpdated);
        Address address = new Address();
        address.setAddressLine1(address1);
        address.setAddressLine2(address2);
        address.setCity(city);
        address.setCountry(country);
        address.setPhoneNumber(phone);
        address.setPostcode(postcode);
        address.setState(state);
        address.setCustomerId(loggedInCustomer.getCustomerId());
        address.setAddressType("Home");
        System.out.println("address id: " + address.getAddressId());
        CustomerOrder customerOrder = new CustomerOrder();
        System.out.println("Customer id: " + loggedInCustomer.getCustomerId());
        System.out.println("Customer order id: " + customerOrder.getOrderId());

        Address isPresent = addressService.findAddressByCustomerId(loggedInCustomer.getCustomerId());
        if(isPresent == null) {
            address = addressService.saveAddress(address);
            customerOrder.setAddressId(address.getAddressId());

        }
        else {
           addressService.updateBillingAddress(address1, address2, city, postcode, state, country, phone, loggedInCustomer.getCustomerId(), "Home");
            customerOrder.setAddressId(isPresent.getAddressId());
        }
        customerOrder.setBooks(books);
        customerOrder.setCustomerId(loggedInCustomer.getCustomerId());
        customerOrder.setOrderTotal(orderTotal);
        customerOrderService.saveCustomerOrder(customerOrder);
        ModelAndView modelAndView = new ModelAndView("checkoutSuccess");
        modelAndView.addObject("firstName", firstName);
        modelAndView.addObject("address1", address1);
        modelAndView.addObject("address2", address2);
        modelAndView.addObject("city", city);
        modelAndView.addObject("postcode", postcode);
        modelAndView.addObject("orderTotal", orderTotal);
        modelAndView.addObject("cart_items", new ArrayList<Book>());


        return modelAndView;
    }

    @RequestMapping("/loginThroughCheckout")
    public ModelAndView loginThroughCheckout(@ModelAttribute("book_counts") Map<Integer, Integer> bookCounts, @RequestParam("order_total") double orderTotal) {

        ModelAndView modelAndView = new ModelAndView("login_through_checkout", "order_total", orderTotal);

        modelAndView.addObject("order_total", orderTotal);
        modelAndView.addObject("book_counts", bookCounts);
        return modelAndView;
    }


}
