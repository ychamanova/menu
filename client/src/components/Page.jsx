import React from 'react';
import Section from './Section.jsx';

var Page = (props) => {
  var elements = [];

  var { data } = props;

  for (var section in data) {
    elements.push(
      <div key={section}>
        <hr />
        <h4>{section}</h4>
        <Section data={data[section]}/>
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