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
                        
                        <a href="#" class="text-black px-3 py-2 rounded-md text-sm font-medium link active" aria-current="page">Accueil</a>

                        <a href="#" class="text-black px-3 py-2 rounded-md text-sm font-medium link">La carte</a>

                        <a href="#" class="text-black px-3 py-2 rounded-md text-sm font-medium link">Galerie photo</a>

                        <a href="#" class="text-black px-3 py-2 rounded-md text-sm font-medium link">Nous trouver</a>

                        <a href="#" class="text-black px-3 py-2 rounded-md text-sm font-medium link">Contact</a>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <div v-show="mobileNav" class="sm:hidden" id="mobile-menu">
            <div class="px-2 pt-2 pb-3 space-y-1">
            <a href="#" class="mobile-link mobile-active text-gray-900 block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Accueil</a>

            <a href="#" class="text-gray-600 mobile-link hover:text-gray-900 block px-3 py-2 rounded-md text-base font-medium">La carte</a>

            <a href="#" class="text-gray-600 mobile-link hover:text-gray-900 block px-3 py-2 rounded-md text-base font-medium">Galerie photo</a>

            <a href="#" class="text-gray-600 mobile-link hover:text-gray-900 block px-3 py-2 rounded-md text-base font-medium">Nous trouver</a>

            <a href="#" class="text-gray-600 mobile-link hover:text-gray-900 block px-3 py-2 rounded-md text-base font-medium">Contact</a>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
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