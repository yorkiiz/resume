<template>
  <div class="min-h-screen bg-gray-50">
    <!-- 导航栏 -->
    <nav class="fixed top-0 w-full bg-white/80 backdrop-blur-md z-50 border-b border-gray-200">
      <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
        <router-link to="/" class="text-xl font-bold text-gray-800">← 返回首页</router-link>
        <a v-if="project" :href="project.liveUrl" target="_blank"
           class="px-4 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition">
          在线体验
        </a>
      </div>
    </nav>

    <div v-if="project" class="pt-20 pb-12 px-4">
      <div class="max-w-4xl mx-auto">
        <!-- 项目标题 -->
        <div class="text-center mb-12">
          <div class="text-6xl mb-4">{{ project.icon }}</div>
          <h1 class="text-4xl font-bold text-gray-800 mb-4">{{ project.title }}</h1>
          <p class="text-xl text-gray-600">{{ project.subtitle }}</p>
        </div>

        <!-- 在线体验链接 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
            <span>🚀</span> 在线体验
          </h2>
          <a :href="project.liveUrl" target="_blank"
             class="text-primary hover:underline break-all">
            {{ project.liveUrl }}
          </a>
        </div>

        <!-- 项目简介 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
            <span>📋</span> 项目简介
          </h2>
          <p class="text-gray-600 leading-relaxed">{{ project.description }}</p>
        </div>

        <!-- 系统架构 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
            <span>🏗️</span> 系统架构
          </h2>
          <div class="bg-gray-100 rounded-xl p-8 flex items-center justify-center min-h-[300px]">
            <div class="text-center text-gray-500">
              <div class="text-4xl mb-2">📊</div>
              <p>架构图占位</p>
              <p class="text-sm mt-2">可替换为实际架构图图片</p>
            </div>
          </div>
        </div>

        <!-- 技术栈 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
            <span>🛠️</span> 技术栈
          </h2>
          <div class="space-y-4">
            <div v-for="(stack, category) in project.techStack" :key="category">
              <h3 class="font-semibold text-gray-700 mb-2">{{ category }}</h3>
              <div class="flex flex-wrap gap-2">
                <span
                  v-for="tech in stack"
                  :key="tech"
                  class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-sm"
                >
                  {{ tech }}
                </span>
              </div>
            </div>
          </div>
        </div>

        <!-- 核心功能 -->
        <div class="bg-white rounded-2xl p-6 shadow-md">
          <h2 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
            <span>✨</span> 核心功能
          </h2>
          <ul class="space-y-3">
            <li v-for="feature in project.features" :key="feature"
                class="flex items-start gap-3 text-gray-600">
              <span class="text-primary mt-1">•</span>
              <span>{{ feature }}</span>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- 页脚 -->
    <footer class="py-6 text-center text-gray-500 text-sm">
      <p>© 2026 你的名字. All rights reserved.</p>
    </footer>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRoute } from 'vue-router'

const route = useRoute()

const projectsData = {
  agent: {
    id: 'agent',
    icon: '🤖',
    title: '智能 Agent 助手',
    subtitle: '基于大语言模型的智能对话系统',
    liveUrl: 'https://agent.yourdomain.com',
    description: '这是一个基于大语言模型开发的智能助手系统，支持多轮对话、上下文理解、任务规划与执行。系统采用 RAG 架构，结合知识库检索增强，能够提供准确的领域知识问答。支持插件扩展，可以集成多种外部工具和服务。',
    techStack: {
      '前端': ['Vue 3', 'Element Plus', 'Axios', 'Vite'],
      '后端': ['Spring Boot', 'Spring AI', 'MyBatis Plus', 'JWT'],
      'AI': ['OpenAI API', 'LangChain', '向量数据库', 'RAG'],
      '数据库': ['MySQL', 'Redis', 'Milvus'],
      '部署': ['Docker', 'Nginx', '阿里云 ECS']
    },
    features: [
      '多轮对话，支持上下文理解和记忆',
      '任务规划与自动执行',
      '知识库检索增强（RAG）',
      '插件系统，支持扩展外部工具',
      '用户认证与权限管理',
      '对话历史持久化',
      '流式响应，实时显示生成内容',
      '支持多种 AI 模型切换'
    ]
  },
  mall: {
    id: 'mall',
    icon: '🛒',
    title: '个人商城系统',
    subtitle: '全栈电商解决方案',
    liveUrl: 'https://mall.yourdomain.com',
    description: '一个完整的电商系统，包含前台商城和后台管理两部分。前台提供商品浏览、购物车、订单结算、在线支付等功能；后台提供商品管理、订单管理、用户管理、数据统计等功能。采用前后端分离架构，支持高并发访问。',
    techStack: {
      '前端': ['Vue 3', 'Vuex', 'Vue Router', 'Element Plus'],
      '后端': ['Spring Boot', 'Spring Security', 'MyBatis', 'JWT'],
      '数据库': ['MySQL', 'Redis', 'RabbitMQ'],
      '支付': ['支付宝沙箱', '微信支付'],
      '部署': ['Docker', 'Nginx', '阿里云']
    },
    features: [
      '商品分类、搜索、详情页',
      '购物车管理，支持数量修改和删除',
      '订单系统，包含下单、支付、发货、收货流程',
      '支付宝/微信支付集成',
      '用户注册登录，支持手机号验证',
      '后台商品管理，支持图片上传',
      '订单数据统计与分析',
      '基于 Redis 的库存预热和秒杀优化'
    ]
  }
}

const project = computed(() => projectsData[route.params.id])
</script>
