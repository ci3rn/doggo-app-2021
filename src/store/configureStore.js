import { createStore, combineReducers } from 'redux';

import doggosReducer from '../reducers/doggos';
import filtersReducer from '../reducers/filters';

export default () => {
    const store = createStore(
        combineReducers({
            doggos: doggosReducer,
            filters: filtersReducer
        })
    );

    return store;
};