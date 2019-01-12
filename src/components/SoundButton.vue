<template>
  <div class="button" @click="makeSound">
    <span>{{ name }}</span>
  </div>
</template>

<script>

export default {
  name: 'SoundButton',
  data: function() {
    return {
      publicPath: process.env.BASE_URL,
    }
  },
  props: {
    soundPath: String,
    name: String
  },
  methods: {
    makeSound: function() {
      var sound = new Audio(this.publicPath + this.soundPath);
      sound.play();
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.button {
  box-sizing: border-box;
  margin-left: 4%;
  margin-top: 4%;
  width: 20%;
  height: 75px;
  float: left;
  border: 2px solid gray;
}

span {
  position: relative;
  top: 40%;
}
</style>
