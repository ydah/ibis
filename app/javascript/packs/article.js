import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: '.js-articlesIndex',
  data: {
    articleInfo: {},
    articleInfoBool: false
  },
  methods: {
    setArticleInfo(id){
      axios.get(`api/articles/${id}.json`).then(res => {
        this.articleInfo = res.data;
        this.articleInfoBool = true;
      });
    }
  }
});
