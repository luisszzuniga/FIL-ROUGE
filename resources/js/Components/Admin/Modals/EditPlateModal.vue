<template>
    <div class="fixed z-10 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
            
            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

            
            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
            
            
            <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <h2 class="text-lg">Créer un nouveau plat</h2>
                </div>
                <div class="mt-5">
                    <label for="platename" class="block text-sm font-medium text-gray-700">Nom du plat</label>
                    <input v-model="form.name" type="text" id="platename" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                    <p v-if="form.errors.name" class="italic text-red-600 text-sm pl-2">{{ form.errors.name }}</p>
                </div>
                <div class="mt-5">
                    <label for="description" class="block text-sm font-medium text-gray-700">Description</label>
                    <textarea v-model="form.description" type="text" id="description" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"></textarea>
                    <p v-if="form.errors.description" class="italic text-red-600 text-sm pl-2">{{ form.errors.description }}</p>
                </div>
                <div class="mt-5">
                    <input type="file" @input="form.image = $event.target.files[0]" />
                    <progress v-if="form.progress" :value="form.progress.percentage" max="100">
                    {{ form.progress.percentage }}%
                    </progress>
                </div>
                <div class="mt-5">
                    
                    <label for="sizes" class="block text-sm font-medium text-gray-700">Séléctionner une ou plusieures tailles</label>
                    <select v-model="selectedSizes" multiple id="sizes" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                        
                        <option v-for="size in sizes" :key="size.id">
                            {{ size.name }}
                        </option>
                    </select>
                
                </div>
                <div class="mt-5" v-for="selectedSize in selectedSizes" :key="selectedSize">
                    <label class="block text-sm font-medium text-gray-700">Prix du plat ({{selectedSize}})</label>
                    <input required v-model="relations[selectedSize]" type="number" min="0" step="0.01" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                    <p class="italic text-red-600 text-sm pl-2" v-if="form.errors.relations">{{ form.errors.relations }}</p>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button @click="submit()" :disabled="form.processing" type="submit" class="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-pink-600 text-base font-medium text-white hover:bg-pink-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-pink-500 sm:ml-3 sm:w-auto sm:text-sm">
                Créer
                </button>
                <button @click="$emit('close')" type="button" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
                Cancel
                </button>
            </div>
            </div>
        </div>
    </div>
</template>

<script>
import { useForm } from '@inertiajs/inertia-vue3'

export default {
    props: {
        plateSizes: Object
    },

    data() {
        return{
            sizes: {... this.plateSizes},
            selectedSizes: [],
            relations: [],
            form: useForm({
                name: null,
                description: null,
                image: null,
                relations: ''
            })
        }
    },

    methods: {
        submit() {
            this.form.relations = '';
            for (const [key, value] of Object.entries(this.relations)) {
                this.form.relations += key + ':' + value + ';';
            }
            if (this.form.relations.length < 1) {
                this.form.errors.relations = 'Veuillez saisir le/les prix'
                return
            }
            this.form.post(route('admin.plate.add'), {
                preserveScroll: true,
                onSuccess: () => {
                    this.form.reset(),
                    this.$emit('close'),
                    this.relations = [],
                    this.selectedSizes = []
                }
            });
        }
    }
}
</script>

<style>

</style>