<template>
  <div id="app">
    <SoundButton v-for="(sound, index) in files" v-bind:id="index" :key="index" v-bind:soundPath="sound[0]" v-bind:name="sound[1]" />
  </div>
</template>

<script>
import SoundButton from './components/SoundButton.vue'

export default {
  name: 'app',
  components: {
    SoundButton
  },
  data: function() {
    return {
      files: require("../public/all.json")
    }
  }
}
</script>

<style>
body {
  margin: 0 !important;
}

#app {
  width: 100vw;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
