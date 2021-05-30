package com.asus.metier;

import java.util.List;

import com.asus.entities.Employe;

public interface IEmployeMetier {

    public Employe saveEmploye(Employe e);
    public List<Employe> listEmploye();

}
