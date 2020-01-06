import React from 'react';

const BowieCard = ({bowie,increaseVote, decreaseVote}) => {
    

    return(
        <div className='card'>
            <h2>Name: {bowie.name}</h2>
            <p>Votes: {bowie.votes}</p>
            <img src={bowie.image} alt={bowie.name}></img>
            <br />
            <button onClick={()=> { increaseVote(bowie.id)}}>UpVote</button>
            <button onClick={()=> { decreaseVote(bowie.id)}}>DownVote</button>
        </div>
    )
}

export default BowieCard;