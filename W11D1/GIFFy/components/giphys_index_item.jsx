import React from 'react';


class GiphysIndexItem extends React.Component {
    constructor(props) {
      super(props);
    }
  
    render() {
      console.log(this.props);
      let gif = this.props.gif;
      // debugger
      return (
        <div>
          <img src={gif.images.fixed_height.url} alt=""/>
        </div>
      )
    }
  }
  
  export default GiphysIndexItem;