<template>
  <div class="hello">
    <b-button variant="danger" @click="findCloseBuyButtonPressed()">Show Results</b-button>
    <div id="map" ref="map"></div>
  </div>
</template>

<script>
import {gmapApi} from 'vue2-google-maps'
import axios from "axios";

export default {
  name: 'HelloWorld',
  data(){
    return{
      center: { lat: 39.739071, lng: -75.539787 },
      lat: 39.739071,
      lng: -75.539787,
      type: "restaurant",
      radius: 5,
      places: [],
      map: null,
    }
  },
  computed: {
    google: gmapApi
  },
  /*mounted(){

    this.map = new window.google.maps.Map(this.$refs['map'], {
      zoom: 15,
      center: this.center,
    })
  },*/
  methods:{
        findCloseBuyButtonPressed() {
            const URL = `https://cors-anywhere.herokuapp.com/https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${
                this.lat},${this.lng}&type=${this.type}&radius=${this.radius * 1000}&key=AIzaSyBNqBOnwbtk78eyzBLpNF0tTocn8MSI1-o`;
            axios.get(URL).then(response => {
                this.places = response.data.results;
                console.log(response.data.results);
                this.addLocationsToGoogleMaps();
            }).catch(error => {
              
                console.log(error.message);
            });
        },
        addLocationsToGoogleMaps() {
            var map = new window.google.maps.Map(this.$refs['map'], {
                zoom: 15,
                center: new window.google.maps.LatLng(this.lat, this.lng),
                mapTypeId: window.google.maps.MapTypeId.ROADMAP
            });

            var infowindow = new window.google.maps.InfoWindow();

            this.places.forEach((place) => {
                const lat = place.geometry.location.lat;
                const lng = place.geometry.location.lng;
                let marker = new window.google.maps.Marker({
                    position: new window.google.maps.LatLng(lat, lng),
                    map: map
                });

                 window.google.maps.event.addListener(marker, "click", () => {
                    infowindow.setContent(`<div>${place.name}</div><p>${place.vicinity}</p>`);
                    infowindow.open(map, marker);
                });
            });
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

#map{
  height: 600px;
  background: gray;
}
</style>
