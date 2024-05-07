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

    @GetMapping("/question/random/{lang}")
    public ResponseEntity<Questions> getRandomQuestion(@PathVariable String lang){
        return new ResponseEntity<>(questionsService.getRandomQuestion(lang), HttpStatus.OK);
    }

    @GetMapping("/tests/category/{id}/{lang}")
    @ResponseBody
    public ResponseEntity <List<Questions>> getRandomTest(@PathVariable int id, @PathVariable String lang){
        return new ResponseEntity<>(questionsService.getRandomTest(id, lang), HttpStatus.OK);
    }

    @GetMapping("/flashcards/category/{id}/{lang}")
    @ResponseBody
    public ResponseEntity<Cards> getRandomCard(@PathVariable int id, @PathVariable String lang){
        return new ResponseEntity<>(cardsService.getRandomCard(id, lang), HttpStatus.OK);
    }
}
