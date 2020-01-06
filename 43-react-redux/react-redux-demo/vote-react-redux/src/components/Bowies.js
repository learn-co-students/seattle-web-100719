import React from 'react';
import BowieCard from './BowieCard';

const Bowies = props => {
    console.log(props)
    const mapBowies = () => {
        let bowieArray = Object.values(props.bowies);
        let bowieCard = bowieArray.map(bowie => {
            return(
                <BowieCard
                key={ bowie.id }
                increaseVote={ props.increaseVote}
                decreaseVote={props.decreaseVote}
                bowie={bowie}
                />
            )
        })
        return bowieCard;
    }
    return (
        <div>
            <div className="container">
                {mapBowies()}
            </div>
        </div>
    )
}

export default Bowies