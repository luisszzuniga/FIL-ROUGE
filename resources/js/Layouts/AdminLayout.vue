<template>
    <Navbar :page="page"/>
    <div>
        <slot></slot>
    </div>
</template>

<script>
import Navbar from '../Components/Admin/Navbar';

export default {
    components: {
        Navbar
    },


    props: {
        page: String
    }
}
</script>

<style>

</style>