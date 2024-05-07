package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface QuestionsRepository extends JpaRepository<Questions, Integer> {
    Questions findQuestionsById(Integer id);
    Questions findQuestionsByIdAndLang(Integer id, String lang);
    ArrayList<Questions> findQuestionsByCategory(int i);
    ArrayList<Questions> findQuestionsByCategoryAndLang(int i, String lang);
}
