package com.qa.controllers;

import com.qa.models.Customer;
import com.qa.models.Shipping;
import com.qa.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@SessionAttributes(names = {"book_counts", "books", "cart_items", "logged_in_customer","grand_total", "Address"})
@Controller
public class CheckoutController {

    @Autowired
    CustomerService customerService;

    @RequestMapping("/checkoutProcess")
    public ModelAndView checkoutProcess(@RequestParam("firstName") String firstName,
                                        @RequestParam("lastName") String lastName,
                                        @RequestParam("addressLine1") String address1,
                                        @RequestParam("addressLine2") String address2,
                                        @RequestParam("city") String city,
                                        @RequestParam("postcode") String postcode,
                                        @ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
        int recordsUpdated = customerService.updateCustomer(loggedInCustomer.getFirstName(),
                loggedInCustomer.getLastName(),
                loggedInCustomer.getEmail(),
                loggedInCustomer.getPassword(),
                loggedInCustomer.getCustomerId());
        ModelAndView modelAndView = new ModelAndView("checkoutSuccess");
        modelAndView.addObject("firstName", firstName);
        modelAndView.addObject("address1", address1);
        modelAndView.addObject("address2", address2);
        modelAndView.addObject("city", city);
        modelAndView.addObject("postcode", postcode);


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
