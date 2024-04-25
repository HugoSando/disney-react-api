import axios from 'axios';

// This is for the Local DB
const movieBaseUrl1 = 'http://localhost:3000';
const movieBaseUrl = 'http://localhost:5000';

// This is for the Public Movies API
// const movieBaseUrl = 'https://api.themoviedb.org/3';
// const apiKey = '78513f5cd555a11566d4b8de44092be7'

const getTrendingVideos = axios.get(`${movieBaseUrl1}/trending/all/day`);

// const getTrendingVideos = axios.get(`${movieBaseUrl}/trending/all/day?api_key=${apiKey}`);

const movieByGenreId = (id) => 
    axios.get(`${movieBaseUrl}/discover/movie`);


// const movieByGenreId = (id) => 
//     axios.get(`${movieBaseUrl}/discover/movie?api_key=${apiKey}&with_genres=${id}`);

export default{
    getTrendingVideos,
    movieByGenreId
};
