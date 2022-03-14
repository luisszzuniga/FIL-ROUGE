<template>
    <article>
        <iframe class="w-full h-80" :src="location.iframe_url" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <h3 class="text-pasta-color text-2xl text-center pt-4">{{ location.day }}</h3>
        <p v-if="location.open === 1" class="text-center text-xl text-green-700">
            Ouvert
        </p>
        <p v-if="location.open === 0" class="text-center text-xl text-red-700">
            Fermé
        </p>
    </article>
</template>

<script>
export default {
    props: {
        location
    }
}
</script>

<style>

</style>