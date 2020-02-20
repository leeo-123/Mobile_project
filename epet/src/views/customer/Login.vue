<template>
  <div class="login">
    <div class="loginbox">
      <h3>用户登录</h3>
      <van-cell-group>
        <van-field
          v-model="uname"
          label="用户名"
          placeholder="请输入用户名"
        />
        <van-field
          v-model="upwd"
          label="密码"
          placeholder="请输入密码"
        />
      </van-cell-group>
      <van-button round type="default" size="large" :class="loginbtn" @click="login">登录</van-button>
    </div>
    <p>登录代表您阅读并同意<span @click="toXY">《E宠商城用户协议》</span></p>
    <div style="display:none" >{{ exitsVal }}</div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname:"",
      upwd:"",
      loginbtn:{
        success:false,
        fail:true
      },
      ifExist:'',
    }
  },
  methods: {
    toXY(){
      this.$router.push("xieyi")
    },
    // 点击注册按钮验证重名/执行注册
    login(){
      var login = /^[a-z0-9]{3,12}$/i;
      // 获取用户名 密码
      var $uname=this.uname;
      var $upwd=this.upwd;
      console.log($uname,$upwd);
      // 用户名密码正则验证
      if(!login.test($uname)){
        this.$dialog.alert({
          title: '提示',
          message: '用户名格式错误'
        })
        return;
      }
      if(!login.test($upwd)){
        this.$dialog.alert({
          title: '提示',
          message: '密码格式错误'
        })
        return;
      }
      // 创建服务器请求数据验证重名/注册
      var url="login";
      var obj={uname:$uname,upwd:$upwd};
      this.axios.get(url,{params:obj}).then(res=>{
        console.log(res.data)
        // 如果用户名或密码错误
        if(res.data.code==-1){
          this.$dialog.alert({
            title:"提示",
            message:`${res.data.msg}`
          })
        }else{
          // 如果登录成功则直接跳转到个人中心,
          this.$toast('登陆成功')
          // 存储用户信息到sessionStorage
          sessionStorage.setItem("isLogin",$uname);
          //请求用户购物车信息,把购物车商品数量存储到vuex中
          var url="findcart";
          this.axios.get(url)
          .then(res => {
            console.log(res.data);
            var n=res.data.data.length;
            this.$store.commit("setCartCount",n)
          })

          this.$router.push("customer")
        }
      })
    }
  },
  watch:{
    ifExist(newVal,oldVal){
      // 如果两个input框都有值则改变注册按钮的样式为高亮
      if(Number(newVal) === 2){
        this.loginbtn.success=true;
        this.loginbtn.fail=false;
      }else{
        this.loginbtn.success=false;
        this.loginbtn.fail=true;
      }
    }
  },
  computed:{
    // 计算所有input框是否都有值
    exitsVal(){
      this.ifExist=Number(Boolean(this.uname))+Number(Boolean(this.upwd));
    }
 }
}
</script>

<style scoped>
.login .van-field{padding:15px 0;}
.login .loginbox{
  padding:10px 40px;
}
.login .fail{
  background-color:#f0f0f0;
  color:#bfbfbf;
  margin-top:37px;
}
.login .success{
  background-color:#41c856;
  color:#fff;
  margin-top:37px;
}
.login>p{
  position: fixed;
    bottom: 10px;
    width: 100%;
    font-size:12px;
    text-align: center;
}
.login>p>span{
  text-decoration: none;
  color:#ff5757;
}

</style>
