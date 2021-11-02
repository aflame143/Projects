<template>
    
    <div id="body"> <!-- beginning of body div-->
    <Nav />
  
    <div id="choose-location"> <!-- beginning of choose location div-->
        <h1>
            Choose your location
        </h1>
    </div> <!-- end of choose location div -->
    <div id="location-name"> <!-- beginning of location name div-->
        <div id="buffalo-name">
        <h2>
            Buffalo, New York
        </h2>
        </div> <!-- end of buffalo -->
        <div id="delaware-name">
        <h2>
            Wilmington, Delaware
        </h2>
        </div> <!-- end of delaware -->
    </div> <!-- end of location name div -->
    
    </div> <!-- end of body div-->
</template>

<script>
import Nav from './Nav'

export default{
    name: 'Location',
    components: {
        'Nav':Nav,
    },
}
</script>


<style scoped>
#body{
    background-color: #007955;
    border: 3px solid #FFD03E;

}
#choose-location{

    font-family: 'Roboto', sans-serif;
    font-size: 40px;

}

#location-name{
    font-family: 'Roboto', sans-serif;
    font-size: 30px;
}

#buffalo-name{
    float: left;
}
</style>