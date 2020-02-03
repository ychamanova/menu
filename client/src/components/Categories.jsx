import React from 'react';

class Categories extends React.Component {
  render () {
    var elements = [];

    for (var i=0; i < this.props.categories.length; i++) {
      //using var here actually causes a bug
      let cat = this.props.categories[i];
      elements.push(<button key={i} onClick={() => this.props.clickHandler(cat)} id={cat}>{cat}</button>);
    }

    return (
      <div className="categories">
        {elements}
      </div>
    );
  }
}

export default Categories;
