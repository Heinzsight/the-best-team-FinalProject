package com.qa.controllers;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.CustomerOrder;
import com.qa.services.AddressService;
import com.qa.services.BookService;
import com.qa.services.CustomerOrderService;
import com.qa.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@Controller
@SessionAttributes(names = {"books", "cart_items", "logged_in_customer", "Address", "customer_orders"})
public class CustomerController {

    @Autowired
    BookService bookService;

    @Autowired
    CustomerService customerService;

    @Autowired
    AddressService addressService;

    @Autowired
    CustomerOrderService customerOrderService;

    @RequestMapping("/")
    public ModelAndView indexPage(HttpServletRequest request) {

        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        Object items = session.getAttribute("cart_items");

        if (items != null) {
            cartItems = (ArrayList<Book>) items;
        } else {
            cartItems = new ArrayList<Book>();
        }

        Iterable<Book> books = bookService.findAllBooks();

        ModelAndView modelAndView = new ModelAndView("index", "books", books);

        modelAndView.addObject("cart_items", cartItems);
        return modelAndView;

    }

    @RequestMapping("/just-in")
    public ModelAndView booksJustIn(HttpServletRequest request) {

        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        Object items = session.getAttribute("cart_items");

        if (items != null) {
            cartItems = (ArrayList<Book>) items;
        } else {
            cartItems = new ArrayList<Book>();
        }

        Iterable<Book> books = bookService.findAllBooks();

        ModelAndView modelAndView = new ModelAndView("books_just_in", "books", books);

        modelAndView.addObject("cart_items", cartItems);
        return modelAndView;

    }

    @RequestMapping("/all-time-faves")
    public ModelAndView allTimeFaves(HttpServletRequest request) {

        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        Object items = session.getAttribute("cart_items");

        if (items != null) {
            cartItems = (ArrayList<Book>) items;
        } else {
            cartItems = new ArrayList<Book>();
        }

        Iterable<Book> books = bookService.findAllBooks();

        ModelAndView modelAndView = new ModelAndView("all_time_faves", "books", books);

        modelAndView.addObject("cart_items", cartItems);
        return modelAndView;

    }

    @RequestMapping("/bestselling")
    public ModelAndView bestSelling(HttpServletRequest request) {

        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        Object items = session.getAttribute("cart_items");

        if (items != null) {
            cartItems = (ArrayList<Book>) items;
        } else {
            cartItems = new ArrayList<Book>();
        }

        Iterable<Book> books = bookService.findAllBooks();

        ModelAndView modelAndView = new ModelAndView("bestselling", "books", books);

        modelAndView.addObject("cart_items", cartItems);
        return modelAndView;

    }

    @RequestMapping("/genres")
    public ModelAndView genres(HttpServletRequest request) {

        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        Object items = session.getAttribute("cart_items");

        if (items != null) {
            cartItems = (ArrayList<Book>) items;
        } else {
            cartItems = new ArrayList<Book>();
        }

        Iterable<Book> books = bookService.findAllBooks();

        ModelAndView modelAndView = new ModelAndView("genres", "books", books);

        modelAndView.addObject("cart_items", cartItems);
        return modelAndView;

    }

    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("login");

