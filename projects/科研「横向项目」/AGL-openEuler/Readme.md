- 轻量中间件层已建立： `meta-vehicle-mw`
  - 层配置： `layer.conf`
  - 配方已迁移到该层：
    - `vsomeip_git.bb` 依赖Boost，CMake构建
    - `fastcdr_git.bb` eProsima Fast-CDR
    - `fastdds_git.bb` eProsima Fast DDS，启用示例构建
    - Demo与示例：
      - `vehicle-mw-demo.bb`
      - `vsomeip.json`
      - `vsomeip-service.cpp`
      - `vsomeip-client.cpp`
      - `fastdds-pub.cpp`
      - `fastdds-sub.cpp`
      - `demo-run.sh`
- 层已加入构建： `bblayers.conf` ，目前为简洁验证环境，包含 Poky 的 meta 和 meta-poky、meta-openembedded 若干子层及 meta-vehicle-mw。
- 镜像包含项：已将 vsomeip、fastdds、fastcdr 与 vehicle-mw-demo 添加到镜像安装列表，镜像目标为 core-image-minimal（简单、利于快速验证）：
  - `local.conf` 中的 IMAGE_INSTALL 已包含 “packagegroup-core-buildessential vsomeip fastdds fastcdr vehicle-mw-demo”。
    当前需要解决的两类问题（已定位并准备修复）

1. 1.
   SRCPV/AUTOREV导致的网络拉取失败

- fastcdr_git.bb 使用了 AUTOREV，解析时需要访问 GitHub 以确定最新提交，但目前出现了 HTTP2 framing 层错误，导致 ls-remote 失败。解决策略：
  - 先把 fastcdr/fastdds/vsomeip 的 SRCREV 固定为稳定的提交（替代 AUTOREV），确保离线/弱网也可构建。
  - 必要时切换到镜像源或添加 PREMIRRORS/MIRRORS，后续再恢复 AUTOREV。
