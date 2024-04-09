import logo from './java-icon.svg';
import './App.css';
import { useState, useEffect } from 'react';

function App() {
const defaultValue = [];
const [question, setQuestion] = useState(defaultValue);

const getQuestion = async () =>{
  try
  {
    const response = await fetch('http://localhost:8080/main/random', {mode:'cors'}).then((response) => response.json());
    console.log({response});
    setQuestion(response);
  }
  catch(error)
  {
    console.log(error);
  }
};
  useEffect(() => {
    getQuestion();
  }, []);
const exampleQuestion = question;
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Here should be shown example random question</a>
          <p>{exampleQuestion.question}</p>
          <p>A.{exampleQuestion.answer_a}</p>
          <p>B.{exampleQuestion.answer_b}</p>
          <p>C.{exampleQuestion.answer_c}</p>
          <p>D.{exampleQuestion.answer_correct}</p>
        
      </header>
    </div>
  );
}

export default App;
