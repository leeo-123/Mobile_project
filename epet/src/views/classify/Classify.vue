<template>
  <div class="classify">
    <van-tree-select
    height="100%"
    :items="items"
    :main-active-index.sync="activeIndex"
    >
    <template slot="content">
      <div class="tuijian" v-if="activeIndex === 0">
        <div class="title">热门分类</div>
        <div class="products">
          <div class="product" v-for="(item,i) of hot" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="guoji" v-if="activeIndex === 1">
        <div class="title">猫咪主粮</div>
        <div class="products">
          <div class="product" v-for="(item,i) of gjzhuliang" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
        <div class="title">猫咪零食</div>
        <div class="products">
          <div class="product" v-for="(item,i) of gjlingshi" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="zhuliang" v-if="activeIndex === 2">
        <van-image src="https://s2.ax1x.com/2020/01/16/ljJGFI.png"></van-image>
        <div class="title">猫咪主粮</div>
        <div class="products">
          <div class="product" v-for="(item,i) of zl" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
        <div class="title">热门品牌</div>
        <div class="logos">
          <div class="logo" v-for="(item,i) of zllogo" :key="i">
            <router-link :to="'search/'+item.name">
              <div class="imgbox">
                <van-image width="86" fit="contain"   :src="item.src"></van-image>
              </div>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="lingshi" v-if="activeIndex === 3">
        <div class="title">猫咪零食</div>
        <div class="products">
          <div class="product" v-for="(item,i) of ls" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
        <div class="title">热门品牌</div>
        <div class="logos">
          <div class="logo" v-for="(item,i) of lslogo" :key="i">
            <router-link :to="'search/'+item.name">
              <div class="imgbox">
                <van-image width="86" fit="contain"   :src="item.src"></van-image>
              </div>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="qingjie" v-if="activeIndex === 4">
        <div class="title">猫咪清洁</div>
        <div class="products">
          <div class="product" v-for="(item,i) of qj" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="riyong" v-if="activeIndex === 5">
        <div class="title">猫咪日用</div>
        <div class="products">
          <div class="product" v-for="(item,i) of ry" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
        <div class="title">热门品牌</div>
        <div class="logos">
          <div class="logo" v-for="(item,i) of rylogo" :key="i">
            <router-link :to="'search/'+item.name">
              <div class="imgbox">
                <van-image width="86" fit="contain"   :src="item.src"></van-image>
              </div>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="wanju" v-if="activeIndex === 6">
        <div class="title">猫咪玩具</div>
        <div class="products">
          <div class="product" v-for="(item,i) of wj" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
        <div class="title">热门品牌</div>
        <div class="logos">
          <div class="logo" v-for="(item,i) of wjlogo" :key="i">
            <router-link :to="'search/'+item.name">
              <div class="imgbox">
                <van-image width="86" fit="contain"   :src="item.src"></van-image>
              </div>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="meirong" v-if="activeIndex === 7">
        <div class="title">猫咪美容</div>
        <div class="products">
          <div class="product" v-for="(item,i) of mr" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
      <div class="baojian" v-if="activeIndex === 8">
        <div class="title">猫咪美容</div>
        <div class="products">
          <div class="product" v-for="(item,i) of bj" :key="i">
            <router-link :to="'search/'+item.name">
              <van-image width="86" :src="item.src"></van-image>
              <p>{{item.name}}</p>
            </router-link>
          </div>
        </div>
      </div>
    </template>
    </van-tree-select>
  </div>
