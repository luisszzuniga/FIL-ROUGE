<template>
    <article class="shadow-lg">
        <img class="object-cover w-full h-40" :src="plate.img" alt="">

        <h3 class="text-center text-xl text-pasta-color mt-3">{{ plate.name }}</h3>

        <p class="text-center w-4/5 mx-auto text-gray-600 mt-3 mb-10">
            {{ plate.description }}
        </p>
    </article>
</template>

<script>
export default {
    props: {
        plate: Object
    }
}
</script>

<style>

</style>