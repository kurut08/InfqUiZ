import './QuickQuestion.css';
import React from "react";
import logo from '../../logo.png';
import {useNavigate} from "react-router-dom";

function QuickQuestion() {
    const navigate = useNavigate();

    const navigateToHome = () => {
        navigate('/');
    };

    return(
        <div>
            <div id="quick-question-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                </div>
                <div id="quick-question-content">

                </div>
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        </div>
    );
}

export default QuickQuestion;