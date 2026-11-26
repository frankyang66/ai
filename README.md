# 交大知道（SJTUKnow）

本仓库提供「交大知道」最小运行包。完整源码、样例数据和封面图片打包在 [SJTUKnow-source.zip](./SJTUKnow-source.zip) 中。

## 本地运行

1. 下载并解压 `SJTUKnow-source.zip`。
2. 安装 Node.js 22.12 或更新的 LTS 版本。
3. 在解压出的 `SJTUKnow` 目录运行：

```sh
npm ci --no-audit --no-fund
npm run dev -- --hostname 127.0.0.1 --port 3000
```

4. 打开 <http://127.0.0.1:3000/>。

项目包含随包数据，可直接浏览和搜索。AI 搜索和刷新来源需要联网，并可在网页的「来源管理」里填写自己的 DeepSeek API Key；不要把 API Key 提交到仓库。

## Render 部署

仓库包含 `Dockerfile` 和 `render.yaml`。在 Render 选择 **New → Blueprint** 并连接本仓库，即可按免费计划创建 Web Service。Render 会构建 Docker 镜像并启动 Next.js 应用。

免费服务闲置 15 分钟后会休眠，首次访问需等待唤醒；服务文件系统是临时的，刷新数据或新增来源等写入会在服务重启或重新部署后丢失。需要持续运行或持久保存写入时，应升级服务或接入持久化存储。
