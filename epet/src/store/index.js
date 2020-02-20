import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    cartCount:0,//购物车商品数量,初始值0
  },
  mutations: {
    // 添加n个商品到购物车
    addCartCount(state,n){
      state.cartCount+=n;
    },
    // 删除n个商品到购物车
    minusCartCount(state,n){
      state.cartCount-=n;
    },
    // 设置购物车商品为n个
    setCartCount(state,n){
      state.cartCount=n;
    }
  },
  getters:{
    getCart(state){
      return state.cartCount;
    }
  },
  actions: {
  },
  modules: {
  }
})
