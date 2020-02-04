import React from 'react';
import Blurb from './styled/Blurb.jsx';

var Specials = (props) => {

  var { blurb } = props;

  return (
    <div>
      <h3> Specials </h3>
      <hr />
      <Blurb> {blurb} </Blurb>
    </div>
  );
}

export default Specials;