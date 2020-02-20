<template>
  <div class="guantou">
    <van-image src="https://img2.epetbar.com/2019-03/19/15/c39ce6a238b6a3be8b1d814ffb7e6c75.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-03/21/15/1018622edc36cc4a09557db1f816ea31.jpg"/>
      <van-image src="https://img2.epetbar.com/2019-03/21/15/61fe4c1ad45c4f8b4ad9c6ea58807360.jpg"/>
      <van-image src="https://img2.epetbar.com/2019-03/21/15/4c6c3b4da674cc3a2d2aab062fa26a25.jpg"/>
      <van-image src="https://img2.epetbar.com/2019-03/21/15/a612ac39280eaa46d85b8c79a70fcdd1.jpg"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-02/22/16/b835af6249c4f6519fc462747e79bb88.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-02/22/16/4f5748537ba3779f74595009b2e98a3d.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-02/22/16/a9daaf273ec935f50e72ee73bf637ce4.jpg?x-oss-process=style/waterfall&$1=200"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-02/22/16/88d09facabbe9f9aa4e7fd0e323a498a.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-02/22/16/86979f7a8d4be56af888df6b7a82b782.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-02/22/16/449f09e7bb9f55b65137b4ee9ec7b595.jpg?x-oss-process=style/waterfall&$1=200"/>
    </div>
    <van-image src="https://img2.epetbar.com/2019-03/21/17/6de3d9fab75e91d76cb2bf187071926d.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-03/21/17/8aeeeef6dd1cf066463fb6c24141e788.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-03/21/17/69862f158cb17a002ac3acf6ed559c15.jpg?x-oss-process=style/water"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-03/21/17/24630eb876577d51a8506d3d11988fef.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-03/21/17/6304264ba3b5293a7424474b837f9cb9.jpg?x-oss-process=style/water"/>
    </div>
    <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/df9d3052ea0dff3ef3f9481c6fe89f93.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/df9d3052ea0dff3ef3f9481c6fe89f93.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/8b9877eea42d1f68f4c479935532f91a.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/4fd4ed21b5efb300b4de796703c4109d.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/dca8b834681d034fc417461d54b5824e.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/0455413f747686a90192eef914079cbc.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
      <van-swipe-item>
        <van-image src="https://img2.epetbar.com/2019-03/21/17/f22385558216e82987d8beb8f45ea6e5.jpg?x-oss-process=style/water"/>
      </van-swipe-item>
    </van-swipe>
    <van-image class="zhu" src="https://img2.epetbar.com/nowater/2019-02/22/14/b0c09782129b4e90efb3e4976557638e.jpg"/>
    <van-image src="https://img2.epetbar.com/2019-02/22/10/4e3adeb36a7c72de9e41185fbfa3bb6e.jpg?x-oss-process=style/water"/>
    <div class="guess">
      <div class="product" v-for="(p,i) of plist" :key="i">
        <router-link :to="{name:'details',params:{lid:p.lid}}">
          <van-image :src="p.pic1"></van-image>
        </router-link>
        <div class="ptitle">{{p.title}}</div>
        <div class="pflex">
          <div class="price">¥{{p.price1.toFixed(2)}}</div>
          <van-image width="26" src="https://s2.ax1x.com/2020/01/19/1PPu0x.png" @click="onClickAddcart(p)"></van-image>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      plist:[]
    }
  },
  created(){
    this.pload();
  },
  methods:{
    pload(){
      var url="dclass_product";
      var obj={class:"罐头"};
      this.axios.get(url,{params:obj}).then(res=>{
        this.plist=res.data.data;
        console.log(this.plist)
      })
    },
      onClickAddcart(p){
        var url="addcart";
        var obj={
          lid:p.lid,
          title:p.title,
          details:p.details,
          pic1:p.pic1,
          price1:p.price1,
          href:p.href,
          count:1,
        }
        console.log(obj)
        this.axios.get(url,{params:obj})
        .then(result=>{
          console.log(result.data)
          if(result.data.code==-2){
            this.$dialog.confirm({
            title: '标题',
            message: '您当前未登录！(游客状态)',
            confirmButtonText:'去登录',
            cancelButtonText:'去注册',
            }).then(() => {
              this.$router.push("/login")
            }).catch(()=>{
              this.$router.push("/reg")
            })
          }else if(result.data.code>=1){
            this.$store.commit("addCartCount",1);
            this.$dialog.confirm({
            title: '标题',
            message: '商品已添加购物车',
            confirmButtonText:'去购物车',
            cancelButtonText:'继续购物',
            }).then(() => {
              this.$router.push("/cart") 
            }).catch(()=>{}) 
          }
        })
    }
  },

}
</script>

<style scoped>
.guantou .list{
  display:flex;
}
.guantou .my-swipe .van-swipe-item {
  color: #fff;
  font-size: 20px;
  text-align: center;
}
.guantou .zhu{
  margin:40px 0 20px 10px;
  width:140px;
}
.guantou .guess>.van-image{margin:0  0 20px 10px;}
.guantou .guess{
  display:flex;
  flex-wrap:wrap;
}
.guantou .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.guantou .guess .product .ptitle{
  font-size:12px;
  color:#333;
  line-height:20px;
  margin:5px 0;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.guantou .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.guantou .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>