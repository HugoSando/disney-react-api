import axios from 'axios';

const movieBaseUrl = 'https://api.themoviedb.org/3';
const apiKey = '78513f5cd555a11566d4b8de44092be7'

const getTrendingVideos = axios.get(`${movieBaseUrl}/trending/all/day?api_key=${apiKey}`);


const movieByGenreId = (id) => 
    axios.get(`${movieBaseUrl}/discover/movie?api_key=${apiKey}&with_genres=${id}`);

export default{
    getTrendingVideos,
    movieByGenreId
};