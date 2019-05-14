<template>
  <div id="app">
    <p class="warning">Warning: Some sounds are loud, turn down the volume if this is the first time you visit this site</p>
    <SoundButton v-for="(sound, index) in files" v-bind:soundId="index" :key="index" v-bind:soundPath="sound[0]" v-bind:name="sound[1]" />
  </div>
</template>

<script>
import SoundButton from './components/SoundButton.vue'

export default {
  name: 'app',
  components: {
    SoundButton
  },
  created() {
    alert('Warning: Some sounds are loud, turn down the volume if this is the first time you visit this site')
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
.warning {
  color: #FAA;
  font-size: 2em;
  border: 1px solid black;
  margin: 1em;
}
</style>
