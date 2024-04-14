import './Home.css';
import React from "react";
import {useNavigate} from "react-router-dom";

function Home() {
    const navigate = useNavigate();

    const navigateToTests = () => {
        navigate('/tests');
    };
    const navigateToFlashcards = () => {
        navigate('/flashcards');
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
                            src="https://cdn.discordapp.com/attachments/1112468265529258126/1229157476650324038/logo.png?ex=662ea91b&is=661c341b&hm=74c8b53e1281962398c9470abfd650db286249a1483db84f097aa7772c205882&"
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
                    <h4 id="corpo">SSR Inc.</h4>
                </div>
            </div>
        </div>
    );
}

export default Home;