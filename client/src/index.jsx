import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

import Categories from './components/Categories.jsx';
import Page from './components/Page.jsx';
import Specials from './components/Specials.jsx';
import data from './sample_data.js';

class Menu extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      data: data,
      currentPage: Object.keys(data.Categories)[0]
    };
  }

  componentDidMount() {
    var pagenum = window.location.href[window.location.href.length - 1];

    $.get( "/api/menu/" + pagenum, function( dat ) {
      this.setState({
        data: dat,
        currentPage: Object.keys(dat.Categories)[0]
      });
    }.bind(this));
  }

  changeCategory(str) {
    this.setState({
      currentPage: str
    });
  }

  render() {
    var categories = [];

    for (var cat in this.state.data.Categories) {
      categories.push(cat);
    }

    return (
      <div>
        

        <div className="selections">
          <h3> Menu </h3>
          <hr />
          <Categories categories={categories} clickHandler={this.changeCategory.bind(this)}/>

          <Page data={this.state.data.Categories[this.state.currentPage]}/>
          <hr />
        </div>

        <br /> <br /> <br />

        <div className="specials">
          <Specials blurb={this.state.data.Specials.Blurb}/>
        </div>
      </div>
    );
  }
}

ReactDOM.render(<Menu />, document.getElementById('menu'));
