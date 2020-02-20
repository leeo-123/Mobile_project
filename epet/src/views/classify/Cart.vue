<template>
  <div class="cart">
    <!-- 如果购物车为空则显示空白提示页 -->
    <div class="blank" v-show="!list.length">
      <img src="../../../public/img/cart/empty.png"/>
      <p>您的购物车空空如也</p>
      <router-link class="btn" to="/">随便逛逛</router-link>
    </div>
    <!-- 购物车有数据则显示购物车列表 -->
    <div class="cartList">
      <van-checkbox-group v-model="result" ref="checkboxGroup">
        <div class="product" v-for="(item,i) of list" :key="i">
          <van-swipe-cell :before-close="beforeClose">
            <div class="pbox">
              <van-checkbox 
              :name="item.cid" 
              checked-color="#00c94b"
              />
              <div class="pinfo">
                <img :src="item.pic1">
                <div class="pdetails">
                  <p>{{item.title}}</p>
                  <div>
                    <div class="price">
                      <span>￥{{item.price1.toFixed(2)}}</span>
                    </div>
                    <van-stepper 
                    v-model="item.count" 
                    integer 
                    :name="item.cid"
                    @overlimit="overlimit"
                    @change="change"
                    />
                  </div>
                </div>
              </div>
            </div>
            <van-button
              slot="right"
              square
              text="删除"
              type="danger"
              class="delete-button"
              @click="dele(item.cid,item.count)"
            />
          </van-swipe-cell>
        </div>
      </van-checkbox-group>
    </div>
    <div class="bottomBox" v-show="list.length"></div>
    <van-submit-bar
      v-show="list.length"
      :price="total"
      :button-text="!count?'提交订单':`提交订单${count}`"
      @submit="onSubmit"
      >
      <van-checkbox 
      checked-color="#00c94b"
      v-model="checkedAll"
      @click="checkAll">全选</van-checkbox>
    </van-submit-bar>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[],
      result:[],
      checkedAll:false
    }
  },
  created(){
    this.loadmore()
  },
  methods:{
     beforeClose({ position, instance }) {
      switch (position) {
        case 'left':
        case 'cell':
        case 'outside':
          instance.close();
          break;
        case 'right':
          this.$dialog.confirm({
            message: '确定删除吗？'
          }).then(() => {
            instance.close();
            this.loadmore();
          });
          break;
      }
    },
    dele(cid,count){
      var url="del";
      var obj={cid};
      this.axios.get(url,{params:obj}).then(result=>{
        console.log(result.data)
      this.$store.commit("minusCartCount",1);
      })
    },
    change(value,detail){
      var url="updatecart";
      var obj={count:value,cid:detail.name};
      this.axios.get(url,{params:obj}).then(result=>{
        console.log(result.data)
      })
    },
    overlimit(){
      this.$toast("商品数量最少为1哦~")
    },
    onSubmit(){},
    checkAll() {
      if(this.result.lenth){
        this.$refs.checkboxGroup.toggleAll(true);
      }else{
        this.$refs.checkboxGroup.toggleAll(true);
        this.$refs.checkboxGroup.toggleAll();
      }
    },
    loadmore(){
      var url="findcart";
      this.axios.get(url).then(result=>{
        console.log(result.data)
        this.list=result.data.data;
        console.log(this.list);
      })
    }
  },
  watch:{
    result(){
      if(this.result.length!=this.list.length){
        this.checkedAll=false;
      }else{
        this.checkedAll=true;
      }
    }
  },
  computed:{
    total(){
      var sum=0;
      for(var i of this.result){
        for (var j of this.list){
          if(j.cid==i){
            sum+=j.price1*j.count;
          }
        }
      }
      return sum*100;
    },
    count(){
      var sum=0;
      for(var i of this.result){
        for (var j of this.list){
          if(j.cid==i){
            sum+=j.count;
          }
        }
      }
      return sum;
    }
  }
}
</script>
<style scoped>
.cart .bottomBox{
  width:100%;
  height:50px;
}
.cart .blank{
  display:flex;
  flex-direction: column;
  justify-content: center;
  width:150px;
  margin:0 auto;
  align-items: center;
  margin-top:180px;
}
.cart .blank img{
  width:150px;
  margin-bottom:10px;
}
.cart .blank p{
  color:#666;
  font-size:16px;
}
.cart .blank .btn{
  width:100px;
  height:40px;
  color:#f03e3e;
  font-size:16px;
  border-radius:30px;
  background:#fff;
  border:1px solid #f03e3e;
  line-height:40px;
  text-align:center;
}
.cart .pbox{
  margin:10px;
  display:flex;
  align-items: center;
  justify-content: space-between;

}
.cart .pinfo{
  width:325px;
  display:flex;
  padding:10px 10px 10px 0 ;
  border-bottom:1px solid #e5e5e5;
}
.cart .pdetails{
  padding-left:10px;
  display:flex;
  flex-direction: column;
  justify-content: space-between;
}
.cart .pdetails p{
  margin:0;
  font-size:12px;
  color:#333;
}
.cart .pdetails>div{
  width:230px;
  display:flex;
  justify-content: space-between;
  align-items: center;
}
.cart .product img{
  width:85px;
}
.cart .price>span{
  color:#f05757;
  font-size:15px;
  font-weight:bold;
}
.cart .delete-button {
  height: 100%;
}
</style>