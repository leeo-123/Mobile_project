<template>
<div class="search">
  <form action="/">
    <div class="topSearch">
      <van-icon name="arrow-left" @click="goback" />
      <van-search
        v-model="value"
        show-action
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @cancel="onCancel"
      />
    </div>
  </form>
  <div class="kwlist" v-show="btnShow">
    <van-button 
    round plain color="#999" 
    v-for="(item,i) of kwlist" :key="i"
    @click="onbtn(item)"
    >
      {{item}}
    </van-button>
  </div>
  <div class="plist" v-show="!btnShow">
    <van-dropdown-menu  active-color="#41C856" >
      <van-dropdown-item v-model="menu" :options="option1"  @change="change(menu,value)"/>
      <van-dropdown-item v-model="menu2" :options="option2"    @change="change2(menu2,value)"/>
      <van-dropdown-item v-model="menu3" :options="option3"   @change="change3(menu3,value)"/>
    </van-dropdown-menu>
    <div class="product" v-for="(item,i) of list" :key="i">
      <van-image :src="item.pic1" width="100" alt="" lazy-load >
        <template v-slot:loading>
          <van-loading type="spinner" size="20" />
        </template>
      </van-image>
      <div class="pinfo">
        <span class="title">{{item.title}}</span>
        <div class="infoBottom">
          <div>
            <div class="price">{{item.price1}}</div>
            <span class="judge">互动:({{item.judge}}%好评) 售出:{{item.sales}}</span>
          </div>
          <img src="../../../public/img/classify/addcart.png" width="30" @click="onClickAddcart(item)">
        </div>
      </div>
    </div>
  </div>
</div>
</template>
<script>
export default {
  props:["kw"],
  data(){
    return{
      value: '',
      kwlist:["日用","营养","清洁","主粮","玩具","进口","零食","保健","强化",
      "益生菌"],
      btnShow:true,
      list:[],
      menu:0,
      menu2:0,
      menu3:0,
      active:{
        active1:true,
        active2:false,
        active3:false,
      },
      option1: [
        { text: '默认排序', value: 0 },
        { text: '按人气', value: 1 },
        { text: '按评价', value: 2 }
      ],
      option2: [
        { text: '销量', value: 0 },
        { text: '销量高', value: 1 },
        { text: '销量低', value: 2 }
      ],
      option3: [
        { text: '价格', value: 0 },
        { text: '价格高', value: 1 },
        { text: '价格低', value: 2 }
      ],
    }
  },
  created(){
    console.log(`接收关键词:${this.kw ,this.kw.length} `);
    if(this.kw!="kw"){
      this.btnShow=false;
      this.value=this.kw;
      this.onSearch(this.kw);
    }
    
  },
  methods:{
        onClickAddcart(item){
        var url="addcart";
        var obj={
          lid:item.lid,
          title:item.title,
          details:item.details,
          pic1:item.pic1,
          price1:item.price1,
          href:item.href,
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
    change(menu,value){
      // 默认排序值改变后
      if(menu==0){
        this.onSearch(value)
      }else if(menu==1){
        this.sales(value)
      }else{
        this.judge(value)
      }

    },
    change2(menu2,value){
      // 销量按钮值改变后
      if(menu2==0){
        this.onSearch(value)
      }else if(menu2==1){
        this.sales(value)
      }else{
        this.sales2(value)
      }
    },
    change3(menu3,value){
      // 销量按钮值改变后
      if(menu3==0){
        this.onSearch(value)
      }else if(menu3==1){
        this.price(value)
      }else{
        this.price2(value)
      }
    },
    sales(kw){
      // 人气降序排列
      var url="sales";
      var obj={kw};
      this.axios.get(url, {
        params: obj
      })
      .then(res => {
        this.list=res.data.data
      })
    },
    sales2(kw){
      // 人气升序排列
      var url="sales2";
      var obj={kw};
      this.axios.get(url, {
        params: obj
      })
      .then(res => {
        this.list=res.data.data
      })
    },
    price(kw){
      // 价格升降序排列
      var url="price";
      var obj={kw};
      this.axios.get(url, {
        params: obj
      })
      .then(res => {
        this.list=res.data.data
      })
    },
    price2(kw){
      // 价格升降序排列
      var url="price2";
      var obj={kw};
      this.axios.get(url, {
        params: obj
      })
      .then(res => {
        this.list=res.data.data
      })
    },
    judge(kw){
      var url="judge";
      var obj={kw};
      this.axios.get(url, {
        params: obj
      })
      .then(res => {
        this.list=res.data.data
      })
    },
    onConfirm() {
      this.$refs.item.toggle();
    },
    onbtn(val){
      this.value = val;
      this.onSearch(val);
      this.btnShow = false;
    },
    onSearch(val) {
      var url = "search";
      var obj = {kw:val}
      console.log(obj)
      this.axios.get(url,{params:obj}).then(res=>{
        console.log(res.data)
        this.list=res.data.data;
      })
    },
    onCancel() {
      this.$router.go(-1);
    },
    goback(){
      this.$router.go(-1);
    }
  }
}
</script>
<style scoped>
.search .topSearch{
  display:flex;
  align-items: center;
  padding:0 10px;
}
.search .topSearch .van-search{
  width:100%;
}
.search .topSearch .van-icon{
  font-size:22px;
}
.search .van-button{
  margin:10px;
  height:25px;
  line-height:25px;
  text-align:center;
  font-size:12px;
  color:#999;
}
.search .product{
  display:flex;
  padding:10px;
}
.search .product .pinfo{
  display:flex;
  justify-content: space-between;
  flex-direction: column;
}
.search .product .infoBottom{
  display:flex;
  width:255px;
  justify-content: space-between;
  align-items: flex-end;
}
.search .product .pinfo .title{
  font-size:12px;
  color:#333;
}
.search .product .pinfo .price{
  font-size:14px;
  color:#ff5757;
}
.search .product .pinfo .judge{
  font-size:12px;
  color:#999;
}
</style>