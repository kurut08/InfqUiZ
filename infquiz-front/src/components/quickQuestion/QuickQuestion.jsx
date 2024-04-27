import './QuickQuestion.css';
import React, { useState } from "react";
import logo from '../../logo.png';
import {useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";

function QuickQuestion() {
    const defaultVaule = [];
    const [question, setQuestion] = useState(defaultVaule);
    const [correctAnswer, setCorrectAnswer] = useState('');
    const navigate = useNavigate();
    const [random, setRandomQuestion] = useState(defaultVaule); 
    const [selectedAnswer, setSelectedAnswer] = useState('');
    const { t, i18n } = useTranslation();

    const navigateToHome = () => {
        navigate('/');
    };
    const shuffle = (array) => {
        for (var i = array.length - 1; i > 0; i--) {
          var j = Math.floor(Math.random() * (i + 1));
          var temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      };
    const getQuestion = async () =>{
        try
        {
            const response = await fetch('http://localhost:8080/main/question/random/', {mode:'cors'}).then((response) => response.json());
            console.log({ response });
            setQuestion(response);
            setCorrectAnswer(response.answer_correct);
            random.length = 0;
            console.log({random});
            random.push(response.answer_a);
            random.push(response.answer_b);
            random.push(response.answer_c);
            random.push(response.answer_correct);
            console.log({random});
            shuffle(random);
            setRandomQuestion(random);
        }
        catch(err)
        {
            console.log(err);
        }

    };
    const checkAnswer = () => {
        if (selectedAnswer === correctAnswer) {
          alert('Poprawna odpowiedź!');
        } else {
          alert('Niepoprawna odpowiedź. Spróbuj ponownie.');
        }
    };

    return(
        <div>
            <div id="quick-question-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                </div>
                <div id="quick-question-content">
                    <button type="button" className='btn-question' onClick={getQuestion}>
                        Get Random Question 
                    </button>
                    {!(question.length === 0) && (
                    <>
                        <div id="question" className='question'>
                            {question.question}
                        </div>
                        <div id="ans_a" className='answer' onClick={() => setSelectedAnswer(random[0])}>
                            <p>A. {t(random[0])}</p>
                        </div>
                        <div id="ans_b" className='answer' onClick={() => setSelectedAnswer(random[1])}>
                            <p>B. {t(random[1])}</p>
                        </div>
                        <div id="ans_c" className='answer' onClick={() => setSelectedAnswer(random[2])}>
                            <p>C. {t(random[2])}</p>
                        </div>
                        <div id="ans_d" className='answer' onClick={() => setSelectedAnswer(random[3])}>
                            <p>D. {t(random[3])}</p>
                        </div>
                        <button type="button" className='btn-check-answer' onClick={checkAnswer}>
                            Sprawdź odpowiedź
                        </button>
                    </> 
                )}
                    
                </div>
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        </div>
    );
}

export default QuickQuestion;