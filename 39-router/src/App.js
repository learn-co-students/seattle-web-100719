import React from "react";
import "./assets/css/minty.css";
import "./App.css";
import GlassesBrowser from "./components/GlassesBrowser";
import Manager from "./components/Manager";
import NavBar from "./components/NavBar";
import GLASSES from "./data";
import Details from "./components/Details";
import { BrowserRouter as Router, Route } from "react-router-dom";

// We need to take care of routing and rendering GlassesBrowser, Manager, and Details
// With appropriate client-side routes / URLs

class App extends React.Component {
  state = {
    glasses: []
  };

  componentDidMount() {
    this.setState({ glasses: GLASSES });
  }

  render() {
    return (
      <div className="App">
        <Router>
          <NavBar />
          <Route path="/" exact render={() => <h2>HOME</h2>} />
          <Route
            exact
            path="/glasses"
            render={() => <GlassesBrowser glasses={this.state.glasses} />}
          />
          <Route path="/manager" component={Manager} />
          <Route path="/glasses/:id" render={(props) => <Details {...props} glasses={this.state.glasses}/>}/>
        </Router>
      </div>
    );
  }
}

export default App;
