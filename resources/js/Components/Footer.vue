<template>
    <footer class="flex flex-wrap">
        <div class="w-full lg:w-3/5 bg-black py-10">
            <div class="container mx-auto">
                <h3 class="text-pasta-color text-2xl">Pasta-Truck.fr</h3>
                <ul class="text-white mt-3 footer-ul">
                    <li><Link :href="route('index')">Accueil</Link></li>
                    <li><Link :href="route('menu')">La carte</Link></li>
                    <li><Link :href="route('photos')">Galerie Photo</Link></li>
                    <li><Link :href="route('find')">Nous trouver</Link></li>
                    <li><Link :href="route('contact')">Contact</Link></li>
                </ul>
            </div>
        </div>
        <div class="w-full lg:w-2/5 bg-pasta-color py-10">
            <div class="container mx-auto">
                <h3 class="text-2xl">Newsletter</h3>
                <p class="text-gray-500 mt-2">En vous inscrivant à notre newsletter vous receverez un mail hebdomadaire vous indiquant nos positions!</p>
                <input type="email" name="mail" class="form-control mt-2 w-full">
                <a href="#" class="bg-black text-white w-1/3 block py-2 text-center mt-3">S'inscrire</a>
            </div>
        </div>
    </footer>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Link
    }
}
</script>

<style scoped>
.footer-ul li
{
    transition: 200ms ease;
}
.footer-ul li:hover
{
    padding-left: 10px;
}
</style>