<template>
  <div class="maosha">
    <van-image src="https://img2.epetbar.com/2019-05/21/16/9be3a3ff7a0c61416609986e501abcdc.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-05/21/17/7a1f9e2842d881f5acdb51521f1320ed.png"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/c844c471563a3391f9dc5ee572d06613.png"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/c201332b6b291bca3e57ffa1176c6349.png"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/ce274bd7fdff33e4bab5bd880ca2c626.png"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-05/21/17/4daa2fcca216179d0e580e0f75b903d8.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/0494f3793b640808f508360a105be0e3.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/07987dbdecb846f3397d90f37948b94d.jpg?x-oss-process=style/waterfall&$1=200"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-05/21/17/c8cde7f23ea7d848703a13b5ae752551.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/0494f3793b640808f508360a105be0e3.jpg?x-oss-process=style/waterfall&$1=200"/>
      <van-image src="https://img2.epetbar.com/2019-05/21/17/f2cf37b4357fc721c6d835a8d10c01b6.jpg?x-oss-process=style/waterfall&$1=200"/>
    </div>
    <van-image src="https://img2.epetbar.com/2019-10/29/10/255cd8fe0788c63ddbf92093ed1e0c00.jpg?x-oss-process=style/water"/>
    <van-image class="title" src="https://img2.epetbar.com/nowater/2019-05/21/17/7783d18e6efe4307878bfb6fc0ebebec.jpg"/>
    <van-image  src="https://img2.epetbar.com/2019-05/21/16/5f35ffd1896b6a102b62bb98ad5ba898.jpg?x-oss-process=style/water"/>
    <van-image  src="https://img2.epetbar.com/2019-05/21/16/95b10e2016c87b168f1c3fb64466ba5a.jpg?x-oss-process=style/water"/>
    <van-image  src="https://img2.epetbar.com/2019-05/21/16/e1a4d673e2cc5bed10e97029c76c0539.jpg?x-oss-process=style/water"/>
    <van-image class="title" src="https://img2.epetbar.com/nowater/2019-05/21/17/1c65bd915b327a914ffb29883fec5040.jpg"/>
    <van-image  src="https://img2.epetbar.com/2019-05/21/16/f4ab3f58386bafcf508d02b67c076add.jpg?x-oss-process=style/water"/>
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
    this.onSearch();
  },
  methods:{
    onSearch() {
      var url = "search";
      var obj = {kw:"猫砂"}
      console.log(obj)
      this.axios.get(url,{params:obj}).then(res=>{
        console.log(res.data)
        this.plist=res.data.data;
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
  }
}
</script>

<style>
.maosha .list{
  display:flex;
}
.maosha .title{
  margin:20px 0;
  width:340px;
}
.maosha .guess>.van-image{margin:0  0 20px 10px;}
.maosha .guess{
  display:flex;
  flex-wrap:wrap;
}
.maosha .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.maosha .guess .product .ptitle{
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
.maosha .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.maosha .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>