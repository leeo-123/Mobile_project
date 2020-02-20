<template>
  <div class="maoshapen">
    <van-image src="https://img2.epetbar.com/2019-04/16/10/c330a22841bf22c41d66bf8b7937dc69.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/2019-04/16/10/5b5b36a2849ca4cac29b21ecad0f2c2a.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-04/16/11/3c7c82826b9a132ed68473564ec04e13.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-04/16/11/9453ad36b46750006f1ded69f6ab7246.jpg?x-oss-process=style/water"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-04/16/11/c22ce3a70b06f1de23832a71e3475ac5.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-04/16/11/1d289ebef0727b37dbde01b2037227cd.jpg?x-oss-process=style/water"/>
    </div>
    <van-image src="https://img2.epetbar.com/2019-04/16/11/805d39d5583437f2db3a4b5d3c0d5f96.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/2019-04/16/11/dcef6e670d4526e5754e13b93d73e8e5.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-04/16/11/e99c549215217f633f7c20412c8cc056.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/2019-04/16/11/e96336374c487eed39cdbdc86ccfea84.jpg?x-oss-process=style/water"/>
    </div>
    <van-image class="title" src="https://img2.epetbar.com/nowater/2019-04/16/14/4c7d05061bc69861090ce1d22cd731a5.jpg"/>
    <van-image src="https://img2.epetbar.com/2019-09/29/18/0af04cd83b8627e093fba76be9ee76ec.jpg?x-oss-process=style/water"/>
    <van-image class="title" src="https://img2.epetbar.com/nowater/2019-04/16/14/856980f00cb28aebe10b32a9ffc5672a.jpg"/>
    <van-image src="https://img2.epetbar.com/2019-04/16/13/c5f7724e66a5133d10d86955e73b2064.jpg?x-oss-process=style/water"/>
    <van-image class="title" src="https://img2.epetbar.com/nowater/2019-04/16/14/856980f00cb28aebe10b32a9ffc5672a.jpg"/>
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
      var obj={class:"厕所"};
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
  }
}
</script>

<style scoped>
.maoshapen .list{
  display:flex;
}
.maoshapen .title{
  margin:35px 0 10px 10px;
  width:310px;
}
.maoshapen .guess>.van-image{margin:0  0 20px 10px;}
.maoshapen .guess{
  display:flex;
  flex-wrap:wrap;
}
.maoshapen .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.maoshapen .guess .product .ptitle{
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
.maoshapen .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.maoshapen .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>