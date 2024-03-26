import { useEffect, useState, useRef } from "react"
import GlobalApi from "../services/GlobalApi"
import { HiChevronLeft, HiChevronRight } from "react-icons/hi2"
const IMAGE_BASE_URL = "https://image.tmdb.org/t/p/original"


const Slider = () => {
    const [trendingMovies, setTrendingMovies] = useState([])
    const elementRef = useRef(null);

    useEffect(() => {
        getTrendingMovies();
    }, [])

    const getTrendingMovies = () => {
        GlobalApi.getTrendingVideos.then((response) => {
            console.log(response.data.results)
            setTrendingMovies(response.data.results)
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
        <HiChevronLeft className="hidden md:block absolute mx-8 mt-[150px] xl:mt-[225px] w-10 h-10 bg-black bg-opacity-20 hover:bg-opacity-50 rounded-full cursor-pointer transition-all" onClick={() => sliderLeft(elementRef)} />

        <HiChevronRight className="hidden md:block absolute mx-8 mt-[150px] xl:mt-[225px] w-10 h-10 bg-black bg-opacity-20 hover:bg-opacity-50 rounded-full cursor-pointer transition-all right-0" onClick={() => sliderRight(elementRef)}/>

        <div className="flex overflow-x-auto w-full px-16 py-4 scrollbar-none transition-all" ref={elementRef}>
            {trendingMovies.map((item) => {
                return (
                    <img key={item.id}
                    src={`${IMAGE_BASE_URL}${item.backdrop_path}`} 
                    alt={item.title} 
                    className=" min-w-full xl:h-[450px] md:h-[310px] object-cover object-left-top mr-5 rounded-md hover:border-[4px] border-gray-200 transition-all shadow-lg shadow-black"/>      
                )
            })}
        </div>

    </div>
  )
}

export default Slider