import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

import Categories from './components/Categories.jsx';
import Page from './components/Page.jsx';
import data from './sample_data.js';

class Menu extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      data: data
    };
  }

  componentDidMount() {
    var pagenum = window.location.href[window.location.href.length - 1];

    $.get( "/api/menu/" + pagenum, function( dat ) {
      this.setState({
        data: dat
      });
    }.bind(this));
  }

  changeCategory(str) {
    this.setState({
      onPhrase: (this.state.onPhrase + 1) % this.state.data.length,
      translate: false
    });
  }

  render() {
    var categories = [];

    for (var cat in this.state.data.Categories) {
      categories.push(cat);
    }

    return (
      <div>
        <Categories categories={categories} clickHandler={this.changeCategory.bind(this)}/>

        <div className="selection">
          <Page data={this.state.data}/>
        </div>
      </div>
    );
  }
}

ReactDOM.render(<Menu />, document.getElementById('menu'));
