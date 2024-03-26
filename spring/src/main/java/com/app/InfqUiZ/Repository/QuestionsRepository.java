package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface QuestionsRepository extends JpaRepository<Questions, Integer> {
    Questions findQuestionsById(Integer id);

}
