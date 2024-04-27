import './Category.css';
import React from "react";
import logo from '../../logo.png';
import {useNavigate, useLocation} from "react-router-dom";

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
                            <h1>Java</h1>
                        </div>
                        <div className="category" onClick={navigateToDatabases}>
                            <h1>Databases</h1>
                        </div>
                        <div className="category" onClick={navigateToComputerGraphics}>
                            <h1>Computer Graphics</h1>
                        </div>
                        <div className="category" onClick={navigateToOperativeSystem}>
                            <h1>Operative System</h1>
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