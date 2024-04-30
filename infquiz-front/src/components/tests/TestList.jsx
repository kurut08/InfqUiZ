const TestList = ({ array }) => {
  return (
    <div>
      {array.map((innerArray, index) => (
        <div key={index}>
          {innerArray.map((item, innerIndex) => (
            <span key={innerIndex}>{item}</span>
          ))}
        </div>
      ))}
    </div>
  );
};
export default TestList;