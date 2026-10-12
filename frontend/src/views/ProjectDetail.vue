<template>
  <div class="min-h-screen bg-gray-50">
    <!-- 导航栏 -->
    <nav class="fixed top-0 w-full bg-white shadow-sm z-50">
      <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
        <router-link to="/" class="text-xl font-bold text-primary">返回首页</router-link>
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
          <div class="w-24 h-24 mx-auto mb-4 rounded-full flex items-center justify-center text-white text-4xl font-bold" :class="project.bgColor">
            {{ project.title.charAt(0) }}
          </div>
          <h1 class="text-4xl font-bold text-gray-800 mb-4">{{ project.title }}</h1>
          <p class="text-xl text-gray-600">{{ project.subtitle }}</p>
        </div>

        <!-- 在线体验链接 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4">在线体验</h2>
          <a :href="project.liveUrl" target="_blank"
             class="text-primary hover:underline break-all">
            {{ project.liveUrl }}
          </a>
        </div>

        <!-- 项目简介 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4">项目简介</h2>
          <p class="text-gray-600 leading-relaxed">{{ project.description }}</p>
        </div>

        <!-- 系统架构 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4">系统架构</h2>
          <div class="bg-gray-100 rounded-xl p-8 flex items-center justify-center min-h-[300px]">
            <div class="text-center text-gray-500">
              <p class="text-lg">[待替换：架构图]</p>
              <p class="text-sm mt-2">可替换为实际架构图图片</p>
            </div>
          </div>
        </div>

        <!-- 技术栈 -->
        <div class="bg-white rounded-2xl p-6 shadow-md mb-8">
          <h2 class="text-xl font-bold text-gray-800 mb-4">技术栈</h2>
          <div class="space-y-4">
            <div v-for="(stack, category) in project.techStack" :key="category">
              <h3 class="font-semibold text-gray-700 mb-2">{{ category }}</h3>
              <div class="flex flex-wrap gap-2">
                <span
                    v-for="tech in stack"
                    :key="tech"
                    class="px-3 py-1 bg-primary/10 text-primary rounded-full text-sm"
                >
                  {{ tech }}
                </span>
              </div>
            </div>
          </div>
        </div>

        <!-- 核心功能 -->
        <div class="bg-white rounded-2xl p-6 shadow-md">
          <h2 class="text-xl font-bold text-gray-800 mb-4">核心功能</h2>
          <ul class="space-y-3">
            <li v-for="feature in project.features" :key="feature"
                class="flex items-start gap-3 text-gray-600">
              <span class="text-primary mt-1 font-bold">-</span>
              <span>{{ feature }}</span>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- 页脚 -->
    <footer class="py-6 text-center text-gray-500 text-sm">
      <p> 2026 [待替换：姓名]. All rights reserved.</p>
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
    title: '[待替换：项目1名称]',
    subtitle: '[待替换：项目1副标题]',
    liveUrl: '[待替换：项目1在线链接]',
    description: '[待替换：项目1简介]',
    bgColor: 'bg-gradient-to-br from-blue-500 to-cyan-400',
    techStack: {
      '前端': ['[待替换：技术1]', '[待替换：技术2]'],
      '后端': ['[待替换：技术3]', '[待替换：技术4]'],
      '数据库': ['[待替换：技术5]', '[待替换：技术6]'],
      '部署': ['[待替换：技术7]', '[待替换：技术8]'],
    },
    features: [
      '[待替换：功能1]',
      '[待替换：功能2]',
      '[待替换：功能3]',
      '[待替换：功能4]',
    ],
  },
  mall: {
    id: 'mall',
    title: '[待替换：项目2名称]',
    subtitle: '[待替换：项目2副标题]',
    liveUrl: '[待替换：项目2在线链接]',
    description: '[待替换：项目2简介]',
    bgColor: 'bg-gradient-to-br from-orange-400 to-pink-500',
    techStack: {
      '前端': ['[待替换：技术1]', '[待替换：技术2]'],
      '后端': ['[待替换：技术3]', '[待替换：技术4]'],
      '数据库': ['[待替换：技术5]', '[待替换：技术6]'],
      '部署': ['[待替换：技术7]', '[待替换：技术8]'],
    },
    features: [
      '[待替换：功能1]',
      '[待替换：功能2]',
      '[待替换：功能3]',
      '[待替换：功能4]',
    ],
  },
}

const project = computed(() => projectsData[route.params.id])
</script>