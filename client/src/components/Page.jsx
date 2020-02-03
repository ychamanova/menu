import React from 'react';
import Section from './Section.jsx';

class Page extends React.Component {

  render() {

    var elements = [];

    for (var section in this.props.data) {
      elements.push(
        <div key={section}>
          <hr />
          <h4>{section}</h4>
          <Section data={this.props.data[section]}/>
        </div>
      );
    }

    return (
      <div>
        {elements}
      </div>
    );
  }
}


export default Page;