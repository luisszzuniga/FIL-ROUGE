<template>
    <Layout page="Admins">
        <Banner :error="error"/>
        <div class="container w-full mx-auto">
            <div class="flex justify-between mt-20 mb-5">
                <h1 class="text-2xl">Administrateurs</h1>
                <Button @click="openAddModal()" text="Ajouter un admin"/>
            </div>

            <Table :admins="admins"/>
            

        </div>
    </Layout>
</template>

<script>
import AdminLayoutVue from "../../Layouts/AdminLayout.vue"
import ButtonVue from "../../Components/Admin/Button.vue"
import { useForm } from '@inertiajs/inertia-vue3'
import AdminsTable from '../../Components/Admin/AdminsTable.vue'
import Banner from '../../Components/Admin/Banner.vue'

export default {
    components: {
        Layout: AdminLayoutVue,
        Button: ButtonVue,
        Table: AdminsTable,
        Banner
    },


    props: {
        admins: Object
    },


    data() {
        return {
            error: ""
        }
    },

    methods: {
        openAddModal() {
            alert(this.error)
        }
    },
}
</script>

<style>

</style>