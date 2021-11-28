import { createStore, combineReducers, applyMiddleware } from 'redux';

import doggosReducer from '../reducers/doggos';
import filtersReducer from '../reducers/filters';
import modalsReducer from '../reducers/modals';
import thunk from 'redux-thunk';

export default () => {
    const store = createStore(
        combineReducers({
            doggos: doggosReducer,
            filters: filtersReducer,
            modals: modalsReducer
        }),
        applyMiddleware(thunk)
    );

    return store;
};