import React from "react";

class Greeting extends React.Component {
  render() {
    return <h1>Hello {this.props.modName}</h1>;
  }
}

export default Greeting;
