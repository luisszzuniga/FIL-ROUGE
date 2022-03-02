<template>
<div class="group relative">
    <div class="w-full min-h-80 bg-gray-200 rounded-md group-hover:opacity-75 lg:h-80">
        <iframe :src="location.iframe_url" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <h4>{{ location.name }}</h4>
    </div>
</div>
</template>

<script>
export default {
    props: {
        location: {}
    }
}
</script>

<style>

</style>