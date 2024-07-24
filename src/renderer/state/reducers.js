import { combineReducers } from 'redux';
import { SET_USER } from './actions';

const userReducer = (state = {}, action) => {
  switch (action.type) {
    case SET_USER:
      return action.payload;
    default:
      return state;
  }
};

const rootReducer = combineReducers({
  user: userReducer
});

export default rootReducer;
