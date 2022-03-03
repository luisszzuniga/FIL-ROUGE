<template>
<div class="group relative">
    <div class="w-full min-h-80 bg-gray-200 rounded-md">
        <iframe :src="location.iframe_url" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <div class="flex justify-between">
            <div class="mb-2">
                <h4 class="text-xl p-2">{{ location.day }}</h4>
                <span class="text-md p-2" :class="{'text-red-600': !location.open, 'text-green-600': location.open}">{{ open(location.open) }}</span>
            </div>
            
            <Button @click="$emit('update', location.id)" class="m-2" text="Modifier"/>
        </div>
        
    </div>
</div>
</template>

<script>
import Button from './Button';

export default {
    components: {
        Button
    },


    props: {
        location: {}
    },

    methods: {
        open(bool) {
            if (bool) {
                return 'Ouvert'
            }
            return 'Fermé'
        }
    }
}
</script>

<style>

</style>