export const increaseVote = (id) => {
    return {
        type: "INCREASE_VOTE",
        payload: {id: id}
    }
}

export const decreaseVote = (id) => {
    return {
        type: "DECREASE_VOTE",
        payload: {id: id}
    }
}
