import React from 'react';

import GiphysIndex from './giphys_index';


class GiphysSearch extends React.Component {
    constructor(props) {
      super(props);
      this.state = {
          searchTerm : ""
      }

      this.handleSearchTermChange = this.handleSearchTermChange.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSearchTermChange(e){
        this.setState({
            searchTerm: e.target.value
          });
    }

    handleSubmit(e){
        e.preventDefault();
        let answer = this.props.fetchSearchGiphys(this.state.searchTerm);
        console.log(answer);
        this.setState({
          searchTerm: '',
        })
        
    }

    componentDidMount(){

    }
  
    render() {
      let gifs = this.props.giphys;
      return (

          <div>
            
            
            <div>
                <h1>Giffy Fun</h1>
                <form onSubmit={this.handleSubmit}>
                    <label>Search Term
                        <input type="text" value={this.state.searchTerm} onChange={this.handleSearchTermChange}/>
                    </label>
                    <input type="submit" value="Search Giffy"/>
                </form>
            </div>

            <div>
                <GiphysIndex gifs={gifs}/>
            </div>

          </div>
      )
    }
  }
  
  export default GiphysSearch;