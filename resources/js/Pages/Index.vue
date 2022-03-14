<template>
    <Layout page="Index">
        <main class="container min-h-screen pt-32 lg:pt-20 flex flex-wrap items-center justify-between mx-auto">
            <div class="w-full lg:w-1/2">
                <h1 class="text-pasta-color text-6xl">PASTA TRUCK</h1>
                <h2 class="text-pasta-color text-4xl pt-2">À Rennes</h2>
                <p class="pt-4 text-xl">Venez découvrir notre unique PastaTruck dans la ville de Rennes et ses alentours.</p>
                <Link :href="route('find')" class="block bg-pasta-color w-2/3 text-center py-3 rounded-xl text-lg mt-3 hover:text-white ease-in duration-200"> Nous trouver </Link>
            </div>

            <div class="w-full lg:w-1/2">
                <img class="h-2/3 lg:w-2/3 object-cover mt-10 lg:mt-0 w-full lg:ml-auto" src="../../images/header.jpg" alt="">
            </div>
        </main>
        <section class="bg-black">
            <div class="container mx-auto flex flex-wrap lg:flex-nowrap py-16 gap-10 justify-between">
                <article class="bg-white py-4 w-full">
                    <img class="rounded-full mx-auto object-cover w-32 h-32 align-middle" src="../../images/menu1.jpg" alt="">
                    <h3 class="text-center pt-2 text-xl">Menu étudiant</h3>
                    <p class="text-center text-md pt-4">PLAT + BOISSON + DESSERT</p>
                    <span class="block text-center text-md text-gray-500">Uniquement en taille M</span>
                    <span class="block text-center mx-auto w-1/4 mt-3 bg-pasta-color rounded-xl py-2">10 €</span>
                </article>

                <article class="bg-white py-4 w-full">
                    <img class="rounded-full mx-auto object-cover w-32 h-32 align-middle" src="../../images/menu2.jpg" alt="">
                    <h3 class="text-center pt-2 text-xl">Menu DUO</h3>
                    <p class="text-center text-md pt-4">PLAT + BOISSON</p>
                    <span class="block text-center text-md text-gray-500">Uniquement en taille M</span>
                    <span class="block text-center mx-auto w-1/4 mt-3 bg-pasta-color rounded-xl py-2">8 €</span>
                </article>

                <article class="bg-white py-4 w-full">
                    <img class="rounded-full mx-auto object-cover w-32 h-32 align-middle" src="../../images/menu3.jpg" alt="">
                    <h3 class="text-center pt-2 text-xl">Menu Salade</h3>
                    <p class="text-center text-md pt-4">SALADE + BOISSON + DESSERT</p>
                    <span class="block text-center text-md text-gray-500">Uniquement en taille M</span>
                    <span class="block text-center mx-auto w-1/4 mt-3 bg-pasta-color rounded-xl py-2">9 €</span>
                </article>
            </div>
        </section>
        <section class="container mx-auto flex justify-between">
            <div class="w-full pt-16 md:pr-20">
                <h2 class="text-pasta-color text-5xl">Qui sommes-nous?</h2>
                <h3 class="text-2xl pt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, totam.</h3>
                <p class="text-gray-600 text-lg mt-5 text-justify">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Possimus, rerum maiores natus dolorem, culpa molestiae accusantium nobis consectetur expedita reiciendis corporis deserunt ipsam odit aliquam voluptatum repellendus fuga? Explicabo, odio in natus fuga eum veritatis est exercitationem modi, nam quidem facilis tenetur. Quod, sed. Veritatis, corrupti. Soluta cum modi dolorum commodi.</p>

                <div class="flex justify-between mt-5">
                    <span class="text-lg"><i class="fa-solid fa-envelope text-pasta-color"></i> info@pasta-truck.fr</span>
                    <span class="text-lg"><i class="fa-solid fa-phone text-pasta-color"></i> 06.09.54.78.35</span>
                </div>
            </div>
            <div class="hidden md:block md:w-3/5">
                <img src="../../images/about-us.jpg" class="object-cover w-full h-full" alt="">
            </div>
        </section>
        <section class="container mx-auto my-16">
            <h2 class="text-4xl uppercase text-center">Le menu</h2>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-x-5 gap-y-16 mt-5">
                <Card class="" v-for="plate in plates.data" :key="plate.id" :plate="plate"/>

            </div>

            <Link :href="route('menu')" class="block plus bg-black rounded-full mx-auto mt-10 text-center align-middle">
                <i class="fa-solid fa-plus text-5xl text-pasta-color"></i>
            </Link>
        </section>
    </Layout>
</template>

<script>
import Layout from '../Layouts/AppLayout'
import ArticleCardVue from '../Components/ArticleCard.vue'
import { Link } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Layout,
        Card: ArticleCardVue,
        Link
    },

    props: {
        plates: Object
    },
}
</script>

<style scoped>
.plus
{
    height: 100px;
    width: 100px;
}

.plus i
{
    line-height: 100px;
    transition: 500ms ease;
}

.plus:hover i 
{
    transform: rotate(180deg);
}
</style>