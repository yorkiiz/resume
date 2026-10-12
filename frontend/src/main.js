import { createApp } from 'vue'
import { createRouter, createWebHashHistory } from 'vue-router'
import App from './App.vue'
import './style.css'

import Home from './views/Home.vue'
import ProjectDetail from './views/ProjectDetail.vue'

const routes = [
  { path: '/', component: Home },
  { path: '/project/:id', component: ProjectDetail },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes,
  scrollBehavior(to, from, savedPosition) {
    if (savedPosition) {
      return savedPosition
    } else {
      return { top: 0 }
    }
  },
})

const app = createApp(App)
app.use(router)
app.mount('#app')