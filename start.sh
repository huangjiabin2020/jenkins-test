echo `pwd`
cd ./target
pid=$(ps -ef | grep "app" | grep -v grep | awk '{print $2}')
echo $pid
if [ -n $pid ];then
 echo "Java进程存在 准备杀死进程pid:$pid"
 kill -9 $pid
 echo "杀死完毕"
else
 echo "Java进程不存在"
fi
nohup java -jar app.jar >./log 2>&1 &