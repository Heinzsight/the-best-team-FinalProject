package com.qa.services;

import com.qa.models.NewRequest;
import com.qa.repositories.NewRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewRequestService {

    @Autowired
    private NewRequestRepository newRequestRepository;

    public Iterable<NewRequest> findAllRequests() {
        return newRequestRepository.findAll();

    }
    public NewRequest saveRequest(NewRequest newRequest) {
        System.out.println("submitting Request");
        return newRequestRepository.save(newRequest);
    }
}
