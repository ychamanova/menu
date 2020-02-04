import React from 'react';
import Dish from './Dish.jsx';

var Section = (props) => {
  var elements = [];

  //TODO: two columns of dishes 

  for (var dish in props.data.Dishes) {
    elements.push(
      <div key={dish}>
        <Dish name={dish} data={props.data.Dishes[dish]}/>
      </div>
    );
  }

  return (
    <div>
      {elements}
    </div>
  );

}


export default Section;