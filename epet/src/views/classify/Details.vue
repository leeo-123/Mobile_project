<template>
  <div class="details" >
    
    <div class="content" v-for="(item,i) of p" :key="i">
      <van-swipe :autoplay="3000" >
        <van-swipe-item>
          <img width="100%" :src="item.pic1"/>
        </van-swipe-item>
        <van-swipe-item>
          <img width="100%" :src="item.pic2"/>
        </van-swipe-item>
        <van-swipe-item>
          <img width="100%" :src="item.pic3"/>
        </van-swipe-item>
      </van-swipe>
      <div class="title">
        <p>{{item.title}}</p>
        <p>{{item.details}}</p>
      </div>
      <div class="price">
        <div>
          <span>￥</span>
          <span>{{item.price1.toFixed(2)}}</span>
          <span>￥{{item.price2.toFixed(2)}}</span>
        </div>
        <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/quality_assurance.png">
      </div>
      <div class="margin"></div>
      <div class="buynum">
        <span>购买数量</span>
        <van-stepper v-model="value"/>
      </div>
      <div class="margin"></div>
      <div class="address">
        <div>
          <span>送至</span>
          <img src="//static.epetbar.com/static_wap/epetapp/pages/goods_detail/images/dress.png" width="15">
          <span class="addinfo">
            {{addrInfoSelected.length==0?
            '请选择收货地址':`
            ${addrInfoSelected[0].name} 
            ${addrInfoSelected[1].name} 
            ${addrInfoSelected[2].name} 
            `
            }}
          </span>
        </div>
        <van-icon name="arrow" @click="showPopup"/>
      </div>
      <div class="zheng">
        <div>
          <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/qualityassurance.png">
          <span>正品保证</span>
        </div>
        <div>
          <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/freeshipping.png">
          <span>正品保证</span>
        </div>
        <div>
          <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/thirtydays.png">
          <span>正品保证</span>
        </div>
      </div>
      <div class="margin"></div>
      <div class="judge">
        <div class="title">
          <div>
            <img src="//static.epetbar.com/static_wap/epetapp/pages/goods_detail/images/pl.png">
            <span>精选评价 (已售{{item.sales}})</span>
          </div>
          <div>
            <span>好评率{{item.judge}}%</span>
            <van-icon name="arrow" />
          </div>
        </div>
        <div class="content">
          <div>
            <van-image
              width="42"
              height="42"
              round
              src="https://img.yzcdn.cn/vant/cat.jpeg"
            />
            <div>
              <div class="uname">
                豆***包
              </div>
              <div class="regTime">
                加入E宠1532天
              </div>
              <div class="uwrite">
                主子很喜欢，下次多要买点啦~
              </div>
            </div>
          </div>
          <van-image
          width="72"
          height="12"
           src="https://static.epetbar.com/skin/images/pt5.gif"/>
        </div>
        <div class="content">
          <div>
            <van-image
              width="42"
              height="42"
              round
              src="https://img.yzcdn.cn/vant/cat.jpeg"
            />
            <div>
              <div class="uname">
                萌***e
              </div>
              <div class="regTime">
                加入E宠979天
              </div>
              <div class="uwrite">
                遇到活动果断囤一些，很爱吃
              </div>
            </div>
          </div>
          <van-image
          width="72"
          height="12"
           src="https://static.epetbar.com/skin/images/pt5.gif"/>
        </div>
        <div class="content">
          <div>
            <van-image
              width="42"
              height="42"
              round
              src="https://img.yzcdn.cn/vant/cat.jpeg"
            />
            <div>
              <div class="uname">
                多***多
              </div>
              <div class="regTime">
                加入E宠1182天
              </div>
              <div class="uwrite">
                系统默认好评
              </div>
            </div>
          </div>
          <van-image
          width="72"
          height="12"
           src="https://static.epetbar.com/skin/images/pt5.gif"/>
        </div>
      </div>
      <div class="margin"></div>
      <router-link class="pdetails" to="/pdetails">
        <span>查看图文详情＞</span> 
      </router-link>
    </div>
    <van-popup 
    v-model="show"   
    position="bottom" 
    :style="{ width: '100%' }"
    >
      <van-area
        :area-list="areaList"
        :columns-placeholder="['请选择', '请选择', '请选择']"
        title="标题"
        @confirm="onAddrConfirm"
        @cancel="onAddrCancel"
      />
    </van-popup>
    <van-goods-action>
      <van-goods-action-icon 
      :class="iconColor"
      class="collect"
      @click="onClickCollect"
      >
        <van-icon 
        class="iconfont" 
        class-prefix='icon' 
        :name='icon'
        />
        <span>{{text}}</span>
      </van-goods-action-icon>
      <van-goods-action-icon 
      icon="cart-o" 
      text="购物车" 
      @click="onClickCart"
      />
      <van-goods-action-button
      type="danger"
      text="加入购物车" 
      @click="onClickAddcart"
      />
    </van-goods-action>
  </div>
