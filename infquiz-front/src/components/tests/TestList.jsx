import { render } from "@testing-library/react";
import React, { useState, useEffect } from "react";
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
    render(<div id="result">
      YOUR SCORE: {count}/20
    </div>)
}
  return (
    
    <div>
        {array.map((innerArray, index) => (
        <div key={index}>
          <div>{innerArray[4]}
              <div id="ans_a" className='answer' onClick={() =>setSelectedAnswer(innerArray[0], index)}>
                <p>A. {innerArray[0]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() =>setSelectedAnswer(innerArray[1], index)}>
                <p>B. {innerArray[1]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() =>setSelectedAnswer(innerArray[2], index)}>
                <p>C. {innerArray[2]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() =>setSelectedAnswer(innerArray[3], index)}>
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