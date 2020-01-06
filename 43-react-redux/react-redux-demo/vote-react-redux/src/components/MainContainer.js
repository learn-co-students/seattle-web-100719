import React from 'react';
import Bowies from './Bowies';
import babyBowie from '../assets/babyBowie.jpeg';
import hipsterBowie from '../assets/hipsterBowie.jpg';
import ziggieBowie from '../assets/ziggyBowie.jpg';
import goblinBowie from '../assets/goblinBowie.jpg';

class MainContainer extends React.Component {
    constructor(){
        super()
        this.state = {
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
                },
            }
        }
    }

    increaseVote = (bowieID) => {
        this.setState({
            bowies: {
                ...this.state.bowies,
                [bowieID]: {
                    ...this.state.bowies[bowieID],
                    votes: this.state.bowies[bowieID].votes+1
                }
            }
        })
    }

    decreaseVote = (bowieID) => {

        this.setState({
            bowies: {
                ...this.state.bowies,
                [bowieID]: {
                    ...this.state.bowies[bowieID],
                    votes: this.state.bowies[bowieID].votes-1
                }
            }
        })
    }
    
    render(){
        return(
            <div>
                <Bowies 
                    increaseVote={this.increaseVote}
                    decreaseVote={this.decreaseVote}
                    bowies={this.state.bowies}
                />
                <h1>THANKS FOR VOTING</h1>
            </div>
        )
    }
}

export default MainContainer;