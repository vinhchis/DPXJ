// Get a reference to the HTML element where you want to display
//the JSON data.
const outputDiv = document.getElementById("output");

// Define the URL of the JSON API you want to fetch.
const apiUrl = "https://restcountries.com/v3.1/name/france";

// Use the Fetch API to make an HTTP GET request to the API.
fetch(apiUrl)
  .then((response) => {
    if (!response.ok) {
      throw new Error("Network response was not ok");
    }
    return response.json(); // Parse the response as JSON.
  })
  .then((data) => {
    // Handle the JSON data here. You can display it on the
    //page or perform any other actions.
    displayData(data);
  })
  .catch((error) => {
    console.error("There was a problem with the fetch operation:", error);
  });

// Function to display JSON data on the page.
function displayData(data) {
  // Example: Displaying the data in a <pre> element as a
  //formatted JSON string.
  outputDiv.innerHTML = `<pre>${JSON.stringify(data, null, 2)}</pre>`;
}
