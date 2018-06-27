package com.qa.models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "new_request")
public class NewRequest {

    @Id
    @GeneratedValue
    @Column(name = "rid")
    private int newRequestId;

    @Column(name = "title")
    private String title;

    @Column(name = "isbn")
    private String ISBN;

    @Column(name = "author")
    private String author;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "cid")
    private int customerId;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getNewRequestId() {
        return newRequestId;
    }

    public void setNewRequestId(int newRequestId) {
        this.newRequestId = newRequestId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getISBN()  {return ISBN; }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public Boolean getStatus() {return status;}

    public void setStatus(Boolean status) {this.status = status;}

    public int getCustomerId() {return customerId; }

    public void setCustomerId(int customerId) {this.customerId = customerId;}

}
