package com.asus.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.asus.entities.Operation;

public interface IOperationRepository extends JpaRepository<Operation, Long> {
    @Query("select o from Operationn o where o.compte.codeCompte=:x")
    public Page<Operation> getOperations(@Param("x") String code,Pageable pageable);
}
