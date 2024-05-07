package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Cards;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CardsRepository extends JpaRepository<Cards, Integer> {
    Cards findCardsById(Integer id);
    ArrayList<Cards> findCardsByCategory(int category);
    ArrayList<Cards> findCardsByCategoryAndLang(int category, String lang);

}
