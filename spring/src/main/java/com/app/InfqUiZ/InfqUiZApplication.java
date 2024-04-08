package com.app.InfqUiZ;

import com.app.InfqUiZ.Repository.QuestionsRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class InfqUiZApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfqUiZApplication.class, args);
	}
	@Bean
	CommandLineRunner run(QuestionsRepository questionsRepository){
		return args ->{
			SampleData sampleData = new SampleData();
			sampleData.FillDB(questionsRepository);
		};
	}
}
