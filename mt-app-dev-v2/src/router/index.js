import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import LocationPicker from '@/components/LocationPicker'
import Results from '@/components/Results'

Vue.use(Router)

export default new Router({
    mode: 'history',
    routes: [
      {
        path: '/',
        name: 'HelloWorld',
        component: HelloWorld
      },
      // {
      //   path: "/location/:hey",
      //   name: "Location",
      //   component: LocationPicker,
      //   props: true,
      // },
    {
      path: "/location",
      name: "Location",
      component: LocationPicker,
    },
    {
      path: "/results",
      name: "Results",
      component: Results
    }
      
    ]
  })