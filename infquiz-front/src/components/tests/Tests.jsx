import './Tests.css';
import React, { useState, useEffect } from "react";
import logo from '../../logo.png';
import ReactDOM from "react-dom";
import {useLocation, useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";
import TestList from './TestList';
import { render } from '@testing-library/react';

function Tests() {
    const navigate = useNavigate();
    const location = useLocation();
    const { category } = location.state || {};
    let [test, setTest] = useState([]);
    let random = [[],[]];
    let correctAnswer = [];
    let questionsToTest = [];
    const navigateToHome = () => {
        navigate('/');
    };
    useEffect(()=>{
        getTest();
        }, [])
    const { t, i18n } = useTranslation();
    const shufle = (array) => {
        for (let z = 0; z < array.length; z++) {
            for (let i = array[0].length -1; i>=0; i--) {
                let j = Math.floor(Math.random() * (i + 1));
                let temp = array[z][i];
		        let tempj = array[z][j]; 
                array[z][i] = tempj;
                array[z][j] = temp;
                console.log(array[z][j]);
            }

        }
    };
    let getTest = async () =>{
        try
        {
            let response = await fetch('http://localhost:8080/main'+location.pathname, {mode:'cors'}).then((response) => response.json());
            setTest(response);
            console.log({test});
        }
        catch(err)
        {
            console.log(err);
        }
    };
    let getSmth = () => {
        correctAnswer.length = 0;
        random = [[],[]];
        questionsToTest.length = 0;
        for(var i = 0; i < test.length - 1; i++){
            correctAnswer.push(test[i].answer_correct);
            random[i].push(test[i].answer_a);
            random[i].push(test[i].answer_b);
            random[i].push(test[i].answer_c);
            random[i].push(test[i].answer_correct);
        }
        shufle(random);
        for(var i = 0; i<test.length - 1; i++){
            random[i].push(test[i].question);
            random[i].push(test[i].answer_correct);
        }
        console.log({random});
        console.log({correctAnswer});
        const root = ReactDOM.createRoot(
            document.getElementById('test-questions')
          );
        root.render(<TestList array={random}/>);
    }
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
                    <button onClick={getSmth}>Start Test!</button>
                    <div id="test-questions"></div>
                    <div id="quick-question-result"></div>
                </div>
                
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        
        </div>
    );

}

export default Tests;