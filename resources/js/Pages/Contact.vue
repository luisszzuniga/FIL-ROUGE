<template>
    <Layout page="Contact">
        <section class="bg-gray-700 pt-28">
            <h1 class="text-5xl text-white text-center py-10">Contact</h1>
        </section>
        <main class="container mx-auto py-20">
            <div class="bg-pasta-color rounded-xl p-4 md:p-5 lg:p-10 xl:p-20">
                <input type="text" placeholder="Nom" class="form-control w-full">
                <input type="text" placeholder="Prénom" class="form-control w-full mt-4">
                <input type="email" placeholder="E-mail" class="form-control w-full mt-4">
                <textarea class="form-control w-full mt-4" placeholder="Message"></textarea>
                <button @click="submit()" class="mt-5 bg-black rounded-lg py-2 px-4 text-center text-white text-lg">Envoyer</button>
            </div>
        </main>
    </Layout>
</template>

<script>
import Layout from '../Layouts/AppLayout'
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Layout
    },

    data() {
        return {
            form: {
                first_name: ""
            }
        }
    },

    methods: {
        submit() {
            const form = useForm({
                first_name: this.form.first_name
            })
        }
    }
}
</script>

<style scoped>

</style>