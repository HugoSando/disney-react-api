import React from 'react'
import logo from '../assets/images/logo.png'
import { HiDotsVertical } from 'react-icons/hi'
import { menu } from '../constants'
import Headeritem from './Headeritem'

const Header = () => {

    const [showMenu, setShowMenu] = React.useState(false)


  return (
    <div className='flex items-center justify-between p-5'>
        <div className='flex items-center gap-8'>
            <img src={logo} alt='disney logo' className=' w-[80px] md:w-[115px] object-cover' />
        <div className='hidden md:flex gap-8'>
            {menu.map((item) => (
                <Headeritem key={item.name} name={item.name} Icon={item.icon} />
            ))}
        </div>
        <div className='flex md:hidden gap-5'>
            {menu.map((item, index) => index<3&& (
                <Headeritem key={item.name} name={''} Icon={item.icon} />
            ))}
        </div>
        <div className='md:hidden' onClick={()=>setShowMenu(!showMenu)}>
                <Headeritem name={''} Icon={HiDotsVertical} />


            {showMenu && (
            <div className=' absolute mt-3 bg-[#121212] border-[1px] p-3 border-gray-700 px-5 pb-4 rounded-sm'>
                {menu.map((item, index) => index>2&& (
                    <Headeritem key={item.name} name={item.name} Icon={item.icon} />
                ))}
            </div>
            )}
        </div>
        </div>
        <img src="http://plugins.svn.wordpress.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745" alt="avatar" className='w-[40px] rounded-full'/>
    </div>
  )
}

export default Header