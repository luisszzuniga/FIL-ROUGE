<template>
    <nav class="fixed w-full bg-white">
        <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
            <div class="relative flex items-center justify-between py-4">
            <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                <!-- Mobile menu button-->
                <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                
                <svg @click="mobileNav = !mobileNav" class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
               
                <svg @click="mobileNav = !mobileNav" class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                </svg>
                
                </button>
            </div>
            <div class="flex-1 flex items-center justify-center sm:justify-start sm:justify-between">
                <div class="flex-shrink-0 flex items-center">
                    <img class="block h-16 w-auto" src="../../images/logo.png" alt="Workflow">
                </div>
                <div class="hidden sm:block sm:ml-6">
                    <div class="flex space-x-4">
                        
                        <Link :href="route('index')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Index' ? 'active' : '']">Accueil</Link>

                        <Link :href="route('menu')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Menu' ? 'active' : '']">La carte</Link>

                        <Link :href="route('photos')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Photos' ? 'active' : '']">Galerie photo</Link>

                        <Link :href="route('find')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Find' ? 'active' : '']">Nous trouver</Link>

                        <Link :href="route('contact')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Contact' ? 'active' : '']">Contact</Link>

                        <Link :href="route('dashboard')" class="text-black px-3 py-2 rounded-md text-sm font-medium link" :class="[page === 'Dashboard' ? 'active' : '']"><i class="fa-solid fa-user"></i></Link>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <div v-show="mobileNav" class="sm:hidden" id="mobile-menu">
            <div class="px-2 pt-2 pb-3 space-y-1">
            <Link :href="route('index')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Index' ? 'mobile-active text-gray-900' : '']">Accueil</Link>

            <Link :href="route('menu')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Menu' ? 'mobile-active text-gray-900' : '']">La carte</Link>

            <Link :href="route('photos')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Photos' ? 'mobile-active text-gray-900' : '']">Galerie photo</Link>

            <Link :href="route('find')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Find' ? 'mobile-active text-gray-900' : '']">Nous trouver</Link>

            <Link :href="route('contact')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Contact' ? 'mobile-active text-gray-900' : '']">Contact</Link>

            <Link :href="route('dashboard')" class="mobile-link text-gray-600 block px-3 py-2 rounded-md text-base font-medium" :class="[page === 'Dashboard' ? 'mobile-active text-gray-900' : '']"><i class="fa-solid fa-user"></i></Link>
            </div>
        </div>
    </nav>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
    props: {
        page: String
    },

    components: {
        Link
    },

    data() {
        return {
            mobileNav: false
        }
    }
}
</script>

<style scoped>
.active::after
{
    content: "";
    height: 3px;
    width: 100% !important;
    background-color: #FAD413;
    left: 0;
    position: relative;
    bottom: 0;
    display: block;
}

.link::after
{
    content: "";
    height: 3px;
    width: 0;
    background-color: #FAD413;
    left: 0;
    position: relative;
    bottom: 0;
    display: block;
    transition: 300ms ease;
}

.link:hover::after
{
    width: 100%;
}

.mobile-active
{
    background-color: #FAD413;
}

.mobile-link:hover
{
    background-color: #FAD413;
}
</style>