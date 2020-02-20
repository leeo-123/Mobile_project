import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/index/Home.vue'
import Eguoji from '../views/index/Eguoji.vue'
import Reg from '../views/customer/Reg.vue'
import Login from '../views/customer/Login.vue'
import Xieyi from '../views/customer/Xieyi.vue'
import Customer from '../views/customer/Customer.vue'
import Setting from '../views/customer/Setting.vue'
import Classify from '../views/classify/Classify.vue'
import Book from '../views/book/Book.vue'
import Artical from '../views/book/Artical.vue'
import Details from '../views/classify/Details.vue'
import Pdetails from '../views/classify/Pdetails.vue'
import Cart from '../views/classify/Cart.vue'
import Search from '../views/classify/Search.vue'
import Jinkou from '../views/index/Jinkou.vue'
import Guochan from '../views/index/Guochan.vue'
import Guantou from '../views/index/Guantou.vue'
import Maosha from '../views/index/Maosha.vue'
import Maoshapen from '../views/index/Maoshapen.vue'
import Message from '../views/index/Message.vue'
import Tongzhi from '../views/index/Tongzhi.vue'
import Huodong from '../views/index/Huodong.vue'
import Wuliu from '../views/index/Wuliu.vue'
import Neirong from '../views/index/Neirong.vue'
import Peisong from '../views/index/Peisong.vue'
import Temai from '../views/index/Temai.vue'
Vue.use(VueRouter)

const routes = [
  { path: '/setting',
    name:'setting',
    component:Setting,
    meta: {
      title: '账户管理',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/temai',
    name:'temai',
    component:Temai,
    meta: {
      title: '品牌特卖',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/peisong',
    name:'peisong',
    component:Peisong,
    meta: {
      title: '省心痒宠 就要周期配送',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/huodong',
    name:'huodong',
    component:Huodong,
    meta: {
      title: '活动',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/neirong',
    name:'neirong',
    component:Neirong,
    meta: {
      title: '内容',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/wuliu',
    name:'wuliu',
    component:Wuliu,
    meta: {
      title: '通知',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/tongzhi',
    name:'tongzhi',
    component:Tongzhi,
    meta: {
      title: '通知',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/message',
    name:'message',
    component:Message,
    meta: {
      title: '消息中心',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/maoshapen',
    name:'maoshapen',
    component:Maoshapen,
    meta: {
      title: '猫砂盆',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/maosha',
    name:'maosha',
    component:Maosha,
    meta: {
      title: '猫砂馆',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/guantou',
    name:'guantou',
    component:Guantou,
    meta: {
      title: '罐头超市',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/guochan',
    name:'guochan',
    component:Guochan,
    meta: {
      title: '国产猫粮',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/jinkou',
    name:'jinkou',
    component:Jinkou,
    meta: {
      title: '进口猫粮',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/search/:kw',
    name:'search',
    component:Search,
    props:true,
    meta: {
      title: '搜索',
      isleftarrow:false ,
      navShow:false,
      navTabbarShow:false
    }
  },
  { path: '/cart',
    name:'cart',
    component:Cart,
    meta: {
      title: '购物车',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/pdetails',
    name:'petails',
    component:Pdetails,
    meta: {
      title: '图文详情',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/details/:lid',
    name:'details',
    component:Details,
    props:true,
    meta: {
      title: '商品详情',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/artical',
    name: 'artical',
    component:Artical,
    meta: {
      title: '文章',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/eguoji',
    name: 'eguoji',
    component:Eguoji,
    meta: {
      title: 'e宠国际',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/book',
    name: 'book',
    component:Book,
    meta: {
      title: '小萌书',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:true
    }
  },
  { path: '/classify',
    name: 'classify',
    component:Classify,
    meta: {
      title: '分类',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:true
    }
  },
  { path: '/customer',
    name: 'customer',
    component:Customer,
    meta: {
      title: '个人中心',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:true
    }
  },
  { path: '/login',
    name: 'login',
    component:Login,
    meta: {
      title: '',
      isleftarrow:true ,
      navShow:true,
      navTabbarShow:false
    }
  },
  { path: '/xieyi',
    name: 'xieyi',
    component:Xieyi,
    meta: {
      title: '协议',
      navShow:true,
      isleftarrow:true,
      navTabbarShow:false
    }
  },
  { 
    path: '/reg',
    name: 'reg',
    component:Reg,
    meta: {
      title: '',
      navShow:true,
      isleftarrow:true,
      navTabbarShow:false
    }
  },
  { //首页默认路由地址
    path: '/',
    name: 'home',
    component: Home,
    meta: {
      title: '首页入口',
      navShow:false,
      isleftarrow:true, 
      navTabbarShow:true
    }
  }
]

const router = new VueRouter({
  routes
})

router.beforeEach((to, from, next) => {
  /* 路由发生变化修改页面title */
  if (to.meta.title) {
    document.title = to.meta.title
  }
  next();
});

export default router
