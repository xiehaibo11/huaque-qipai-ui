文档宗旨：skill 解析UI布局生图方案思路，对接图标延展方式1：垫1张做好的图标+选好的纯色ico(没有也可以用提示词直接描述),  关键词"根据图一的风格样式设计延展xxx"
图标延展方式2：参考图拿到codex直接分析反推中文AI绘画提示词，然后修改关键字即可，生图之前需要给我修改提示词

## 在新电脑上获取项目

本仓库使用 Git LFS 保存 ZIP 和 PSD 大文件。首次使用前请安装 Git LFS，然后执行：

```sh
git lfs install
git clone https://github.com/xiehaibo11/huaque-qipai-ui.git
cd huaque-qipai-ui
```

克隆完成后，包括 `棋牌游戏平台-花雀.psd` 在内的所有 PSD、PNG、字体和原始 ZIP 都会直接出现在工作目录中。

`restore-large-files.sh` 和 `.lfs-parts` 保留为大型 PSD 的备用无损恢复方式，正常克隆时不需要手动执行。

---

## 仓库导航（南北娱乐全平台）

| 端 | 仓库地址 |
| --- | --- |
| 后端（Spring Boot / Java 21 / PostgreSQL） | https://github.com/xiehaibo11/huaque-qipai-backend |
| 前端官网（Vue 3 / TypeScript / Vite） | https://github.com/xiehaibo11/huaque-qipai-frontend |
| 安卓客户端（Android，架构对齐浙江游戏大厅） | https://github.com/xiehaibo11/huaque-qipai-android |
| UI 设计源（PSD 源文件 / 生图方案，Git LFS） | https://github.com/xiehaibo11/huaque-qipai-ui |
| 浙江游戏大厅逆向资料（原版设计证据） | https://github.com/xiehaibo11/zhejiang-game-hall |

克隆任意一端后，按上表地址补齐其余仓库即可组成完整工作区；各仓库均为私有仓库，需要账号 xiehaibo11 授权访问。
