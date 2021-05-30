package com.asus.metier;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.asus.dao.IEmployeRepository;
import com.asus.entities.Employe;

@Service
public class EmployeMetier implements IEmployeMetier{

    @Autowired
    private IEmployeRepository employeRepository;

    @Override
    public Employe saveEmploye(Employe e) {
        // TODO Auto-generated method stub
        return employeRepository.save(e);
    }

    @Override
    public List<Employe> listEmploye() {
        // TODO Auto-generated method stub
        return employeRepository.findAll();
    }

}
