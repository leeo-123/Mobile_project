<template>
  <div class="guochan">
    <van-image src="https://img2.epetbar.com/nowater/2019-03/21/14/9016cf532bc62d01f76e41634bae44e6.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-03/21/14/e82a0fe55338c4ad361cd9d8d5d83a76.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/c5c9ec4d250348161bfc3b660ed63d39.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/d1bcbe72ffee89d7506ce55e058c90d1.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/e3e78791773ff7c1438ae1839028ca32.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/e3d73651d4f54abb95dbeafd2ea72f45.jpg?x-oss-process=style/water"/>
    </div>
    <div class="list">
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/c49f875e853cd83982ffa9dc18b249e3.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/30191c0b7fddeceb78b1983b468aeeb5.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/3e2a046e3a3a991d111e4a8e46c461cc.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/f0146b39f7fdb7e1d4b5db2324f4695c.jpg?x-oss-process=style/water"/>
    </div>
    <van-image src="https://img2.epetbar.com/nowater/2019-03/21/17/8d767fdaddb97799837252d44474162f.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-03/21/14/6a6b79746293f6146007a971d938ec76.jpg?x-oss-process=style/water"/>
    <div class="list">
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/14/0cbfe37887a9e019c3132cde2ec8b88e.jpg?x-oss-process=style/water"/>
      <van-image src="https://img2.epetbar.com/nowater/2019-03/21/15/4e58edc6a99bd01ac9d66f4d18f3bb9e.jpg?x-oss-process=style/water"/>
    </div>
    <van-image src="https://img2.epetbar.com/nowater/2019-03/21/15/fdecfeee409e9481592d71f6e4d1117f.jpg?x-oss-process=style/water"/>
    <van-image src="https://img2.epetbar.com/nowater/2019-05/21/10/38eaaf7679e5136311ee4a4803d70d2d.jpg?x-oss-process=style/water"/>
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
      var obj={class:"国产"};
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
.guochan .list{
display:flex;
}
.guochan .van-image{
  display:block;
}
.guochan .guess>.van-image{margin:0  0 20px 10px;}
.guochan .guess{
  display:flex;
  flex-wrap:wrap;
}
.guochan .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.guochan .guess .product .ptitle{
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
.guochan .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.guochan .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>