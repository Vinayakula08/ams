const search = document.getElementById('search-form');
const title = document.getElementById('title');
const status = document.getElementById('status');
const icon = document.getElementById('weathericon');
const temp = document.getElementById('temp');
const input = document.getElementById('city-input');
const fetchApi = () => {
    const weatherUrl = `http://api.openweathermap.org/data/2.5/weather?q=${input.value}&units=metric&appid=b7e100a1eb4609599f99875a47451c67`
    fetch(weatherUrl)
    .then(response => response.json())
    .then((data) => {
        title.innerText = data.name;
        status.innerText = data.weather[0].description;
        const iconUrl = `http://openweathermap.org/img/w/${data.weather[0].icon}.png`;
        icon.setAttribute('src', iconUrl);
        temp.innerText = data.main.temp;
    })
}
search.addEventListener('submit', (e) => {
    e.preventDefault();
    fetchApi();
})