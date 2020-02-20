<template>
  <div class="index">
    <!-- 顶部搜索栏 导航栏 -->
    <div id="navTop" :class="isTop">
      <div class="searchbox" >
        <van-search
          placeholder="请输入搜索内容"
          shape="round"
          @click="goSearch"
        >
        </van-search>
        <van-icon class="iconfont" class-prefix='icon' name='xiaoxi-yuanshijituantubiao' @click="onMessage"  />
      </div>
      <van-tabs >
        <van-tab title="精选" to="/"></van-tab>
        <van-tab title="进口猫粮" to="/jinkou"></van-tab>
        <van-tab title="国产猫粮" to="/guochan"></van-tab>
        <van-tab title="罐头零食" to="/guantou"></van-tab>
        <van-tab title="猫砂馆" to="/maosha"></van-tab>
        <van-tab title="猫砂盆" to="/maoshapen"></van-tab>
      </van-tabs>
    </div>
    <!-- 轮播图 -->
    <van-swipe :autoplay="3000" indicator-color="white" class="topSwipe">
      <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-01/30/21/215a50b8b6d272dbc0d1f3038f2d3ec4.jpg?x-oss-process=style/water"/></van-swipe-item>
      <van-swipe-item><van-image src="https://img2.epetbar.com/2020-02/06/22/d7af680009baee180b84f7d0c5adff08.jpg?x-oss-process=style/water"/></van-swipe-item>
      <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-02/02/14/6efa4dc095dae366583f411118305aab.jpg?x-oss-process=style/water"/></van-swipe-item>
      <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-01/20/14/1085b4b8444fbd7d010158e9eb813776.jpg?x-oss-process=style/water"/></van-swipe-item>
      <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-01/21/11/ba90aa388877c661f7152ba8da870861.jpg?x-oss-process=style/water"/></van-swipe-item>
    </van-swipe>
    <!-- 菜单栏 -->
    <div class="menus">
      <ul>
        <li><router-link to="eguoji"><van-image src="https://img2.epetbar.com/2020-02/01/19/9aa781bf35a1fcaa417cd0acb4086c20.png@!water"/></router-link></li>
        <li><router-link to=""><van-image src="https://img2.epetbar.com/2020-02/01/20/2fdfeaaabdad0b7021581e345bca6e1f.png@!water"/></router-link></li>
        <li><router-link to="peisong"><van-image src="https://img2.epetbar.com/2020-02/01/20/936afd4c251ae431a95433c5744e3a05.png@!water" /></router-link></li>
        <li><router-link to="temai"><van-image src="https://img2.epetbar.com/2020-02/01/20/ad5507e2838722e9c6e7c572daf01266.png@!water" /></router-link></li>
        <li><router-link to=""><van-image src="https://img2.epetbar.com/2020-02/01/20/cf0363a0fd86792366caed140175e122.png@!water" /></router-link></li>
      </ul>
    </div>
    <div class="meiri">
      <van-image
        src="https://img2.epetbar.com/2020-01/31/09/54d3f2698081a76ee2dec13abbb4e174.jpg?x-oss-process=style/water"
      />
      <div class="list">
        <van-image src="https://img2.epetbar.com/2020-01/17/00/ca495d2a04e02edbb1db16e2247739b0.jpg?x-oss-process=style/water"/>
        <van-image src="https://img2.epetbar.com/2020-02/06/19/ee681168821e341c08c930cad6f5ce9a.jpg?x-oss-process=style/water"/>
      </div>
      <div class="list">
        <van-image src="https://img2.epetbar.com/2020-01/17/00/c610b3e60160b3ec229491055a1ef5b7.jpg?x-oss-process=style/water"/>
        <van-image src="https://img2.epetbar.com/nowater/2020-01/19/22/b795cef0f8794d4774cb11b3eb412030.jpg?x-oss-process=style/water"/>
      </div>
    </div>
    <div class="haowu">
      <van-image
        src="https://img2.epetbar.com/2020-01/31/09/a44d662227e2379b08e6e37ce418d589.jpg?x-oss-process=style/water"/>
      <van-swipe :autoplay="3000" indicator-color="white">
        <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-01/31/17/efa91c71530773b4d48e955970ad06ed.jpg?x-oss-process=style/water"/></van-swipe-item>
        <van-swipe-item><van-image src="https://img2.epetbar.com/2020-02/08/14/3dcd9b5b4f241888645196cab73f2c3b.jpg?x-oss-process=style/water"/></van-swipe-item>
        <van-swipe-item><van-image src="https://img2.epetbar.com/nowater/2020-01/31/20/ff732eec52a497b4f46d5b715d1cb0eb.jpg?x-oss-process=style/water"/></van-swipe-item>
      </van-swipe>
    </div>
    <div class="gongyi">
      <van-image width="50%" src="https://img2.epetbar.com/2020-01/16/13/9878122114f5a2f8ff1b88a18b94fe45.jpg?x-oss-process=style/water"/>
      <van-image width="50%" src="https://img2.epetbar.com/2020-02/07/09/c912cc245b929cd21274824ce784063a.jpg?x-oss-process=style/water"/>
    </div>
    <div class="guess">
      <van-image width="140" src="https://s2.ax1x.com/2020/01/15/lXlrss.png"/>
      <div class="pcontent">
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
  </div>
