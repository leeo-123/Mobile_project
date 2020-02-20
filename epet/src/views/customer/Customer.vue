<template>
  <div class="customer">
    <div class="userinfo">
      <div class="infobtn">
        <van-icon class="iconfont" class-prefix="icon" name="shezhi" @click="userinfo" />
        <router-link to="message">
          <van-icon class="iconfont" class-prefix="icon" name="xiaoxi" />
        </router-link>
      </div>
      <div class="userpic">
        <van-image round width="70px" height="70px" src="https://img.yzcdn.cn/vant/cat.jpeg" />
        <div class="loginfo" v-if="!uname">
          <div @click="goLogin" class="logbtn">登录</div>
          <div>|</div>
          <div @click="goReg" class="regbtn">注册</div>
        </div>
        <div class="loginfo" v-else>
          <span>主人{{uname}}</span>
        </div>
      </div>
      <div class="userbottom">
        <img
          src="https://img2.epetbar.com/nowater/2018-11/22/08/71ff7f9ee43b98e8c68cb150f3f03169.png"
        />
        <img
          src="https://img2.epetbar.com/nowater/2018-11/22/08/d3d0bc1a081b6f0412b6f045863865be.png"
        />
        <img
          src="https://img2.epetbar.com/nowater/2018-11/22/08/e6f08976d0cf4a51d7eb209ba4c89df7.png"
        />
        <img
          src="https://img2.epetbar.com/nowater/2019-01/31/14/de8b18448de149a49288d3a2f6be91fe.png"
        />
      </div>
    </div>
    <div class="content">
      <div class="myorder">
        <div class="title">
          <div>我的订单</div>
          <div>查看订单></div>
        </div>
        <van-grid :border="false" :column-num="5">
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" name="daifukuan" />
            <div>待付款</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" name="daishouhuo" />
            <div>待收货</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" name="daipingjia" />
            <div>评价有礼</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" name="shouhoutuikuan" />
            <div>自助售后</div>
          </van-grid-item>
          <van-grid-item text="国际订单">
            <van-icon class="iconfont" class-prefix="icon" name="quanqiu" />
            <div>国际订单</div>
          </van-grid-item>
        </van-grid>
      </div>
      <div class="mywallet">
        <div class="title">
          <div>我的钱包</div>
          <div>查看钱包></div>
        </div>
        <van-grid :border="false">
          <van-grid-item>
            <div>0</div>
            <div>优惠券</div>
          </van-grid-item>
          <van-grid-item>
            <div>0</div>
            <div>E宠币</div>
          </van-grid-item>
          <van-grid-item>
            <div>0</div>
            <div>余额</div>
          </van-grid-item>
          <van-grid-item>
            <div>0</div>
            <div>红包</div>
          </van-grid-item>
        </van-grid>
      </div>
      <van-image width="100%" height="100%" :src="imgURL" />
      <div class="myservice">
        <div class="title">
          <div>我的服务</div>
          <div></div>
        </div>
        <van-grid :border="false" :column-num="4">
          <van-grid-item>
            <van-icon class="iconfont" color="#ffce5c" class-prefix="icon" name="dianhua" />
            <div>联系客服</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" color="#c797db" class-prefix="icon" name="gouwudai" />
            <div>潮品预售</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" color="#ffce5c" name="tuangou1" />
            <div>我的团购</div>
          </van-grid-item>
          <van-grid-item text="国际订单">
            <van-icon class="iconfont" color="#fa8673" class-prefix="icon" name="shoucang" />
            <div>我的收藏</div>
          </van-grid-item>
        </van-grid>
        <van-grid :border="false" :column-num="4">
          <van-grid-item>
            <van-icon class="iconfont" color="#ffce5c" class-prefix="icon" name="duihuan" />
            <div>我的兑换</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" color="#ffb45d" class-prefix="icon" name="guanzhu" />
            <div>我的关注</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" color="#ff8a98" name="zhua" />
            <div>萌爪联盟</div>
          </van-grid-item>
          <van-grid-item text="国际订单">
            <van-icon class="iconfont" color="#f77e75" class-prefix="icon" name="juanzeng" />
            <div>我的捐赠</div>
          </van-grid-item>
        </van-grid>
        <van-grid :border="false" :column-num="4">
          <van-grid-item>
            <van-icon class="iconfont" class-prefix="icon" color="#5dbbf9" name="yueshou" />
            <div>我的预售</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" color="#f88174" class-prefix="icon" name="xianjin" />
            <div>我的现金券</div>
          </van-grid-item>
          <van-grid-item>
            <van-icon class="iconfont" color="#ff5757" class-prefix="icon" name="guanai" />
            <div>十克关爱</div>
          </van-grid-item>
          <van-grid-item text="国际订单">
            <van-icon class="iconfont" color="#ffb55f" class-prefix="icon" name="yinsi" />
            <div>隐私条款</div>
          </van-grid-item>
        </van-grid>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      imgURL: require("../../assets/customer/1.png"),
      uname: sessionStorage.isLogin
    };
  },
  methods: {
    userinfo() {
      var url = "user_info";
      this.axios.get(url).then(res => {
        if (res.data.code == -2) {
          this.$dialog
            .confirm({
              title: "标题",
              message: "您当前未登录！(游客状态)",
              confirmButtonText: "去登录",
              cancelButtonText: "去注册"
            })
            .then(() => {
              this.$router.push("/login");
            })
            .catch(() => {
              this.$router.push("/reg");
            });
        } else {
          this.$router.push("/setting");
        }
      });
    },
    goLogin() {
      this.$router.push("/login");
    },
    goReg() {
      this.$router.push("/reg");
    }
  }
};
</script>
<style scoped>
.customer .van-grid-item__content {
  font-size: 12px;
  padding-bottom: 0;
}
.customer .iconfont {
  font-size: 24px;
}
.customer .title > div:first-child {
  font-weight: 700;
  font-size: 16px;
  color: #333;
}
.customer .title > div:last-child {
  font-size: 14px;
  color: #999;
}
.customer .title {
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
  padding: 10px 10px;
}
.customer .myorder,
.mywallet,
.myservice {
  width: 100%;
  height: 117px;
  border-radius: 20px;
  background: #fff;
  margin-top: 40px;
  margin-bottom: 25px;
  box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.1);
}
.customer .myservice {
  height: 270px;
}
.customer .content {
  padding: 0 10px;
}
.customer {
  background: #f3f4f5;
  padding-bottom: 20px;
}
.customer .userbottom {
  width: 95%;
  height: 35px;
  margin: 0 auto;
  background: #252525;
  border-radius: 15px 15px 0px 0px;
  display: flex;
  justify-content: space-around;
  margin-top: 26px;
  box-sizing: border-box;
  padding-top: 10px;
}
.customer .userbottom img {
  width: 64px;
  height: 17px;
}
.customer .loginfo > div + div {
  margin-left: 10px;
}
.customer .loginfo {
  display: flex;
  color: #fff;
  margin-top: 20px;
  margin-left: 10px;
}
.customer .userpic {
  margin-left: 10px;
  margin-top: 30px;
  display: flex;
}
.customer .userinfo {
  width: 100%;
  height: 207px;
  background: #47d059;
  box-sizing: border-box;
  padding-top: 20px;
}
.customer .infobtn {
  color: #fff;
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
  padding: 0 10px;
}
.customer .infobtn .iconfont {
  font-size: 24px;
  color: #fff;
}
.customer .mywallet {
  margin-top: 0;
}
.customer .mywallet .van-grid-item__content div:first-child {
  color: #ff5757;
  font-size: 14px;
  font-weight: 700;
  margin-bottom: 10px;
}
.customer .van-image__img {
  background-color: transparent;
}
.customer .myservice {
  margin-top: 25px;
}
.customer .myservice .van-grid-item__content > div {
  margin-top: 5px;
}
</style>