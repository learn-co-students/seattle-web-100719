import React from 'react';
import './App.css';
import Liker from './components/liker'

class App extends React.Component {
  
  render(){
    return (
      <div className="App">
        <div>title holder</div>
        <div>counter here</div>
        <Liker />
      </div>
    );
  }
}

export default App;
