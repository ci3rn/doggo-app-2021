import { createStore, combineReducers } from 'redux';

import doggosReducer from '../reducers/doggos';
import filtersReducer from '../reducers/filters';
import modalsReducer from '../reducers/modals';

export default () => {
    const store = createStore(
        combineReducers({
            doggos: doggosReducer,
            filters: filtersReducer,
            modals: modalsReducer
        })
    );

    return store;
};