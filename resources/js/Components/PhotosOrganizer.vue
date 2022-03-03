<template>
    <draggable class="dragArea list-group w-full" :list="list">
        <div
        class="list-group-item bg-gray-300 m-1 p-3 rounded-md text-center"
        v-for="photo in list"
        :key="photo.name"
        >
        <img width="200" height="200" class="mx-auto" :src="photo.img" :alt="photo.name">
        <a @click="$emit('delete', photo.id)" class="cursor-pointer">Supprimer</a>
        </div>
    </draggable>
    <Button text="Enregistrer l'ordre des photos" @click="order()"/>
</template>

<script>
import { VueDraggableNext } from 'vue-draggable-next';
import Button from './Admin/Button';

export default {
    components: {
        draggable: VueDraggableNext,
        Button
    },

    props: {
        photos: Object
    },

    data() {
        return {
            list: this.photos
        }
    },

    methods: {
        order() {
            const form = this.$inertia.form({
                photos: {}
            })
            form.photos = this.list;
            form.put(route('admin.photos.order'), {
                onSuccess: () => {
                    form.reset();
                }
            });
        }
    }
}
</script>

<style>

</style>