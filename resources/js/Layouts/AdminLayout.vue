<template>
    <Navbar />
    <div>
        <slot></slot>
    </div>
</template>

<script>
import Navbar from '../Components/Admin/Navbar';

export default {
    components: {
        Navbar
    }

}
</script>

<style>

</style>