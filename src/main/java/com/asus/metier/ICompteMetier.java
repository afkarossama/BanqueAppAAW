package com.asus.metier;

import com.asus.entities.Compte;

public interface ICompteMetier {

    public Compte saveCompte(Compte c);
    public Compte getCompte(String code);

}
