import React, { Component } from "react";

class Firework extends Component {
  state = {
    value: this.props.value
  };

  render() {
    let { opacity } = this.props;

    if (opacity > 0.95) {
      return (
        <img
          className="celebrate"
          src="https://media3.giphy.com/media/peAFQfg7Ol6IE/giphy.gif?cid=790b76115d163a6d46422e336305a143&rid=giphy.gif"
        />
      );
    } else {
      return null;
    }
  }
}

Firework.defaultProps = {
  opacity: 0,
  displayName: "FireworkComponent"
};

Firework.displayName = "Howdy!"

export default Firework;
