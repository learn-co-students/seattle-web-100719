import React from 'react'
import {store} from '../App'

const Liker = () => {
    const increment = () => {
        store.dispatch({type: 'INCREMENT', payload: "what's up. hello"})
    }
    const decrement = () => {
        store.dispatch({type: 'DECREMENT', payload: "shawn hates fun. no it's not"})
    }
    
    return(
        <div>
            <div>App has {store.getState().count} like(s)</div>
            <div>{store.getState().message}</div>
            <button onClick={increment}> ++</button>
            <button onClick={decrement}> --</button>
        </div>
    )
}

export default Liker
