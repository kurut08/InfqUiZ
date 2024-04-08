package com.app.InfqUiZ.Models;

import jakarta.persistence.*;

@Entity
public class Questions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private String question;
    private String a;
    private String b;
    private String c;
    private String correct;

    //Question with 4 answers, 1-4 good
    public Questions(String question, String a, String b, String c, String correct){
        super();

        this.a = a;
        this.b = b;
        this.c = c;
        this.question = question;
    }

    //Questions with answer "True or False"
    public Questions(String question, String a, String correct){
        super();
        this.question = question;
        this.a = a;
        this.correct = correct;
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

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public String getCorrect() {
        return correct;
    }

    public void setCorrect(String correct) {
        this.correct = correct;
    }
}
