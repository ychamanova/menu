import React from 'react';
import Dish from './Dish.jsx';

class Section extends React.Component {

  render() {

    var elements = [];

    console.log(this.props.data)

    //TODO: two columns of dishes 

    for (var dish in this.props.data.Dishes) {
      elements.push(
        <div key={dish}>
          <Dish name={dish} data={this.props.data.Dishes[dish]}/>
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


export default Section;