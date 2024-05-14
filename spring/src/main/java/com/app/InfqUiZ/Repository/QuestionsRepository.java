package com.app.InfqUiZ.Repository;

import com.app.InfqUiZ.Models.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
//Interface between repository of Questsions and Java application
@Repository
public interface QuestionsRepository extends JpaRepository<Questions, Integer> {
    Questions findQuestionsById(Integer id);
    //Returns single questions by given id and language
    Questions findQuestionsByIdAndLang(Integer id, String lang);
    ArrayList<Questions> findQuestionsByCategory(int i);
    //Returns array of questions by given category and language from the database
    ArrayList<Questions> findQuestionsByCategoryAndLang(int i, String lang);
}
