export const fetchSearchGiphys = (searchTerm) => {
    searchTerm = searchTerm.split(" ").join("+");
    return $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=dc6zaTOxFJmzC&limit=5&rating=r`
      });
}