</template>

<script>
export default {
  data(){
    return{
      isTop:{
        onTop:true,
        leaveTop:false,
      },
      plist:[]
    }
  },
    beforeCreate() {
       document.querySelector('body').setAttribute('style', 'background:#f3f4f5')
  }, 
   beforeDestroy() {
    document.querySelector('body').removeAttribute('style')
  }, 
  created(){
    this.pload();
  },
  mounted(){
    window.addEventListener('scroll', this.handleScroll);
  },
  methods:{
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
    onMessage(){
      
      this.$router.push("/message")
    },
    pload(){
      var url="pclass_product";
      var obj={class:"主粮"};
      this.axios.get(url,{params:obj}).then(res=>{
        this.plist=res.data.data;
        console.log(this.plist)
      })
    },
    goSearch(){
      this.$router.push("/search/kw")
    },
    handleScroll () { //改变元素#searchBar的top值
      var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
      if(scrollTop>0){
        this.isTop.onTop=false;
        this.isTop.leaveTop=true;
      }else{
        this.isTop.onTop=true;
        this.isTop.leaveTop=false;
      }
    }
  },
  destroyed () {//离开该页面需要移除这个监听的事件
    window.removeEventListener('scroll', this.handleScroll)
  }
}
</script>
<style  scoped>
.index{
  padding-bottom:50px;
}
.index .van-search{
  width:305px;
  box-sizing:border-box;
}
.index .searchbox{
  width:100%;
  height:30px;
  margin-top:25px;
  display:flex;
  justify-content: space-around;
  line-height:30px;
}

.index .searchbox .icon-xiaoxi-yuanshijituantubiao:before{
  font-size:25px;
}
.index .onTop{
  background:transparent;
  color:#fff;
}
.index .leaveTop{
  background:#fff;
}
.index .onTop >>> .van-search{
  background:transparent !important ;
  color:#fff;
}
.index .onTop >>> .van-tabs__nav{
  background:transparent ;
}
.index .onTop >>> .van-tab__text{
  color:#fff;
}
.index >>> .van-hairline--top-bottom::after{
  border:0;
}
.index #navTop >>> .van-tabs__line{
  display:none;
}
.index #navTop{
  position:fixed;
  width:100%;
  z-index:999;
}
.index #navTop >>> .van-tab--active {
  font-size:20px;
  font-weight:800;
}
.index .topSwipe >>> .van-swipe__indicators{
  bottom:50px;
}
.index .menus{
  max-width: 750px;
  min-width: 320px;
  margin: 0 auto;
  margin-top:-10%;
  position:relative;
  z-index: 1;
}
.index .menus ul{
  width:100%;
  display:flex;
}
.index .menus ul li{
  width:20%;
}
.index .menus img{
  height:115px;
}
.index .meiri .list{
  display:flex;
}

.index .content{
  display:flex;
  flex-wrap:wrap;
}
.index .meiri>.van-image{
  margin-bottom:10px;
}
.index .haowu{
  margin-top:40px;
}
.index .gongyi{margin:10px 0 40px 0;}
.index .guess>.van-image{margin:0  0 20px 10px;}
.index .guess .pcontent{
  display:flex;
  flex-wrap:wrap;
}
.index .guess .product{
  width:170px;height:255px;
  border:1px solid #f1f1f1;
  background:#fff;
  box-sizing: border-box;
  border-radius:10px;
  padding:15px;
  margin-bottom:10px;
  margin-left:11px;
}
.index .guess .product .ptitle{
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
.index .guess .product .pflex{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.index .guess .product .price{
  font-size:14px;
  font-weight:700;
  color:#ff5757;
}
</style>
