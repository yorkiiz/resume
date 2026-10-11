<template>
  <div class="min-h-screen bg-white">
    <!-- 导航栏 -->
    <nav class="fixed top-0 w-full bg-white shadow-sm z-50">
      <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
        <div class="flex items-center gap-2">
          <UserCircleIcon class="w-6 h-6 text-primary" />
          <span class="text-xl font-bold text-gray-800">你的名字</span>
        </div>
        <div class="hidden md:flex items-center gap-6">
          <a href="#home" class="text-primary font-medium border-b-2 border-primary pb-1">首页</a>
          <a href="#about" class="text-gray-600 hover:text-primary transition">关于</a>
          <a href="#projects" class="text-gray-600 hover:text-primary transition">作品</a>
          <a href="#skills" class="text-gray-600 hover:text-primary transition">技能</a>
          <a href="#contact" class="text-gray-600 hover:text-primary transition">联系</a>
        </div>
        <a href="#" class="px-4 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md flex items-center gap-2">
          <ArrowDownTrayIcon class="w-4 h-4" />
          下载简历
        </a>
      </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="pt-20 bg-gradient-to-r from-blue-500 to-cyan-400 text-white">
      <div class="max-w-6xl mx-auto px-4 py-16 md:py-24">
        <div class="grid md:grid-cols-2 gap-8 items-center">
          <div class="text-center md:text-left">
            <h1 class="text-4xl md:text-5xl font-bold mb-4 flex items-center justify-center md:justify-start gap-3">
              <HandThumbUpIcon class="w-8 h-8" />
              你好，我是你的名字
            </h1>
            <p class="text-xl text-white/90 mb-8">
              Java 后端开发工程师，专注于创造简洁高效的系统架构
            </p>
            <div class="flex justify-center md:justify-start gap-4">
              <a href="#projects" class="px-6 py-3 bg-orange-500 text-white rounded-lg hover:bg-orange-600 transition flex items-center gap-2 shadow-lg">
                <FolderIcon class="w-5 h-5" />
                查看作品
              </a>
              <a href="#contact" class="px-6 py-3 border-2 border-white text-white rounded-lg hover:bg-white/10 transition flex items-center gap-2">
                <ChatBubbleLeftRightIcon class="w-5 h-5" />
                联系我
              </a>
            </div>
          </div>
          <div class="hidden md:flex justify-center">
            <div class="relative">
              <img
                src="https://raw.githubusercontent.com/SAWARATSUKI/KawaiiLogos/main/ResponseCode/200.png"
                alt="Developer"
                class="w-64 h-64 object-contain drop-shadow-2xl"
              />
              <div class="absolute -top-4 -right-4 w-20 h-20 bg-yellow-400/20 rounded-full blur-xl"></div>
              <div class="absolute -bottom-4 -left-4 w-32 h-32 bg-blue-300/20 rounded-full blur-xl"></div>
            </div>
          </div>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-6 max-w-3xl mx-auto mt-16">
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">3+</div>
            <div class="text-sm text-white/80 mt-1">从业年限</div>
          </div>
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">10+</div>
            <div class="text-sm text-white/80 mt-1">完成项目</div>
          </div>
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">5+</div>
            <div class="text-sm text-white/80 mt-1">合作客户</div>
          </div>
          <div class="text-center">
            <div class="text-3xl md:text-4xl font-bold">2+</div>
            <div class="text-sm text-white/80 mt-1">获得奖项</div>
          </div>
        </div>
      </div>
    </section>

    <!-- 核心技能 -->
    <section id="skills" class="py-20 px-4 bg-gray-50">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 flex items-center justify-center gap-2">
            <CheckCircleIcon class="w-6 h-6 text-primary" />
            核心技能
          </h2>
          <p class="text-gray-500 mt-2">专业能力，匠心打造</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center group">
            <div class="w-14 h-14 mx-auto mb-4 bg-blue-50 rounded-full flex items-center justify-center group-hover:bg-blue-100 transition">
              <CogIcon class="w-8 h-8 text-blue-500" />
            </div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">后端开发</h3>
            <p class="text-gray-500 text-sm">Java、Spring Boot、MySQL、Redis</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center group">
            <div class="w-14 h-14 mx-auto mb-4 bg-green-50 rounded-full flex items-center justify-center group-hover:bg-green-100 transition">
              <PaintBrushIcon class="w-8 h-8 text-green-500" />
            </div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">前端开发</h3>
            <p class="text-gray-500 text-sm">Vue、HTML5、CSS3、JavaScript</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center group">
            <div class="w-14 h-14 mx-auto mb-4 bg-purple-50 rounded-full flex items-center justify-center group-hover:bg-purple-100 transition">
              <DevicePhoneMobileIcon class="w-8 h-8 text-purple-500" />
            </div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">响应式设计</h3>
            <p class="text-gray-500 text-sm">移动端适配、多设备兼容</p>
          </div>
          <div class="bg-white rounded-xl p-6 border border-gray-200 hover:border-primary hover:shadow-lg transition text-center group">
            <div class="w-14 h-14 mx-auto mb-4 bg-orange-50 rounded-full flex items-center justify-center group-hover:bg-orange-100 transition">
              <BoltIcon class="w-8 h-8 text-orange-500" />
            </div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">性能优化</h3>
            <p class="text-gray-500 text-sm">缓存策略、数据库优化、并发处理</p>
          </div>
        </div>
      </div>
    </section>

    <!-- 精选作品 -->
    <section id="projects" class="py-20 px-4">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 flex items-center justify-center gap-2">
            <PhotoIcon class="w-6 h-6 text-primary" />
            精选作品
          </h2>
          <p class="text-gray-500 mt-2">代表性项目案例</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <router-link
            v-for="project in projects"
            :key="project.id"
            :to="`/project/${project.id}`"
            class="bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-lg transition group"
          >
            <div :class="`h-48 ${project.bgColor} flex items-center justify-center`">
              <component :is="project.icon" class="w-16 h-16 text-white group-hover:scale-110 transition drop-shadow-lg" />
            </div>
            <div class="p-4">
              <h3 class="text-lg font-semibold text-gray-800 mb-1">{{ project.title }}</h3>
              <p class="text-gray-500 text-sm">{{ project.category }} · {{ project.year }}</p>
            </div>
          </router-link>
        </div>
        <div class="text-center mt-8">
          <a href="#" class="inline-block px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
            查看更多作品 →
          </a>
        </div>
      </div>
    </section>

    <!-- 客户评价 -->
    <section class="py-20 px-4 bg-gray-50">
      <div class="max-w-6xl mx-auto">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 flex items-center justify-center gap-2">
            <ChatBubbleLeftRightIcon class="w-6 h-6 text-primary" />
            客户评价
          </h2>
          <p class="text-gray-500 mt-2">合作方反馈</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"技术扎实，代码规范，能把设计稿完美还原，还提出了很多优化建议，非常专业。"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-blue-100 rounded-full flex items-center justify-center">
                <UserIcon class="w-5 h-5 text-blue-600" />
              </div>
              <div>
                <div class="font-semibold text-gray-800">张总监</div>
                <div class="text-sm text-gray-500">某互联网公司产品负责人</div>
              </div>
            </div>
          </div>
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"设计风格独特，能准确理解品牌需求，作品上线后获得用户一致好评，强力推荐！"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center">
                <UserIcon class="w-5 h-5 text-green-600" />
              </div>
              <div>
                <div class="font-semibold text-gray-800">王经理</div>
                <div class="text-sm text-gray-500">某科技公司市场部</div>
              </div>
            </div>
          </div>
          <div class="bg-white rounded-xl p-6 shadow-sm">
            <p class="text-gray-600 mb-4 italic">"项目交付及时，沟通顺畅，是值得信赖的合作伙伴。"</p>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 bg-purple-100 rounded-full flex items-center justify-center">
                <UserIcon class="w-5 h-5 text-purple-600" />
              </div>
              <div>
                <div class="font-semibold text-gray-800">李总</div>
                <div class="text-sm text-gray-500">某创业公司CEO</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 联系我 -->
    <section id="contact" class="py-20 px-4">
      <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-3xl font-bold text-gray-800 flex items-center justify-center gap-2 mb-2">
          <EnvelopeIcon class="w-6 h-6 text-primary" />
          联系我
        </h2>
        <p class="text-gray-500 mb-8">商务合作 / 项目咨询 / 人才招募</p>
        <div class="flex flex-wrap justify-center gap-6 mb-8">
          <a href="mailto:your@email.com" class="flex items-center gap-2 text-gray-600 hover:text-primary transition">
            <EnvelopeIcon class="w-5 h-5" />
            <span>your@email.com</span>
          </a>
          <a href="tel:13800138000" class="flex items-center gap-2 text-gray-600 hover:text-primary transition">
            <PhoneIcon class="w-5 h-5" />
            <span>138-0013-8000</span>
          </a>
          <span class="flex items-center gap-2 text-gray-600">
            <MapPinIcon class="w-5 h-5" />
            <span>北京市</span>
          </span>
        </div>
        <a href="mailto:your@email.com" class="inline-block px-6 py-3 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
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
              <UserCircleIcon class="w-6 h-6" />
              <span class="text-lg font-bold">你的名字</span>
            </div>
            <p class="text-gray-400 text-sm">Java 后端开发工程师<br>专注于创造简洁高效的系统架构</p>
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
              <li><a href="https://github.com/yourusername" target="_blank" class="hover:text-white transition">GitHub</a></li>
              <li><a href="#" class="hover:text-white transition">知乎</a></li>
              <li><a href="#" class="hover:text-white transition">微博</a></li>
            </ul>
          </div>
        </div>
        <div class="border-t border-gray-700 pt-6 flex flex-wrap justify-between items-center">
          <p class="text-gray-400 text-sm">© 2026 你的名字. All Rights Reserved.</p>
          <div class="flex gap-4">
            <a href="#" class="text-gray-400 hover:text-white transition">
              <EnvelopeIcon class="w-5 h-5" />
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition">
              <GlobeAltIcon class="w-5 h-5" />
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition">
              <ChatBubbleLeftRightIcon class="w-5 h-5" />
            </a>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import {
  UserCircleIcon,
  ArrowDownTrayIcon,
  HandThumbUpIcon,
  FolderIcon,
  ChatBubbleLeftRightIcon,
  CheckCircleIcon,
  CogIcon,
  PaintBrushIcon,
  DevicePhoneMobileIcon,
  BoltIcon,
  PhotoIcon,
  UserIcon,
  EnvelopeIcon,
  PhoneIcon,
  MapPinIcon,
  GlobeAltIcon,
  CpuChipIcon,
  ShoppingCartIcon,
  DocumentTextIcon,
  ChartBarIcon,
  ChatBubbleOvalLeftIcon,
  CommandLineIcon
} from '@heroicons/vue/24/outline'

