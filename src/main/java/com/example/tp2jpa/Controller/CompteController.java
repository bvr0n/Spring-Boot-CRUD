package com.example.tp2jpa.Controller;

import com.example.tp2jpa.Repository.CompteRepository;
import com.example.tp2jpa.Model.Compte;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CompteController {

    @Autowired
    CompteRepository compteRepository;

    @GetMapping(value="/index")
    public ModelAndView verifierLogin(){
        ModelAndView mv = new ModelAndView();
        List<Compte> c = compteRepository.findAll();
        mv.addObject("comptes", c);

        mv.setViewName("index");
        return mv;
    }
    @GetMapping(value="/add-account")
    public ModelAndView addAccount(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("add");
        return mv;
    }

    @PostMapping(value="/add-account")
    public ModelAndView GetAccount(@RequestParam String name, @RequestParam String email, @RequestParam String pswd){
        ModelAndView mv = new ModelAndView();
        Compte c = new Compte(name, pswd, email);
        compteRepository.save(c);
        mv.addObject("error", "Account added with success");
        mv.setViewName("add");
        return mv;
    }


    @GetMapping(value = "/delete/{id}")
    public ModelAndView DeleteAccount(@PathVariable int id) {
        ModelAndView mv = new ModelAndView();
        Compte cu = compteRepository.findById(id);
        compteRepository.delete(cu);
        List<Compte> c = compteRepository.findAll();
        mv.addObject("comptes", c);
        mv.addObject("error", "Account deleted with success");
        mv.setViewName("index");
        return mv;
    }

    @GetMapping(value = "/modify/{id}")
    public ModelAndView ModifyAccount(@PathVariable int id) {
        ModelAndView mv = new ModelAndView();
        Compte cu = compteRepository.findById(id);
        mv.addObject("compte", cu);
        mv.setViewName("modify");
        return mv;
    }

    @PostMapping(value="/modify-account/{id}")
    public ModelAndView modifySave(@PathVariable int id, @RequestParam String name, @RequestParam String email, @RequestParam String pswd){
        Compte u = compteRepository.findById(id);
        u.setId(id);
        u.setMail(email);
        u.setName(name);
        u.setPassword(pswd);
        compteRepository.save(u);
        ModelAndView mv = new ModelAndView();
        mv.addObject("error", "Account modified with success");
        mv.setViewName("modify");
        return mv;
    }
}

