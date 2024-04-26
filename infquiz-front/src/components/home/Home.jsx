import './Home.css';
import React from "react";
import logo from '../../logo.png';
import {useNavigate} from "react-router-dom";

function Home() {
    const navigate = useNavigate();

    const navigateToTests = () => {
        navigate('/tests/category', {
            state: {
                type: 'tests'
            }
        });
    };
    const navigateToFlashcards = () => {
        navigate('/flashcards/category', {
            state: {
                type: 'flashcards'
            }
        });
    };
    const navigateToQuickQuestion = () => {
        navigate('/quickQuestion');
    };
    const navigateToHome = () => {
        navigate('/');
    };

    return(
        <div>
            <div id="home-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                </div>
                <div id="main-content">
                    <div id="main-navigation">
                        <div className="navigation-button" onClick={navigateToQuickQuestion}>
                            <h1>Quick question</h1>
                        </div>
                        <div className="navigation-button" onClick={navigateToTests}>
                            <h1>40 questions Test</h1>
                        </div>
                        <div className="navigation-button" onClick={navigateToFlashcards}>
                            <h1>FlashCards</h1>
                        </div>
                    </div>
                </div>
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        </div>
    );
}

export default Home;