<template>
     <tr>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="flex items-center">
            
            <div>
                <div class="text-sm font-medium text-gray-900">{{ admin.name }}</div>
                <div class="text-sm text-gray-500">{{ admin.email }}</div>
            </div>
            </div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
            <i @click="$emit('removeAdmin', admin.id)" class="fa-solid fa-ban cursor-pointer text-xl"></i>
        </td>
    </tr>
</template>

<script>


export default {
    props: {
        admin: Object
    },

    methods: {

    },
}
</script>

<style>

</style>