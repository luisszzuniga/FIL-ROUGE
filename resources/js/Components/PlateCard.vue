<template>
    <article class="flex flex-wrap md:flex-nowrap justify-between gap-6">
        <div class="w-full">
            <h3 class="text-xl font-bold">{{ plate.name }}</h3>
            <p class="text-md text-gray-700 pt-2">{{ plate.description }}</p>
            <div class="flex flex-nowrap justify-evenly">
                <div v-for="size in plate.plate_sizes" :key="size.id" class="mt-2">
                    <h4 class="font-bold">{{ size.name }}</h4>
                    <h4 class="text-gray-600 mt-2">{{ size.pivot.price }} €</h4>
                </div>
            </div>
        </div>
        <img class="h-36 w-full md:w-1/3 object-cover" :src="plate.img" alt="">
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