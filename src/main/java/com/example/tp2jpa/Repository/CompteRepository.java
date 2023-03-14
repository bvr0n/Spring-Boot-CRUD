package com.example.tp2jpa.Repository;

import com.example.tp2jpa.Model.Compte;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompteRepository extends JpaRepository<Compte, Integer> {

    public List<Compte> findAll();
    public Compte findById(int id);

}
