<template>
    <Layout page="Menu">
        <div class="container w-full mx-auto pt-20">
            <!-- MENU -->
            <div class="flex justify-between mt-20">
                <h1 class="text-2xl">Menu</h1>
                <Button text="Ajouter au menu" @click="isAddPlateModalOpen = true"/>
            </div>
            
            <MenuTable @delete="deletePlate($event)" @edit="editPlate($event)" :plates="plates" :sizes="plateSizes" class="mt-5"/>
            <!-- END MENU -->


            <!-- SIZES -->
            <div class="flex justify-between mt-20">
                <h1 class="text-2xl">Tailles</h1>
                <Button text="Ajouter une taille" @click="isAddSizeModalOpen = true"/>
            </div>

            <SizeTable class="mt-5" :plateSizes="plateSizes" @delete="deletePlateSize($event)" @edit="editPlateSize($event)"/>
            <!-- END SIZES -->


            <!-- CATEGORIES -->
            <div class="flex justify-between mt-20">
                <h1 class="text-2xl">Catégories</h1>
                <Button text="Ajouter une catégorie" @click="isAddCategoryModalOpen = true"/>
            </div>

            <CategoryTable class="mt-5" :categories="categories" @delete="deleteCategory($event)" @edit="editCategory($event)"/>
            <!-- END CATEGORIES -->
        </div>



        <!-- SIZE MODALS -->
        <transition name="fade">
            <AddSizeModal v-show="isAddSizeModalOpen" @close="isAddSizeModalOpen = false"/>
        </transition>
        <transition name="fade">
            <EditSizeModal :editObject="editPlateSizeObject" v-show="isEditSizeModalOpen" @close="isEditSizeModalOpen = false"/>
        </transition>
        <transition name="fade">
            <DeleteSizeModal :id="deletePlateSizeId" v-show="isDeleteSizeModalOpen" @close="isDeleteSizeModalOpen = false"/>
        </transition>
        <!-- END SIZE MODALS -->


        <!-- CATEGORIES MODAL -->
        <transition name="fade">
            <AddCategoryModal v-show="isAddCategoryModalOpen" @close="isAddCategoryModalOpen = false"/>
        </transition>
        <transition name="fade">
            <EditCategoryModal :editObject="editCategoryObject" v-show="isEditCategoryModalOpen" @close="isEditCategoryModalOpen = false"/>
        </transition>
        <transition name="fade">
            <DeleteCategoryModal :id="deleteCategoryId" v-show="isDeleteCategoryModalOpen" @close="isDeleteCategoryModalOpen = false"/>
        </transition>
        <!-- END CATEGORIES MODAL -->


        <!-- PLATE MODALS -->
        <transition name="fade">
            <AddPlateModal :categories="categories" :plateSizes="plateSizes" @close="isAddPlateModalOpen = false" v-show="isAddPlateModalOpen"/>
        </transition>

        <transition name="fade">
            <EditPlateModal @close="isEditPlateModalOpen = false" v-show="isEditPlateModalOpen"/>
        </transition>
        <!-- END PLATE MODALS -->
    </Layout>
</template>

<script>
import Layout from '../../Layouts/AdminLayout';
import MenuTable from '../../Components/Admin/MenuTable';
import Button from '../../Components/Admin/Button';
import SizeTable from '../../Components/Admin/SizeTable';
import AddSizeModal from '../../Components/Admin/Modals/AddSizeModal';
import EditSizeModal from '../../Components/Admin/Modals/EditSizeModal';
import DeleteSizeModal from '../../Components/Admin/Modals/DeleteSizeModal';
import AddPlateModal from '../../Components/Admin/Modals/AddPlateModal';
import EditPlateModal from '../../Components/Admin/Modals/EditPlateModal';
import CategoryTable from '../../Components/Admin/CategoryTable';
import AddCategoryModal from '../../Components/Admin/Modals/AddCategoryModal';
import EditCategoryModal from '../../Components/Admin/Modals/EditCategoryModal';
import DeleteCategoryModal from '../../Components/Admin/Modals/DeleteCategoryModal';

export default {
    components: {
        Layout,
        MenuTable,
        Button,
        SizeTable,
        AddSizeModal,
        EditSizeModal,
        DeleteSizeModal,
        AddPlateModal,
        EditPlateModal,
        CategoryTable,
        AddCategoryModal,
        EditCategoryModal,
        DeleteCategoryModal
    },

    data() {
        return {
            isAddSizeModalOpen: false,
            isEditSizeModalOpen: false,
            editPlateSizeObject: {
                name: '',
                id: 0
            },
            isDeleteSizeModalOpen: false,
            deletePlateSizeId: 0,
            isAddPlateModalOpen: false,
            isEditPlateModalOpen: false,
            isAddCategoryModalOpen: false,
            isEditCategoryModalOpen: false,
            isDeleteCategoryModalOpen: false,
            deleteCategoryId: 0,
            editCategoryObject : {
                name: '',
                id: 0
            }
        }
    },

    props: {
        plateSizes: Object,
        plates: Object,
        categories: Object
    },

    methods: {
        deletePlateSize(id) {
            this.deletePlateSizeId = id;
            this.isDeleteSizeModalOpen = true
        },

        editPlateSize(id) {
            this.editPlateSizeObject.id = id;
            this.editPlateSizeObject.name = this.plateSizes.filter(function (plateSize) {
                return plateSize.id === id;
            });
            this.editPlateSizeObject.name = this.editPlateSizeObject.name[0].name

            this.isEditSizeModalOpen = true;
        },

        editPlate(id) {

        },

        deletePlate(id) {
        },

        editCategory(id) {
            this.editCategoryObject.id = id;
            this.editCategoryObject.name = this.categories.filter(function (category) {
                return category.id === id;
            })
            this.editCategoryObject.name = this.editCategoryObject.name[0].name;
            
            this.isEditCategoryModalOpen = true;
        },

        deleteCategory(id) {
            this.deleteCategoryId = id;
            this.isDeleteCategoryModalOpen = true
        }
    }
}
</script>

<style>
.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
</style>