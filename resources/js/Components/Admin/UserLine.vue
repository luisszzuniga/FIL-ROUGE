<template>
    <tr>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="flex items-center">
            
            <div>
                <div class="text-sm font-medium text-gray-900">{{ user.name }}</div>
                <div class="text-sm text-gray-500">{{ user.email }}</div>
            </div>
            </div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap">
            <div class="text-sm text-gray-900">{{ user.loyalty_points }}</div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
            <button @click="changeLoyaltyPoints--" class="text-3xl">-</button>
            <input disabled class="w-16" v-model="changeLoyaltyPoints" type="text">
            <button @click="changeLoyaltyPoints++" class="text-3xl">+</button>
            <Button text="Valider" @click="submit()"/>
        </td>
    </tr>
</template>

<script>
import ButtonVue from "./Button.vue"
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Button: ButtonVue
    },


    props: {
        user: Object
    },

    data() {
        return {
            changeLoyaltyPoints: 0
        }
    },

    methods: {
        submit() {
            const form = useForm({
                changer: this.changeLoyaltyPoints
            })

            form.put(route('admin.loyalty.change', this.user.id))
        }
    }
}
</script>

<style>

</style>