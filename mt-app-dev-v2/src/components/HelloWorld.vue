<template>
  <div class="hello">
    <img alt="MT logo" src="../assets/green-logo.png">
    <!--<router-link :to="{name: 'Location', params: {hey}}">LOCATION</router-link>-->
    <router-link to="/results">LOCATION</router-link>
    <div class="square">
      <div class="content">
        <h1>Please Login</h1>
        <div class="fields">
          <input id="LANID" type="text" placeholder="Enter LanID here"/>
        </div>
        
        <div class="fields">
          <input id="PASSWORD" type="password" placeholder="Enter password here" />
        </div>

        <p v-if="highlight" id="wrong_credentials">Please enter valid credentials</p>
        
        <!--<button class="login_button" @click="getValues()"><router-link to="/location">Login</router-link></button>-->
        <button class="login_button" @click="validateCredentials()">Login</button>
      </div>
    </div>
  </div>
  
  
</template>

<script>
export default {
  
  name: 'HelloWorld',
  
  data() {
    return {
      highlight: false,
      //hey: 'buffalo',
    }
  },
  methods: {
    validateCredentials(){
      let lanID = document.querySelector('#LANID').value;
      let pwd = document.querySelector('#PASSWORD').value;
      if((lanID == 'TDEVR0X' && pwd == 'password') || (lanID == 'TDEVR0Z' && pwd == 'otherpassword')){
        this.highlight = false;
      }
      else{
        this.highlight = true;
      }
    },
    
  }
}


</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}

.square {
  position: relative;
  border: 5px solid #FFD03E;
  margin: 0 auto;
  height: 0;
  max-width:600px;
  padding-bottom:20%;
  box-shadow: 5px 5px 7px grey;
}

.content {
  position: absolute;
  width: 100%;
  
}

.fields{
  margin-bottom: 15px;
}

input{
  width: 40%;
  padding-top: 10px;
  padding-bottom: 10px;
  border: 2px solid black;
}

#wrong_credentials{
  color: red;
  font-weight: bold;
  font-size: 20px;
}

.login_button {
  padding: 10px 50px 10px 50px;
  border-radius: 10px;
  font-size: 20px;
  background-color: #007955;
  color: white;
  border: 1px solid #FFD03E;
}
</style>
