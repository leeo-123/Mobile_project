<template>
  <div class="temai">
    <van-image src="https://img2.epetbar.com/nowater/2018-08/30/10/57344ea069dde9154da85eb784fc3d12.jpg@!water"/>
    <div class="content">
      <van-tabs v-model="active" scrollspy sticky :offset-top="46">
        <van-tab title="主粮" >
          <van-image src="//static.epetbar.com/static_wap/epetapp/pages/brand_sale/images/navtitle0.jpg"></van-image>
          <van-image radius="15" src="//img2.epetbar.com/nowater/showcase/2020/02/08/092906334.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092831348.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092948288.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092917256.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092850447.jpg@!water"></van-image>
          <van-image radius="15" src="//img2.epetbar.com/nowater/showcase/2020/02/08/092825699.jpg@!water"></van-image>
        </van-tab>
        <van-tab title="零食" >
          <van-image src="//static.epetbar.com/static_wap/epetapp/pages/brand_sale/images/navtitle1.jpg"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092944328.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092925691.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092857725.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092839875.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092829415.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092854780.jpg@!water"></van-image>
        </van-tab>
        <van-tab title="医疗保险" >
          <van-image src="//static.epetbar.com/static_wap/epetapp/pages/brand_sale/images/navtitle2.jpg"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092908867.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092900588.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092847494.jpg@!water"></van-image>
          <van-image  radius="15" src="//img2.epetbar.com/nowater/showcase/2020/02/08/092929885.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092910203.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092815791.jpg@!water"></van-image>
        </van-tab>
        <van-tab title="玩具日用" >
          <van-image src="//static.epetbar.com/static_wap/epetapp/pages/brand_sale/images/navtitle3.jpg"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092950177.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092902815.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092904376.jpg@!water"></van-image>
          <van-image radius="15"  src="//img2.epetbar.com/nowater/showcase/2020/02/08/092815338.jpg@!water"></van-image>
        </van-tab>
      </van-tabs>
    </div>
  </div>
</template>

<script>
export default {
data(){
  return{
    active:1
  }
},
}
</script>

<style scoped>
.temai .content .van-image{
  margin:10px;
}
</style>