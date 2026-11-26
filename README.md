# 交大知道（SJTUKnow）

本仓库提供「交大知道」最小运行包。完整源码、样例数据和封面图片打包在 [`SJTUKnow-source.zip`](./SJTUKnow-source.zip) 中。

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

## 部署说明

这是 Next.js 应用。GitHub 仓库用于保存和分发源码包；要让网站在线访问，需要部署到支持 Node.js 的托管服务。GitHub Pages 不运行 Next.js 服务端应用。
