package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Cards;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
//Interface between repository of Cards and Java application
@Repository
public interface CardsRepository extends JpaRepository<Cards, Integer> {
    //Returns single card by given id and language
    Cards findCardsById(Integer id);
    ArrayList<Cards> findCardsByCategory(int category);
    //Returns array of cards by given category and language from the database
    ArrayList<Cards> findCardsByCategoryAndLang(int category, String lang);

}