</template>
<script>
export default {
  data() {
    return {
      bj:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvQTPK.png",
          name:"强化"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGHsg.png",
          name:"美毛"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvlUJK.png",
          name:"肠胃"
        }       
      ],
      mr:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvQtgg.png",
          name:"梳剪"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvQdDs.png",
          name:"护理"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvQgv4.png",
          name:"美容"
        }
      ],
      wjlogo:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvAPij.png",
          name:"哈根Hagen"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvAiJs.png",
          name:"田田猫"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvAFWn.png",
          name:"Smarty Kat"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvAVyV.png",
          name:"AFP"
        }
      ],
      wj:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvk2GR.png",
          name:"磨爪"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvk5qO.png",
          name:"爬架"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvkTde.png",
          name:"玩具"
        }
      ],
      qj:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvi2TJ.png",
          name:"猫砂"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lviWk9.png",
          name:"厕所"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvifYR.png",
          name:"清洁"
        }
      ],
      lslogo:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljY1jU.png",
          name:"K9Natural"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYtE9.png",
          name:"滋益巅峰Ziwi Peak"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYw36.png",
          name:"Sea Kingdom"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYBjO.png",
          name:"路斯LUSCIOUS"
        }
      ],
      ls:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGfII.png",
          name:"湿粮"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYuhq.png",
          name:"零食"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYQ3V.png",
          name:"猫草"
        }      
      ],
      rylogo:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvFKnU.png",
          name:"猫碗"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvF8hR.png",
          name:"餐具"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvFanO.png",
          name:"住所"
        }
      ],
      ry:[
        {
          src:"https://s2.ax1x.com/2020/01/16/lvijfI.png",
          name:"猫碗"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvFpX8.png",
          name:"餐具"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/lvFkkj.png",
          name:"住所"
        }
      ],
      zllogo:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJv0H.png",
          name:"美士Nutro"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJx7d.png",
          name:"巴西淘淘TOTAL"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYFc8.png",
          name:"荒野盛宴Taste of the Wild"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljYZ7j.png",
          name:"维采Vets Choice"
        }
      ],
      zl:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJyYq.png",
          name:"进口"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJhm4.png",
          name:"国产"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJTt1.png",
          name:"功能"
        }
      ],
      gjlingshi:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJAoR.png",
          name:"罐头"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJVF1.th.png",
          name:"零食罐"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljJnSK.png",
          name:"零食"
        }
      ],
      gjzhuliang:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGLZj.png",
          name:"幼猫粮"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGXon.png",
          name:"成猫粮"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGxJ0.png",
          name:"全猫粮"
        }
      ],
      hot:[
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGoz8.png",
          name:"猫砂"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGwI1.png",
          name:"免疫"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGrRK.png",
          name:"进口"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGHsg.png",
          name:"美化"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGgqH.png",
          name:"健康"
        },
        {
          src:"https://s2.ax1x.com/2020/01/16/ljGfII.png",
          name:"罐头"
        }
      ],
      activeIndex: 0,
      items: [
        { text: '为您推荐' }, 
        { text: 'E宠国际' }, 
        { text: '猫咪主粮' }, 
        { text: '猫咪零食' }, 
        { text: '猫咪清洁' }, 
        { text: '猫咪日用' }, 
        { text: '猫咪玩具' }, 
        { text: '猫咪美容' }, 
        { text: '猫咪保健' }
      ]
    }
  }
}
</script>
<style scoped>
.classify .van-sidebar-item--select{
 border-color:#41C856;
}
.classify .van-sidebar-item--select >>> .van-sidebar-item__text{
 color:#41C856;
}
.classify >>> .van-tree-select__nav{
  flex-grow:0.5;
}
.classify .van-tree-select__nav-item{
  padding:15px 4px;
  box-sizing:border-box;
  height:50px;
  margin-right:0;
}
.classify .van-tree-select__content{
  color:#333;
  font-size:14px;
}
.classify .title{
  font-size:12px;
  color:#999;
  margin-top:10px;
  padding:0 0 0 5px;
}
.classify .product{
  width:86px;height:116px;
  text-align: center;
  margin-top:10px;
  margin-left:5px;
}
.classify p{
  font-size:14px;
  margin:10px 0 0 0;
  color:#333;
}
.classify .products,.logos{
  display:flex;
  flex-wrap: wrap;
  padding:5px 5px 20px;
}
.classify .logos{justify-content: space-around;}
.classify .logo .imgbox{
  border:1px solid #ececec;
  width:135px;
  height:55px;
  text-align:center;
  line-height: 55px;
  box-sizing: border-box;
}
.classify .logo .van-image{
  height:45px;
  margin-top:4px;
}
.classify .logo{
  width:135px;
  height:80px;
  box-sizing: border-box;
  text-align:center;
  margin-top:10px;
  font-size:12px;

}
.classify .logo p{
  margin-top:10px; 
  width:135px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis; 
}
</style>