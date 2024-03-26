import { genres } from "../constants"
import MovieList from "./MovieList"

const GenreMovieList = () => {
  return (
    <div>
        {genres.map((item, index) => index<=8&& (
          <div key={item.id} className=" m-4 md:mx-8">
                <h2 className="text-[20px] text-white font-bold px-4 py-2 md:px-8">{item.name}</h2>
                <MovieList genreId={item.id}/>
          </div>
        ))}
    </div>
  )
}

export default GenreMovieList