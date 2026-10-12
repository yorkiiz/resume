<template>
  <div class="min-h-screen bg-white">
    <!-- 导航栏 -->
    <nav class="fixed top-0 w-full bg-white shadow-sm z-50">
      <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
        <div class="flex items-center gap-2">
          <span class="text-xl font-bold text-primary">章永杰</span>
        </div>
        <div class="hidden md:flex items-center gap-6">
          <a href="javascript:void(0)" @click="scrollTo('home')" class="text-primary font-medium border-b-2 border-primary pb-1">首页</a>
          <a href="javascript:void(0)" @click="scrollTo('about')" class="text-gray-600 hover:text-primary transition">关于</a>
          <a href="javascript:void(0)" @click="scrollTo('projects')" class="text-gray-600 hover:text-primary transition">作品</a>
          <a href="javascript:void(0)" @click="scrollTo('skills')" class="text-gray-600 hover:text-primary transition">技能</a>
          <a href="javascript:void(0)" @click="scrollTo('contact')" class="text-gray-600 hover:text-primary transition">联系</a>
        </div>
        <a href="#" class="px-4 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
          下载简历
        </a>
      </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="pt-20 gradient-bg text-white">
      <div class="max-w-6xl mx-auto px-4 py-16 md:py-24">
        <div class="grid md:grid-cols-2 gap-8 items-center">
          <div class="text-center md:text-left">
            <h1 class="text-4xl md:text-5xl font-bold mb-4">
              你好，我是 章永杰
            </h1>
            <p class="text-xl text-white/90 mb-8">
              软件开发工程师，Java后端开发
            </p>
            <div class="flex justify-center md:justify-start gap-4">
              <a href="javascript:void(0)" @click="scrollTo('projects')" class="px-6 py-3 bg-orange-500 text-white rounded-lg hover:bg-orange-600 transition shadow-lg">
                查看作品
              </a>
              <a href="javascript:void(0)" @click="scrollTo('contact')" class="px-6 py-3 border-2 border-white text-white rounded-lg hover:bg-white/10 transition">
                联系我
              </a>
            </div>
          </div>
          <div class="hidden md:flex justify-center">
            <div class="relative">
              <div class="w-64 h-64 bg-white/10 rounded-full flex items-center justify-center backdrop-blur-sm">
                <img src="/头像.png" alt="头像" class="w-64 h-64 rounded-full object-cover" />
              </div>
              <div class="absolute -top-4 -right-4 w-20 h-20 bg-yellow-400/20 rounded-full blur-xl"></div>
              <div class="absolute -bottom-4 -left-4 w-32 h-32 bg-blue-300/20 rounded-full blur-xl"></div>
            </div>
          </div>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-6 max-w-3xl mx-auto mt-16">
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">9+</div>
            <div class="text-sm text-white/80 mt-1">从业年限</div>
          </div>
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">10+</div>
            <div class="text-sm text-white/80 mt-1">完成项目</div>
          </div>
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">3</div>
            <div class="text-sm text-white/80 mt-1">工作经历</div>
          </div>
