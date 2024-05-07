package com.app.InfqUiZ;

import com.app.InfqUiZ.Models.Cards;
import com.app.InfqUiZ.Models.Questions;
import com.app.InfqUiZ.Repository.CardsRepository;
import com.app.InfqUiZ.Repository.QuestionsRepository;

public class SampleData {
    public void FillDB(QuestionsRepository questionsRepository, CardsRepository cardsRepository){
        System.out.println("\n############################"+"EXAMPLE DATA FILING"+"\n\n############################");
        Questions question1 = new Questions("Jaka firma stworzyła Jave?", "Microsoft", "Red Bull", "Docker", "Oracle", 1, "pl");
        Questions question2 = new Questions("Jaki jest domyślny zakres w javie?", "using", "import", "module", "package", 1, "pl");
        Questions question3 = new Questions("Czy w metodzie niestatycznej można się bezpośrednio odwoływać do pól statycznych klasy", "nie", "tak", "nie wiem", "Wikipedia", 1, "pl");
        questionsRepository.save(question1);
        questionsRepository.save(question2);
        questionsRepository.save(question3);
        Cards card1 = new Cards("Jakie są rodzaje typów w javie?", "Pierwotne (logiczne, całkowitoliczbowe, zmiennopozycyjne), Referencyjne (klas, interfejsów, tablic)", 1, "pl");
        Cards card2 = new Cards("Jakie są typy w javie?", "Pierwotne i Referencyjne", 1, "pl");
        cardsRepository.save(card1);
        cardsRepository.save(card2);
        System.out.println("ALL QUESTIONS\n"+ questionsRepository.findAll()+"\n############################");
        System.out.println("QUESTION OF ID 2:\n"+questionsRepository.findQuestionsById(2)+"\n############################");
        System.out.println("ALL CARDS:\n"+cardsRepository.findAll()+"\n############################");
    }
}
