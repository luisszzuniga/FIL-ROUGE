<template>
    <nav id="header" class="pb-3 lg:pb-0 bg-white fixed w-full z-10 top-0 shadow">


        <div class="w-full container mx-auto flex flex-wrap items-center mt-0 pt-3 pb-3 md:pb-0">

            <div class="w-1/2 pl-2 md:pl-0">
                <Link :href="route('admin.index')" class="text-gray-900 text-base xl:text-xl no-underline hover:no-underline font-bold" href="#">
                    <i class="fas fa-sun text-pink-600 pr-3"></i> Pasta truck admin
                </Link>
            </div>
            <div class="w-1/2 pr-0">
                <div class="flex relative inline-block float-right">

                    <div class="block lg:hidden pr-4">
                        <button @click="$refs.burger.classList.toggle('hidden')" id="nav-toggle" class="flex items-center px-3 py-2 border rounded text-gray-500 border-gray-600 hover:text-gray-900 hover:border-teal-500 appearance-none focus:outline-none">
                            <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <title>Menu</title>
                                <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
                            </svg>
                        </button>
                    </div>
                </div>

            </div>


            <div ref="burger" class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block mt-2 lg:mt-0 bg-white z-20" id="nav-content">
                <ul class="list-reset lg:flex flex-1 items-center px-4 md:px-0">
                    <li class="mr-6 my-2 md:my-0">
                        <Link :href="route('admin.index')" :class="[page === 'Menu' ? 'text-pink-600 border-orange-600' : 'text-gray-500']" class="block py-1 md:py-3 pl-1 align-middle no-underline hover:text-gray-900 border-b-2 hover:border-orange-600">
                            <i :class="[page === 'Menu' ? 'text-pink-600' : 'text-gray-500']" class="fas fa-utensils fa-fw mr-3"></i><span class="pb-1 md:pb-0 text-sm">Menu</span>
                        </Link>
                    </li>
                    <li class="mr-6 my-2 md:my-0">
                        <Link :href="route('admin.photos.index')" :class="[page === 'Gallerie' ? 'text-pink-500 border-pink-500' : 'text-gray-500']" class="block py-1 md:py-3 pl-1 align-middle no-underline hover:text-gray-900 border-b-2 border-white hover:border-pink-500">
                            <i :class="[page === 'Gallerie' ? 'text-pink-500' : 'text-gray-500']" class="fas fa-camera fa-fw mr-3"></i><span class="pb-1 md:pb-0 text-sm">Galerie</span>
                        </Link>
                    </li>
                    <li class="mr-6 my-2 md:my-0">
                        <Link :href="route('admin.locations.index')" :class="[page === 'Locations' ? 'text-purple-500 border-purple-500' : 'text-gray-500']" class="block py-1 md:py-3 pl-1 align-middle no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500">
                            <i :class="[page === 'Locations' ? 'text-purple-500' : 'text-gray-500']" class="fas fa-map-marked fa-fw mr-3"></i><span class="pb-1 md:pb-0 text-sm">Emplacements</span>
                        </Link>
                    </li>
                    <li class="mr-6 my-2 md:my-0">
                        <Link :href="route('admin.loyalty.index')" :class="[page === 'Loyalty' ? 'text-green-500 border-green-500' : '']" class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-green-500">
                            <i :class="[page === 'Loyalty' ? 'text-green-600' : '']" class="fas fa-crown fa-fw mr-3"></i><span class="pb-1 md:pb-0 text-sm">Fidélité</span>
                        </Link>
                    </li>
                    <li class="mr-6 my-2 md:my-0">
                        <Link :href="route('admin.admins.index')" :class="[page === 'Admins' ? 'text-red-500 border-red-500' : '']" class="block py-1 md:py-3 pl-1 align-middle no-underline hover:text-gray-900 border-b-2 border-white hover:border-red-500">
                            <i :class="[page === 'Admins' ? 'text-red-500' : '']" class="fas fa-users-cog fa-fw mr-3"></i><span class="pb-1 md:pb-0 text-sm">Administrateurs</span>
                        </Link>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Link
    },


    props: {
        page: String
    }
}
</script>

<style>

</style>