import { connect } from 'react-redux';
import GiphysSearch from './giphys_search';
import { fetchSearchGiphys } from '../actions/giphy_actions';


const mapStateToProps = state => ({
    giphys: state.giphys
});
  
const mapDispatchToProps = dispatch => {
    let something = { 
        fetchSearchGiphys: (searchTerm) => dispatch(fetchSearchGiphys(searchTerm)),
        
    };

    return something;
};

export default connect(mapStateToProps, mapDispatchToProps)(GiphysSearch);
