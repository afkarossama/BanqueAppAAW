package com.asus.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asus.entities.Client;

public interface IClientRepository extends JpaRepository<Client, Long>{

}