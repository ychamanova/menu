import React from 'react';
import Dish from './Dish.jsx';

var Section = (props) => {
  var { data } = props;
  var elements = [];

  //TODO: two columns of dishes 

  for (var dish in data.Dishes) {
    elements.push(
      <div key={dish}>
        <Dish name={dish} data={data.Dishes[dish]}/>
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