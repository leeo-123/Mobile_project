<template>
  <div class="setting">
    <van-cell title="头像">
      <van-image
        slot="right-icon"
        round
        width="45px"
        height="45px"
        src="https://img.yzcdn.cn/vant/cat.jpeg"
      />
    </van-cell>
    <van-cell title="用户名" is-link :value="list.uname" />
    <van-cell title="性别" is-link :value="list.sex" />
    <van-cell title="生日" is-link :value="list.birth" />
    <van-cell title="地址管理" is-link />
    <!-- 退出登录 -->
    <van-button round color="#d9534f" block @click="exit">退出登录</van-button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: {}
    };
  },
  created() {
    this.userLoad();
  },
  methods: {
    userLoad() {
      var url = "find_user";
      this.axios.get(url).then(res => {
        this.list = res.data.data[0];
        console.log(this.list);
      });
    },
    exit() {
      this.$dialog
        .confirm({
          title: "提示",
          message: "确认要退出吗"
        })
        .then(() => {
          // on confirm
          this.list = {};
          var url = "exit";
          this.axios.get(url).then(res => {
            console.log(res.data);
            // 清空session缓存的用户名
            sessionStorage.clear();
            // 重置vuex的购物车数量
            this.$store.commit("setCartCount", 0);
            // 跳转回首页
            this.$router.push("/");
          });
        })
        .catch(() => {
          // on cancel
        });
    }
  }
};
</script>

<style scoped>
.setting .van-button {
  width: 350px;
  margin: 0 auto;
  margin-top: 40px;
}
</style>