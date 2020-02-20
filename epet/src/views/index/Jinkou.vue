<template>
  <div class="jinkou">
    <van-image src="https://img2.epetbar.com/2019-10/14/10/38a83407b5443c3f60db56562bcbfd09.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/2019-03/19/11/f9f208687874bc99c0cbeed61443e9ac.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-02/22/11/a54d9566c7dff3678b84a945a8f68600.jpg?x-oss-process=style/water"/>
    <div class="imgList">
    <van-image src="https://img2.epetbar.com/nowater/2019-02/22/11/87e3165120d948391cd2394e85df12ed.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-02/22/11/7a224283c93a7b6a16fc8aa6f098372d.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-02/22/11/fe022ce0a099d5b8730b254e674bbf44.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-02/22/11/089e9c4bffec8df9d8b10b0decf282c0.jpg?x-oss-process=style/water"/>
    </div>
    <van-image src="https://img2.epetbar.com/2019-02/22/14/e722bef4dfea0719dd708a06c9cb2e21.gif?x-oss-process=style/water"/>
    <van-image class="hot" src="https://img2.epetbar.com/2019-03/28/11/4c33195e11acb00b859fcf883ee19f2a.jpg?x-oss-process=style/water"/>
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
      var obj={class:"进口"};
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
    },
  }
}
</script>
<style  scoped>
.jinkou .imgList{
  display:flex;
}
.jinkou .hot{
  margin:10px 0;
}
.jinkou .guess>.van-image{margin:0  0 20px 10px;}
.jinkou .guess{
  display:flex;
  flex-wrap:wrap;
}
.jinkou .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.jinkou .guess .product .ptitle{
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
.jinkou .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.jinkou .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>