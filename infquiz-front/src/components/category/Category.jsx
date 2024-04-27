import './Category.css';
import React from "react";
import logo from '../../logo.png';
import {useNavigate, useLocation} from "react-router-dom";
import {useTranslation} from "react-i18next";


function Category() {
    const navigate = useNavigate();
    const location = useLocation();
    const { type } = location.state || {};
    const navigateToJava = () => {
        navigate('/'+type+'/category/java', {
            state: {
                category: 'java'
            }
        });
    };
    const navigateToDatabases = () => {
        navigate('/'+type+'/category/db', {
            state: {
                category: 'db'
            }
        });
    };
    const navigateToComputerGraphics = () => {
        navigate('/'+type+'/category/cg', {
            state: {
                category: 'cg'
            }
        });
    };
    const navigateToOperativeSystem = () => {
        navigate('/'+type+'/category/os', {
            state: {
                category: 'os'
            }
        });
    };
    const navigateToHome = () => {
        navigate('/');
    };
    const { t, i18n } = useTranslation();

    return(
        <div>
            <div id="category-page">
                <div id="header">
                    <div className="logo-container" onClick={navigateToHome}>
                        <img
                            src={logo}
                            alt="App Logo" className="app-logo"/>
                    </div>
                </div>
                <div id="category-content">
                    <div className="category-grid">
                        <div className="category" onClick={navigateToJava}>
                            <h1>{t("category.java")}</h1>
                        </div>
                        <div className="category" onClick={navigateToDatabases}>
                            <h1>{t("category.databases")}</h1>
                        </div>
                        <div className="category" onClick={navigateToComputerGraphics}>
                            <h1>{t("category.computergraphics")}</h1>
                        </div>
                        <div className="category" onClick={navigateToOperativeSystem}>
                            <h1>{t("category.operativesystems")}</h1>
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

export default Category;