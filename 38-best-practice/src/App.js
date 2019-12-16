import React, { Component } from "react";
import "./App.css";
import Cat from "./components/Cat";

class App extends Component {
  render() {
    return (
      <>
        <Cat />
        <Cat />
        <Cat />
      </>
    );
  }
}

export default App;
