import React from "react";
import Greeting from "./Greeting";

// let names = ["Hal Yeah", "Sunglasses", "Merbs", "MVP"]

class App extends React.Component {
//   constructor() {
//     this.state = {
//       names: ["Hal Yeah", "Sunglasses", "Merbs", "MVP"]
//     };
//   }

  state = {
    names: ["Hal Yeah", "Sunglasses", "Merbs", "MVP"]
  };

  render() {
    return (
      <div className="something">
        {this.state.names.map((name, index) => {
          return <Greeting key={index} modName={name} />;
        })}
      </div>
    );
  }
}

export default App;
