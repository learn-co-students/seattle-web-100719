import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import {createStore} from 'redux'
import babyBowie from './assets/babyBowie.jpeg';
import hipsterBowie from './assets/hipsterBowie.jpg';
import ziggieBowie from './assets/ziggyBowie.jpg';
import goblinBowie from './assets/goblinBowie.jpg';
import reducer from './reducers'
import { Provider } from 'react-redux'

const initialState = {
    bowies: {
        1: {
            id: 1,
            name: 'Baby Bowie',
            votes: 0,
            image: babyBowie
        },
        2: {
            id: 2,
            name: 'Hipster Bowie',
            votes: 0,
            image: hipsterBowie
        },
        3: {
            id: 3,
            name: 'Ziggie Stardust',
            votes: 0,
            image: ziggieBowie
        },
        4: {
            id: 4,
            name: 'Goblin King',
            votes: -1000,
            image: goblinBowie
        }
    }
}

const store = createStore(reducer, initialState)


ReactDOM.render(
    <Provider store={store}>
        <App />
    </Provider>
    , document.getElementById('root'));
