<template>
    <Layout page="Admins">
        <div class="container w-full mx-auto pt-20">
            <h1 class="text-2xl mt-20">Administrateurs</h1>

            

            

        </div>
    </Layout>
</template>

<script>
import AdminLayoutVue from "../../Layouts/AdminLayout.vue"
import ButtonVue from "../../Components/Admin/Button.vue"
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Layout: AdminLayoutVue,
        Button: ButtonVue,
    },


    props: {
        admins: Object
    },


    data() {
        return {
            
        }
    },

    methods: {
        
    }
}
</script>

<style>

</style>