<template>
<div id="app">
  <!-- 3、在父组件中使用该导航栏作为公共部分并赋值 -->
    <NavBar 
      v-show="navShow" 
      :title="title" 
      :isleftarrow="isleftarrow"
    />      
    <div id="blank" v-show="navShow" ></div>

    <!-- 页面内容 -->
    <router-view></router-view>

    <!-- 公共底 -->
    <Navtabbar 
      v-show="navTabbarShow"
    />
</div>
</template>

<script>
// 3.1引用顶部导航栏组件
  import NavBar from "./components/common/Navbar.vue";
  // 引用底部导航组件
  import Navtabbar from "./components/common/Navtabbar.vue";
  export default {
    components: {
      NavBar,
      Navtabbar
    },
    //3.2设置属性值与导航栏组件进行数据绑定（title:'', isleftarrow:''）
    data() {
      return {
        title:'',
        isleftarrow:'',
        navShow: true,
        navTabbarShow:true
      }
    },
    //控制其他组件是否显示公共底部导航NavTabbar
    methods:{
      public_footer(bool){
        this.navTabbarShow=bool;
      }
    },
    //   3.3在mounted中给 title和isleftarrow赋值
    // :在模板渲染成html后调用，通常是初始化页面完成后，再对html的dom节点进行一些需要的操作。
    mounted() {
      this.title = this.$route.meta.title;
      this.isleftarrow = this.$route.meta.isleftarrow;       
      this.navShow = this.$route.meta.navShow; 
      this.navTabbarShow=this.$route.meta.navTabbarShow; 
    },
    //3.4使用watch检测路由切换给 title和isleftarrow赋值。
    watch: {
      $route(to, from) {
      this.title = to.meta.title;
      this.isleftarrow =  to.meta.isleftarrow;
      this.navShow = to.meta.navShow; 
      this.navTabbarShow = to.meta.navTabbarShow; 
      }
    }
  }
</script>
<style scoped>
#app{
  font-size:12px;
}
#app .van-nav-bar{
  height:50px;
  width:100%;
  font-size:18px;
  color:#333;
  line-height:50px;
  z-index:999 !important;
}
#app .van-nav-bar .iconfont{
  font-size:22px;
  
}
#app #blank{
  height:50px;
  width:100%;
}
#app >>> .van-tabbar-item__icon img{
  width:24px;height:24px;
}
</style>
