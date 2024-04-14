import React, { Component } from "react";
import './App.css';
import { Routes, Route, BrowserRouter } from "react-router-dom";

import Home from "./components/home/Home";
import Tests from "./components/tests/Tests";
import Flashcards from "./components/flashcards/Flashcards";
import QuickQuestion from "./components/quickQuestion/QuickQuestion";

class App extends Component {


  render() {

    return (
        <div className="App">
          <BrowserRouter>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/home" element={<Home />} />
                <Route path="/tests" element={<Tests />} />
                <Route path="/flashcards" element={<Flashcards />} />
                <Route path="/quickquestion" element={<QuickQuestion />} />


            </Routes>
          </BrowserRouter>

        </div>
    );
  }
}

export default App;
