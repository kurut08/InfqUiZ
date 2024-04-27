import './Flashcards.css';
import React, {useState} from "react";
import logo from "../../logo.png";
import {useLocation, useNavigate} from "react-router-dom";

function Flashcards() {
    const navigate = useNavigate();
    const [isFlipped, setIsFlipped] = useState(false);
    const location = useLocation();
    const { category } = location.state || {};
    const flipCard = () => {
        console.log('Card flipped');
        setIsFlipped(!isFlipped);
    };
    const navigateToHome = () => {
        navigate('/');
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
                        <p>1 strona</p>
                    </div>
                    <div className="back">
                        <p>2 strona</p>
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