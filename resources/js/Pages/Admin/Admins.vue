<template>
    <Layout page="Admins">
        <div class="container w-full mx-auto pt-20">
            <div class="flex justify-between mt-20 mb-5">
                <h1 class="text-2xl">Administrateurs</h1>
                <Button @click="openAddModal()" text="Ajouter un admin"/>
            </div>

            <Table :admins="admins"/>
            

        </div>
        <Modal @close="isAddAdminModalOpen = false" v-show="isAddAdminModalOpen"/>
    </Layout>
</template>

<script>
import AdminLayoutVue from "../../Layouts/AdminLayout.vue"
import ButtonVue from "../../Components/Admin/Button.vue"
import AdminsTable from '../../Components/Admin/AdminsTable.vue'
import Banner from '../../Components/Admin/Banner.vue'
import AddAdminModal from '../../Components/Admin/Modals/AddAdminModal.vue'

export default {
    components: {
        Layout: AdminLayoutVue,
        Button: ButtonVue,
        Table: AdminsTable,
        Banner,
        Modal: AddAdminModal
    },


    props: {
        admins: Object
    },


    data() {
        return {
            isAddAdminModalOpen: false
        }
    },

    methods: {
        openAddModal() {
            this.isAddAdminModalOpen = true
        }
    },
}
</script>

<style>

</style>