<template>
    <div class="fixed z-10 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>

            <div class="relative inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                
                <div class="mt-3 text-center sm:mt-0 sm:text-left">
                    <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">{{ location.day }}</h3>
                    <div class="mt-2">
                        <label for="iframe" class="block text-sm font-medium text-gray-700">IFrame URL</label>
                        <input ref="iframe" :value="location.iframe_url" type="text" id="iframe" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                    </div>

                    <div class="mt-2">
                        <label for="open" class="block text-sm font-medium text-gray-700">Ouvert ?</label>
                        <select ref="open" class="block w-full mt-1 focus:ring-indigo-500 focus:border-indigo-500 shadow-sm sm:text-sm border-gray-300 rounded-md" id="open">
                            <option value="true" :selected="location.open">Ouvert</option>
                            <option value="false" :selected="!location.open">Fermé</option>
                        </select>
                    </div>
                </div>
                
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button @click="update()" type="button" class="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-green-600 text-base font-medium text-white hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-500 sm:ml-3 sm:w-auto sm:text-sm">Modifier</button>
                <button @click="$emit('close')" type="button" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">Fermer</button>
            </div>
            </div>
        </div>
    </div>
</template>

<script>
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    props: {
        id: Number,
        location: Object
    },

    methods: {
        update() {
            
            const form = useForm({
                iframe_url: this.$refs.iframe.value,
                open: this.$refs.open.value
            })

            form.put(route('admin.locations.update', this.location.id), {
                preserveScroll: true,
                onSuccess: () => {
                    form.reset(),
                    this.$emit('close')
                }
            });
    
        }
    }
}
</script>

<style>

</style>