<!--          <div class="text-center">-->
<!--            <div class="text-3xl md:text-4xl font-bold">[待替换：奖项数]+</div>-->
<!--            <div class="text-sm text-white/80 mt-1">获得奖项</div>-->
<!--          </div>-->
        </div>
      </div>
    </section>

    <!-- 关于我 -->
    <section id="about" class="py-20 px-4">
      <div class="max-w-4xl mx-auto">
        <h2 class="text-3xl font-bold text-center mb-12 text-gray-800">关于我</h2>
        <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-100">
          <p class="text-gray-600 leading-relaxed text-lg mb-4">
            [2023~2026：上海华为研发中心:无线大数据部分，Java微服务和spark scala开发]
          </p>
          <p class="text-gray-600 leading-relaxed text-lg mb-4">
            [2021~2023：上海海发宝城公司:金融租赁业务系统，Java后端开发]
          </p>
          <p class="text-gray-600 leading-relaxed text-lg">
            [2017~2021：上海和辉光电: 半导体自动化部门，MES系统C++和Java开发]
          </p>
        </div>
      </div>
    </section>

    <!-- 核心技能 -->
    <section id="skills" class="py-20 px-4 bg-gray-50">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800">核心技能</h2>
          <p class="text-gray-500 mt-2">专业能力，匠心打造</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center">
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[Java后端开发]</h3>
            <p class="text-gray-500 text-sm">[springCloud及相关应用:nacos,openFeign,Gateway,setinel等]</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center">
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[Spark scla大数据开发]</h3>
            <p class="text-gray-500 text-sm">[scala编程,Hive,HDFS;spark资源调优，数据倾斜处理，任务调度原理]</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center">
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[K8s运维管理]</h3>
            <p class="text-gray-500 text-sm">[容器化应用发布与运维，修改dockerfile，定位pod crash]</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center">
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[AI应用开发]</h3>
            <p class="text-gray-500 text-sm">[RAG 检索增强生成，LangChain，向量数据库]</p>
          </div>
        </div>
      </div>
    </section>

    <!-- 精选作品 -->
    <section id="projects" class="py-20 px-4">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800">精选作品</h2>
          <p class="text-gray-500 mt-2">代表性项目案例</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <router-link
              v-for="project in projects"
              :key="project.id"
              :to="`/project/${project.id}`"
              class="bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-lg transition"
          >
            <div :class="`h-48 ${project.bgColor} flex items-center justify-center`">
              <span class="text-6xl text-white font-bold">{{ project.title.charAt(0) }}</span>
            </div>
            <div class="p-4">
              <h3 class="text-lg font-semibold text-gray-800 mb-1">{{ project.title }}</h3>
              <p class="text-gray-500 text-sm">{{ project.category }} · {{ project.year }}</p>
            </div>
          </router-link>
        </div>
        <div class="text-center mt-8">
          <a href="#" class="inline-block px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
            查看更多作品
          </a>
        </div>
      </div>
    </section>

    <!-- 客户评价（已停用：不符合在职工程师定位） -->
    <!--
    <section class="py-20 px-4 bg-gray-50">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800">客户评价</h2>
          <p class="text-gray-500 mt-2">合作方反馈</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"[待替换：评价内容1]"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-primary rounded-full flex items-center justify-center">
                <span class="text-white font-semibold">[待替换：姓名首字1]</span>
              </div>
              <div>
                <div class="font-semibold text-gray-800">[待替换：评价人姓名1]</div>
                <div class="text-sm text-gray-500">[待替换：评价人职位1]</div>
              </div>
            </div>
          </div>
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"[待替换：评价内容2]"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-secondary rounded-full flex items-center justify-center">
                <span class="text-white font-semibold">[待替换：姓名首字2]</span>
              </div>
              <div>
                <div class="font-semibold text-gray-800">[待替换：评价人姓名2]</div>
                <div class="text-sm text-gray-500">[待替换：评价人职位2]</div>
              </div>
            </div>
          </div>
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"[待替换：评价内容3]"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-orange-500 rounded-full flex items-center justify-center">
                <span class="text-white font-semibold">[待替换：姓名首字3]</span>
              </div>
              <div>
                <div class="font-semibold text-gray-800">[待替换：评价人姓名3]</div>
                <div class="text-sm text-gray-500">[待替换：评价人职位3]</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    -->

    <!-- 教育背景 -->
    <section id="education" class="py-20 px-4 bg-gray-50">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800">教育背景</h2>
          <p class="text-gray-500 mt-2">学习经历</p>
        </div>
        <div class="max-w-2xl mx-auto">
          <div class="bg-white rounded-xl p-6 shadow-sm border-l-4 border-primary">
            <div class="text-sm text-gray-400 mb-1">🎓 教育背景</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[学校名称：浙江大学]</h3>
            <p class="text-gray-600 text-sm mb-1">[专业：机械工程及其自动化] · [学历：本科]</p>
            <p class="text-gray-500 text-xs">[起止年份：2013.09-2017.07]</p>
          </div>
          <!-- 专业认证（暂未启用） -->
          <!--
          <div class="bg-white rounded-xl p-6 shadow-sm border-l-4 border-secondary">
            <div class="text-sm text-gray-400 mb-1">🏅 专业认证</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[待替换：证书名称]</h3>
            <p class="text-gray-600 text-sm mb-1">[待替换：颁发机构]</p>
            <p class="text-gray-500 text-xs">[待替换：获得年份]</p>
          </div>
          -->
          <!-- 荣誉 & 专利（暂未启用） -->
          <!--
          <div class="bg-white rounded-xl p-6 shadow-sm border-l-4 border-orange-500">
            <div class="text-sm text-gray-400 mb-1">🏆 荣誉 &amp; 专利</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">[待替换：奖项/专利名称]</h3>
            <p class="text-gray-600 text-sm mb-1">[待替换：说明]</p>
            <p class="text-gray-500 text-xs">[待替换：时间]</p>
          </div>
          -->
        </div>
      </div>
    </section>

    <!-- 联系我 -->
    <section id="contact" class="py-20 px-4">
      <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-3xl font-bold text-gray-800 mb-2">联系我</h2>
        <p class="text-gray-500 mb-8">商务合作 / 项目咨询 / 人才招募</p>
        <div class="flex flex-wrap justify-center gap-6 mb-8">
          <a href="mailto:297555475@qq.com" class="flex items-center gap-2 text-gray-600 hover:text-primary transition">
            <span>[邮箱：297555475@qq.com]</span>
          </a>
          <a href="tel:18868128829" class="flex items-center gap-2 text-gray-600 hover:text-primary transition">
            <span>[电话：18868128829]</span>
          </a>
          <span class="flex items-center gap-2 text-gray-600">
            <span>[地址：上海青浦区]</span>
          </span>
        </div>
        <a href="mailto:297555475@qq.com" class="inline-block px-6 py-3 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
          发送消息
        </a>
      </div>
    </section>

    <!-- 页脚 -->
    <footer class="bg-gray-800 text-white py-12 px-4">
      <div class="max-w-6xl mx-auto">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8">
          <div>
            <div class="flex items-center gap-2 mb-3">
              <span class="text-lg font-bold">[章永杰]</span>
            </div>
            <p class="text-gray-400 text-sm">[程序员]<br>[Java后端开发]</p>
          </div>
          <div>
            <h4 class="font-semibold mb-3">导航</h4>
            <ul class="space-y-2 text-gray-400 text-sm">
              <li><a href="#home" class="hover:text-white transition">首页</a></li>
              <li><a href="#about" class="hover:text-white transition">关于我</a></li>
              <li><a href="#projects" class="hover:text-white transition">作品集</a></li>
              <li><a href="#contact" class="hover:text-white transition">联系我</a></li>
            </ul>
          </div>
          <div>
            <h4 class="font-semibold mb-3">资源</h4>
            <ul class="space-y-2 text-gray-400 text-sm">
              <li><a href="#" class="hover:text-white transition">博客</a></li>
              <li><a href="#" class="hover:text-white transition">服务</a></li>
              <li><a href="#" class="hover:text-white transition">技能</a></li>
              <li><a href="#" class="hover:text-white transition">简历</a></li>
            </ul>
          </div>
          <div>
            <h4 class="font-semibold mb-3">社交</h4>
            <ul class="space-y-2 text-gray-400 text-sm">
              <li><a href="https://github.com/yorkiiz" target="_blank" rel="noopener noreferrer" class="hover:text-white transition">GitHub</a></li>
              <li><a href="#" class="hover:text-white transition">知乎</a></li>
              <li><a href="#" class="hover:text-white transition">微博</a></li>
            </ul>
          </div>
        </div>
        <div class="border-t border-gray-700 pt-6 flex flex-wrap justify-between items-center">
          <p class="text-gray-400 text-sm"> 2026 章永杰. All Rights Reserved.</p>
          <div class="flex gap-4">
            <a href="#" class="text-gray-400 hover:text-white transition"></a>
            <a href="#" class="text-gray-400 hover:text-white transition"></a>
            <a href="#" class="text-gray-400 hover:text-white transition"></a>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const projects = ref([
  {
    id: 'mall',
    title: '[项目1名称：电子商城]',
    category: '[项目1分类：电子商城]',
    year: '[项目1年份：2026]',
    bgColor: 'bg-gradient-to-br from-blue-500 to-cyan-400',
  },
  {
    id: 'mall',
    title: '[待替换：项目2名称]',
    category: '[待替换：项目2分类]',
    year: '[待替换：项目2年份]',
    bgColor: 'bg-gradient-to-br from-orange-400 to-pink-500',
  },
  {
    id: 'blog',
    title: '[待替换：项目3名称]',
    category: '[待替换：项目3分类]',
    year: '[待替换：项目3年份]',
    bgColor: 'bg-gradient-to-br from-green-400 to-emerald-500',
  },
  {
    id: 'dashboard',
    title: '[待替换：项目4名称]',
    category: '[待替换：项目4分类]',
    year: '[待替换：项目4年份]',
    bgColor: 'bg-gradient-to-br from-purple-400 to-pink-400',
  },
  {
    id: 'wechat',
    title: '[待替换：项目5名称]',
    category: '[待替换：项目5分类]',
    year: '[待替换：项目5年份]',
    bgColor: 'bg-gradient-to-br from-yellow-400 to-orange-400',
  },
  {
    id: 'api',
    title: '[待替换：项目6名称]',
    category: '[待替换：项目6分类]',
    year: '[待替换：项目6年份]',
    bgColor: 'bg-gradient-to-br from-pink-400 to-rose-400',
  },
])

const scrollTo = (id) => {
  const element = document.getElementById(id)
  if (element) {
    element.scrollIntoView({ behavior: 'smooth' })
  }
}

</script>