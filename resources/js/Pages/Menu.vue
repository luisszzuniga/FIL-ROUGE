<template>
    <Layout page="Menu">
        <section class="bg-gray-700 pt-28">
            <h1 class="text-5xl text-white text-center py-10">La Carte</h1>
        </section>
        <section>
            <h2 class="text-3xl text-center mt-10">Nos Menus</h2>

            <div class="mt-10">
                <h3 class="text-center text-xl font-bold">Menu Étudiant : PLAT + BOISSON + DESSERT 10 €</h3>
                <span class="uppercase text-gray-600 text-md block text-center">uniquement en taille M</span>
            </div>
             <div class="mt-10">
                <h3 class="text-center text-xl font-bold">Menu DUO : PLAT + BOISSON 8 €</h3>
                <span class="uppercase text-gray-600 text-md block text-center">uniquement en taille M</span>
            </div>
             <div class="my-10">
                <h3 class="text-center text-xl font-bold">Menu Salade : SALADE + BOISSON + DESSERT 9 €</h3>
                <span class="uppercase text-gray-600 text-md block text-center">uniquement en taille M</span>
            </div>
            <div class="w-1/2 h-px bg-gray-400 mx-auto"></div>
        </section>
        <section v-for="category in categories" :key="category.id" class="mt-10">
            <h2 class="text-3xl text-center my-10">{{ category.name }}</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-10 container mx-auto mb-10">
                <Card v-for="plate in category.plates" :key="plate.id" :plate="plate"/>
            </div>
            <div class="w-1/2 h-px bg-gray-400 mx-auto"></div>
        </section>
    </Layout>
</template>

<script>
import Layout from '../Layouts/AppLayout'
import PlateCard from '../Components/PlateCard.vue'

export default {
    components: {
        Layout,
        Card: PlateCard
    },

    props: {
        categories: Object
    }
}
</script>

<style scoped>

</style>