import React from 'react';

var Dish = (props) => {
  var { name, data } = props;

  return (
    <div>
      {name}
      <br />
      {data.Ingredients}
      <br />
      {'$' + (data.Price * .01).toFixed(2)}
      <br /><br />
    </div>
  );
}

export default Dish;