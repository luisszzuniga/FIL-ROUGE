<template>
    <app-layout title="Dashboard" page="Dashboard">
        <div class="my-container">
            <div class="pt-28"></div>

            <div class="py-12">
                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">

                            <div>
                                <div class="p-6 sm:px-20 text-xl bg-white border-b border-gray-200">
                                    
                                    <h1>Mon compte</h1>
                                </div>

                                <div class="bg-gray-200 bg-opacity-25 grid grid-cols-1 md:grid-cols-2">
                                    <div class="p-6">
                                        <h2>Mes points de fidélité: {{ loyalty_points }}</h2>
                                    </div>

                                    <div class="p-6 border-t border-gray-200 md:border-t-0 md:border-l flex justify-end">
                                        <Link :href="route('logout')" method="post" as="button" class="underline text-sm text-gray-600 hover:text-gray-900">Déconnexion</Link>
                                    </div>

                                </div>
                            </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
    </app-layout>
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    import { Link } from '@inertiajs/inertia-vue3';

    export default defineComponent({
        components: {
            AppLayout,
            Link
        },

        props: {
            loyalty_points: Number
        }
    })
</script>

<style scoped>
.my-container
{
    height: calc(100vh - 200px);
}
</style>
