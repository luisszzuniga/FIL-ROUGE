<template>
    <div class="flex flex-col">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
            <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
            <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nom & E-mail</th>
                    
                   
                    <th scope="col" class="relative px-6 py-3">
                        <span class="sr-only">Edit</span>
                    </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    
                    <Line @removeAdmin="removeAdmin($event)" v-for="admin in admins" :key="admin.id" :admin="admin"/>
                    
                </tbody>
                </table>
            </div>
            </div>
        </div>
    </div>
    <Modal :admin="deleteAdmin" v-show="isDeleteAdminModalOpen" @close="isDeleteAdminModalOpen = false"/>
</template>

<script>
import AdminsTableLine from '../../Components/Admin/AdminsTableLine.vue'
import DeleteAdminModal from '../../Components/Admin/Modals/DeleteAdminModal.vue'

export default {
    props: {
        admins: Object
    },

    components: {
        Line: AdminsTableLine,
        Modal: DeleteAdminModal
    },

    data() {
        return {
            deleteAdmin: {
                email: '',
                id: 0
            },
            isDeleteAdminModalOpen: false
        }
    },

    methods: {
        removeAdmin(id) {
            this.deleteAdmin = this.admins.filter(function (admin) {
                return admin.id === id
            })[0]
            this.isDeleteAdminModalOpen = true
        }
    }
}
</script>

<style>

</style>