import React from "react";

import Filters from "./Filters";
import PetBrowser from "./PetBrowser";

class App extends React.Component {
  constructor() {
    super();

    this.state = {
      pets: [],
      filters: {
        type: "all"
      }
    };
    this.fetchPets();
  }

  changeType = newType => {
    this.setState({
      filters: {
        type: newType
      }
    });
  };

  adoptPet = id => {
    this.setState(prevState => {
      return {
        pets: prevState.pets.map(pet => {
          // if (pet.id === id) {
          //   return Object.assign({}, pet, {isAdopted: true})
          // } else {
          //   return pet
          // }
          return pet.id === id
            ? Object.assign({}, pet, { isAdopted: true })
            : pet;
        })
      };
    });
  };

  fetchPets = () => {
    let { type } = this.state.filters;
    fetch(type === "all" ? "/api/pets" : `/api/pets?type=${type}`)
      .then(resp => resp.json())
      .then(json => {
        this.setState({ pets: json });
      });
  };

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters
                onFindPetsClick={this.fetchPets}
                onChangeType={this.changeType}
              />
            </div>
            <div className="twelve wide column">
              <PetBrowser pets={this.state.pets} onAdoptPet={this.adoptPet} />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
