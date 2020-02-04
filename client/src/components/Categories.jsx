import React from 'react';

var Categories = (props) => {
  var elements = [];

  for (var i=0; i < props.categories.length; i++) {
    //using var here actually causes a bug
    let cat = props.categories[i];
    elements.push(<button key={i} onClick={() => props.clickHandler(cat)} id={cat}>{cat}</button>);
  }

  return (
    <div className="categories">
      {elements}
    </div>
  );
}

export default Categories;
