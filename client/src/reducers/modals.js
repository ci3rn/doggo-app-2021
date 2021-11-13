
const modalsReducerDefaultState = {
    modal: false
};

export default (state = modalsReducerDefaultState, action) => {
    switch(action.type) {
        case 'SHOW_MODAL':
            return {
                ...state,
                modal: true
            };
        case 'HIDE_MODAL': 
            return {
                ...state,
                modal: false
            }
        default:
            return state;
    }
};