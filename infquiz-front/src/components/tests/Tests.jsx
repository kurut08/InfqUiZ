import './Tests.css';
import React from "react";
import logo from '../../logo.png';
import {useLocation, useNavigate} from "react-router-dom";

function Tests() {
    const navigate = useNavigate();
    const location = useLocation();
    const { category } = location.state || {};
    const navigateToHome = () => {
        navigate('/');
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

                </div>
                <div className="footer">
                    <h4 id="corpo">SSR Association</h4>
                </div>
            </div>
        </div>
    );
}

export default Tests;