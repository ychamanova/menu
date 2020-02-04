import React from 'react';

var Categories = (props) => {
  var elements = [];

  var { categories, clickHandler } = props;

  for (var i=0; i < categories.length; i++) {
    //using var here actually causes a bug
    let cat = categories[i];
    elements.push(<button key={i} onClick={() => clickHandler(cat)} id={cat}>{cat}</button>);
  }

  return (
    <div className="categories">
      {elements}
    </div>
  );
}

export default Categories;
