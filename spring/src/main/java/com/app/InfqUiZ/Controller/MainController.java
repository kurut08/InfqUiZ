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

    @GetMapping("/tests/category/{id}")
    @ResponseBody
    public ResponseEntity <List<Questions>> getRandomTest(@PathVariable int id){
        return new ResponseEntity<>(questionsService.getRandomTest(id), HttpStatus.OK);
    }

    @GetMapping("/card/random")
    public ResponseEntity<Cards> getRandomCard(){
        return new ResponseEntity<>(cardsService.getRandomCard(), HttpStatus.OK);
    }
    @GetMapping("/flashcards/category/{id}")
    @ResponseBody
    public ResponseEntity<Cards> getRandomCard(@PathVariable int id){
        return new ResponseEntity<>(cardsService.getRandomCard(id), HttpStatus.OK);
    }
}
