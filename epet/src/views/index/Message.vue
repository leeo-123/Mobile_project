<template>
  <div class="message">
    <router-link to="/tongzhi">
      <div class="list">
        <van-image  width="50" src="http://img1.epetbar.com/2018-09/04/13/5af5eaa23db0891ee57e214cadc84168.png@!water"/>
        <span>通知</span>
      </div>
    </router-link>
    <router-link to="/tongzhi">
      <div class="list">
        <van-image  width="50" src="http://img1.epetbar.com/2018-09/04/13/90ee5bf20f83e6894b47ec943a0d4908.png@!water"/>
        <span>精选活动</span>
      </div>
    </router-link>
    <router-link to="/huodong">
      <div class="list">
        <van-image width="50" src="http://img1.epetbar.com/2018-09/05/11/3b7bf93bb3b8eda936395987e1d61eec.png@!water"/>
        <span>物流</span>
      </div>
    </router-link>
    <router-link to="/wuliu">
      <div class="list">
        <van-image width="50" src="http://img1.epetbar.com/2019-03/26/13/4a5b06de003d90d2e5923f20fd3f123f.png@!water"/>
        <span>内容</span>
      </div>
    </router-link>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.message .list {
  display:flex;
  padding:15px;
  padding-left:0;
  margin-left:15px;
  border-bottom:1px solid #e7e7e7;
}
.message .list .van-image{
  margin-right:10px;
}
.message .list span{
  color:#333;
  font-size:15px;
}
</style>