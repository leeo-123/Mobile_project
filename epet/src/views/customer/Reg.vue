<template>
  <div class="reg">
    <div class="regbox">
      <h3>用户注册</h3>
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
      <van-button round type="default" size="large" :class="regbtn" @click="reg">注册</van-button>
    </div>
    <p>登录代表您阅读并同意<span @click="toXY">《E宠商城用户协议》</span></p>
    <div style="display:none" >{{ exitsVal }}</div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      uname:"",
      upwd:"",
      regbtn:{
        success:false,
        fail:true
      },
      ifExist:'',
      title: '',
      navViewShow: true,
    }
  },
  methods: {
    toXY(){
      this.$router.push("xieyi")
    },
    // 点击注册按钮验证重名/执行注册
    reg(){
      var reg = /^[a-z0-9]{3,12}$/i;
      // 获取用户名 密码
      var $uname=this.uname;
      var $upwd=this.upwd;
      console.log($uname,$upwd);
      // 用户名密码正则验证
      if(!reg.test($uname)){
        this.$dialog.alert({
          title: '提示',
          message: '用户名格式错误'
        })
        return;
      }
      if(!reg.test($upwd)){
        this.$dialog.alert({
          title: '提示',
          message: '密码格式错误'
        })
        return;
      }
      // 创建服务器请求数据验证重名/注册
      var url="reg";
      var obj={uname:$uname,upwd:$upwd};
      this.axios.get(url,{params:obj}).then(res=>{
        console.log(res.data)
        // 如果重名则弹窗提示
        if(res.data.code==-1){
          this.$dialog.alert({
            title:"提示",
            message:`${res.data.msg}`
          })
        }else{
        // 如果成功则直接跳转到
        this.$toast('注册成功');
        sessionStorage.setItem("isLogin",$uname);
        this.$router.push("customer");
        console.log(sessionStorage.isLogin);
        }
      })
    }
  },
  watch:{
    ifExist(newVal,oldVal){
      // 如果两个input框都有值则改变注册按钮的样式为高亮
      if(Number(newVal) === 2){
        this.regbtn.success=true;
        this.regbtn.fail=false;
      }else{
        this.regbtn.success=false;
        this.regbtn.fail=true;
      }
  }
  },
  computed:{
    // 计算所有input框是否都有值
    exitsVal(){
      this.ifExist=Number(Boolean(this.uname))+Number(Boolean(this.upwd));
    }
 },
}
</script>
<style scoped>
.reg .van-field{padding:15px 0;}
.reg .regbox{
  padding:10px 40px;
}
.reg .fail{
  background-color:#f0f0f0;
  color:#bfbfbf;
  margin-top:37px;
}
.reg .success{
  background-color:#41c856;
  color:#fff;
  margin-top:37px;
}
.reg>p{
  position: fixed;
    bottom: 10px;
    width: 100%;
    font-size:12px;
    text-align: center;
}
.reg>p>span{
  text-decoration: none;
  color:#ff5757;
}
</style>
