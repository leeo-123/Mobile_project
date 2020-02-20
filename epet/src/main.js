import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入淘宝弹性布局方案插件
import 'lib-flexible'

// 引入iconfont
import "./assets/iconfont/iconfont.css"
// 引入css reset文件
import "./assets/normalize.css"

// 引入vant
import Vant from 'vant';
import 'vant/lib/index.css';

import VueLazyload from 'vue-lazyload'
 
//使用懒加载组件
Vue.use(VueLazyload,{
  lazyComponent: true
})


Vue.use(Vant); 

//5:引入第三方ajax库axios
//6:引入axios
import axios from "axios"
//7:配置访问服务器基础地址
axios.defaults.baseURL="http://127.0.0.1:4000/"
//8:配置发送请求保存session信息
axios.defaults.withCredentials=true;
//9:将axios注册vue
Vue.prototype.axios = axios;
//main.js 脚手架

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
