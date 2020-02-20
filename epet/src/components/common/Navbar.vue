<template>
    <!-- 2、创建NavBar组件用来封装vant提供的<van-nav-bar> -->
    <!-- 2.1设置数据绑定的title，左侧返回箭头是否显示  -->
  <div id="NavBar">
    <van-nav-bar 
      :title="title" 
      :left-arrow="isleftarrow" 
      @click-left="onClickLeft" 
    >
      <van-icon class="iconfont" class-prefix='icon' name='back' slot="left" />
    </van-nav-bar>
  </div>
</template>

// 2.2 使用props由父组件给子组件传值，父组件动态给导航栏赋值。
<script>
export default {
  // title：用来显示导航栏的title，isleftarrow用来显示导航栏的左侧返回箭头
  props: ["title","isleftarrow"],
  methods: {
    onClickLeft() {
      // 点击回退的时候当做地址回退
      this.$router.go(-1);
    }
  }
};
</script>
<style scoped>
#NavBar {
  position: fixed;
  top: 0;
  left: 0;
  height: 50px;
  line-height: 50px;
  width:100%;
  z-index: 100;
}
.van-nav-bar__title{
  font-size: 18px !important;
}
#app .van-nav-bar .iconfont{
  font-size:30px;
}
.van-nav-bar__left{
  left:0;
  top:0;
}
 /* 去除导航栏底部的白色横线 */
 /* .van-hairline--bottom::after {
    
    border-bottom-width: 0px;
} */
</style>