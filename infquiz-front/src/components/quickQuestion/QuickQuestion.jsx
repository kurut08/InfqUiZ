import './QuickQuestion.css';
import React, { useState } from "react";
import logoLight from '../../logo.png';
import logoDark from '../../logo_dark.png'
import { useNavigate } from "react-router-dom";
import { useTranslation } from "react-i18next";
import {Toggle} from "../Toggle/Toggle";

function QuickQuestion() {
    const [question, setQuestion] = useState(null);
    const [correctAnswer, setCorrectAnswer] = useState('');
    const [randomAnswers, setRandomAnswers] = useState([]);
    const [resultsChecked, setResultsChecked] = useState(false);
    const [correctAnswerIndex, setCorrectAnswerIndex] = useState(null);
    const [selectedAnswerIndex, setSelectedAnswerIndex] = useState(null);
    const [isAnswerCorrect, setIsAnswerCorrect] = useState(null);
    const navigate = useNavigate();
    const { t } = useTranslation();

    const themes = {
        light: {
            logo: logoLight,
        },
        dark: {
            logo: logoDark,
        }
    };

    const navigateToHome = () => {
        navigate('/');
    };

    const navigateToQuickQuestion = () => {
        navigate('/quickQuestion');
    };

    const navigateToTests = () => {
        navigate('/tests/category', {
            state: {
                type: 'tests'
            }
        });
    };

    const shuffle = (array) => {
        for (let i = array.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [array[i], array[j]] = [array[j], array[i]];
        }
    };

    const getQuestion = async () => {
        try {
            const response = await fetch(`http://localhost:8080/main/question/random/${t('lang')}`, { mode: 'cors' });
            const data = await response.json();
            setQuestion(data);
            setCorrectAnswer(data.answer_correct);

            const answers = [data.answer_a, data.answer_b, data.answer_c, data.answer_correct];
            shuffle(answers);
            setRandomAnswers(answers);
            setCorrectAnswerIndex(answers.indexOf(data.answer_correct));

            setResultsChecked(false);
            setSelectedAnswerIndex(null);
            setIsAnswerCorrect(null);
        } catch (err) {
            console.log(err);
        }
    };

    const checkAnswer = (answer, index) => {
        setSelectedAnswerIndex(index);
        setIsAnswerCorrect(answer === correctAnswer);
        setResultsChecked(true);
    };

    return (
        <div id="quick-question-page">
            <div id="header">
                <div className="logo-container" onClick={navigateToHome}>
                    <img src={themes[localStorage.getItem("selectedTheme")].logo} alt="App Logo" className="app-logo"/>
                </div>
                <div className="nav-container">
                    <div className="nav-item" onClick={navigateToQuickQuestion}>{t("home.quick.question")}</div>
                    <div className="nav-item" onClick={navigateToHome}>Home</div>
                    <div className="nav-item" onClick={navigateToTests}>{t("home.40questions")}</div>
                </div>
                <div className="toggle-container" onClick={navigateToQuickQuestion}>
                    <Toggle/>
                </div>
            </div>
            <div id="quick-question-content">
                <button id="getRandomQuestion" type="button" onClick={getQuestion}>
                    {t("quickQuestion.getRandomQuesiton")}
                </button>
                {question && (
                    <>
                        <div id="question" className="question">
                            {question.question}
                        </div>
                        {randomAnswers.map((option, idx) => {
                            const isCorrect = resultsChecked && idx === correctAnswerIndex;
                            const isSelected = idx === selectedAnswerIndex;
                            const isIncorrect = isSelected && !isAnswerCorrect && resultsChecked;

                            return (
                                <div
                                    key={idx}
                                    id={`ans_${['a', 'b', 'c', 'd'][idx]}`}
                                    className={`answer${isCorrect ? ' correct' : ''}${isIncorrect ? ' incorrect' : ''}`}
                                    onClick={() => checkAnswer(option, idx)}
                                    style={{ pointerEvents: resultsChecked ? 'none' : 'auto' }}
                                >
                                    <p>{['A', 'B', 'C', 'D'][idx]}. {option}</p>
                                </div>
                            );
                        })}
                    </>
                )}
            </div>
            <div className="footer">
                <h4 id="corpo">SSR Association</h4>
            </div>
        </div>
    );
}

export default QuickQuestion;
