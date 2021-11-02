<template>
  <div> 
  <nav> 
    <router-link v-for="routes in links" 
      v-bind:key="routes.id"
      :to="`${routes.page}`">{{routes.text}}</router-link>
  </nav> 
</div>
</template>

<script>
export default {
  name: 'Navigation',
  data() {
    return {
      links: [
        {
          id: 0,
          text: 'Location',
          page:'/location/',
        },
      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}

.spacing {
  margin-right: 50px;
  text-decoration: none;
  color: white;
  font-size: 18px;
}
nav{
    padding-top: 20px;
    background-color: black;
    padding-bottom: 20px;
}

a{
  text-decoration: none;
  color: white;
}
</style>