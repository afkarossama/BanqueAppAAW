package com.asus.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asus.entities.Employe;

public interface IEmployeRepository extends JpaRepository<Employe, Long> {

}
