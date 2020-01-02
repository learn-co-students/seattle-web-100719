import React from 'react'
import './App.css';
import Liker from './component/liker'
import { createStore } from 'redux'

const initialState = {
  count: 0,
  message: "no rules"
}

const reducer = (state=initialState, action) => {
  switch(action.type){
    case "INCREMENT":
      console.log(action)
      return {...state, count: state.count+1, message: `${action.payload}, my money is on jen for this`}
    case "DECREMENT":
      console.log(action)
      return {...state, count: state.count-1, message: action.payload}
    default:
      return state
  }

}

export const store = createStore(reducer)

export class App extends React.Component {

  render(){
    
    store.subscribe(()=>{
      this.forceUpdate()
    })
    return(
      <div className="container">
        <div style={{color: 'blue'}}>Welcome to my Re: Ducks</div>
        <Liker />
      </div>
    )
  }
}