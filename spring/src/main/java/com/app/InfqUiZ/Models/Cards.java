package com.app.InfqUiZ.Models;

import jakarta.persistence.*;
//Class for creating Cards entity in database with given fields
@Entity
public class Cards {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private String question;
    @Column(nullable = false)
    private String answer;
    @Column(nullable = false)
    private int category;
    @Column(nullable = false)
    private String lang;
    public Cards(String question, String answer, int category, String lang){
        super();
        this.question = question;
        this.answer = answer;
        this.category = category;
        this.lang = lang;
    }
    public Cards(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }
}
