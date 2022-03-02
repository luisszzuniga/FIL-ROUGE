<template>
    <div class="fixed z-10 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
            
            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

            
            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>

            
            <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <h2 class="text-lg">Modifier une catégorie existante</h2>
                </div>
                <div class="mt-5">
                    <label for="editName" class="block text-sm font-medium text-gray-700">Nom de la catégorie</label>
                    <input v-model="editObject.name" type="text" id="editName" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                    <p v-if="form.errors.name" class="italic text-red-600 text-sm pl-2">{{ form.errors.name }}</p>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button @click="submit()" :disabled="form.processing" type="submit" class="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-pink-600 text-base font-medium text-white hover:bg-pink-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-pink-500 sm:ml-3 sm:w-auto sm:text-sm">
                Modifier
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
export default {
    props: {
        editObject: Object
    },

    data() {
        return {
            form: this.$inertia.form({
                name: '',
                id: 0
            })
        }
    },

    methods: {
        submit() {
            this.form.name = this.editObject.name;
            this.form.id = this.editObject.id;

            this.form.put(route('admin.category.update', this.form.id), {
                preserveScroll: true,
                onSuccess: () => {
                    this.form.reset(),
                    this.$emit('close')
                }
            });
        }
    }
}
</script>

<style>

</style>