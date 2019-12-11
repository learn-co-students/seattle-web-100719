import React from "react";
import ModBrowser from "./ModBrowser";
import ModForm from "./ModForm";

// let names = ["Hal Yeah", "Sunglasses", "Merbs", "MVP"]

class App extends React.Component {
  //   constructor() {
  //     this.state = {
  //       names: ["Hal Yeah", "Sunglasses", "Merbs", "MVP"]
  //     };
  //   }

  state = {
    mods: [
      { id: 1, name: "Hal Yeah", date: "10-07-19" },
      { id: 2, name: "Sunglasses", date: "06-22-19" }
    ]
  };

  addMod = mod => {
    let updatedMod = Object.assign({}, mod, { id: this.state.mods.length + 1 });
    this.setState(
      prevState => {
        return {
          mods: [...prevState.mods, updatedMod]
        };
      },
      () => {
        console.log(this.state);
      }
    );
  };

  render() {
    return (
      <div className="something">
        <h2>My Application</h2>
        <hr />
        <ModForm onAddMod={this.addMod} />
        <ModBrowser mods={this.state.mods} />
      </div>
    );
  }
}

export default App;
