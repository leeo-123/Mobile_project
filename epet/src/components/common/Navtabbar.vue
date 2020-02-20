<template>
  <div id="Navtabbar">
    <!-- 公共底 -->
    <van-tabbar 
    v-model="active" 
    route  
    active-color="#41c856" 
    inactive-color="#999"
    >
      <van-tabbar-item 
        to="/"
      >
        <span>精选</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? icon1.active : icon1.inactive"
        >
      </van-tabbar-item>
      <van-tabbar-item 
        to="/classify"
      >
        <span>分类</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? icon2.active : icon2.inactive"
        >
      </van-tabbar-item>
      <van-tabbar-item 
        to="/book"
      >
        <span>小萌书</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? icon3.active : icon3.inactive"
        >
      </van-tabbar-item>
      <van-tabbar-item 
        to="cart"
        :info="$store.getters.getCart==0?'':$store.getters.getCart"
      >
        <span>购物车</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? icon4.active : icon4.inactive"
        >
      </van-tabbar-item>
      <van-tabbar-item 
        to="/customer"
      >
        <span>我的E宠</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? icon5.active : icon5.inactive"
        >
      </van-tabbar-item>

    </van-tabbar>
  </div>
</template>

<script>
export default{
  data(){
    return{    
      active: 0,
        icon1: {
          active: 'https://s2.ax1x.com/2020/01/18/1prEuQ.png',
          inactive: 'https://s2.ax1x.com/2020/01/18/1prP9f.png'
        },
        icon2: {
          active: 'https://s2.ax1x.com/2020/01/18/1prVBj.png',
          inactive: 'https://s2.ax1x.com/2020/01/18/1pDxHA.png'
        },
        icon3: {
          active: 'https://s2.ax1x.com/2020/01/18/1prZHs.png',
          inactive: 'https://s2.ax1x.com/2020/01/18/1pDvBd.png'
        },
        icon4: {
          active: 'https://s2.ax1x.com/2020/01/18/1prpNt.png',
          inactive: 'https://s2.ax1x.com/2020/01/18/1prFgS.png'
        },
        icon5: {
          active: 'https://s2.ax1x.com/2020/01/18/1pri38.png',
          inactive: 'https://s2.ax1x.com/2020/01/18/1prkjg.png'
        }
    }
  }
}
</script>