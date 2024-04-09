package com.app.InfqUiZ;

import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Repository.QuestionsRepository;

public class SampleData {
    public void FillDB(QuestionsRepository questionsRepository){
        System.out.println("\n############################"+"EXAMPLE DATA FILING"+"\n\n############################");
        Questions question1 = new Questions("Jaka firma stworzyła Jave?", "Microsoft", "Red Bull", "Docker", "Oracle");
        Questions question2 = new Questions("Jaki jest domyślny zakres w javie?", "using", "import", "module", "package");
        Questions question3 = new Questions("Czy w metodzie niestatycznej można się bezpośrednio odwoływać do pól statycznych klasy", "nie", "tak");
        questionsRepository.save(question1);
        questionsRepository.save(question2);
        questionsRepository.save(question3);
        System.out.println("ALL QUESTIONS\n"+ questionsRepository.findAll()+"\n############################");
        System.out.println("QUESTION OF ID 2:\n"+questionsRepository.findQuestionsById(2)+"\n############################");
    }
}
