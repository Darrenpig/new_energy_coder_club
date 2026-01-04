# new-here 快速开始

## 克隆
```
git clone --depth 1 --branch new-here https://gitee.com/darrenpig/new_energy_coder_club.git
cd new_energy_coder_club
```

## Windows
```
pwsh -File .\install.ps1 -PlanOnly
pwsh -File .\install.ps1 -Ids screentogif -NonInteractive
```

## Linux/WSL
```
bash install.sh
TOOLS_FILE=tools/tools.yaml IDS=screentogif NON_INTERACTIVE=true bash install.sh
```

## 校验
```
bash scripts/verify.sh
```
