<template>
    <Layout page="Find">
        <section class="bg-gray-700 pt-28">
            <h1 class="text-5xl text-white text-center py-10">Nous trouver</h1>
        </section>
        <main class="container mx-auto py-20 grid grid-cols-3 gap-24">
            <Card v-for="location in locations" :key="location.id" :location="location"/>
        </main>
    </Layout>
</template>

<script>
import Layout from '../Layouts/AppLayout'
import FindCard from '../Components/FindCard'

export default {
    components: {
        Layout,
        Card: FindCard
    },

    props: {
        locations: Object
    }
}
</script>

<style scoped>

</style>