<template>
    <div class="flex flex-col">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
            <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
            <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        Nom de la taille
                    </th>
                    
                    <th scope="col" class="relative px-6 py-3">
                        <span class="sr-only">Edit</span>
                    </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    
                    <Line v-for="plateSize in plateSizes" :name="plateSize.name" :id="plateSize.id" :key="plateSize.id" @delete="$emit('delete', $event)" @edit="$emit('edit', $event)"/>
                  
                </tbody>
                </table>
            </div>
            </div>
        </div>
    </div>
</template>

<script>
import Line from './SizeTableLine';

export default {
    components: {
        Line
    },

    props: {
        plateSizes: Object
    }
}
</script>

<style>

</style>