import React from 'react';

var Dish = (props) => (
  <div>
    {props.name}
    <br />
    {props.data.Ingredients}
    <br />
    {'$' + (props.data.Price * .01).toFixed(2)}
    <br /><br />
  </div>
);

export default Dish;