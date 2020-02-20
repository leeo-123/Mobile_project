<template>
  <div class="book">
    <div class="list">
      <router-link to="/artical">
        <div class="content">
          <van-image radius="5" src="https://s2.ax1x.com/2020/01/16/lvwaWj.png">
          </van-image>
          <div class="detailes">
            <p class="title1">短视频征集 | 分享好物，K9/无门槛代金券等你来pick!</p>
            <p class="title2">有哪些一辈子都会用的好产品想推荐给其他铲屎官呢？养宠这些年，种了那么多草，是时候出来晒一波啦~只要你</p>
          </div>
        </div>
      </router-link>
      <div class="userinfo">
        <div class="user">
          <img src="../../../public/img/book/user.jpg" alt="">
          <div>小萌书官方账号</div>
        </div>
        <div class="collect">
          <van-icon class="iconfont" 
            color="#999"
            v-show="starShow"
            @click="unlight"
            class-prefix='icon' name='shoucang1'/>
          <van-icon class="iconfont" 
            color="#fc8392"
            v-show="!starShow"
            @click="light"
            class-prefix='icon' name='collection-b'/>
          <p>{{n}}</p>   
        </div>
      </div>
    </div>
    <div class="list">
      <router-link to="">
        <div class="content">
          <van-image radius="5" src="https://s2.ax1x.com/2020/01/16/lvwaWj.png">
          </van-image>
          <div class="detailes">
            <p class="title1">短视频征集 | 分享好物，K9/无门槛代金券等你来pick!</p>
            <p class="title2">有哪些一辈子都会用的好产品想推荐给其他铲屎官呢？养宠这些年，种了那么多草，是时候出来晒一波啦~只要你</p>
          </div>
        </div>
      </router-link>
      <div class="userinfo">
        <div class="user">
          <img src="../../../public/img/book/user.jpg" alt="">
          <div>小萌书官方账号</div>
        </div>
        <div class="collect">
          <van-icon class="iconfont" 
            color="#999"
            v-show="starShow"
            @click="unlight"
            class-prefix='icon' name='shoucang1'/>
          <van-icon class="iconfont" 
            color="#fc8392"
            v-show="!starShow"
            @click="light"
            class-prefix='icon' name='collection-b'/>
          <p>{{n}}</p>   
        </div>
      </div>
    </div>
    <div class="list">
      <router-link to="">
        <div class="content">
          <van-image radius="5" src="https://s2.ax1x.com/2020/01/16/lvwaWj.png">
          </van-image>
          <div class="detailes">
            <p class="title1">短视频征集 | 分享好物，K9/无门槛代金券等你来pick!</p>
            <p class="title2">有哪些一辈子都会用的好产品想推荐给其他铲屎官呢？养宠这些年，种了那么多草，是时候出来晒一波啦~只要你</p>
          </div>
        </div>
      </router-link>
      <div class="userinfo">
        <div class="user">
          <img src="../../../public/img/book/user.jpg">
          <div>小萌书官方账号</div>
        </div>
        <div class="collect">
          <van-icon class="iconfont" 
            color="#999"
            v-show="starShow"
            @click="unlight"
            class-prefix='icon' name='shoucang1'/>
          <van-icon class="iconfont" 
            color="#fc8392"
            v-show="!starShow"
            @click="light"
            class-prefix='icon' name='collection-b'/>
          <p>{{n}}</p>   
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      starShow:true,
      n:14
    }
  },
  methods:{
    unlight(){
      this.starShow=false;
      this.n++;
      this.$toast({
        message:"收藏成功",
        position:"bottom 40px",
      });
    },
    light(){
      this.starShow=true;
      this.n--;
      this.$toast({
        message:"取消收藏",
        position:"bottom 40px",
      });
    }
  }
}
</script>
<style scoped>
.book .list{
  width:345px;height:128px;
  border-radius:10px;
  margin:20px auto;
  box-shadow: 0px 10px 25px 0px rgba(23,23,23,0.1);
  padding:15px;
  box-sizing: border-box;
  overflow: hidden;
}
.book .list .content{
  display:flex;
}
.book .list .content .van-image{
  width:125px;
  height:62px;
}
.book .list .detailes{
  width:190px;height:60px;
  box-sizing: border-box;
  padding-left:10px;
  display:flex;
  flex-direction:column;
  overflow: hidden;
  justify-content: space-between;
}
.book .list .detailes .title1{
  color:#333;
  font-size:14px;
  width:180px;
  margin:0;
} 
.book .list .detailes .title2{
  margin:0;
  color:#999;
  font-size:12px;
  width:180px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
} 
.book .list .userinfo{
  display:flex;
  height:23px;
  line-height: 23px;
  justify-content: space-between;
  margin-top:15px;
  align-items: center;
}
.book .list .userinfo .user>img{
  width:23px;
}
.book .list .userinfo .user{
  display:flex;
}
.book .list .userinfo .user>div{margin-left:5px;}
.book .list .userinfo .collect{
  font-size:16px;
  margin-right:20px;
  display:flex;
  width:40px;
  justify-content: space-between;
  align-items: center;
}
.book .list .userinfo .collect p{
  color:#999;
}
</style>