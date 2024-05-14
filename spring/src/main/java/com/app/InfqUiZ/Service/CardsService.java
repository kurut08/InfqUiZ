package com.app.InfqUiZ.Service;

import com.app.InfqUiZ.Models.Cards;
import com.app.InfqUiZ.Repository.CardsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Random;
//Class for maintain connection between interface and controller
@Service
public class CardsService {
    Random random = new Random();
    @Autowired
    private CardsRepository cardsRepository;

    public Cards getRandomCard(String lang){
        long range = cardsRepository.count();
        return cardsRepository.findCardsById(random.nextInt(1,(int) range+1));
    }
    //Getting random card from repository
    public Cards getRandomCard(int id, String lang){
        ArrayList<Cards> cardsList = cardsRepository.findCardsByCategoryAndLang(id, lang);
        long range = cardsList.size();
        return cardsList.get(random.nextInt(0,(int) range));
    }
}