</template>
<script>
import AddressInfo from '../../components/common/area'
export default {
  data() {
    return {
      name:"details",
      // props:["lid"],
      p:[],
      icon:"shoucang1",
      text:"收藏",
      iconColor:{collected:false},
      value: 1,
      show: false,
      areaList:AddressInfo,
      addrInfoSelected:[],
    }
  },
  created(){
    this.loadmore();
  },
  methods:{ 
    onAddrConfirm(result){
      console.log(result)
      this.addrInfoSelected=result;
      this.show=false;
    },
    onAddrCancel(){
      this.show=false;
    },
    showPopup() {
      this.show = true;
    },
    loadmore() {
      var url="details";
      var obj={lid:`${this.$route.params.lid}`};
      this.axios.get(url,{params:obj}).then(res=>{
        console.log(res.data);
        this.p=res.data;
      })
    },
    onClickCollect(){
      console.log(this.icon)
      if(this.icon=="shoucang1"){
        this.icon="collection-b"
        this.text="已收藏"
        this.iconColor.collected=true;
        console.log(this.icon)
      }else{
        this.icon="shoucang1"
        this.text="收藏"
        this.iconColor.collected=false;
      }
    },
    onClickCart(){
      this.$router.push("/cart")
    },
    onClickAddcart(){
        var url="addcart";
        var obj={
          lid:this.p[0].lid,
          title:this.p[0].title,
          details:this.p[0].details,
          pic1:this.p[0].pic1,
          price1:this.p[0].price1,
          href:this.p[0].href,
          count:this.value,
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
            // 只有未添加过的商品才触发vuex修改购物车数量全局数据
            if(result.data.code==1){
              this.$store.commit("addCartCount",1);
            }
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
<style scoped>
.details .title{padding:10px;}
.details .title>p{margin:0;line-height:1.6}
.details .title>p:first-child{
  color:#333;
  font-size:14px;
}
.details .title>p:last-child{
  color:#e75656;
  font-size:12px;
}
.details .price{
  margin-top:10px;
  border-top:1px solid #e5e5e5;
  padding:10px;
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.details .price img{
  height:25px;
}
.details .price>div>span{
  font-size:12px;
  color:#333;
}
.details .price>div>span:first-child{
  color:#ea5858;
}
.details .price>div>span:nth-child(2){
  font-size:20px;
  color:#ea5858;
  margin-right:10px;
}
.details .price>div>span:last-child{
  text-decoration: line-through;
}
.details .margin{
  background:#f3f4f5;
  width:100%;
  height:10px;
}
.details .collect{
  box-sizing: border-box;
  padding:5px 0;
}
.details .collected{
  color:#ea5858;
}
.details .van-goods-action-icon{
  box-sizing: border-box;
}
.details .van-goods-action-icon .iconfont{
  font-size: 18px;
}
.details .van-goods-action-icon span{
  margin-top:6px;
  margin-bottom:7px;
}
.details .van-stepper{
  display:inline-block;
  margin-left:20px;
}
.details .buynum{
  display:flex;
  align-items: center;
  box-sizing: border-box;
  padding:10px;
}
.details .address{
  padding:10px;
  display:flex;
  align-items: center;
  justify-content: space-between;
  border-bottom:1px solid #e5e5e5;
}

.details .content{
  padding-bottom:50px;
}
.details .address .addinfo{
  color:#666;
}
.details .address>div{
  display:flex;
  align-items: center;
}
.details .van-picker{
  width:100%;
}
.details .zheng{
  padding:10px 0;
  font-size:12px;
  color:#666;
}
.details .zheng,.zheng>div{
  display:flex;
  justify-content: space-around;
  align-items: center;
}
.details .zheng img{
  width:20px;
  margin-right:5px;
}
.details .judge .title{
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.details .judge .title img{
  width:15px;
  margin-right:5px;
}
.details .judge .title>div{
  display:flex;
  align-items: center;
}
.details .judge .content{
  padding:10px;
  display:flex;
  justify-content: space-between;
  border-bottom:1px solid #e5e5e5
}
.details .judge .content>div{
  display:flex;
}
.details .judge .content>div>div{
  margin-left:10px;
}
.details .judge .content .uname{
  font-size:12px;
  color:#333;
}
.details .judge .content .regTime{
  font-size:12px;
  color:#999;
  margin-top:10px;
}
.details .judge .content .uwrite{
  margin:15px 0;
}
.details .pdetails{
  padding:10px;
  width:100%;
  height:50px;
  box-sizing: border-box;
  color:#666;
  font-size:14px;
  display:flex;
  justify-content: center;
  align-items: center;
}
</style>