import React, { Component } from "react";
import Firework from "./Firework";
import Dog from "./Dog";

class Cat extends Component {
  state = {
    opacity: 0,
    dog: "HEllo"
  };
  updateOpacity = e => {
    this.setState(
      {
        opacity: e.target.value / 100
      },
      () => {
        console.log(this.state);
      }
    );
  };

  getDogCeo = () => {
    fetch("https://dog.ceo/api/breeds/image/random")
      .then(resp => resp.json())
      .then(data => this.setState({ dog: data.message }));
  };

  componentDidMount() {
    this.getDogCeo();
  }

  renderDog = () => {
    return <Dog dogImage={this.state.dog} />;
  };

  render() {
    return (
      <div id="welcome">
        <h1>Welcome!</h1>
        {this.renderDog()}
        <div>
          <div>
            <input
              onChange={this.updateOpacity}
              value={this.state.opacity * 100}
              type="range"
              min="0"
              max="100"
            />
          </div>
          <Firework opacity={this.state.opacity} />
          <img
            style={{ opacity: this.state.opacity }}
            id="cool-cat"
            // src="https://i.redd.it/2ia20e4il3731.jpg"
            src="https://media3.giphy.com/media/CjmvTCZf2U3p09Cn0h/giphy.gif?cid=790b76115d16357f75324548498050e9&rid=giphy.gif"
          />
          <Firework opacity={this.state.opacity} />
        </div>
      </div>
    );
  }
}

export default Cat;
