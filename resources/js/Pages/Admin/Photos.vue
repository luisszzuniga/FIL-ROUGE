<template>
    <Layout page="Gallerie">
        <div class="container w-full mx-auto pt-20">
            <div class="flex justify-between mt-20">
                <h1 class="text-2xl">Galerie de photos</h1>
                <Button text="Ajouter une photo" @click="isAddPhotoModalOpen = true"/>
            </div>
            <PhotosOrganizer @delete="deletePhoto($event)" :photos="photos"/>
        </div>

        <transition name="fade">
            <AddPhotoModal v-show="isAddPhotoModalOpen" @close="isAddPhotoModalOpen = false"/>
        </transition>
        <transition name="fade">
            <DeletePhotoModal :id="deletePhotoID" v-show="isDeletePhotoModalOpen" @close="isDeletePhotoModalOpen = false"/>
        </transition>
    </Layout>
</template>

<script>
import Layout from '../../Layouts/AdminLayout';
import PhotosOrganizer from '../../Components/PhotosOrganizer';
import Button from '../../Components/Admin/Button';
import AddPhotoModal from '../../Components/Admin/Modals/AddPhotoModal';
import DeletePhotoModal from '../../Components/Admin/Modals/DeletePhotoModal';

export default {
    components: {
        Layout,
        PhotosOrganizer,
        Button,
        AddPhotoModal,
        DeletePhotoModal
    },

    props: {
        photos: Object
    },

    data() {
        return {
            isAddPhotoModalOpen: false,
            isDeletePhotoModalOpen: false,
            deletePhotoID: 0
        }
    },

    methods: {
        deletePhoto(id) {
            this.deletePhotoID = id;
            this.isDeletePhotoModalOpen = true;
        }
    }
}
</script>

<style>
.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
</style>