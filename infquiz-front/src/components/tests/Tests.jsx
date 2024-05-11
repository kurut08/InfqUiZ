import './Tests.css';
import React, { useState, useEffect } from "react";
import logo from '../../logo.png';
import ReactDOM from "react-dom/client";
import {useLocation, useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";
import TestList from './TestList';
import {Toggle} from "../Toggle/Toggle";

function Tests() {
    const navigate = useNavigate();
    const location = useLocation();
    const { category } = location.state || {};
    let [test, setTest] = useState([]);
    let random = [];
    let correctAnswer = [];
    let questionsToTest = [];
    const [showButton, setShowButton] = useState(true);
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

    useEffect(()=>{
        getTest();
        }, [])
    const { t, i18n } = useTranslation();
    const shufle = (array) => {
        for (let z = 0; z < array.length - 1; z++) {
            for (let i = array[0].length -1; i>=0; i--) {
                let j = Math.floor(Math.random() * (i + 1));
                let temp = array[z][i];
		        let tempj = array[z][j]; 
                array[z][i] = tempj;
                array[z][j] = temp;
            }

        }
    };
    let getTest = async () =>{
        try
        {
            let response = await fetch('http://localhost:8080/main'+location.pathname+'/'+t('lang'), {mode:'cors'}).then((response) => response.json());
            setTest(response);
        }
        catch(err)
        {
            console.log(err);
        }
    };
    let getSmth = () => {
        correctAnswer.length = 0;
        questionsToTest.length = 0;
        for(var i = 0; i < 20; i++){
            random.push([]);
            correctAnswer.push(test[i].answer_correct);
            random[i].push(test[i].answer_a);
            random[i].push(test[i].answer_b);
            random[i].push(test[i].answer_c);
            random[i].push(test[i].answer_correct);
        }
        shufle(random);
        for(var i = 0; i<20; i++){
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

    const handleClick = () =>{
        getSmth();
        setShowButton(false);
    }
    return(
        <div>
            <div id="test-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img src={logo} alt="App Logo" className="app-logo"/>
                    </div>
                    <div className="nav-container">
                        <div className="nav-item" onClick={navigateToQuickQuestion}>{t("home.quick.question")}</div>
                        <div className="nav-item" onClick={navigateToHome}>Home</div>
                        <div className="nav-item" onClick={navigateToTests}>{t("home.40questions")}</div>
                    </div>
                    <div className="toggle-container">
                        <Toggle/>
                    </div>
                </div>
                <div id="test-content">
                    {showButton && (
                        <button id="testButton" onClick={handleClick}>
                            {t("test.start")}
                        </button>
                    )}
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