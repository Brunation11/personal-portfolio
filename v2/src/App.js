import React from 'react';
import './App.css';

import logo from './assets/full-size-logo-black.png';
import banner from './assets/jumbotron.gif';

export default class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      navItems: [
        {
          url: 'foo/.',
          label: 'Projects',
          active: true,
        },
        {
          url: 'foo/.',
          label: 'Blog',
          active: false,
        },
        {
          url: 'foo/.',
          label: 'About',
          active: false,
        },
        {
          url: 'foo/.',
          label: 'Contact',
          active: false,
        }
      ]
    }
  }

  render() {
    let navItems = this.state.navItems.map((item, index) => {
      return (
        <button key={index} className="nav-item">{item.label}</button>
      )
    });

    return (
      <div className="App">
        <header className="header">
          {navItems}
          <img src={logo} className="logo" alt="logo" />
        </header>
        <img src={banner} className="banner" alt="banner" />
        <p className="quote">
          “CREATIVITY CAN SOLVE ALMOST ANY PROBLEM. THE CREATIVE ACT, THE DEFEAT OF HABIT BY ORIGINALITY, OVERCOMES EVERYTHING.”―GEORGE LOIS
        </p>
      </div>
    );
  }
}
