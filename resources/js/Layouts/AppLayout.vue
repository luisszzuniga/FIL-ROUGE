<template>
    <Navbar :page="page"/>
    <div>
        <slot></slot>
    </div>
    <Footer />
</template>

<script>
import Navbar from '../Components/Navbar.vue'
import Footer from '../Components/Footer.vue'

export default {
    components: {
        Navbar,
        Footer
    },

    props: {
        page: String
    }
}
</script>

<style>

</style>