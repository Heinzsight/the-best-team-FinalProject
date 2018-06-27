package com.qa.models;

import javax.persistence.*;
import java.util.List;

@Entity(name="customer_order")
public class CustomerOrder {

    @Id
    @GeneratedValue
    @Column(name="oid")
    private int orderId;

    @OneToOne
    @JoinColumn(name="cid")
    private Customer customer;

    @OneToMany
    @JoinColumn(name="bid")
    private List<Book> books;

    @OneToOne
    @JoinColumn(name="aid")
    private Address address;

    @Column(name="total")
    private String orderTotal;


    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(String orderTotal) {
        this.orderTotal = orderTotal;
    }


}
