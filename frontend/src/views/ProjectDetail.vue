<template>
  <div class="min-h-screen bg-gray-50">
    <!-- 导航栏 -->
    <nav class="fixed top-0 w-full bg-white shadow-sm z-50">
      <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
        <router-link to="/" class="text-xl font-bold text-primary">← 返回首页</router-link>
        <a v-if="project && project.liveUrl" :href="project.liveUrl" target="_blank" rel="noopener"
           class="px-4 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition shadow-md">
          访问演示站
        </a>
      </div>
    </nav>

    <!-- 项目不存在兜底 -->
    <div v-if="!project" class="pt-32 pb-20 px-4 text-center">
      <h1 class="text-2xl font-bold text-gray-800 mb-4">项目不存在</h1>
      <p class="text-gray-500 mb-8">这个项目可能已经下线了</p>
      <router-link to="/" class="inline-block px-6 py-2 bg-primary text-white rounded-lg hover:bg-secondary transition">
        回到首页
      </router-link>
    </div>

    <div v-else class="pt-20 pb-12 px-4">
      <div class="max-w-4xl mx-auto">
        <!-- 项目标题 -->
        <div class="text-center mb-12">
          <div class="w-24 h-24 mx-auto mb-5 rounded-2xl flex items-center justify-center text-white text-4xl font-bold shadow-lg"
               :class="project.bgColor">
            {{ project.title.charAt(0) }}
          </div>
          <h1 class="text-4xl font-bold text-gray-800 mb-3">{{ project.title }}</h1>
          <p class="text-lg text-gray-600">{{ project.subtitle }}</p>
          <div class="flex flex-wrap justify-center gap-x-6 gap-y-2 mt-5 text-sm text-gray-500">
            <span>{{ project.period }}</span>
            <span class="text-gray-300">|</span>
            <span>{{ project.role }}</span>
          </div>
        </div>

        <!-- 项目简介 -->
        <div class="bg-white rounded-2xl p-7 shadow-md mb-6">
          <h2 class="text-xl font-bold text-gray-800 mb-4">项目简介</h2>
          <p class="text-gray-600 leading-relaxed">{{ project.description }}</p>
        </div>

        <!-- 系统架构 -->
        <div class="bg-white rounded-2xl p-7 shadow-md mb-6">
          <h2 class="text-xl font-bold text-gray-800 mb-1">系统架构</h2>
          <p class="text-sm text-gray-500 mb-5">前后端分离，全部组件容器化运行在自建 Kubernetes 集群上</p>

          <div class="rounded-xl border border-gray-200 bg-gray-50/60 p-4 overflow-x-auto">
            <svg viewBox="0 0 820 580" class="w-full h-auto min-w-[680px]" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <marker id="ar" viewBox="0 0 10 10" refX="9" refY="5"
                        markerWidth="6" markerHeight="6" orient="auto-start-reverse">
                  <path d="M 0 0 L 10 5 L 0 10 z" fill="#94a3b8"/>
                </marker>
              </defs>

              <!-- 浏览器 -->
              <rect x="330" y="10" width="160" height="52" rx="10" fill="#f1f5f9" stroke="#cbd5e1"/>
              <text x="410" y="32" text-anchor="middle" font-size="13" font-weight="600" fill="#334155">浏览器 / 移动端</text>
              <text x="410" y="49" text-anchor="middle" font-size="11" fill="#94a3b8">Vue 3 SPA</text>

              <!-- 箭头 1 -->
              <line x1="410" y1="62" x2="410" y2="100" stroke="#94a3b8" stroke-width="1.5" marker-end="url(#ar)"/>
              <text x="420" y="86" font-size="11" fill="#64748b">HTTP :30080 (NodePort)</text>

              <!-- 集群外框 -->
              <rect x="40" y="112" width="740" height="440" rx="14"
                    fill="none" stroke="#cbd5e1" stroke-width="1.5" stroke-dasharray="6 4"/>
              <text x="54" y="133" font-size="11" fill="#64748b">
                Kubernetes v1.30 · 3 Nodes · containerd · flannel (VXLAN)
              </text>

              <!-- nginx -->
              <rect x="280" y="148" width="260" height="58" rx="10" fill="#eef2ff" stroke="#a5b4fc"/>
              <text x="410" y="173" text-anchor="middle" font-size="14" font-weight="700" fill="#4338ca">nginx × 2 副本</text>
              <text x="410" y="192" text-anchor="middle" font-size="11" fill="#6366f1">静态资源托管 · /api 反向代理</text>

              <!-- 箭头 2 -->
              <line x1="410" y1="206" x2="410" y2="238" stroke="#94a3b8" stroke-width="1.5" marker-end="url(#ar)"/>
              <text x="420" y="226" font-size="11" fill="#64748b">ClusterIP · backend-svc:8080</text>

              <!-- Spring Boot -->
              <rect x="245" y="242" width="330" height="70" rx="10" fill="#eef2ff" stroke="#a5b4fc"/>
              <text x="410" y="267" text-anchor="middle" font-size="13.5" font-weight="700" fill="#4338ca">Spring Boot × 2 副本（Pod 反亲和）</text>
              <text x="410" y="289" text-anchor="middle" font-size="11" fill="#6366f1">Spring Security + JWT · MyBatis-Plus</text>

              <!-- 分叉 -->
              <line x1="410" y1="312" x2="410" y2="340" stroke="#94a3b8" stroke-width="1.5"/>
              <line x1="150" y1="340" x2="670" y2="340" stroke="#94a3b8" stroke-width="1.5"/>
              <line x1="150" y1="340" x2="150" y2="366" stroke="#94a3b8" stroke-width="1.5" marker-end="url(#ar)"/>
              <line x1="410" y1="340" x2="410" y2="366" stroke="#94a3b8" stroke-width="1.5" marker-end="url(#ar)"/>
              <line x1="670" y1="340" x2="670" y2="366" stroke="#94a3b8" stroke-width="1.5" marker-end="url(#ar)"/>

              <!-- MySQL -->
              <rect x="60" y="368" width="180" height="66" rx="10" fill="#ecfdf5" stroke="#6ee7b7"/>
              <text x="150" y="393" text-anchor="middle" font-size="13" font-weight="700" fill="#047857">MySQL 8.0</text>
              <text x="150" y="412" text-anchor="middle" font-size="11" fill="#10b981">商品 · 订单 · 用户</text>

              <!-- Redis -->
              <rect x="320" y="368" width="180" height="66" rx="10" fill="#fef2f2" stroke="#fca5a5"/>
              <text x="410" y="393" text-anchor="middle" font-size="13" font-weight="700" fill="#b91c1c">Redis 7</text>
              <text x="410" y="412" text-anchor="middle" font-size="11" fill="#ef4444">热点商品缓存</text>

              <!-- RabbitMQ -->
              <rect x="590" y="368" width="180" height="66" rx="10" fill="#fffbeb" stroke="#fcd34d"/>
              <text x="680" y="393" text-anchor="middle" font-size="13" font-weight="700" fill="#b45309">RabbitMQ 4.3</text>
              <text x="680" y="412" text-anchor="middle" font-size="11" fill="#f59e0b">下单异步解耦</text>

              <!-- 说明 -->
              <text x="410" y="470" text-anchor="middle" font-size="11" fill="#94a3b8">
                下单后经 RabbitMQ 异步消费，解耦库存扣减与通知；缓存与数据库按先更新库再删缓存保持一致
              </text>
              <text x="410" y="494" text-anchor="middle" font-size="11" fill="#94a3b8">
                镜像由 Jib 构建为 OCI tar，离线导入 containerd；滚动更新 maxSurge:0 规避反亲和死锁
              </text>
            </svg>
          </div>

          <div class="grid sm:grid-cols-3 gap-3 mt-5">
            <div v-for="item in project.archNotes" :key="item.label"
                 class="rounded-xl bg-gray-50 border border-gray-100 px-4 py-3">
              <div class="text-xs text-gray-400 mb-1">{{ item.label }}</div>
              <div class="text-sm text-gray-700 leading-snug">{{ item.value }}</div>
            </div>
          </div>
        </div>

        <!-- 技术栈 -->
        <div class="bg-white rounded-2xl p-7 shadow-md mb-6">
          <h2 class="text-xl font-bold text-gray-800 mb-5">技术栈</h2>
          <div class="grid sm:grid-cols-2 gap-x-8 gap-y-5">
            <div v-for="(stack, category) in project.techStack" :key="category">
              <h3 class="font-semibold text-gray-700 mb-2 text-sm">{{ category }}</h3>
              <div class="flex flex-wrap gap-2">
                <span v-for="tech in stack" :key="tech"
                      class="px-3 py-1 bg-primary/10 text-primary rounded-full text-sm">
                  {{ tech }}
                </span>
              </div>
            </div>
          </div>
        </div>

        <!-- 核心功能 -->
        <div class="bg-white rounded-2xl p-7 shadow-md mb-6">
          <h2 class="text-xl font-bold text-gray-800 mb-4">核心功能</h2>
          <ul class="space-y-3">
            <li v-for="feature in project.features" :key="feature"
                class="flex items-start gap-3 text-gray-600">
              <span class="text-primary mt-1 font-bold">·</span>
              <span class="leading-relaxed">{{ feature }}</span>
            </li>
          </ul>
        </div>

        <!-- 关键问题与排障 -->
        <div class="bg-white rounded-2xl p-7 shadow-md">
          <h2 class="text-xl font-bold text-gray-800 mb-1">关键问题与排查过程</h2>
          <p class="text-sm text-gray-500 mb-5">部署过程中实际遇到的问题，以及定位和解决方式</p>
          <div class="space-y-4">
            <div v-for="(item, i) in project.challenges" :key="i"
                 class="border-l-4 border-primary/40 pl-5 py-1">
              <div class="flex items-start gap-2 mb-1">
                <span class="text-sm font-bold text-primary/70 mt-0.5">{{ String(i + 1).padStart(2, '0') }}</span>
                <h3 class="font-semibold text-gray-800">{{ item.title }}</h3>
              </div>
              <p class="text-gray-600 text-sm leading-relaxed">{{ item.detail }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 页脚 -->
    <footer class="py-6 text-center text-gray-500 text-sm">
      <p>2026 章永杰. All rights reserved.</p>
    </footer>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRoute } from 'vue-router'

