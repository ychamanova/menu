import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

import Practice from './components/Practice.jsx';
import Menu from './components/Menu.jsx';
import data from './sample_data.js';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      view: 'phrases',
      data: data,
      onPhrase: 0,
      translate: false
    };
  }

  changeView(option) {
    this.setState({
      view: option
    });
  }

  componentDidMount() {
    $.get( "/api/menu/" + 1, function( dat ) {
      this.setState({
        data: dat
      });
    }.bind(this));
  }

  nextCard(str) {
    this.setState({
      onPhrase: (this.state.onPhrase + 1) % this.state.data.length,
      translate: false
    });

    $.ajax({
       type: 'PATCH',
       url: '/api/phrases/' + (this.state.onPhrase + 1) + '/' + str,
       processData: false,
       contentType: 'application/merge-patch+json',
    });
  }

  showTranslation() {
    this.setState({
      translate: !this.state.translate
    });
  }

  render() {
    return (
      <div>
        <div className="nav">
          <span className={this.state.view === 'phrases'
            ? 'nav-selected'
            : 'nav-unselected'}
          onClick={() => this.changeView('phrases')}>
          </span>
          <span className={this.state.view === 'practice'
            ? 'nav-selected'
            : 'nav-unselected'}
          onClick={() => this.changeView('practice')}>
          </span>
        </div>

        <div className="main">
          {this.state.view === 'phrases'
            ? <Menu phdata={this.state.data}/>
            : <Practice 
                clickHandler={this.nextCard.bind(this)}
                translateHandler={this.showTranslation.bind(this)}
                translate={this.state.translate}
                phr={this.state.data[this.state.onPhrase]}
              />
          }
        </div>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
