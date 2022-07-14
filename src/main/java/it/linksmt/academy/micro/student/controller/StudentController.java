package it.linksmt.academy.micro.student.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/students")
public class StudentController {


    private static final Logger logger = LoggerFactory.getLogger(StudentController.class);


    @GetMapping
    public String  hello() {
        return "Hello vINCENZO!!!";
    }


}
