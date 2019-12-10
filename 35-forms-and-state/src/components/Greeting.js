import React from "react";

class Greeting extends React.Component {
  render() {
    return <div>
      <h3>Hello {this.props.mod.name}</h3>
      <h4>{this.props.mod.date}</h4>
      </div>
  }
}

export default Greeting;
