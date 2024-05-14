import './Home.css';
import React, {useEffect, useState} from "react";
import logoLight from '../../logo.png';
import logoDark from '../../logo_dark.png'
import {useNavigate} from "react-router-dom";
import { useTranslation } from "react-i18next";
import {Toggle} from "../Toggle/Toggle";

function Home() {
    const navigate = useNavigate();
    const themes = {
        light: {
            logo: logoLight,
        },
        dark: {
            logo: logoDark,
        }
    };
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
    const navigateHere = () =>{
        navigate('.', { replace: true });
    }
    const { t, i18n } = useTranslation();

    return(
        <div>
            <div id="home-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={themes[localStorage.getItem("selectedTheme")].logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                    <div className="toggle-container" onClick={navigateToHome}>
                        <Toggle/>
                    </div>
                </div>
                <div id="main-content">
                    <div id="main-navigation">
                    <div className="navigation-button" onClick={navigateToQuickQuestion}>
                            <h1>{t("home.quick.question")}</h1>
                        </div>
                        <div className="navigation-button" onClick={navigateToTests}>
                            <h1>{t("home.40questions")}</h1>
                        </div>
                        <div className="navigation-button" onClick={navigateToFlashcards}>
                            <h1>{t("home.flashcards")}</h1>
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