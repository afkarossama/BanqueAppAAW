package com.asus.metier;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asus.dao.IClientRepository;
import com.asus.entities.Client;

@Service
public class ClientMetier implements IClientMetier{

    @Autowired
    private IClientRepository clientRepository;

    @Override
    public Client saveClient(Client c) {
        // TODO Auto-generated method stub
        return clientRepository.save(c);
    }

    @Override
    public List<Client> listClient() {
        // TODO Auto-generated method stub
        return clientRepository.findAll();
    }



}
