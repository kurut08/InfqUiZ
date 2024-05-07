package com.app.InfqUiZ.Service;

import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Repository.QuestionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class QuestionsService {
    Random random = new Random();
    @Autowired
    private QuestionsRepository questionsRepository;

    public void saveQuestion(Questions question){
        questionsRepository.save(question);
    }

    public Questions getRandomQuestion(String lang){
        long range = questionsRepository.count();
        return questionsRepository.findQuestionsByIdAndLang(random.nextInt(1, (int) range+1),lang);
    }

    public List<Questions> getAllQuestions(){
        return questionsRepository.findAll();
    }


    public List<Questions> getRandomTest(int id, String lang) {
        ArrayList<Questions> questionsList = questionsRepository.findQuestionsByCategoryAndLang(id, lang);
        List<Questions> list = new ArrayList<>();

        //21 questions -> 20 displayed
        for (int i = 0; i < 21; i++) {
           list.add(questionsList.get(random.nextInt(questionsList.size())));
        }
        return list;
    }
}
