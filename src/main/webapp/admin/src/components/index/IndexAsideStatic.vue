<template>
  <el-aside class="index-aside" width="200px">
    <div class="index-aside-inner">
      <div v-for="item in menuList" v-bind:key="item.roleName">
        <el-menu v-if="role==item.roleName" default-active="0">
          <el-menu-item @click="menuHandler('home')" index="0">首页</el-menu-item>
          <el-submenu
            :index="1+''"
          >
            <template slot="title">
              <span>个人中心</span>
            </template>
            <el-menu-item
              @click="menuHandler('updatePassword')"
              :index="1-1"
            >修改密码</el-menu-item>
             <el-menu-item
              @click="menuHandler('center')"
              :index="1-2"
            >个人信息</el-menu-item>
          </el-submenu>
          <el-submenu
            v-for=" (menu,index) in item.backMenu"
            v-bind:key="menu.menu"
            :index="index+2+''"
          >
            <template slot="title">
              <span>{{menu.menu}}</span>
            </template>
            <el-menu-item
              v-for=" (child,sort) in menu.child"
              v-bind:key="sort"
              @click="menuHandler(child.tableName)"
              :index="(index+2)+'-'+sort"
            >{{child.menu}}</el-menu-item>
          </el-submenu>
        </el-menu>
      </div>
    </div>
  </el-aside>
</template>
<script>
import menu from "@/utils/menu";
export default {
  data() {
    return {
      menuList: [],
      dynamicMenuRoutes: [],
      role: ""
    };
  },
  mounted() {
    let menus = menu.list();
    this.menuList = menus;
    this.role = this.$storage.get("role");
    console.log(menus)
  },
  methods: {
    menuHandler(name) {
      console.log(name)
      this.$router.push({ name: name });
    }
  }
};
</script>
<style lang="scss" scoped>
.index-aside {
  margin-top: 80px;
  overflow: hidden;
  .index-aside-inner {
    width: 217px;
    height: 100%;
    overflow-y: scroll;
  }
}
</style>

