<template>
    <Layout page="Photos">
        <section class="bg-gray-700 pt-28">
            <h1 class="text-5xl text-white text-center py-10">Galerie</h1>
        </section>
        <main class="container mx-auto py-20 grid grid-cols-3 gap-5">
            <img v-for="photo in photos" :src="photo.img" :key="photo.id" :alt="photo.name">
        </main>
    </Layout>
</template>

<script>
import Layout from '../Layouts/AppLayout'

export default {
    components: {
        Layout
    },

    props: {
        photos: Object
    }
}
</script>

<style scoped>

</style>