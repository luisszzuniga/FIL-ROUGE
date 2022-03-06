<template>
    <Layout page="Locations">
        <div class="container w-full mx-auto pt-20">
            <h1 class="text-2xl mt-20">Emplacements</h1>

            <div class="bg-white">
                <div class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">

                    <div class="mt-6 grid grid-cols-1 gap-y-10 gap-x-6 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
                    
                        <Location v-for="location in locations" :location="location" :key="location.id" @update="update($event)"/>

                    </div>
                </div>
            </div>

            <Update :location="updateLocation" v-show="isUpdateModalOpen" @close="isUpdateModalOpen = false"/>

        </div>
    </Layout>
</template>

<script>
import AdminLayoutVue from "../../Layouts/AdminLayout.vue"
import LocationComponentVue from "../../Components/Admin/LocationComponent.vue"
import UpdateLocationModal from '../../Components/Admin/Modals/UpdateLocationModal.vue'

export default {
    components: {
        Layout: AdminLayoutVue,
        Location: LocationComponentVue,
        Update: UpdateLocationModal
    },

    props: {
        locations: {}
    },

    data() {
        return {
            isUpdateModalOpen: false,
            updateLocation: {
                day: 's',
                iframe_url: '',
                id: 0,
                open: false
            }
        }
    },

    methods: {
        update(id) {
            this.updateLocation = this.locations.filter(function (location) {
                return location.id === id;
            })[0] //FIRST
            this.isUpdateModalOpen = true
        }
    }
}
</script>

<style>

</style>