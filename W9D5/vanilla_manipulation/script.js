document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const addRestaurant = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input"); //don't do getelementsbyclassName, because it will return a collection, not a sole object
    //use the CSS syntax way inside selector
    const input = favoriteInput.value; //input will be the string
    favoriteInput.value = ""; //value of input element will be an empty string, resetting textbox

    const newFavoritePlace = document.createElement("li");
    newFavoritePlace.textContent = input; //sets to string

    const favoritePlaces = document.getElementById("sf-places");
    favoritePlaces.appendChild(newFavoritePlace);
  };

  const submitButton = document.querySelector('.favorite-submit');
  submitButton.addEventListener("click", addRestaurant);



  // adding new photos

  // --- your code here!



});
