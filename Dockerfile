# 前端项目 Dockerfile（改进版）
# 使用方式：把本文件放到 frontend 目录下（和 dist 同级），然后：
#   cd /root/myapp/frontend
#   docker build -t myapp-frontend:v1 .
FROM nginx:1.25-alpine

# 清掉 nginx 默认页面，放入前端静态文件
RUN rm -rf /usr/share/nginx/html/*
COPY dist/ /usr/share/nginx/html/

# 如需后端 API 代理或 SPA history 路由回退（可选，同目录放 nginx.conf 即可）
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
