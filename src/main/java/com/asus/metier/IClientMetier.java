package com.asus.metier;

import java.util.List;

import com.asus.entities.Client;

public interface IClientMetier {

    public Client saveClient(Client c);
    public List<Client> listClient();

}
