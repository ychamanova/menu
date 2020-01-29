import React from 'react';
import { expect } from 'chai';
import { mount } from 'enzyme';
import { spy } from 'sinon';
import Adapter from 'enzyme-adapter-react-16';
import { shallow, configure } from 'enzyme';
import Menu from '../client/src/components/Menu.jsx';

configure({adapter: new Adapter()});

spy(Menu.prototype, 'componentDidMount');

describe('<Menu />', () => {
  it('calls componentDidMount', () => {
    const wrapper = mount(<Menu />);
    expect(Menu.prototype.componentDidMount).to.have.property('callCount', 1);
  });
});