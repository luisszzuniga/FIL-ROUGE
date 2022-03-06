<template>
    <Layout page="Loyalty">
        <div class="container w-full mx-auto pt-20">
            <h1 class="text-2xl mt-20">Points de fidélité</h1>

            <div class="mt-3">
                <label for="user">Chercher un utilisateur par adresse mail:</label>
                <input v-model="user_search" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" id="user" type="text">
                <Button @click="search()" class="mt-2" text="Recherche"></Button>
                
            </div>

            <Table class="mt-5" :users="users"/>

        </div>
    </Layout>
</template>

<script>
import AdminLayoutVue from "../../Layouts/AdminLayout.vue"
import ButtonVue from "../../Components/Admin/Button.vue"
import LoyaltyTable from "../../Components/Admin/LoyaltyTable.vue"
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Layout: AdminLayoutVue,
        Button: ButtonVue,
        Table: LoyaltyTable
    },


    props: {
        users: Object
    },


    data() {
        return {
            user_search: ''
        }
    },

    methods: {
        search() {
            const form = useForm();

            form.get(route('admin.loyalty.search', this.user_search))
        }
    }
}
</script>

<style>

</style>