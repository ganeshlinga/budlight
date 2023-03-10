package com.example.budlight;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@SpringBootApplication
@RestController
public class BudlightApplication {

    @GetMapping("/Welcome")
    public String Welcome() {
        return "Hello how are you";

    }


    public static void main(String[] args) {
        SpringApplication.run(BudlightApplication.class, args);
    }

}
