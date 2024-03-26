package com.app.InfqUiZ.Controller;

import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Service.QuestionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/main")
public class MainController {
    @Autowired
    private QuestionsService questionsService;

    @GetMapping("/random")
    public ResponseEntity<Questions> getRandomQuestion(){
        return new ResponseEntity<>(questionsService.getRandomQuestion(), HttpStatus.OK);
    }

    @GetMapping("/test")
    public ResponseEntity <List<Questions>> getRandomTest(){
        return new ResponseEntity<>(questionsService.getRandomTest(), HttpStatus.OK);
    }
}
