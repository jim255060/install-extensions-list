#!/bin/bash

# 檢查 VS Code 是否已安裝
if ! command -v code &> /dev/null
then
    echo "VS Code 未安裝，請先安裝 VS Code。"
    exit
fi

# 讀取擴展模組並逐一安裝
while read extension; do
    echo "正在安裝擴展模組：$extension"
    code --install-extension $extension
done < extensions-list.txt

echo "所有擴展模組安裝完成！"