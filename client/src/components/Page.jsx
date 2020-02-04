import React from 'react';
import Section from './Section.jsx';

var Page = (props) => {
  var elements = [];

  for (var section in props.data) {
    elements.push(
      <div key={section}>
        <hr />
        <h4>{section}</h4>
        <Section data={props.data[section]}/>
      </div>
    );
  }

  return (
    <div>
      {elements}
    </div>
  );
};


export default Page;