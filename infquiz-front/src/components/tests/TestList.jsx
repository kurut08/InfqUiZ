import React, { useState } from "react";
import './TestList.css';

const TestList = ({ array }) => {
    const [selectedAnswers, setSelectedAnswers] = useState(new Array(array.length).fill(null));
    const [score, setScore] = useState(null);
    const [resultsChecked, setResultsChecked] = useState(false);
    const [correctAnswers, setCorrectAnswers] = useState(new Array(array.length).fill(false));

    const handleAnswerClick = (answer, questionIndex) => {
        if (resultsChecked) return;

        const newAnswers = [...selectedAnswers];
        newAnswers[questionIndex] = answer;
        setSelectedAnswers(newAnswers);
    };

    const checkTest = () => {
        let count = 0;
        const newCorrectAnswers = new Array(array.length).fill(false);

        selectedAnswers.forEach((answer, index) => {
            const correctAnswer = array[index][5];
            if (answer === correctAnswer) {
                count++;
            }
            newCorrectAnswers[index] = true;
        });

        setScore(count);
        setCorrectAnswers(newCorrectAnswers);
        setResultsChecked(true);
    };

    return (
        <div id="testList">
            {array.map((innerArray, index) => (
                <div key={index} style={{textAlign: 'center'}}>
                    <div>{innerArray[4]}</div>
                    <div style={{
                        display: 'flex',
                        justifyContent: 'center',
                        alignItems: 'center',
                        flexDirection: 'column'
                    }}>
                        {innerArray.slice(0, 4).map((option, idx) => {
                            const isSelected = selectedAnswers[index] === option;
                            const isCorrect = correctAnswers[index] && option === array[index][5];

                            return (
                                <div
                                    key={idx}
                                    id={`ans_${['a', 'b', 'c', 'd'][idx]}${index}`}
                                    className={`answer${isSelected ? ' selected' : ''}${isCorrect ? ' correct' : ''}`}
                                    onClick={() => handleAnswerClick(option, index)}
                                    style={{pointerEvents: resultsChecked ? 'none' : 'auto'}}
                                >
                                    <p>{['A', 'B', 'C', 'D'][idx]}. {option}</p>
                                </div>
                            );
                        })}
                    </div>
                </div>
            ))}

            {score !== null && (
                <div id="quick-question-result">
                    YOUR SCORE: {score}/20
                </div>
            )}

            {!resultsChecked && (
                <button id="checkResults" onClick={checkTest}>Check Results</button>
            )}
        </div>
    );
};

export default TestList;
