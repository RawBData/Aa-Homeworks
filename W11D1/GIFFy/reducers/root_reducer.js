import { combineReducers } from 'redux';
import {giphysReducer} from './giphys_reducer';


const RootReducer = combineReducers(
    {giphys: giphysReducer}
);

export default RootReducer;