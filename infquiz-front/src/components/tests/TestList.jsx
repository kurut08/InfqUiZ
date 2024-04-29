const TestList = ({ questions }) => {
    return (
        <div className="game-list">
            {questions.map((items, index) => {
        return (
          <ol>
            {items.map((subItems, sIndex) => {
              return <li> {subItems} </li>;
            })}
          </ol>
        );
      })}
        </div>
    );
};
export default TestList;