import React from 'react';

class Menu extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      view: 'phrases'
    };
  }

  changeView(option) {
    this.setState({
      view: option
    });
  }

  componentDidMount() {
    var x = 0;
  }

  render() {
    var phrases = [];

    return (<div>{phrases}</div>);
  }

}


export default Menu;