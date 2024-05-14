package com.app.InfqUiZ.Models;

import jakarta.persistence.*;
//Class for creating Questions entity in database with given fields
@Entity
public class Questions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private String question;
    private String answer_a;
    private String answer_b;
    private String answer_c;
    @Column(nullable = false)
    private String answer_correct;
    @Column(nullable = false)
    private int category;
    @Column(nullable = false)
    private String lang;

    //Question with 4 answers, 1-4 good
    public Questions(String question, String answer_a, String answer_b, String answer_c, String answer_correct, int category, String lang){
        super();
        this.question = question;
        this.answer_a = answer_a;
        this.answer_b = answer_b;
        this.answer_c = answer_c;
        this.answer_correct = answer_correct;
        this.category = category;
        this.lang = lang;
    }

    //Questions with answer "True or False"
    public Questions(String question, String answer_a, String answer_correct, int category){
        super();
        this.question = question;
        this.answer_a = answer_a;
        this.answer_correct = answer_correct;
        this.category = category;
    }
    public Questions(){
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

    public String getAnswer_a() {
        return answer_a;
    }

    public void setAnswer_a(String answer_a) {
        this.answer_a = answer_a;
    }

    public String getAnswer_b() {
        return answer_b;
    }

    public void setAnswer_b(String answer_b) {
        this.answer_b = answer_b;
    }

    public String getAnswer_c() {
        return answer_c;
    }

    public void setAnswer_c(String answer_c) {
        this.answer_c = answer_c;
    }

    public String getAnswer_correct() {
        return answer_correct;
    }

    public void setAnswer_correct(String answer_correct) {
        this.answer_correct = answer_correct;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getLang() {
        return lang;
    }
}
