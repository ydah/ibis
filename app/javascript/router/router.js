import Vue from 'vue'
import VueRouter from 'vue-router'
import ArticleHome from '../pages/ArticleHome.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',  name: 'ArticleHome', component: ArticleHome },
];

export default new VueRouter({ routes });
