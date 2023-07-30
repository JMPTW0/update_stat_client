#!/bin/bash

# 定义待替换的旧域名和新域名
old_domain="https://tz.up.railway.app"
new_domain="https://tz.eva01.cn"

# 替换第十行中的旧域名为新域名
sed -i "10s#$old_domain#$new_domain#" /etc/systemd/system/stat_client.service

# 重新加载systemd配置
systemctl daemon-reload

# 重启stat_client服务
systemctl restart stat_client

echo "修改成功！"
