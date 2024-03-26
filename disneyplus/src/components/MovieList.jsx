import { useState, useEffect, useRef } from 'react'
import GlobalApi from "../services/GlobalApi"
import MovieCard from './MovieCard'
import { HiChevronLeft, HiChevronRight } from "react-icons/hi2"

const MovieList = ({genreId}) => {
    
    const [movies, setMovies] = useState([])
    const elementRef = useRef(null);
    useEffect(() => {
        getMovies();
    },[])

    const getMovies = () => {
        GlobalApi.movieByGenreId(genreId).then((response) => {
            console.log(response.data.results)
            setMovies(response.data.results)
        })
    }


    const sliderRight = (element) => {
        element.current.scrollBy({
            left: window.innerWidth - 128 + 20,
            behavior: 'smooth'
        });
        console.log(window.innerWidth)
    }
    const sliderLeft = (element) => {
        element.current.scrollBy({
            left: -window.innerWidth + 128 - 20,
            behavior: 'smooth'
        });
    }

  return (

    <div>

        <HiChevronLeft className="hidden md:block absolute w-10 h-10 mt-[150px] mx-8 bg-black bg-opacity-20 hover:bg-opacity-50 rounded-full cursor-pointer transition-all z-10" onClick={() => sliderLeft(elementRef)} />

        <HiChevronRight className="hidden md:block absolute mt-[150px] mx-8 w-10 h-10 bg-black bg-opacity-20 hover:bg-opacity-50 rounded-full cursor-pointer transition-all right-0 z-10" onClick={() => sliderRight(elementRef)}/>

        <div className='flex overflow-x-auto gap-8 scrollbar-none p-4 md:p-8 pb-4' ref={elementRef}>
            {movies.map((item) => (
                <MovieCard key={item.id} movie={item}/>
            ))}
        </div>




    </div>
  )
}

export default MovieList