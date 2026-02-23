#!/bin/sh
set -e

export MARCH7TH_CLOUD_GAME_ENABLE=true
export MARCH7TH_BROWSER_HEADLESS_ENABLE=true
export MARCH7TH_BROWSER_HEADLESS_RESTART_ON_NOT_LOGGED_IN=false
# 默认使用官方源下载浏览器；如果下载缓慢，可以改为 true 启用镜像下载
export MARCH7TH_BROWSER_DOWNLOAD_USE_MIRROR=true
# 任务完成后循环执行
export MARCH7TH_AFTER_FINISH=Loop
# 标记从 Docker 启动，避免控制台阻塞
export MARCH7TH_DOCKER_STARTED=true


export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1


python main.py 