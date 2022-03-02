<template>
    <tr>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="text-sm text-gray-900">{{ name }}</div>
        </td>

        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
            <a @click="$emit('edit', id)" href="#" class="text-indigo-600 hover:text-indigo-900">Modifier</a>
            |
            <a @click="$emit('delete', id)" href="#" class="text-indigo-600 hover:text-indigo-900">Supprimer</a>
        </td>
    </tr>
</template>

<script>
export default {
    props: {
        id: Number,
        name: String
    }
}
</script>

<style>

</style>