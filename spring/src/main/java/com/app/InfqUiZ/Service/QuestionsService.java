package com.app.InfqUiZ.Service;

import com.app.InfqUiZ.Models.Cards;
import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Repository.QuestionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

@Service
public class QuestionsService {
    Random random = new Random();
    @Autowired
    private QuestionsRepository questionsRepository;

    public void saveQuestion(Questions question){
        questionsRepository.save(question);
    }

    public Questions getRandomQuestion(){
        long range = questionsRepository.count();
        return questionsRepository.findQuestionsById(random.nextInt(1, (int) range+1));
    }

    public List<Questions> getAllQuestions(){
        return questionsRepository.findAll();
    }

    public List<Questions> getRandomTest(int id) {
        ArrayList<Questions> questionsList = questionsRepository.findQuestionsByCategory(id);
        List<Questions> list = new ArrayList<>();

        //need to change the limit value of i to f.e. 20
        for (int i = 0; i < 3; i++) {
           list.add(questionsList.get(random.nextInt(questionsList.size())));
        }
        return list;
    }
}
