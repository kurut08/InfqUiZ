import React, { Component } from "react";
import './App.css';
import { Routes, Route, BrowserRouter } from "react-router-dom";

import Home from "./components/home/Home";
import Tests from "./components/tests/Tests";
import Flashcards from "./components/flashcards/Flashcards";
import QuickQuestion from "./components/quickQuestion/QuickQuestion";
import Category from "./components/category/Category";

class App extends Component {


  render() {

    return (
        <div className="App">
          <BrowserRouter>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/home" element={<Home />} />
                <Route path="/tests/category" element={<Category />} />
                <Route path="/tests/category/java" element={<Tests />} />
                <Route path="/tests/category/os" element={<Tests />} />
                <Route path="/tests/category/db" element={<Tests />} />
                <Route path="/tests/category/cg" element={<Tests />} />
                <Route path="/flashcards/category" element={<Category />} />
                <Route path="/flashcards/category/1" element={<Flashcards />} />
                <Route path="/flashcards/category/2" element={<Flashcards />} />
                <Route path="/flashcards/category/3" element={<Flashcards />} />
                <Route path="/flashcards/category/4" element={<Flashcards />} />
                <Route path="/quickquestion" element={<QuickQuestion />} />



            </Routes>
          </BrowserRouter>

        </div>
    );
  }
}

export default App;
