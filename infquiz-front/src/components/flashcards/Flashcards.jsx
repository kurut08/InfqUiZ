import './Flashcards.css';
import React, {useState, useEffect} from "react";
import logo from "../../logo.png";
import {Route, useParams, useRoutes, useLocation, useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";

function Flashcards() {
    const navigate = useNavigate();
    const [isFlipped, setIsFlipped] = useState(false);
    const location = useLocation();
    const [card, setCard] = useState([]);
    const { category } = location.state || {};
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
    useEffect(()=>{
        getFlashCard();
        }, [])
    const { t, i18n } = useTranslation();
    const getFlashCard = async () =>{
        try
        {
            const response = await fetch('http://localhost:8080/main'+location.pathname, {mode:'cors'}).then((response) => response.json());
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
            </div>
            <div id="flashcard-container" >
                <div className={`flashcard ${isFlipped ? 'flipped' : ''}`} onClick={flipCard}>
                    <div className="front">
                        <p>{t(card.question)}</p>
                    </div>
                    <div className="back">
                        <p>{t(card.answer)}</p>
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