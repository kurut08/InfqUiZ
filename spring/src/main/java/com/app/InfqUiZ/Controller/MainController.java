package com.app.InfqUiZ.Controller;

import com.app.InfqUiZ.Models.Cards;
import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Service.CardsService;
import com.app.InfqUiZ.Service.QuestionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/main")
@CrossOrigin(origins = "*", maxAge = 3600)
public class MainController {
    @Autowired
    private QuestionsService questionsService;
    @Autowired
    private CardsService cardsService;

    @GetMapping("/question/random")
    public ResponseEntity<Questions> getRandomQuestion(){
        return new ResponseEntity<>(questionsService.getRandomQuestion(), HttpStatus.OK);
    }

    @GetMapping("/question/test")
    public ResponseEntity <List<Questions>> getRandomTest(){
        return new ResponseEntity<>(questionsService.getRandomTest(), HttpStatus.OK);
    }

    @GetMapping("/card/random")
    public ResponseEntity<Cards> getRandomCard(){
        return new ResponseEntity<>(cardsService.getRandomCard(), HttpStatus.OK);
    }
}
