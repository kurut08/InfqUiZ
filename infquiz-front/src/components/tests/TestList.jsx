import React, { useState, useEffect } from "react";
import { useTranslation } from "react-i18next";

const TestList = ({ array }) => {
  let [selectedAnswer, setSelectedAnswer] = useState([]);
  const { t, i18n } = useTranslation();
  return (
    
    <div>
        {array.map((innerArray, index) => (
        <div key={index}>
          <div>{innerArray[4]}
              <div id="ans_a" className='answer' onClick={() => setSelectedAnswer(innerArray[0])}>
                <p>A. {innerArray[0]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() => setSelectedAnswer(innerArray[1])}>
                <p>B. {innerArray[1]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() => setSelectedAnswer(innerArray[2])}>
                <p>C. {innerArray[2]}</p>
              </div>
              <div id="ans_a" className='answer' onClick={() => setSelectedAnswer(innerArray[3])}>
                <p>D. {innerArray[3]}</p>
              </div>
            </div>
        </div>
    ))}
    </div>
  );
};
export default TestList;