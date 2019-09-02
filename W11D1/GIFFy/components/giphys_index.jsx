import React from 'react';

import GiphysIndexItem from './giphys_index_item';


class GiphysIndex extends React.Component {
    constructor(props) {
      super(props);
    }
  
    render() {
      //console.log(this.props);
      let gifs = this.props.gifs;
      // debugger
      return (
            <ul>
      { gifs.map(gif => <GiphysIndexItem key={gif.id} gif={gif} />) }
    </ul>
      )
    }
  }
  
  export default GiphysIndex;