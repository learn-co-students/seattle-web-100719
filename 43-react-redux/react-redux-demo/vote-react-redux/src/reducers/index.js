const reducer = (state, action) => {
    switch(action.type){
        case "INCREASE_VOTE":
            return {
                bowies: {
                    ...state.bowies,
                    [action.payload.id]: {
                        ...state.bowies[action.payload.id],
                        votes: state.bowies[action.payload.id].votes+1
                    }
                }
            }
        case "DECREASE_VOTE":
            return {
                bowies: {
                    ...state.bowies,
                    [action.payload.id]: {
                        ...state.bowies[action.payload.id],
                        votes: state.bowies[action.payload.id].votes-1
                    }
                }
            }
        default:
            return state
    }

}

export default reducer