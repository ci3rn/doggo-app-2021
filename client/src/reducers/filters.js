const filtersReducerDefaultState = {
    text: '',
    sortBy: 'name'
};

export default (state = filtersReducerDefaultState, action) => {
    switch(action.type) {
        case 'SET_TEXT_FILTER':
            return { text: action.text };
        case 'SORT_BY_NAME':
            return { sortBy: 'name' };
        case 'SORT_BY_AGE':
            return { sortBy: 'age' };
        case 'SORT_BY_WEIGHT':
            return { sortBy: 'weight' };
        default:
            return state;
    }
};