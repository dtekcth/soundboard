<template>
  <div class="button" @click="makeSound">
    <span>{{ name }}</span>
  </div>
</template>

<script>

export default {
  name: 'SoundButton',
  props: {
    soundPath: String,
    name: String
  },
  methods: {
    makeSound: function() {
      var sound = new Audio("./assets/" + this.soundPath);
      sound.play().then(() => {
        //eslint-disable-next-line
        console.log("success!");
      }).catch((err) => {
        //eslint-disable-next-line
        console.log(err.msg);
        throw new Error(err);
      });
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
