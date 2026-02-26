echo "选择html活动"
echo "安装并启动  回车"
echo "只安装         1"
echo "启动           2"
echo "更新index      3"
echo "生成简易后台   4"
echo "项目库地址https://github.com/CN-ZX114514/Mobile-phone-steps-HTML"
read -p "" html
if [ -z "$html" ]; then
    echo "正在安装"
    pkg install nginx
    echo "启动中"
    nginx
    echo "启动成功"
elif [ "$html" = "1" ]; then
    echo "正在安装"
    pkg install nginx
    echo "安装完成"
elif [ "$html" = "2" ]; then
    echo "启动中"
    cd /data/data/com.termux/files/usr/share/nginx/html
    nginx
    echo "启动成功"
elif [ "$html" = "3" ]; then
    echo "更新中"
    cp ~/storage/shared/Download/index.html /data/data/com.termux/files/usr/share/nginx/html/
    nginx -s reload
    echo "更新成功"
elif [ "$html" = "4" ]; then
    cd /storage/emulated/0/Download
    touch hello.html
    echo "<!DOCTYPE html>" > hello.html
    echo "<html lang="zh-CN">" > hello.html
    echo "<head>" > hello.html
    echo "<meta charset="UTF-8">" > hello.html
    echo "<meta name="viewport" content="width=device-width, initial-scale=1.0">" > hello.html
    echo "<title>我的个人网站 - 演示</title" > hello.html
    echo "<style>" > hello.html
    echo "body {" > hello.html
    echo "" > hello.html
    cp ~/storage/shared/Download/hello.html /data/data/com.termux/files/usr/share/nginx/html/
    echo "成功 访问127.0.0.1:8080/hello.html"
fi
