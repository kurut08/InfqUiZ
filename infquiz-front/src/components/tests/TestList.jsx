import { render } from "@testing-library/react";
import React, { useState, useEffect } from "react";
import ReactDOM from "react-dom";
import { useTranslation } from "react-i18next";

const TestList = ({ array }) => {
  let selectedAnswer = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  const { t, i18n } = useTranslation();
  let count = 0;
  let setSelectedAnswer = (item, index) =>{
    selectedAnswer[index] = item;
    if(array[index][5] === selectedAnswer[index]){
      count++;
      console.log({count});
    }
    console.log("Work");
  };
  let checkTest = () => {
    for(var i = 0; i < array.length; i++){
        document.getElementById("ans_a"+i).setAttribute('style', 'color: red');
        document.getElementById("ans_b"+i).setAttribute('style', 'color: red');
        document.getElementById("ans_c"+i).setAttribute('style', 'color: red');
        document.getElementById("ans_d"+i).setAttribute('style', 'color: red');
        if(array[i][0] === array[i][5]){
          document.getElementById("ans_a"+i).setAttribute('style', 'color: green');
        }
        if(array[i][1] === array[i][5]){
          document.getElementById("ans_b"+i).setAttribute('style', 'color: green');
        }
        if(array[i][2] === array[i][5]){
          document.getElementById("ans_c"+i).setAttribute('style', 'color: green');
        }
        if(array[i][3] === array[i][5]){
          document.getElementById("ans_d"+i).setAttribute('style', 'color: green');
        }
    }
    const root = ReactDOM.createRoot(
      document.getElementById('quick-question-result')
    );
    root.render(<div id="result">
      YOUR SCORE: {count}/20
    </div>)
}
  return (
    
    <div>
        {array.map((innerArray, index) => (
        <div key={index}>
          <div>{innerArray[4]}
              <div id={"ans_a"+index} className='answer' onClick={() =>setSelectedAnswer(innerArray[0], index)}>
                <p>A. {innerArray[0]}{index}</p>
              </div>
              <div id={"ans_b"+index} className='answer' onClick={() =>setSelectedAnswer(innerArray[1], index)}>
                <p>B. {innerArray[1]}</p>
              </div>
              <div id={"ans_c"+index} className='answer' onClick={() =>setSelectedAnswer(innerArray[2], index)}>
                <p>C. {innerArray[2]}</p>
              </div>
              <div id={"ans_d"+index} className='answer' onClick={() =>setSelectedAnswer(innerArray[3], index)}>
                <p>D. {innerArray[3]}</p>
              </div>
            </div>
        </div>
    ))}
    <button onClick={checkTest}>Check Results</button>
    </div>
  );
};
export default TestList;