import './Tests.css';
import React, { useState, useEffect } from "react";
import logo from '../../logo.png';
import {useLocation, useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";
import TestList from './TestList';

function Tests() {
    const navigate = useNavigate();
    const location = useLocation();
    const { category } = location.state || {};
    let [test, setTest] = useState([]);
    let random = [];
    let correctAnswer = [];
    let [selectedAnswer, setSelectedAnswer] = useState('');
    const navigateToHome = () => {
        navigate('/');
    };
    useEffect(()=>{
        getTest();

        }, [])
    const { t, i18n } = useTranslation();
    const shufle = (array) => {
        for (var i = 0; i < array.length; i++) {
            for(var z = array[i].length - 1; z > 0; z--)
            {
                var j = Math.floor(Math.random() * (z + 1));
                var temp = array[i][z];
                array[i][z] = array[i][j];
                array[i][j] = temp;
            }
        }
    };
    let getTest = async () =>{
        try
        {
            const response = await fetch('http://localhost:8080/main'+location.pathname, {mode:'cors'}).then((response) => response.json());
            setTest(response);
            console.log({test});
            console.log({test});
            correctAnswer.length = 0;
            for(var i = 0; i < test.length; i++){
                correctAnswer.push(test[i].answer_correct);
                random.push(test[i].answer_a);
                random.push(test[i].answer_b);
                random.push(test[i].answer_c);
                random.push(test[i].answer_correct);

            }
            shufle(random);
            console.log({random});
            console.log({response});
            console.log({correctAnswer});

        }
        catch(err)
        {
            console.log(err);
        }

    };
    
    return(
        <div>
            <div id="test-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                </div>
                <div id="quick-question-content">
                {random.map((items, index) => {
                    return (
                        <ol>
                            <li>{items.question}</li>

                         </ol>
                        );
                    })}
                </div>
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        </div>
    );
}

export default Tests;