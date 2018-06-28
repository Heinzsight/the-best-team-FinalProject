package com.qa.models;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.List;

@Entity(name="customer_order")
public class CustomerOrder {

    @Id
    @GeneratedValue
    @Column(name="order_id")
    private int orderId;

    @Column(name="customer_id")
    private int customerId;

    @Autowired
    @ElementCollection
    private List<Book> books;

    @Column(name="address_id")
    private int addressId;

    @Column(name="total")
    private String orderTotal;

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(String orderTotal) {
        this.orderTotal = orderTotal;
    }

}
