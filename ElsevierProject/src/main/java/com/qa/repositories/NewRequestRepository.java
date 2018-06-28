package com.qa.repositories;


import com.qa.models.NewRequest;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NewRequestRepository extends CrudRepository<NewRequest, Integer> {

}