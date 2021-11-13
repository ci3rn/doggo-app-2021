// const doggosReducersDefaultState = [];
const doggosReducersDefaultState = require('../doggos.json');

export default (state = doggosReducersDefaultState, action) => {
    switch(action.type) {
        case 'ADD_DOGGO':
            return [
                ...state,
                action.doggo
            ];
        case 'REMOVE_DOGGO': 
            return state.filter((doggo) => doggo.id !== action.id);
        case 'EDIT_DOGGO':
            // return 
        default:
            return state;
    }
};