const route = useRoute()

// 演示站地址：域名 + 备案下来后，把这里换成 https://your-domain.com
const DEMO_URL = 'http://47.98.20.61:30080'

const projectsData = {
  mall: {
    id: 'mall',
    title: '电子商城系统',
    subtitle: 'Spring Boot + Vue 3 · 自建 Kubernetes 集群部署',
    period: '2026.08 – 2026.10',
    role: '个人项目 · 全栈开发与部署',
    liveUrl: DEMO_URL,
    description:
        '一套完整的前后端分离电商系统，覆盖商品浏览、搜索、购物车、下单、订单查询与用户中心。' +
        '后端基于 Spring Boot 4 与 MyBatis-Plus 构建 RESTful 接口，使用 Spring Security + JWT 完成身份认证；' +
        '前端基于 Vue 3 + Element Plus，通过 axios 统一拦截 401/403 做登录态兜底。' +
        '区别于只在本机运行的示例项目，该系统完整部署在一套自建的 3 节点 Kubernetes 集群上，' +
        'MySQL、Redis、RabbitMQ 全部容器化，并在部署与压测过程中定位并解决了网络插件、调度策略、' +
        '存储挂载等多类故障。',
    bgColor: 'bg-gradient-to-br from-blue-500 to-cyan-400',
    archNotes: [
      { label: '部署形态', value: '3 节点集群（1 control-plane + 2 worker），中间件与业务同集群运行' },
      { label: '可用性设计', value: '无状态服务双副本 + 强制 Pod 反亲和，滚动更新期间服务不中断' },
      { label: '镜像交付', value: 'Jib 在无 Docker 环境构建 OCI tar，经 ctr 离线导入各节点' },
    ],
    techStack: {
      '后端': ['Spring Boot 4', 'MyBatis-Plus', 'Spring Security', 'JWT', 'RabbitMQ'],
      '前端': ['Vue 3', 'Vite', 'Element Plus', 'Pinia', 'Vue Router'],
      '数据与中间件': ['MySQL 8.0', 'Redis 7', 'RabbitMQ 4.3'],
      '基础设施': ['Kubernetes 1.30', 'containerd', 'flannel (VXLAN)', 'nginx', 'Jib'],
    },
    features: [
      '商品列表、分类与详情展示，图片与商品数据分离存储，前端静态资源独立托管',
      '用户注册与登录，基于 Spring Security + JWT 的无状态认证，Token 过期与非法请求统一拦截',
      '购物车增删改查与下单流程，订单数据落库后通过 RabbitMQ 异步处理后续业务',
      '热点商品数据走 Redis 缓存，降低数据库读压力，缓存与库按先更新库再删缓存保持一致',
      '前端 SPA 路由 history 模式，nginx 配置 try_files 回退，刷新子路由不 404',
      '静态资源 30 天强缓存；上游服务不可用时由 nginx 返回结构化 JSON 而非默认错误页',
    ],
    challenges: [
      {
        title: '跨节点 Pod 网络不通，接口约 50% 请求随机超时',
        detail:
            '现象是同一接口连续调用时好时坏，且失败请求集中在落到另一台节点的 Pod 上。' +
            '逐节点检查发现 flannel DaemonSet 各节点运行的镜像版本不一致（一个节点只有旧版本，且无法拉取新镜像），' +
            '导致 VXLAN 隧道建立异常。由于目标节点无法访问镜像仓库，改为从正常节点 ctr export 镜像后离线导入，' +
            '统一版本后跨节点通信恢复。',
      },
      {
        title: 'Pod CIDR 与实际网段错位，节点间路由缺失',
        detail:
            '节点登记的 podCIDR 与实际 cni0 网段不一致，导致每个节点只认识自己的 Pod 网段。' +
            'node.spec.podCIDR 不允许直接 patch，最终通过删除相关 Pod、删除并重建 cni0 网桥，' +
            '让实际网段向登记值对齐后，各节点 ip route 才能看到全部 Pod 网段。',
      },
      {
        title: '静态资源更新后容器仍读取旧内容',
        detail:
            '站点使用 hostPath 挂载宿主机目录，一次更新时删除并重建了目录，结果容器内看到的仍是旧文件、' +
            '甚至挂载失效。原因是 bind mount 绑定的是目录 inode，目录被替换后挂载指向已失效的旧对象。' +
            '改为就地覆盖解压（不删除目录本身），更新流程恢复正常。',
      },
      {
        title: '强制反亲和与默认滚动策略互相等待，发布卡死',
        detail:
            '为保证两个副本不落在同一节点使用了 required 反亲和，但默认滚动更新会先创建新 Pod 再删旧的，' +
            '新 Pod 因找不到满足反亲和的节点而 Pending，旧 Pod 不删则资源不释放，形成死锁。' +
            '将策略改为 maxSurge: 0、maxUnavailable: 1（先删后建）后，发布可以正常滚动完成。',
      },
      {
        title: '配置文件以 subPath 挂载时报 CreateContainerConfigError',
        detail:
            '最初把 ConfigMap 式配置文件以 hostPath 文件 + subPath 方式挂载，路径被拼接为重复层级导致容器启动失败。' +
            '改为挂载宿主机目录（type: Directory），再由 subPath 指定文件名，配置注入恢复正常。',
      },
    ],
  },
}

const project = computed(() => projectsData[route.params.id])
</script>
