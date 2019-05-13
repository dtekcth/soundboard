<template>
  <div class="button" @click="makeSound">
    <span>{{ name }}</span>
  </div>
</template>

<script>

export default {
  name: 'SoundButton',
  created() {
    window.addEventListener('keydown', (e) => {
      const key = '1234567890qwertyuiopasdfghjklzxcvbnm'
        .split('')
        .indexOf(e.key)

      if (!e.ctrlKey && !e.altKey && key === this.soundId) {
        e.preventDefault();
        this.makeSound();
      }
    });
  },
  data: function() {
    return {
      publicPath: process.env.BASE_URL,
    }
  },
  props: {
    soundPath: String,
    name: String,
    soundId: Number,
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
