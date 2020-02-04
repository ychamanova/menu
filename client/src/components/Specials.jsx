import React from 'react';

var Specials = (props) => {

  var { blurb } = props;

  return (
    <div>
      <h3> Specials </h3>
      <hr />
      {blurb}
    </div>
  );
}

export default Specials;