        return modelAndView;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request , HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        if(session!=null)
            session.invalidate();
        ModelAndView modelAndView =  new ModelAndView("logout");
        return modelAndView;
    }

    @RequestMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("register");

        return modelAndView;
    }


    @RequestMapping("/registerProcess")
    public ModelAndView registerProcess(@ModelAttribute("Customer") Customer customer) {

        ModelAndView modelAndView = null;

        System.out.println("Customer Firstname is " + customer.getFirstName());


        System.out.println("Customer Password is " + customer.getPassword());

        try{
            Customer c = customerService.saveCustomer(customer);
            if (c != null) {
                modelAndView = new ModelAndView("registration_success");
            } else {
                modelAndView = new ModelAndView("registration_failed");
            }
        }catch(Exception e){
            modelAndView = new ModelAndView("registration_failed");
            System.out.println(e);
        }

        return modelAndView;
    }

    @RequestMapping("/loginProcess")
    public ModelAndView loginProcess(HttpServletRequest request,
                                     @RequestParam("email") String email,
                                     @RequestParam("password") String password) {
        ArrayList<Book> cartItems = null;

        HttpSession session = request.getSession();

        ModelAndView modelAndView = null;


        System.out.println("Email is " + email);


        System.out.println("Password is " + password);


        Customer c = customerService.loginProcess(email, password);

        if (c != null) {
            System.out.println("Success");
            //the viewName here used to be "customer_home"
            modelAndView = new ModelAndView("index", "logged_in_customer", c);
//            modelAndView.addObject("cart_items", new ArrayList<Book>());
        } else {
            System.out.println("Failure");
            modelAndView = new ModelAndView("login");
        }

        return modelAndView;
    }


    @RequestMapping("/profile")
    public ModelAndView profile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
        ModelAndView modelAndView = new ModelAndView("profile", "logged_in_customer", loggedInCustomer);

        return modelAndView;
    }

    @RequestMapping("/updateProfile")
    public ModelAndView updateProfile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer, @ModelAttribute("Customer") Customer customer) {

        ModelAndView modelAndView = null;

        System.out.println("Before update ");

        System.out.println("ID" + loggedInCustomer.getCustomerId());
        System.out.println("Name" + loggedInCustomer.getFirstName());
        System.out.println("Email" + loggedInCustomer.getEmail());
        System.out.println("Password" + loggedInCustomer.getPassword());


        int recordsUpdated = customerService.updateCustomer(loggedInCustomer.getFirstName(),
                loggedInCustomer.getLastName(),
                loggedInCustomer.getEmail(),
                loggedInCustomer.getPassword(),
                loggedInCustomer.getCustomerId());

        if (recordsUpdated > 0) {
            Customer c = customerService.findCustomerById(loggedInCustomer.getCustomerId());


            System.out.println("After update ");

            System.out.println("ID " + c.getCustomerId());
            System.out.println("Name" + c.getFirstName());
            System.out.println("Email" + c.getEmail());
            System.out.println("Password" + c.getPassword());


            modelAndView = new ModelAndView("profile", "logged_in_customer", c);
        } else {
            System.out.println("failed to update");
            modelAndView = new ModelAndView("profile", "logged_in_customer", loggedInCustomer);
        }

        return modelAndView;
    }


    @RequestMapping("/addressBook")
    public ModelAndView addressBook(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
        ModelAndView modelAndView = new ModelAndView("address_book", "logged_in_customer", loggedInCustomer);

        return modelAndView;
    }

//    @RequestMapping("accountDetails")
//    public ModelAndView accountDetails (@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
//        ModelAndView modelAndView = new ModelAndView("address_book", "logged_in_customer", loggedInCustomer);
//
//        return modelAndView;
//    }


    @RequestMapping(value = "/order_history")
    public String orderHistory() {
        return "order_history";
    }


    @RequestMapping(value = "/update_info")
    public String updateInfo() {
        //System.out.println("Getting here!!!");
        return "update_info";
    }

    @RequestMapping(value = "/landing")
    public ModelAndView landing(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
        ModelAndView modelAndView = new ModelAndView("landing", "logged_in_customer", loggedInCustomer);

        Address address = addressService.findAddressByCustomerId(loggedInCustomer.getCustomerId());
        if (address != null) {
            modelAndView.addObject("Address",address);
        }

        ArrayList<CustomerOrder> orders = (ArrayList<CustomerOrder>) customerOrderService.getCustomerOrdersByCustomerId(loggedInCustomer.getCustomerId());
        modelAndView.addObject("customer_orders",orders);
        return modelAndView;
    }

}
