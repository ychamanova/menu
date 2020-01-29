import React from 'react';

const Practice = (props) => (
  <div>
    <h1>Practice</h1>
    <div className="card">
      <div className="card-kor">{props.phr.kor}</div>
      <div className="card-rom">{props.phr.rom}</div>
      <div 
        onClick={props.translateHandler}
        className="card-eng">{props.translate ? props.phr.eng : '*Reveal Translation*'}
      </div>
      <button onClick={() => props.clickHandler('Not Yet')} id="notyet">Not yet</button>
      <button onClick={() => props.clickHandler('Almost')} id="almost">Almost</button>
      <button onClick={() => props.clickHandler('Got it')} id="gotit">Got it</button>
    </div>
  </div>
);

export default Practice;
