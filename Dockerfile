# 使用支持 ??= 操作符的 Node.js 版本
FROM node:16

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json (如果存在)
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 设置容器启动时执行的命令
CMD [ "node", "seed.js" ]
