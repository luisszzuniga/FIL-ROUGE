<template>
    <tr>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="flex items-center">
            <div class="flex-shrink-0 h-10 w-10">
                <img class="h-10 w-10 rounded-full" :src="plate.img" alt="">
            </div>
            <div class="ml-4">
                <div class="text-sm font-medium text-gray-900">
                {{ plate.name }}
                </div>
            </div>
            </div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="text-sm text-gray-900"> {{ plate.category.name }}</div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="text-sm text-gray-900"> {{ plate.description }}</div>
        </td>
        <td v-for="price in prices" :key="price" class="px-6 py-4 whitespace-nowrap">
            {{ price[1].pivot.price }} €
        </td>
        
        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
            <a href="#" class="text-indigo-600 hover:text-indigo-900">Modifier</a>
            | 
            <a href="#" class="text-indigo-600 hover:text-indigo-900">Supprimer</a>
        </td>
    </tr>
</template>

<script>
export default {
    props: {
        plate: Object,
        sizes: Object
    },

    data() {
        return {
            prices: []
        }
    },

    mounted() {
        var i = 0;
        for (var size of Object.entries(this.sizes)) {
            for (var plateSize of Object.entries(this.plate.plate_sizes)) {
                if (plateSize[1].pivot.plate_size_id === size[1].id) {
                    this.prices.push(plateSize)
                }
            }
            if (!this.prices[i]) {
                this.prices.push([
                    0,
                    {
                        pivot: {
                            price: '-'
                        }
                    }
                ])
            }
            i++
        }
    }
}
</script>

<style>

</style>