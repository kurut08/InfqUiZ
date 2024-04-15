package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Cards;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardsRepository extends JpaRepository<Cards, Integer> {
    Cards findCardsById(Integer id);
}
