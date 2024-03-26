import { productionHouseList } from "../constants"

const ProductionHouse = () => {
  return (
    <div className="flex gap-2 md:gap-5 p-2 px-5 md:px-16">
        {productionHouseList.map((item) => (
          <div key={item.id} className=" border-2 border-gray-600 rounded-lg scale-100 hover:scale-110 transition-all duration-300 cursor-pointer shadow-xl shadow-black
          bg-gradient-to-t from-[#1d2036] from-0% via-[#313653] via-50% to-[#1d2036] to-100%">
            <img src={item.image} className="w-full" />
            <video src={item.video} autoPlay loop playsInline
            className="absolute top-0 rounded-md opacity-0 hover:opacity-70"/>
          </div>
        ))}
    </div>
  )
}

export default ProductionHouse