const projects = ref([
  {
    id: 'agent',
    icon: CpuChipIcon,
    title: '智能 Agent 助手',
    category: 'AI 应用',
    year: '2024',
    bgColor: 'bg-gradient-to-br from-blue-500 to-cyan-400'
  },
  {
    id: 'mall',
    icon: ShoppingCartIcon,
    title: '个人商城系统',
    category: '全栈开发',
    year: '2024',
    bgColor: 'bg-gradient-to-br from-orange-400 to-pink-500'
  },
  {
    id: 'blog',
    icon: DocumentTextIcon,
    title: '技术博客系统',
    category: '后端开发',
    year: '2023',
    bgColor: 'bg-gradient-to-br from-green-400 to-emerald-500'
  },
  {
    id: 'dashboard',
    icon: ChartBarIcon,
    title: '数据可视化大屏',
    category: '前端开发',
    year: '2023',
    bgColor: 'bg-gradient-to-br from-purple-400 to-pink-400'
  },
  {
    id: 'wechat',
    icon: ChatBubbleOvalLeftIcon,
    title: '微信小程序',
    category: '全栈开发',
    year: '2023',
    bgColor: 'bg-gradient-to-br from-yellow-400 to-orange-400'
  },
  {
    id: 'api',
    icon: CommandLineIcon,
    title: 'RESTful API 平台',
    category: '后端开发',
    year: '2022',
    bgColor: 'bg-gradient-to-br from-pink-400 to-rose-400'
  }
])
</script>
