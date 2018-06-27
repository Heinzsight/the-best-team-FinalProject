package com.qa.controllers;

import com.qa.models.NewRequest;
import com.qa.services.NewRequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewRequestController {

    @Autowired
    private NewRequestService newRequestService;


    @RequestMapping("/submitRequest")
    public ModelAndView submitRequest(@ModelAttribute("Request") NewRequest newRequest) {

        ModelAndView modelAndView;

        System.out.println("Submitting Request ");

        System.out.println("Title " + newRequest.getTitle());
        System.out.println("Author " + newRequest.getAuthor());
        System.out.println("ISBN " + newRequest.getISBN());
        System.out.println("Status " + newRequest.getStatus());
        System.out.println("Id " + newRequest.getNewRequestId());

        NewRequest r = newRequestService.saveRequest(newRequest);
        if (r != null) {
            modelAndView = new ModelAndView("new_book_request_success");
        } else {
            modelAndView = new ModelAndView("new_book_request_failed");
        }
        return modelAndView;
    }

}
