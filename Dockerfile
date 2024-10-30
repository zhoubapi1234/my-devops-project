# 使用官方Python运行时作为父镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制当前目录下的所有文件到容器的/app目录
COPY . .

# 安装Flask
RUN pip install Flask

# 使容器在5000端口运行
EXPOSE 5000

# 定义运行容器时的默认命令
CMD ["python", "app.py"]
