<template>
  <div class="container">
    <h1 class="#f3e5f5 purple lighten-5 center">[Rails+Vue.js]~Articleshelf~</h1>
    <div class="row #e3f2fd blue lighten-5">
      <div class="col s4 m6" v-for="(article, index) in articles" :key="index">
        <div class="card btn">
          <span class="card-title" v-on:click="setArticleInfo(article.id)">
            {{ article.title }}
          </span>
        </div>
      </div>
    </div>
    <div class="row" v-show="articleInfoBool">
      <div class="col s12 m12">
        <div class="card blue-grey darken-1">
          <div class="card-content white-text">
            <span class="card-title">
              【{{ articleInfo.title }}】
            </span>
            <div class="detail">
              ・著者：{{ articleInfo.author }}
            </div>
            <div class="detail">
              ・タグ：{{ articleInfo.tag }}
            </div>
            <div class="detail">
              ・内容：{{ articleInfo.content }}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import Vue from 'vue'
  import axios from 'axios'

  export default {
    name: 'ArticleHome',
    data: function() {
      return {
        articleInfo: {},
        articleInfoBool: false,
        articles: [],
      }
    },
    mounted: function() {
      this.fetchArticles();
    },
    methods: {
      fetchArticles() {
        axios.get('/api/articles').then((res) => {
          for(var i = 0; i < res.data.articles.length; i++) {
            this.articles.push(res.data.articles[i]);
          }
        }, (error) => {
          console.log(error);
        });
      },
      setArticleInfo(id){
        axios.get('api/articles/${id}.json').then(res => {
          this.articleInfo = res.data;
          this.articleInfoBool = true;
        });
      }
    }
  }
</script>

<style scoped></style>
