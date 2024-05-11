import './Flashcards.css';
import React, {useState, useEffect} from "react";
import logo from "../../logo.png";
import { useLocation, useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";
import {Toggle} from "../Toggle/Toggle";

function Flashcards() {
    const navigate = useNavigate();
    const [isFlipped, setIsFlipped] = useState(false);
    const location = useLocation();
    const [card, setCard] = useState([]);
    const flipCard = () => {
        console.log('Card flipped');
        setIsFlipped(!isFlipped);
        if(isFlipped)
        {
            getFlashCard();
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

    useEffect(()=>{
        getFlashCard();
        }, [])

    const { t, i18n } = useTranslation();
    const getFlashCard = async () =>{
        try
        {
            const response = await fetch('http://localhost:8080/main'+location.pathname+'/'+t('lang'), {mode:'cors'}).then((response) => response.json());
            console.log({ response });
            setCard(response);
            console.log({card});
        }
        catch(err)
        {
            console.log(err);
        }

    };
    return (
        <div id="flashcard-page">
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
            <div id="flashcard-container">
                <div className={`flashcard ${isFlipped ? 'flipped' : ''}`} onClick={flipCard}>
                    <div className="front">
                        <p>{card.question}</p>
                    </div>
                    <div className="back">
                        <p>{card.answer}</p>
                    </div>
                </div>
            </div>
            <div className="footer">
                <h4 id="corpo">SSR Association</h4>
            </div>
        </div>
    );
}

export default Flashcards;