#!/bin/bash

虽然真实；做
清除

echo -e "bluedell"
echo "
echo "
回声“”
echo -e "\033[bluedell一键脚本工具 v1 （支持Ubuntu，Debian，Centos系统）\033[0m"
回声“------------------------”
echo "1.系统信息查询"
echo "2.系统更新"
echo "3.系统清理"
echo "4.常用工具▶"
echo "5.BBR管理▶"
echo "6. Docker管理 ▶ "
echo "7. WARP 管理 ▶ 解锁ChatGPT Netflix"
echo "8. 测试脚本合集 ▶ "
echo "9.甲骨文云脚本合集 ▶ "
echo -e "\033[33m10.LDNMP建站 ▶ \033[0m"
echo "11.常用面板工具 ▶ "
echo "12.我的工作区 ▶ "
echo "13.系统工具 ▶ "
回声“------------------------”
echo "00. 脚本描述日志"
回声“------------------------”
echo "0.退出脚本"
回声“------------------------”
read -p "请输入你的选择: " choice

案例$选择
  1）
    清除
    # 函数: 获取IPv4和IPv6地址
    fetch_ip_addresses() {
      ipv4_地址=$(curl -s ipv4.ip.sb)
      # ipv6_地址=$(curl -s ipv6.ip.sb)
      ipv6_address=$(curl -s --max-time 2 ipv6.ip.sb)

    }

    # 获取IP地址
    获取 IP 地址

    if [ "$(uname -m)" == "x86_64" ]; 然后
      cpu_info=$(cat /proc/cpuinfo | grep '型号名称' | uniq | sed -e 's/型号名称[[:space:]]*: //')
    别的
      cpu_info=$(lscpu | grep '型号名称' | sed -e 's/型号名称[[:space:]]*: //')
    菲

    cpu_usage=$(top -bn1 | grep 'CPU' | awk '{print $2 + $4}')
    cpu_usage_percent=$(printf "%.2f" "$cpu_usage")%

    cpu_cores=$(nproc)

    mem_info=$(free -b | awk 'NR==2{printf "%.2f/%.2f MB (%.2f%%)", $3/1024/1024, $2/1024/1024, $3*100/ $2}')

    disk_info=$(df -h | awk '$NF=="/"{printf "%d/%dGB (%s)", $3,$2,$5}')

    国家=$(curl -s ipinfo.io/国家)
    城市=$(curl -s ipinfo.io/city)

    isp_info=$(curl -s ipinfo.io/org)

    cpu_arch=$(uname -m)

    主机名=$(主机名)

    内核版本=$(uname -r)

    拥塞算法=$(sysctl -n net.ipv4.tcp_congestion_control)
    queue_algorithm=$(sysctl -n net.core.default_qdisc)

    # 尝试使用 lsb_release 获取系统信息
    os_info=$(lsb_release -ds 2>/dev/null)

    # 如果lsb_release命令失败，则尝试其他方法
    如果[-z“$os_info”]; 然后
      #查看常见的发行文件
      如果[-f“/etc/os-release”]; 然后
        os_info=$(源 /etc/os-release && echo "$PRETTY_NAME")
      elif [ -f "/etc/debian_version" ]; 然后
        os_info="Debian $(cat /etc/debian_version)"
      elif [ -f "/etc/redhat-release" ]; 然后
        os_info=$(cat /etc/redhat-release)
      别的
        os_info="未知"
      菲
    菲

    清除
    输出=$(awk '开始{ rx_total = 0; tx_total = 0 }
        NR > 2 { rx_total += $2; tx_total += $10 }
        结尾 {
            rx_units = "字节";
            tx_units = "字节";
            如果 (rx_total > 1024) { rx_total /= 1024; rx_units =“KB”；}
            如果 (rx_total > 1024) { rx_total /= 1024; rx_units =“MB”；}
            如果 (rx_total > 1024) { rx_total /= 1024; rx_units = “GB”; }

            如果 (tx_total > 1024) { tx_total /= 1024; tx_units = "KB"; }
            如果 (tx_total > 1024) { tx_total /= 1024; tx_units = "MB"; }
            如果 (tx_total > 1024) { tx_total /= 1024; tx_units = “GB”; }

            printf("总接收: %.2f %s\n总发送: %.2f %s\n", rx_total, rx_units, tx_total, tx_units);
        }'/proc/net/dev)


    current_time=$(日期“+%Y-%m-%d %I:%M %p”)


    swap_used=$(free -m | awk 'NR==3{print $3}')
    swap_total=$(free -m | awk 'NR==3{print $2}')

    如果[“$swap_total”-eq 0]; 然后
        交换百分比=0
    别的
        swap_percentage=$((swap_used * 100 / swap_total))
    菲

    swap_info="${swap_used}MB/${swap_total}MB (${swap_percentage}%)"

    运行时=$(cat /proc/uptime | awk -F.'{run_days=int($1 / 86400);run_hours=int(($1 % 86400) / 3600);run_minutes=int(($1 % 3600) / 60) ; if (run_days > 0) printf("%d天 ", run_days); if (run_hours > 0) printf("%d时 ", run_hours); printf("%d分\n", run_minutes)}')

    回声“”
    echo "系统信息查询"
    回声“------------------------”
    echo "主机名: $主机名"
    echo "运营商: $isp_info"
    回声“------------------------”
    echo "系统版本: $os_info"
    echo "Linux 版本: $kernel_version"
    回声“------------------------”
    echo "CPU架构: $cpu_arch"
    echo "CPU型号: $cpu_info"
    echo "CPU核心数: $cpu_cores"
    回声“------------------------”
    echo "CPU占用: $cpu_usage_percent"
    echo "物理内存: $mem_info"
    echo "虚拟内存: $swap_info"
    echo "硬盘占用: $disk_info"
    回声“------------------------”
    回显“$输出”
    回声“------------------------”
    echo "网络拥塞算法: $congestion_algorithm $queue_algorithm"
    回声“------------------------”
    echo "公网IPv4地址: $ipv4_address"
    echo "公网IPv6地址: $ipv6_address"
    回声“------------------------”
    echo "断层: $country $city"
    echo "系统时间: $current_time"
    回声“------------------------”
    echo "系统运行时长: $runtime"
    回声

    ;;

  2）
    清除

    # 在基于 Debian 的系统上更新系统
    如果[-f“/etc/debian_version”]; 然后
        DEBIAN_FRONTEND=非交互式 apt update -y && DEBIAN_FRONTEND=非交互式 apt full-upgrade -y
    菲

    # 在基于 Red Hat 的系统上更新系统
    如果[-f“/etc/redhat-release”]; 然后
        yum -y 更新
    菲

    ;;

  3）
  清除

  如果[-f“/etc/debian_version”]; 然后
      # 基于 Debian 的系统
      apt 自动删除 --purge -y
      易于清洁-y
      apt自动清洁-y
      apt 删除 --purge $(dpkg -l | awk '/^rc/ {print $2}') -y
      Journalctl——旋转
      Journalctl --vacuum-time=1s
      Journalctl --vacuum-size=50M
      apt 删除 --purge $(dpkg -l | awk '/^ii linux-(image|headers)-[^ ]+/{print $2}' | grep -v $(uname -r | sed 's/-. *//') | xargs) -y
  elif [ -f "/etc/redhat-release" ]; 然后
      # 基于 Red Hat 的系统
      百胜自动删除-y
      百胜干净所有
      Journalctl——旋转
      Journalctl --vacuum-time=1s
      Journalctl --vacuum-size=50M
      yum 删除 $(rpm -q 内核 | grep -v $(uname -r)) -y
  菲
    ;;

  4）
  虽然真实；做
      回显“▼”
      echo“安装常用工具”
      回声“------------------------”
      echo "1.curl 下载工具"
      echo "2. wget 下载工具"
      echo "3. sudo 超级管理权限工具"
      echo "4. socat 通信连接工具 （申请域名证书必备）"
      echo "5. htop系统监控工具"
      echo "6. iftop 网络流量监控工具"
      echo "7.unzip ZIP压缩解压工具z"
      echo "8.tar GZ压缩解压工具"
      echo "9.tmux多路后台运行工具"
      echo "10.ffmpeg 视频编码直播推流工具"
      回声“------------------------”
      echo "31.全部安装"
      echo "32.全部卸载"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y curl
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装curl
              别的
                  echo“未知的包管理器！”
              菲

              ;;
          2）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y wget
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 wget
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            3）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y sudo
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 sudo
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            4）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y socat
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 socat
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            5）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y htop
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 htop
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            6）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y iftop
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 iftop
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            7）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y 解压
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装解压
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            8）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y tar
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 tar
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            9）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y tmux
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 tmux
              别的
                  echo“未知的包管理器！”
              菲
              ;;
            10）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y ffmpeg
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 ffmpeg
              别的
                  echo“未知的包管理器！”
              菲
              ;;


          31）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y curl wget sudo socat htop iftop 解压 tar tmux ffmpeg
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 curl wget sudo socat htop iftop 解压 tar tmux ffmpeg
              别的
                  echo“未知的包管理器！”
              菲
              ;;

          32）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt 删除 -y htop iftop 解压缩 tmux ffmpeg
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 删除 htop iftop 解压缩 tmux ffmpeg
              别的
                  echo“未知的包管理器！”
              菲
              ;;

          0）
              光盘~
              ./kejilion.sh
              出口
              ;;

          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
  完毕

    ;;

  5）
    清除
    # 检查并安装wget（如果需要）
    如果 ！命令 -v wget &>/dev/null; 然后
        if 命令 -v apt &>/dev/null; 然后
            apt update -y && apt install -y wget
        elif 命令 -v yum &>/dev/null; 然后
            yum -y 更新 && yum -y 安装 wget
        别的
            echo“未知的包管理器！”
            1号出口
        菲
    菲
    wget --no-check-certificate -O tcpx.sh https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcpx.sh
    chmod +x tcpx.sh
    ./tcpx.sh
    ;;

  6）
    虽然真实；做
      回显“▼”
      echo“Docker管理器”
      回声“------------------------”
      echo "1.安装更新Docker环境"
      回声“------------------------”
      echo "2.查看Dcoker全局状态"
      回声“------------------------”
      echo "3.Dcok​​er容器管理▶"
      echo "4.Dcok​​er镜像管理▶"
      echo "5.Dcok​​er网络管理▶"
      echo "6.Dcok​​er卷管理▶"
      回声“------------------------”
      echo "7.清理无用的docker容器和镜像网络数据卷"
      回声“------------------------”
      echo "8.卸载Dcoker环境"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
              清除
              卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
              systemctl启动docker
              systemctl 启用 docker
              ;;
          2）
              清除
              echo "Dcoker版本"
              docker --版本
              docker-compose --版本
              回声“”
              echo "Dcoker镜像列表"
              docker 镜像 ls
              回声“”
              echo "Dcoker容器列表"
              docker ps -a
              回声“”
              echo "Dcoker卷列表"
              docker 卷 ls
              回声“”
              echo "Dcoker网络列表"
              docker 网络 ls
              回声“”

              ;;
          3）
              虽然真实；做
                  清除
                  echo "Docker容器列表"
                  docker ps -a
                  回声“”
                  echo "容器操作"
                  回声“------------------------”
                  echo "1.创建新的容器"
                  回声“------------------------”
                  echo "2.启动指定容器 6.启动所有容器"
                  echo "3.停止指定容器 7.暂停所有容器"
                  echo "4.删除指定容器 8.删除所有容器"
                  echo "5. 重新启动指定容器 9. 重新启动所有容器"
                  回声“------------------------”
                  echo "11.进入指定集装箱 12.查看集装箱日志 13.查看集装箱网络"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                          read -p "请输入创建命令: " dockername
                          $dockername
                          ;;

                      2）
                          read -p "请输入容器名: " dockername
                          docker 启动 $dockername
                          ;;
                      3）
                          read -p "请输入容器名: " dockername
                          docker 停止 $dockername
                          ;;
                      4）
                          read -p "请输入容器名: " dockername
                          docker rm -f $dockername
                          ;;
                      5）
                          read -p "请输入容器名: " dockername
                          docker 重新启动 $dockername
                          ;;
                      6）
                          docker 启动 $(docker ps -a -q)
                          ;;
                      7）
                          docker 停止 $(docker ps -q)
                          ;;
                      8）
                          read -p "确定删除所有集装箱吗？(Y/N): " choice
                          案例“$choice”
                            [是]）
                              docker rm -f $(docker ps -a -q)
                              ;;
                            [NN])
                              ;;
                            *)
                              echo "无效的选择，请输入 Y 或 N。"
                              ;;
                          埃萨克
                          ;;
                      9）
                          docker 重新启动 $(docker ps -q)
                          ;;
                      11）
                          read -p "请输入容器名: " dockername
                          docker exec -it $dockername /bin/bash
                          echo -e "\033[0;32m操作完成\033[0m"
                          echo "按任意键继续..."
                          读取-n 1 -s -r -p“”
                          回声“”
                          清除
                          ;;
                      12）
                          read -p "请输入容器名: " dockername
                          docker 日志 $dockername
                          echo -e "\033[0;32m操作完成\033[0m"
                          echo "按任意键继续..."
                          读取-n 1 -s -r -p“”
                          回声“”
                          清除
                          ;;
                      13）
                          回声“”
                          容器_ids=$(docker ps -q)

                          回声”------------------------------------------------ ------------”
                          printf "%-25s %-25s %-25s\n" "容器名称" "网络名称" "IP地址"

                          对于 $container_ids 中的container_id；做
                              container_info=$(docker inform --format '{{ .Name }}{{ range $network, $config := .NetworkSettings.Networks }} {{ $network }} {{ $config.IPAddress }}{{ end } }'“$container_id”）

                              容器名称=$(echo "$container_info" | awk '{print $1}')
                              network_info=$(echo "$container_info" | cut -d' ' -f2-)

                              而 IFS= 读取 -r 行；做
                                  network_name=$(echo "$line" | awk '{print $1}')
                                  ip_address=$(echo "$line" | awk '{print $2}')

                                  printf "%-20s %-20s %-15s\n" "$container_name" "$network_name" "$ip_address"
                              完成<<<“$network_info”
                          完毕

                          echo -e "\033[0;32m操作完成\033[0m"
                          echo "按任意键继续..."
                          读取-n 1 -s -r -p“”
                          回声“”
                          清除
                          ;;

                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕
              ;;
          4）
              虽然真实；做
                  清除
                  echo "Docker镜像列表"
                  docker 镜像 ls
                  回声“”
                  echo "镜像操作"
                  回声“------------------------”
                  echo "1.获取指定镜像 3.删除指定镜像"
                  echo "2.更新指定镜像 4.删除所有镜像"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                          read -p "请输入镜像名: " dockername
                          docker 拉 $dockername
                          ;;
                      2）
                          read -p "请输入镜像名: " dockername
                          docker 拉 $dockername
                          ;;
                      3）
                          read -p "请输入镜像名: " dockername
                          docker rmi -f $dockername
                          ;;
                      4）
                          read -p "确定删除所有镜像吗？(Y/N): " choice
                          案例“$choice”
                            [是]）
                              docker rmi -f $(docker images -q)
                              ;;
                            [NN])

                              ;;
                            *)
                              echo "无效的选择，请输入 Y 或 N。"
                              ;;
                          埃萨克
                          ;;
                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕
              ;;

          5）
              虽然真实；做
                  清除
                  echo "Docker网络列表"
                  回声”------------------------------------------------ ------------”
                  docker 网络 ls
                  回声“”

                  回声”------------------------------------------------ ------------”
                  容器_ids=$(docker ps -q)
                  printf "%-25s %-25s %-25s\n" "容器名称" "网络名称" "IP地址"

                  对于 $container_ids 中的container_id；做
                      container_info=$(docker inform --format '{{ .Name }}{{ range $network, $config := .NetworkSettings.Networks }} {{ $network }} {{ $config.IPAddress }}{{ end } }'“$container_id”）

                      容器名称=$(echo "$container_info" | awk '{print $1}')
                      network_info=$(echo "$container_info" | cut -d' ' -f2-)

                      而 IFS= 读取 -r 行；做
                          network_name=$(echo "$line" | awk '{print $1}')
                          ip_address=$(echo "$line" | awk '{print $2}')

                          printf "%-20s %-20s %-15s\n" "$container_name" "$network_name" "$ip_address"
                      完成<<<“$network_info”
                  完毕

                  回声“”
                  echo "网络操作"
                  回声“------------------------”
                  echo "1.创建网络"
                  echo "2.加入网络"
                  echo "3.退出网络"
                  echo "4.删除网络"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                          read -p "设置新网络名: " dockernetwork
                          docker网络创建$dockernetwork
                          ;;
                      2）
                          read -p "加入网络名: " dockernetwork
                          read -p "那些容器加入该网络: " dockername
                          docker 网络连接 $dockernetwork $dockername
                          回声“”
                          ;;
                      3）
                          read -p "退出网络名: " dockernetwork
                          read -p "那些容器退出该网络: " dockername
                          docker 网络断开 $dockernetwork $dockername
                          回声“”
                          ;;

                      4）
                          read -p "请输入要删除的网络名: " dockernetwork
                          docker 网络 rm $dockernetwork
                          ;;
                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕
              ;;

          6）
              虽然真实；做
                  清除
                  echo "Docker卷列表"
                  docker 卷 ls
                  回声“”
                  echo "卷操作"
                  回声“------------------------”
                  echo "1.创建新卷"
                  echo "2.删除卷"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                          read -p "设置新卷名: " dockerjuan
                          docker 卷创建 $dockerjuan

                          ;;
                      2）
                          read -p "输入删除卷名: " dockerjuan
                          docker 卷 rm $dockerjuan

                          ;;
                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕
              ;;
          7）
              清除
              read -p "确定清理无用的镜像容器网络吗？(Y/N): " choice
              案例“$choice”
                [是]）
                  docker 系统 prune -af --volumes
                  ;;
                [NN])
                  ;;
                *)
                  echo "无效的选择，请输入 Y 或 N。"
                  ;;
              埃萨克
              ;;
          8）
              清除
              read -p "确定docker卸载环境吗？(Y/N): " choice
              案例“$choice”
                [是]）
                  docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker 网络修剪
                  apt-get 删除 docker -y
                  apt-get 删除 docker-ce -y
                  apt-get purge docker-ce -y
                  rm -rf /var/lib/docker
                  ;;
                [NN])
                  ;;
                *)
                  echo "无效的选择，请输入 Y 或 N。"
                  ;;
              埃萨克
              ;;
          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除

    完毕

    ;;


  7）
    清除
    # 检查并安装wget（如果需要）
    如果 ！命令 -v wget &>/dev/null; 然后
        if 命令 -v apt &>/dev/null; 然后
            apt update -y && apt install -y wget
        elif 命令 -v yum &>/dev/null; 然后
            yum -y 更新 && yum -y 安装 wget
        别的
            echo“未知的包管理器！”
            1号出口
        菲
    菲
    # wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh [选项] [lisence]
    wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh [选项] [lisence/url/token]
    ;;

  8）
    虽然真实；做

      回显“▼”
      echo 《测试脚本合集》
      回声“------------------------”
      echo "1.ChatGPT解锁状态检测"
      echo "2.区域流媒体解锁测试"
      echo "3.yewu流媒体解锁检测"
      echo "4. besttrace三网回程延迟路由测试"
      echo "5. mtr_trace三网回程线路测试"
      echo "6.超速三网测速"
      echo "7. yabs性能带宽测试"
      echo "8.台架性能测试"
      回声“------------------------”
      echo -e "9.spireysdx融合怪评测\033[33mNEW\033[0m"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
              清除
              bash <(curl -Ls https://cdn.jsdelivr.net/gh/missuo/OpenAI-Checker/openai.sh)
              ;;
          2）
              清除
              bash <(curl -L -s check.unlock.media)
              ;;
          3）
              清除
              wget -qO- https://github.com/yeahwu/check/raw/main/check.sh | 巴什
              ;;
          4）
              清除
              wget -qO- git.io/besttrace | wget -qO- git.io/besttrace | 巴什
              ;;
          5）
              清除
              卷曲 https://raw.githubusercontent.com/zhucaidan/mtr_trace/main/mtr_trace.sh | 巴什
              ;;
          6）
              清除
              bash <(curl -Lso- https://git.io/superspeed_uxh)
              ;;
          7）
              清除
              卷曲 -sL yabs.sh | bash -s -- -i -5
              ;;
          8）
              清除
              卷曲-Lso- bench.sh | 巴什
              echo "按任意键继续..."
              读取-n 1 -s -r -p“”
              ;;
          9）
              清除
              卷曲 -L https://gitlab.com/spiritysdx/za/-/raw/main/ecs.sh -o ecs.sh && chmod +x ecs.sh && bash ecs.sh
              ;;
          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
    完毕
    ;;

  9）
     虽然真实；做
      回显“▼”
      echo 《甲骨文云脚本合集》
      回声“------------------------”
      echo "1.安装闲置机器激活脚本"
      echo "2.卸载闲置机器激活脚本"
      回声“------------------------”
      echo "3. DD重装系统脚本"
      echo "4. R探长启动脚本"
      回声“------------------------”
      echo "5.开启ROOT密码登录模式"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
              清除
              echo "激活脚本: CPU占用10-20% 内存占用15% "
              read -p "确定安装吗？(Y/N): " choice
              案例“$choice”
                [是]）

                  # 检查是否安装Docker（如果需要）
                  如果 ！命令-v docker &>/dev/null; 然后
                      卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                      systemctl启动docker
                      systemctl 启用 docker
                  别的
                      echo "Docker 已经安装，正在配置容器……"
                  菲

                  docker run -itd --name=lookbusy --restart=always \
                          -e TZ=亚洲/上海 \
                          -e CPU_UTIL=10-20 \
                          -e CPU_CORE=1 \
                          -e MEM_UTIL=15 \
                          -e SPEEDTEST_INTERVAL=120 \
                          雾森林/lookbusy
                  ;;
                [NN])

                  ;;
                *)
                  echo "无效的选择，请输入 Y 或 N。"
                  ;;
              埃萨克
              ;;
          2）
              清除
              docker rm -f 看起来很忙
              docker rmi 雾森林/lookbusy
              ;;

          3）
          清除
          echo "请备份数据，以便您重装系统，预计耗时 15 分钟。"
          read -p "确定继续吗？(Y/N): " choice

          案例“$choice”
            [是]）
              虽然真实；做
                read -p "请选择要重装的系统: 1. Debian12 | 2. Ubuntu20.04 : " sys_choice

                案例“$sys_choice”
                  1）
                    西通=“-d 12”
                    break # 结束循环
                    ;;
                  2）
                    xitong="-u 20.04"
                    break # 结束循环
                    ;;
                  *)
                    echo "无效的选择，请重新输入。"
                    ;;
                埃萨克
              完毕

              read -p "请输入你重装后的密码: " vpspasswd
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y wget
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 wget
              别的
                  echo“未知的包管理器！”
              菲
              bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') $xitong -v 64 -p $vpspasswd -port 22
              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
              ;;

          4）
              清除
              echo "该功能开发重点，孩子期待！"
              ;;
          5）
              清除
              echo "设置你的ROOT密码"
              密码
              sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config;
              sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
              服务 sshd 重新启动
              echo "ROOT登录设置完毕！"
              read -p "需要重启服务器吗？(Y/N): " 选择
          案例“$choice”
            [是]）
              重启
              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
              ;;
          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
    完毕
    ;;


  10）

  虽然真实；做
    echo -e "\033[33m ▼ \033[0m"
    echo -e "\033[33mLDNMP建站\033[0m"
    回声“------------------------”
    echo "1.安装LDNMP环境"
    回声“------------------------”
    echo "2.安装WordPress"
    echo "3.安装Discuz论坛"
    echo "4.安装可道云桌面"
    echo "5.安装苹果CMS网站"
    echo "6.安装独角数发卡网"
    echo "7.安装BingChatAI聊天网站"
    echo "8.安装flarum论坛网站"
    echo "9.安装Bitwarden密码管理平台"
    echo "10.安装Halo博客网站"
    echo "11.安装typecho轻量博客网站"
    回声“------------------------”
    echo "21.站点重定向"
    echo "22. 站点反向代理"
    回声“------------------------”
    echo "31.站点数据管理"
    echo "32.备份全站数据"
    echo "33.定时远程备份"
    echo "34.还原全站数据"
    回声“------------------------”
    echo "35.站点防御程序"
    回声“------------------------”
    echo -e "36.优化LDNMP环境\033[33mNEW\033[0m"
    echo "37.更新LDNMP环境"
    echo "38.卸载LDNMP环境"
    回声“------------------------”
    echo "0.返回主菜单"
    回声“------------------------”
    read -p "请输入你的选择: " sub_choice


    案例 $sub_choice 中
      1）
      清除

      # 更新并必要安装的种子
      if 命令 -v apt &>/dev/null; 然后
          DEBIAN_FRONTEND=非交互式 apt update -y
          DEBIAN_FRONTEND=非交互式 apt 完全升级 -y
          apt install -y curl wget sudo socat 解压缩 tar htop
      elif 命令 -v yum &>/dev/null; 然后
          yum -y update && yum -y install curl wget sudo socat unzip tar htop
      别的
          echo“未知的包管理器！”
      菲

      # 检查是否安装Docker（如果需要）
      如果 ！命令-v docker &>/dev/null; 然后
          卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
          systemctl启动docker
          systemctl 启用 docker
      别的
          echo "Docker 已经安装"
      菲

      #创建必要的目录和文件
      cd /home && mkdir -p web/html web/mysql web/certs web/conf.d web/redis web/log/nginx && touch web/docker-compose.yml

      wget -O /home/web/nginx.conf https://raw.githubusercontent.com/kejilion/nginx/main/nginx10.conf
      wget -O /home/web/conf.d/default.conf https://raw.githubusercontent.com/kejilion/nginx/main/default10.conf
      localhostIP=$(curl -s ipv4.ip.sb)
      sed -i "s/localhost/$localhostIP/g" /home/web/conf.d/default.conf

      # 下载 docker-compose.yml 文件并进行替换
      wget -O /home/web/docker-compose.yml https://raw.githubusercontent.com/kejilion/docker/main/LNMP-docker-compose-10.yml

      dbrootpasswd=$(openssl rand -base64 16) && dbuse=$(openssl rand -hex 4) && dbusepasswd=$(openssl rand -base64 8)

      # 在 docker-compose.yml 文件中进行替换
      sed -i "s/webroot/$dbrootpasswd/g" /home/web/docker-compose.yml
      sed -i "s/kejilionYYDS/$dbusepasswd/g" /home/web/docker-compose.yml
      sed -i "s/kejilion/$dbuse/g" /home/web/docker-compose.yml

      如果 ！命令 -v iptables &> /dev/null; 然后
      回声“”
      别的
          # iptables命令
          iptables -P 输入接受
          iptables -P 转发接受
          iptables -P 输出接受
          iptables-F
      菲

      cd /home/web && docker-compose up -d


      清除
      echo "正在配置LDNMP环境，请耐心等待……"

      # 定义要执行的命令
      命令=（
          “docker exec php apt update > /dev/null 2>&1”
          “docker exec php apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php docker-php-ext-install mysqli pdo_mysql zip exif gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php pecl 安装 redis > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

          “docker exec php74 apt update > /dev/null 2>&1”
          “docker exec php74 apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php74 docker-php-ext-install mysqli pdo_mysql zip gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php74 pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php74 pecl 安装 redis > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php74 sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

      ）

      Total_commands=${#commands[@]} # 计算总命令数

      for ((i = 0; i < 总命令数; i++)); 做
          命令=“${命令[i]}”
          eval $command # 执行命令

          # 打印百分比和详细条
          百分比=$(( (i + 1) * 100 / 总命令数 ))
          已完成=$((百分比/2))
          剩余=$((50 - 已完成))
          进度条=“[”
          for ((j = 0; j < 已完成; j++)); 做
              进度条+=“#”
          完毕
          for ((j = 0; j < 剩余; j++)); 做
              进度条+=“。”
          完毕
          进度条+=“]”
          echo -ne "\r[$percentage%] $progressBar"
      完毕

      echo #打印换行，方便输出不被覆盖


      清除
      echo "LDNMP环境安装完毕"
      回声“------------------------”

      # 获取nginx版本
      nginx_version=$(docker exec nginx nginx -v 2>&1)
      nginx_version=$(echo "$nginx_version" | grep -oP "nginx/\K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n "nginx : v$nginx_version"

      # 获取mysql版本
      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      mysql_version=$(docker exec mysql mysql -u root -p"$dbrootpasswd" -e "选择版本();" 2>/dev/null | tail -n 1)
      echo -n“mysql：v$mysql_version”

      # 获取php版本
      php_version=$(docker exec php php -v 2>/dev/null | grep -oP "PHP \K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n " php : v$php_version"

      # 获取redis版本
      redis_version=$(docker exec redis redis-server -v 2>&1 | grep -oP "v=+\K[0-9]+\.[0-9]+")
      echo“redis：v$redis_version”

      回声“------------------------”
      回声“”

        ;;
      2）
      清除
      #wordpress
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/wordpress.com.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget -Olatest.zip https://cn.wordpress.org/latest-zh_CN.zip
      解压最新版本.zip
      rm 最新版本.zip

      回声“定义（'FS_METHOD'，'直接'）;定义（'WP_REDIS_HOST'，'redis'）;定义（'WP_REDIS_PORT'，'6379'）;” >> /home/web/html/$yuming/wordpress/wp-config-sample.php

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx

      清除
      echo "你的WordPress搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "WP安装信息如下："
      echo "数据库名: $dbname"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "数据库主机: mysql"
      echo "表出口: wp_"

        ;;
      3）
      清除
      #Discuz论坛
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/discuz.com.conf

      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget https://github.com/kejilion/Website_source_code/raw/main/Discuz_X3.5_SC_UTF8_20230520.zip
      解压 -o Discuz_X3.5_SC_UTF8_20230520.zip
      rm Discuz_X3.5_SC_UTF8_20230520.zip

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的Discuz论坛搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库主机: mysql"
      echo "数据库名: $dbname"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "表出口:discuz_"


        ;;

      4）
      清除
      #可道云桌面
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/kdy.com.conf

      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget https://github.com/kalcaddle/kodbox/archive/refs/tags/1.42.04.zip
      解压缩-o 1.42.04.zip
      rm 1.42.04.zip

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的可道云桌面搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库主机: mysql"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "数据库名: $dbname"
      echo "redis主机: redis"
        ;;

      5）
      清除
      #苹果CMS
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/maccms.com.conf

      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget https://github.com/magicblack/maccms_down/raw/master/maccms10.zip && 解压 maccms10.zip && rm maccms10.zip
      cd /home/web/html/$yuming/maccms10-master/template/ && wget https://github.com/kejilion/Website_source_code/raw/main/DYXS2.zip && 解压 DYXS2.zip && rm /home/web/ html/$yuming/maccms10-master/template/DYXS2.zip
      cp /home/web/html/$yuming/maccms10-master/template/DYXS2/asset/admin/Dyxs2.php /home/web/html/$yuming/maccms10-master/application/admin/controller
      cp /home/web/html/$yuming/maccms10-master/template/DYXS2/asset/admin/dycms.html /home/web/html/$yuming/maccms10-master/application/admin/view/system
      mv /home/web/html/$yuming/maccms10-master/admin.php /home/web/html/$yuming/maccms10-master/vip.php && wget -O /home/web/html/$yuming/maccms10 -master/application/extra/maccms.php https://raw.githubusercontent.com/kejilion/Website_source_code/main/maccms.php

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的AppleCMS搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库主机: mysql"
      echo "数据库端口:3306"
      echo "数据库名: $dbname"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "数据库外接: mac_"
      回声“------------------------”
      echo "安装成功后登录后台地址"
      回声“https://$yuming/vip.php”
      回声“”
        ;;

      6）
      清除
      # 独脚数卡
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/dujiaoka.com.conf

      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget https://github.com/assimon/dujiaoka/releases/download/2.0.6/2.0.6-antibody.tar.gz && tar -zxvf 2.0.6-antibody.tar.gz && rm 2.0.6-antibody .tar.gz

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的独角数卡网站搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库主机: mysql"
      echo "数据库端口:3306"
      echo "数据库名: $dbname"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      回声“”
      echo "redis地址：redis"
      echo "redis密码: 默认不填写"
      echo "redis端口: 6379"
      回声“”
      echo "网站网址: https://$yuming"
      echo "后台登录路径: /admin"
      回声“------------------------”
      echo "用户名：admin"
      echo "密码: admin"
      回声“------------------------”
      echo "登录时右上角如果出现红色error0请使用如下命令: "
      echo "我也很生气独角数卡这么麻烦，还有这样的问题！"
      echo "sed -i 's/ADMIN_HTTPS=false/ADMIN_HTTPS=true/g' /home/web/html/$yuming/dujiaoka/.env"
      回声“”
        ;;

      7）
      清除
      # 必应聊天
      read -p "请输入您解析的域名: " yuming

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      docker run -d -p 3099:8080 --name go-proxy-bingai --restart=除非停止 adams549659584/go-proxy-bingai

      # 获取外部IP地址
      external_ip=$(curl -s ipv4.ip.sb)

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/reverse-proxy.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0.0.0.0/$external_ip/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0000/3099/g" /home/web/conf.d/$yuming.conf

      docker 重启 nginx

      清除
      echo "您的BingChat网站搭建好了！"
      echo "https://$yuming"
      回声“”
        ;;

      8）
      清除
      #flarum论坛
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/flarum.com.conf

      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明

      docker exec php sh -c "p​​hp -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\""
      docker exec php sh -c“phpcomposer-setup.php”
      docker exec php sh -c "p​​hp -r \"unlink('composer-setup.php');\""
      docker exec php sh -c "mvcomposer.phar /usr/local/bin/composer"

      docker exec php Composer 创建项目 flarum/flarum /var/www/html/$yuming
      docker exec php sh -c "cd /var/www/html/$yuming && 作曲家需要 flarum-lang/chinese-simplified"
      docker exec php sh -c "cd /var/www/html/$yuming && 作曲家需要 fof/polls"

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的flarum论坛网站搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库主机: mysql"
      echo "数据库名: $dbname"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "表出口: flarum_"
      echo "管理员信息自行设置"
      回声“”
        ;;

      9）
      清除
      # 比特沃登
      read -p "请输入您解析的域名: " yuming

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      docker 运行 -d \
        --名称位管理员\
        --始终重新启动\
        -p 3280:80 \
        -v /home/web/html/$yuming/bitwarden/data:/data \
        保管库管理员/服务器

      # 获取外部IP地址
      external_ip=$(curl -s ipv4.ip.sb)

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/reverse-proxy.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0.0.0.0/$external_ip/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0000/3280/g" /home/web/conf.d/$yuming.conf

      docker 重启 nginx

      清除
      echo "您的Bitwarden网站搭建好了！"
      echo "https://$yuming"
      回声“”
        ;;

      10）
      清除
      # 比特沃登
      read -p "请输入您解析的域名: " yuming

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      docker run -d --name halo --restart always --network web_default -p 8010:8090 -v /home/web/html/$yuming/.halo2:/root/.halo2 halohub/halo:2.9

      # 获取外部IP地址
      external_ip=$(curl -s ipv4.ip.sb)

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/reverse-proxy.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0.0.0.0/$external_ip/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0000/8010/g" /home/web/conf.d/$yuming.conf

      docker 重启 nginx

      清除
      echo "您的Halo网站搭建好了！"
      echo "https://$yuming"
      回声“”
        ;;

      11）
      清除
      # 类型
      read -p "请输入您解析的域名: " yuming
      dbname=$(echo "$yuming" | sed -e 's/[^A-Za-z0-9]/_/g')
      数据库名称=“${数据库名称}”

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      docker启动nginx

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/typecho.com.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf

      cd /home/web/html
      mkdir $yuming
      cd $裕明
      wget -Olatest.zip https://github.com/typecho/typecho/releases/latest/download/typecho.zip
      解压最新版本.zip
      rm 最新版本.zip

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html

      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbuse=$(grep -oP 'MYSQL_USER:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      dbusepasswd=$(grep -oP 'MYSQL_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      docker exec mysql mysql -u root -p"$dbrootpasswd" -e "创建数据库 $dbname; 将 $dbname.* 上的所有权限授予 \"$dbuse\"@\"%\";"

      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx


      清除
      echo "您的typecho搭建好了！"
      echo "https://$yuming"
      回声“------------------------”
      echo "安装信息如下："
      echo "数据库外接: typecho_"
      echo "数据库地址: mysql"
      echo "用户名: $duse"
      echo "密码: $dusepasswd"
      echo "数据库名: $dbname"

        ;;



      21）
      清除
      read -p "请输入您的域名: " yuming
      read -p "请输入域名: " 反向代理

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/rewrite.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf
      sed -i "s/baidu.com/$reverseproxy/g" /home/web/conf.d/$yuming.conf

      docker启动nginx

      清除
      echo "您的指导网站已完成！"
      echo "https://$yuming"

        ;;

      22）
      清除
      read -p "请输入您的域名: " yuming
      read -p "请输入你的反代IP: " 反向代理
      read -p "请输入你的反代端口: " port

      docker 停止 nginx

      光盘~
      卷曲 https://get.acme.sh | 嘘
      〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force

      wget -O /home/web/conf.d/$yuming.conf https://raw.githubusercontent.com/kejilion/nginx/main/reverse-proxy.conf
      sed -i "s/yuming.com/$yuming/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0.0.0.0/$reverseproxy/g" /home/web/conf.d/$yuming.conf
      sed -i "s/0000/$port/g" /home/web/conf.d/$yuming.conf

      docker启动nginx

      清除
      echo "您的反向代理网站已完成！"
      echo "https://$yuming"

        ;;


    31）
    虽然真实；做
        清除
        回显“LDNMP环境”
        回声“------------------------”
        # 获取nginx版本
        nginx_version=$(docker exec nginx nginx -v 2>&1)
        nginx_version=$(echo "$nginx_version" | grep -oP "nginx/\K[0-9]+\.[0-9]+\.[0-9]+")
        echo -n "nginx : v$nginx_version"
        # 获取mysql版本
        dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
        mysql_version=$(docker exec mysql mysql -u root -p"$dbrootpasswd" -e "选择版本();" 2>/dev/null | tail -n 1)
        echo -n“mysql：v$mysql_version”
        # 获取php版本
        php_version=$(docker exec php php -v 2>/dev/null | grep -oP "PHP \K[0-9]+\.[0-9]+\.[0-9]+")
        echo -n " php : v$php_version"
        # 获取redis版本
        redis_version=$(docker exec redis redis-server -v 2>&1 | grep -oP "v=+\K[0-9]+\.[0-9]+")
        echo“redis：v$redis_version”
        回声“------------------------”
        回声“”


        # ls -t /home/web/conf.d | sed 's/\.[^.]*$//'
        echo "站点信息 证书回复时间"
        回声“------------------------”
        对于 /home/web/certs/*_cert.pem 中的 cert_file；做
          域=$(基本名称“$cert_file”| sed 's/_cert.pem//')
          if [ -n "$domain" ]; 然后
            expire_date=$(openssl x509 -noout -enddate -in "$cert_file" | awk -F'=' '{print $2}')
            formatted_date=$(日期 -d "$expire_date" '+%Y-%m-%d')
            printf "%-30s%s\n" "$domain" "$formatted_date"
          菲
        完毕

        回声“------------------------”
        回声“”
        echo "数据库信息"
        回声“------------------------”
        dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
        docker exec mysql mysql -u root -p"$dbrootpasswd" -e "显示数据库;" 2> /dev/空 | grep -Ev“数据库|信息架构|mysql|性能架构|sys”

        回声“------------------------”
        回声“”
        回显“操作”
        回声“------------------------”
        echo "1.申请/更新域名证书 2.交换站点域名 3.清理站点服务器"
        回声“------------------------”
        echo "7.删除指定站点 8.删除指定数据库"
        回声“------------------------”
        echo "0.返回上一级选单"
        回声“------------------------”
        read -p "请输入你的选择: " sub_choice
        案例 $sub_choice 中
            1）
                read -p "请输入您的域名: " yuming

                docker 停止 nginx

                光盘~
                卷曲 https://get.acme.sh | 嘘
                〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $yuming --standalone --key-file /home/web/certs/${yuming}_key。 pem --cert-file /home/web/certs/${yuming}_cert.pem --force
                docker启动nginx

                ;;

            2）
                read -p "请输入旧域名: " oddyuming
                read -p "请输入新域名: " newyuming
                mv /home/web/conf.d/$oddyuming.conf /home/web/conf.d/$newyuming.conf
                sed -i "s/$oddyuming/$newyuming/g" /home/web/conf.d/$newyuming.conf
                mv /home/web/html/$oddyuming /home/web/html/$newyuming

                rm /home/web/certs/${oddyuming}_key.pem
                rm /home/web/certs/${oddyuming}_cert.pem

                docker 停止 nginx

                光盘~
                卷曲 https://get.acme.sh | 嘘
                〜/.acme.sh/acme.sh --register-account -m xxxx@gmail.com --issue -d $newyuming --standalone --key-file /home/web/certs/${newyuming}_key。 pem --cert-file /home/web/certs/${newyuming}_cert.pem --force
                docker启动nginx

                ;;


            3）
                docker exec -it nginx rm -rf /var/cache/nginx
                docker 重启 nginx
                ;;

            7）
                read -p "请输入您的域名: " yuming
                rm -r /home/web/html/$yuming
                rm /home/web/conf.d/$yuming.conf
                rm /home/web/certs/${yuming}_key.pem
                rm /home/web/certs/${yuming}_cert.pem
                ;;
            8）
                read -p "请输入数据库名: " shujuku
                dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
                docker exec mysql mysql -u root -p"$dbrootpasswd" -e "删除数据库 $shujuku;" 2> /dev/空
                ;;
            0）
                break # 跳出循环，退出菜单
                ;;
            *)
                break # 跳出循环，退出菜单
                ;;
        埃萨克
    完毕

      ;;


    32）
      清除
      cd /home/ && tar czvf web_$(日期 +"%Y%m%d%H%M%S").tar.gz web

      虽然真实；做
        清除
        read -p "要传送文件到远程服务器吗？(Y/N): " choice
        案例“$choice”
          [是]）
            read -p "请输入终端服务器IP: "remote_ip
            if [ -z "$remote_ip" ]; 然后
              echo "错误: 请输入终端服务器IP。"
              继续
            菲
            latest_tar=$(ls -t /home/*.tar.gz | 头 -1)
            如果[-n“$latest_tar”]; 然后
              ssh-keygen -f“/root/.ssh/known_hosts”-R“$remote_ip”
              sleep 2 添加 #等待时间
              scp -o StrictHostKeyChecking=no "$latest_tar" "root@$remote_ip:/home/"
              echo "文件已传送至远程服务器home目录。"
            别的
              echo "未找到要传送的文件。"
            菲
            休息
            ;;
          [NN])
            休息
            ;;
          *)
            echo "无效的选择，请输入 Y 或 N。"
            ;;
        埃萨克
      完毕
      ;;

    33）
      清除
      read -p "输入远程服务器IP: " useip
      read -p "输入远程服务器密码:" usepasswd

      wget -O ${useip}_beifen.sh https://raw.githubusercontent.com/kejilion/sh/main/beifen.sh > /dev/null 2>&1
      chmod +x ${useip}_beifen.sh

      sed -i "s/0.0.0.0/$useip/g" ${useip}_beifen.sh
      sed -i "s/123456/$usepasswd/g" ${useip}_beifen.sh

      回声“------------------------”
      echo "1.每周备份 2.每天备份"
      read -p "请输入你的选择: " dingshi

      案例 $dingshi in
          1）
              read -p "选择每周备份的星期几(0-6，0代表星期日): " weekday
              (crontab -l ; echo "0 0 * * $weekday ./${useip}_beifen.sh") | crontab -> /dev/null 2>&1
              ;;
          2）
              read -p "选择每天备份的时间（小时，0-23）: " hour
              (crontab -l ; echo "0 $hour * * * ./${useip}_beifen.sh") | crontab -> /dev/null 2>&1
              ;;
          *)
              打破 # 跳出
              ;;
      埃萨克

      如果 ！命令-v sshpass &>/dev/null; 然后
          if 命令 -v apt &>/dev/null; 然后
              apt update -y && apt install -y sshpass
          elif 命令 -v yum &>/dev/null; 然后
              yum -y 更新 && yum -y 安装 sshpass
          别的
              echo“未知的包管理器！”
          菲
      别的
          echo "sshpass 已经安装，跳过安装步骤。"
      菲

      ;;

    34）
      清除
      cd /home/ && ls -t /home/*.tar.gz | cd /home/ && ls -t /home/*.tar.gz | 头-1 | xargs -I {} tar -xzf {}

      # 更新并必要安装的种子
      if 命令 -v apt &>/dev/null; 然后
          DEBIAN_FRONTEND=非交互式 apt update -y
          DEBIAN_FRONTEND=非交互式 apt 完全升级 -y
          apt install -y curl wget sudo socat 解压缩 tar htop
      elif 命令 -v yum &>/dev/null; 然后
          yum -y update && yum -y install curl wget sudo socat unzip tar htop
      别的
          echo“未知的包管理器！”
      菲

      # 检查是否安装Docker（如果需要）
      如果 ！命令-v docker &>/dev/null; 然后
          卷曲-fsSL https://get.docker.com | sh && ln -s /us r/libexec/docker/cli-plugins/docker-compose /usr/local/bin
          systemctl启动docker
          systemctl 启用 docker
      别的
          echo "Docker 已经安装"
      菲

      cd /home/web && docker-compose up -d

      清除
      echo "正在配置LDNMP环境，请耐心等待……"

      # 定义要执行的命令
      命令=（
          “docker exec php apt update > /dev/null 2>&1”
          “docker exec php apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php docker-php-ext-install mysqli pdo_mysql zip exif gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php pecl 安装 redis > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

          “docker exec php74 apt update > /dev/null 2>&1”
          “docker exec php74 apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php74 docker-php-ext-install mysqli pdo_mysql zip gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php74 pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php74 pecl 安装 redis > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php74 sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

          “docker exec nginx chmod -R 777 /var/www/html > /dev/null 2>&1”
          “docker exec php chmod -R 777 /var/www/html > /dev/null 2>&1”
          “docker exec php74 chmod -R 777 /var/www/html > /dev/null 2>&1”

          “docker 重新启动 php > /dev/null 2>&1”
          “docker 重新启动 php74 > /dev/null 2>&1”
          “docker 重新启动 nginx > /dev/null 2>&1”

      ）

      Total_commands=${#commands[@]} # 计算总命令数

      for ((i = 0; i < 总命令数; i++)); 做
          命令=“${命令[i]}”
          eval $command # 执行命令

          # 打印百分比和详细条
          百分比=$(( (i + 1) * 100 / 总命令数 ))
          已完成=$((百分比/2))
          剩余=$((50 - 已完成))
          进度条=“[”
          for ((j = 0; j < 已完成; j++)); 做
              进度条+=“#”
          完毕
          for ((j = 0; j < 剩余; j++)); 做
              进度条+=“。”
          完毕
          进度条+=“]”
          echo -ne "\r[$percentage%] $progressBar"
      完毕

      echo #打印换行，方便输出不被覆盖



      清除
      echo "LDNMP环境安装完毕"
      回声“------------------------”

      # 获取nginx版本
      nginx_version=$(docker exec nginx nginx -v 2>&1)
      nginx_version=$(echo "$nginx_version" | grep -oP "nginx/\K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n "nginx : v$nginx_version"

      # 获取mysql版本
      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      mysql_version=$(docker exec mysql mysql -u root -p"$dbrootpasswd" -e "选择版本();" 2>/dev/null | tail -n 1)
      echo -n“mysql：v$mysql_version”

      # 获取php版本
      php_version=$(docker exec php php -v 2>/dev/null | grep -oP "PHP \K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n " php : v$php_version"

      # 获取redis版本
      redis_version=$(docker exec redis redis-server -v 2>&1 | grep -oP "v=+\K[0-9]+\.[0-9]+")
      echo“redis：v$redis_version”

      回声“------------------------”
      回声“”


      ;;

    35）
      if [ -x "$(command -v failure2ban-client)" ] && [ -d "/etc/fail2ban" ]; 然后
          虽然真实；做
              清除
              echo "服务器防御程序已启动"
              回声“------------------------”
              echo "1.开启SSH防暴力破解补丁 2.关闭SSH防暴力破解补丁"
              echo "3.开启网站保护 4.关闭网站保护"
              回声“------------------------”
              echo "5.查看SSH拦截记录 6.查看网站拦截记录"
              echo "7.查看防御规则列表 8.查看日志实时监控"
              回声“------------------------”
              echo "9.卸载防御程序"
              回声“------------------------”
              echo "0.退出"
              回声“------------------------”
              read -p "请输入你的选择: " sub_choice
              案例 $sub_choice 中
                  1）
                      sed -i 's/false/true/g' /etc/fail2ban/jail.d/sshd.local
                      systemctl重新启动fail2ban
                      睡觉 1
                      fail2ban-客户端状态
                      ;;
                  2）
                      sed -i 's/true/false/g' /etc/fail2ban/jail.d/sshd.local
                      systemctl重新启动fail2ban
                      睡觉 1
                      fail2ban-客户端状态
                      ;;
                  3）
                      sed -i 's/false/true/g' /etc/fail2ban/jail.d/nginx.local
                      systemctl重新启动fail2ban
                      睡觉 1
                      fail2ban-客户端状态
                      ;;
                  4）
                      sed -i 's/true/false/g' /etc/fail2ban/jail.d/nginx.local
                      systemctl重新启动fail2ban
                      睡觉 1
                      fail2ban-客户端状态
                      ;;
                  5）
                      回声“------------------------”
                      fail2ban-客户端状态 sshd
                      回声“------------------------”
                      ;;
                  6）
                      回声“------------------------”
                      fail2ban-客户端状态 nginx-bad-request
                      回声“------------------------”
                      fail2ban-客户端状态 nginx-botsearch
                      回声“------------------------”
                      fail2ban-客户端状态 nginx-http-auth
                      回声“------------------------”
                      fail2ban-客户端状态 nginx-limit-req
                      回声“------------------------”
                      fail2ban-客户端状态 php-url-fopen
                      回声“------------------------”
                      ;;

                  7）
                      fail2ban-客户端状态
                      ;;
                  8）
                      尾-f /var/log/fail2ban.log

                      ;;
                  9）
                      systemctl 禁用fail2ban
                      systemctl 停止fail2ban
                      apt删除-y --purge failed2ban
                      如果 [ $? -eq 0]；然后
                          echo "Fail2ban已卸载"
                      别的
                          echo "卸载失败"
                      菲
                      rm -rf /etc/fail2ban
                      休息
                      ;;
                  0）
                      休息
                      ;;
                  *)
                      echo "无效的选择，请重新输入。"
                      ;;
              埃萨克
              echo -e "\033[0;32m操作完成\033[0m"
              echo "按任意键继续..."
              读取-n 1 -s -r -p“”
              回声“”
          完毕
      别的
          清除
          # 安装Fail2ban
          如果 [ -f /etc/debian_version ]; 然后
              # Debian/Ubuntu系统
              apt更新-y
              apt install -y failed2ban
          elif [ -f /etc/redhat-release ]; 然后
              # CentOS系统
              百胜更新-y
              yum install -y epel-release
              yum install -y failed2ban
          别的
              echo "不支持的操作系统类型"
              1号出口
          菲

          # 启动Fail2ban
          systemctl启动fail2ban

          #Fail2ban开机自启动
          systemctl 启用fail2ban

          # 配置Fail2ban
          rm -rf /etc/fail2ban/jail.d/*
          cd /etc/fail2ban/jail.d/
          卷曲-sS -O https://raw.githubusercontent.com/kejilion/sh/main/sshd.local
          systemctl重新启动fail2ban
          docker rm -f nginx

          wget -O /home/web/nginx.conf https://raw.githubusercontent.com/kejilion/nginx/main/nginx10.conf
          wget -O /home/web/conf.d/default.conf https://raw.githubusercontent.com/kejilion/nginx/main/default10.conf
          localhostIP=$(curl -s ipv4.ip.sb)
          sed -i "s/localhost/$localhostIP/g" /home/web/conf.d/default.conf

          docker run -d --name nginx --restart always --network web_default -p 80:80 -p 443:443 -v /home/web/nginx.conf:/etc/nginx/nginx.conf -v /home/ web/conf.d:/etc/nginx/conf.d -v /home/web/certs:/etc/nginx/certs -v /home/web/html:/var/www/html -v /home/web /log/nginx:/var/log/nginx nginx
          docker exec -it nginx chmod -R 777 /var/www/html

          # 获取成交机当前时区
          HOST_TIMEZONE=$(timedatectl show --property=时区 --value)

          # 调整多个容器的时区
          docker exec -it nginx ln -sf "/usr/share/zoneinfo/$HOST_TIMEZONE" /etc/localtime
          docker exec -it php ln -sf "/usr/share/zoneinfo/$HOST_TIMEZONE" /etc/localtime
          docker exec -it php74 ln -sf "/usr/share/zoneinfo/$HOST_TIMEZONE" /etc/localtime
          docker exec -it mysql ln -sf "/usr/share/zoneinfo/$HOST_TIMEZONE" /etc/localtime
          docker exec -it redis ln -sf "/usr/share/zoneinfo/$HOST_TIMEZONE" /etc/localtime
          rm -rf /home/web/log/nginx/*
          docker 重启 nginx

          卷曲-sS -O https://raw.githubusercontent.com/kejilion/sh/main/nginx.local
          systemctl重新启动fail2ban
          睡觉 1
          fail2ban-客户端状态
          echo "防御程序已开启"
      菲

        ;;

    36）
          虽然真实；做
              清除
              echo "优化LDNMP环境"
              回声“------------------------”
              echo "1.标准模式 2.高性能模式 (推荐2H2G以上)"
              回声“------------------------”
              echo "0.退出"
              回声“------------------------”
              read -p "请输入你的选择: " sub_choice
              案例 $sub_choice 中
                  1）
                  # nginx 调优
                  sed -i 's/worker_connections.*/worker_connections 1024;/' /home/web/nginx.conf

                  # php调优
                  wget -O /home/www.conf https://raw.githubusercontent.com/kejilion/sh/main/www-1.conf
                  docker cp /home/www.conf php:/usr/local/etc/php-fpm.d/www.conf
                  docker cp /home/www.conf php74:/usr/local/etc/php-fpm.d/www.conf
                  rm -rf /home/www.conf

                  # mysql 调优
                  wget -O /home/custom_mysql_config.cnf https://raw.githubusercontent.com/kejilion/sh/main/custom_mysql_config-1.cnf
                  docker cp /home/custom_mysql_config.cnf mysql:/etc/mysql/conf.d/
                  rm -rf /home/custom_mysql_config.cnf

                  docker 重启 nginx
                  docker 重新启动 php
                  docker 重启 php74
                  docker 重启 mysql

                  echo "LDNMP环境已设置成标准模式"

                      ;;
                  2）

                  # nginx 调优
                  sed -i 's/worker_connections.*/worker_connections 2048;/' /home/web/nginx.conf

                  # php调优
                  wget -O /home/www.conf https://raw.githubusercontent.com/kejilion/sh/main/www.conf
                  docker cp /home/www.conf php:/usr/local/etc/php-fpm.d/www.conf
                  docker cp /home/www.conf php74:/usr/local/etc/php-fpm.d/www.conf
                  rm -rf /home/www.conf

                  # mysql 调优
                  wget -O /home/custom_mysql_config.cnf https://raw.githubusercontent.com/kejilion/sh/main/custom_mysql_config.cnf
                  docker cp /home/custom_mysql_config.cnf mysql:/etc/mysql/conf.d/
                  rm -rf /home/custom_mysql_config.cnf

                  docker 重启 nginx
                  docker 重新启动 php
                  docker 重启 php74
                  docker 重启 mysql

                  echo "LDNMP环境已设置成性能模式"

                      ;;
                  0）
                      休息
                      ;;
                  *)
                      echo "无效的选择，请重新输入。"
                      ;;
              埃萨克
              echo -e "\033[0;32m操作完成\033[0m"
              echo "按任意键继续..."
              读取-n 1 -s -r -p“”
              回声“”
          完毕
        ;;


    37）
      清除
      docker rm -f nginx php php74 mysql redis
      docker rmi nginx php:fpm php:7.4.33-fpm mysql redis

      # 更新并必要安装的种子
      if 命令 -v apt &>/dev/null; 然后
          DEBIAN_FRONTEND=非交互式 apt update -y
          DEBIAN_FRONTEND=非交互式 apt 完全升级 -y
          apt install -y curl wget sudo socat 解压缩 tar htop
      elif 命令 -v yum &>/dev/null; 然后
          yum -y update && yum -y install curl wget sudo socat unzip tar htop
      别的
          echo“未知的包管理器！”
      菲

      # 检查是否安装Docker（如果需要）
      如果 ！命令-v docker &>/dev/null; 然后
          卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
          systemctl启动docker
          systemctl 启用 docker
      别的
          echo "Docker 已经安装"
      菲

      cd /home/web && docker-compose up -d

      清除
      echo "正在配置LDNMP环境，请耐心等待……"

      # 定义要执行的命令
      命令=（
          “docker exec php apt update > /dev/null 2>&1”
          “docker exec php apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php docker-php-ext-install mysqli pdo_mysql zip exif gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php pecl 安装 redis > /dev/null 2>&1”
          “docker exec php sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

          “docker exec php74 apt update > /dev/null 2>&1”
          “docker exec php74 apt install -y libmariadb-dev-compat libmariadb-dev libzip-dev libmagickwand-dev imagemagick > /dev/null 2>&1”
          “docker exec php74 docker-php-ext-install mysqli pdo_mysql zip gd intl bcmath opcache > /dev/null 2>&1”
          “docker exec php74 pecl 安装 imagick > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/imagick.ini' > /dev/null 2>&1"
          “docker exec php74 pecl 安装 redis > /dev/null 2>&1”
          “docker exec php74 sh -c 'echo \"extension=redis.so\" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini' > /dev/null 2>&1 ”
          “docker exec php74 sh -c 'echo \"upload_max_filesize=50M \\n post_max_size=50M\" > /usr/local/etc/php/conf.d/uploads.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"memory_limit=256M\" > /usr/local/etc/php/conf.d/memory.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_execution_time=1200\" > /usr/local/etc/php/conf.d/max_execution_time.ini' > /dev/null 2>&1"
          “docker exec php74 sh -c 'echo \"max_input_time=600\" > /usr/local/etc/php/conf.d/max_input_time.ini' > /dev/null 2>&1"

          “docker exec nginx chmod -R 777 /var/www/html > /dev/null 2>&1”
          “docker exec php chmod -R 777 /var/www/html > /dev/null 2>&1”
          “docker exec php74 chmod -R 777 /var/www/html > /dev/null 2>&1”

          “docker 重新启动 php > /dev/null 2>&1”
          “docker 重新启动 php74 > /dev/null 2>&1”
          “docker 重新启动 nginx > /dev/null 2>&1”

      ）

      Total_commands=${#commands[@]} # 计算总命令数

      for ((i = 0; i < 总命令数; i++)); 做
          命令=“${命令[i]}”
          eval $command # 执行命令

          # 打印百分比和详细条
          百分比=$(( (i + 1) * 100 / 总命令数 ))
          已完成=$((百分比/2))
          剩余=$((50 - 已完成))
          进度条=“[”
          for ((j = 0; j < 已完成; j++)); 做
              进度条+=“#”
          完毕
          for ((j = 0; j < 剩余; j++)); 做
              进度条+=“。”
          完毕
          进度条+=“]”
          echo -ne "\r[$percentage%] $progressBar"
      完毕

      echo #打印换行，方便输出不被覆盖

      docker exec nginx chmod -R 777 /var/www/html
      docker exec php chmod -R 777 /var/www/html
      docker exec php74 chmod -R 777 /var/www/html
      docker 重新启动 php
      docker 重启 php74
      docker 重启 nginx

      清除
      清除
      echo "LDNMP环境安装完毕"
      回声“------------------------”
      # 获取nginx版本
      nginx_version=$(docker exec nginx nginx -v 2>&1)
      nginx_version=$(echo "$nginx_version" | grep -oP "nginx/\K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n "nginx : v$nginx_version"
      # 获取mysql版本
      dbrootpasswd=$(grep -oP 'MYSQL_ROOT_PASSWORD:\s*\K.*' /home/web/docker-compose.yml | tr -d '[:space:]')
      mysql_version=$(docker exec mysql mysql -u root -p"$dbrootpasswd" -e "选择版本();" 2>/dev/null | tail -n 1)
      echo -n“mysql：v$mysql_version”
      # 获取php版本
      php_version=$(docker exec php php -v 2>/dev/null | grep -oP "PHP \K[0-9]+\.[0-9]+\.[0-9]+")
      echo -n " php : v$php_version"
      # 获取redis版本
      redis_version=$(docker exec redis redis-server -v 2>&1 | grep -oP "v=+\K[0-9]+\.[0-9]+")
      echo“redis：v$redis_version”
      回声“------------------------”
      回声“”

      ;;



    38）
        清除
        read -p "强烈建议先备份全部网站数据，再卸载LDNMP环境。确定删除所有网站数据吗？(Y/N): " choice
        案例“$choice”
          [是]）
            docker rm -f nginx php php74 mysql redis
            docker rmi nginx php:fpm php:7.4.33-fpm mysql redis
            rm -r /home/web
            ;;
          [NN])

            ;;
          *)
            echo "无效的选择，请输入 Y 或 N。"
            ;;
        埃萨克
        ;;

    0）
        光盘~
        ./kejilion.sh
        出口
      ;;

    *)
        echo "无效的输入!"
    埃萨克

    echo -e "\033[0;32m操作完成\033[0m"
    echo "按任意键继续..."
    读取-n 1 -s -r -p“”
    回声“”
    清除
  完毕
      ;;

  11）
    虽然真实；做

      回显“▼”
      echo "常用面板工具"
      回声“------------------------”
      echo "1.宝塔面板官方版 2.aaPanel宝塔国际版"
      echo "3.1Panel新一代管理面板 4.NginxProxyManager可视化面板"
      echo "5. AList多存储文件列表程序 6. Ubuntu远程桌面网页版"
      echo "7.哪吒探针VPS监控面板 8.QB离线BT磁力下载面板"
      echo "9.Poste.io邮件服务器程序 10.RocketChat多人在线聊天系统"
      echo "11.禅道项目管理软件 12.青龙面板定时任务管理平台"
      echo "13.Cloudreve网盘系统 14.简单图床图片管理程序"
      echo "15. emby多媒体管理系统 16. Speedtest测速服务面板"
      echo "17.AdGuardHome去广告软件 18.onlyoffice在线办公OFFICE"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
            if [ -f "/etc/init.d/bt" ] && [ -d "/www/server/panel" ]; 然后
                清除
                echo "宝塔面板已安装，应用操作"
                回声“”
                回声“------------------------”
                echo "1.管理宝塔面板 2.卸载宝塔面板"
                回声“------------------------”
                echo "0.返回上一级选单"
                回声“------------------------”
                read -p "请输入你的选择: " sub_choice

                案例 $sub_choice 中
                    1）
                        清除
                        # 更新宝塔面板操作
                        BT
                        ;;
                    2）
                        清除
                        curl -o bt-uninstall.sh http://download.bt.cn/install/bt-uninstall.sh > /dev/null 2>&1
                        chmod +x bt-uninstall.sh
                        ./bt-uninstall.sh
                        ;;
                    0）
                        break # 跳出循环，退出菜单
                        ;;
                    *)
                        break # 跳出循环，退出菜单
                        ;;
                埃萨克
            别的
                清除
                echo "安装提示"
                echo "如果您已经安装了其他面板工具或者LDNMP建站环境，建议先卸载，再安装宝塔面板！"
                echo "会根据系统自动安装，支持Debian，Ubuntu，Centos"
                echo "官网介绍：https://www.bt.cn/new/index.html"
                回声“”

                # 获取当前系统类型
                获取系统类型（）{
                    如果 [ -f /etc/os-release ]; 然后
                        。/etc/os-release
                        if [ "$ID" == "centos" ]; 然后
                            回声“centos”
                        elif [“$ID”==“ubuntu”]; 然后
                            回显“ubuntu”
                        elif [“$ID”==“debian”]; 然后
                            回显“debian”
                        别的
                            回显“未知”
                        菲
                    别的
                        回显“未知”
                    菲
                }

                系统类型=$(获取系统类型)

                if [ "$system_type" == "未知" ]; 然后
                    echo "不支持的操作系统类型"
                别的
                    read -p "确定安装宝塔吗？(Y/N): " choice
                    案例“$choice”
                        [是]）
                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲

                            如果 ！命令 -v wget &>/dev/null; 然后
                                if 命令 -v apt &>/dev/null; 然后
                                    apt update -y && apt install -y wget
                                elif 命令 -v yum &>/dev/null; 然后
                                    yum -y 更新 && yum -y 安装 wget
                                别的
                                    echo“未知的包管理器！”
                                    1号出口
                                菲
                            菲
                            if [ "$system_type" == "centos" ]; 然后
                                yum install -y wget && wget -O install.sh https://download.bt.cn/install/install_6.0.sh && sh install.sh ed8484bec
                            elif [“$system_type”==“ubuntu”]; 然后
                                wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh ed8484bec
                            elif [“$system_type”==“debian”]; 然后
                                wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh ed8484bec
                            菲
                            ;;
                        [NN])
                            ;;
                        *)
                            ;;
                    埃萨克
                菲
            菲

              ;;
          2）
            if [ -f "/etc/init.d/bt" ] && [ -d "/www/server/panel" ]; 然后
                清除
                echo "aaPanel已安装，应用操作"
                回声“”
                回声“------------------------”
                echo "1.管理aaPanel 2.卸载aaPanel"
                回声“------------------------”
                echo "0.返回上一级选单"
                回声“------------------------”
                read -p "请输入你的选择: " sub_choice

                案例 $sub_choice 中
                    1）
                        清除
                        # 更新aaPanel操作
                        BT
                        ;;
                    2）
                        清除
                        curl -o bt-uninstall.sh http://download.bt.cn/install/bt-uninstall.sh > /dev/null 2>&1
                        chmod +x bt-uninstall.sh
                        ./bt-uninstall.sh
                        ;;
                    0）
                        break # 跳出循环，退出菜单
                        ;;
                    *)
                        break # 跳出循环，退出菜单
                        ;;
                埃萨克
            别的
                清除
                echo "安装提示"
                echo "如果您已经安装了其他面板工具或者LDNMP建站环境，建议先卸载，再安装aaPanel！"
                echo "会根据系统自动安装，支持Debian，Ubuntu，Centos"
                echo "官网介绍：https://www.aapanel.com/new/index.html"
                回声“”

                # 获取当前系统类型
                获取系统类型（）{
                    如果 [ -f /etc/os-release ]; 然后
                        。/etc/os-release
                        if [ "$ID" == "centos" ]; 然后
                            回声“centos”
                        elif [“$ID”==“ubuntu”]; 然后
                            回显“ubuntu”
                        elif [“$ID”==“debian”]; 然后
                            回显“debian”
                        别的
                            回显“未知”
                        菲
                    别的
                        回显“未知”
                    菲
                }

                系统类型=$(获取系统类型)

                if [ "$system_type" == "未知" ]; 然后
                    echo "不支持的操作系统类型"
                别的
                    read -p "确定安装aaPanel吗？(Y/N): " choice
                    案例“$choice”
                        [是]）
                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲

                            如果 ！命令 -v wget &>/dev/null; 然后
                                if 命令 -v apt &>/dev/null; 然后
                                    apt update -y && apt install -y wget
                                elif 命令 -v yum &>/dev/null; 然后
                                    yum -y 更新 && yum -y 安装 wget
                                别的
                                    echo“未知的包管理器！”
                                    1号出口
                                菲
                            菲
                            if [ "$system_type" == "centos" ]; 然后
                                yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
                            elif [“$system_type”==“ubuntu”]; 然后
                                wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && bash install.sh aapanel
                            elif [“$system_type”==“debian”]; 然后
                                wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && bash install.sh aapanel
                            菲
                            ;;
                        [NN])
                            ;;
                        *)
                            ;;
                    埃萨克
                菲
            菲
              ;;
          3）
            清除
            echo "安装提示"
            echo "如果您已经安装了其他面板工具或者LDNMP建站环境，建议先卸载，再安装1Panel！"
            echo "会根据系统自动安装，支持Debian，Ubuntu，Centos"
            echo "官网介绍：https://1panel.cn/"
            回声“”
            # 获取当前系统类型
            获取系统类型（）{
              如果 [ -f /etc/os-release ]; 然后
                。/etc/os-release
                if [ "$ID" == "centos" ]; 然后
                  回声“centos”
                elif [“$ID”==“ubuntu”]; 然后
                  回显“ubuntu”
                elif [“$ID”==“debian”]; 然后
                  回显“debian”
                别的
                  回显“未知”
                菲
              别的
                回显“未知”
              菲
            }

            系统类型=$(获取系统类型)

            if [ "$system_type" == "未知" ]; 然后
              echo "不支持的操作系统类型"
            别的
              read -p "确定安装1Panel吗？(Y/N): " choice
              案例“$choice”
                [是]）
                  如果 ！命令 -v iptables &> /dev/null; 然后
                  回声“”
                  别的
                      # iptables命令
                      iptables -P 输入接受
                      iptables -P 转发接受
                      iptables -P 输出接受
                      iptables-F
                  菲

                  if [ "$system_type" == "centos" ]; 然后
                    curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o Quick_start.sh && sh Quick_start.sh
                  elif [“$system_type”==“ubuntu”]; 然后
                    卷曲-sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o Quick_start.sh && bash Quick_start.sh
                  elif [“$system_type”==“debian”]; 然后
                    卷曲-sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o Quick_start.sh && bash Quick_start.sh
                  菲
                  ;;
                [NN])
                  ;;
                *)
                  ;;
              埃萨克
            菲
              ;;
          4）
            如果 docker 检查 npm &>/dev/null; 然后
                    清除
                    echo "npm已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：81”
                    回声“”
                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f npm
                            docker rmi -f jc21/nginx-proxy-manager:最新
                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                              --名称=npm \
                              -p 80:80 \
                              -p 81:81 \
                              -p 443:443 \
                              -v /home/docker/npm/data:/data \
                              -v /home/docker/npm/letsencrypt:/etc/letsencrypt \
                              --重新启动=始终\
                              jc21/nginx-proxy-manager：最新
                            清除
                            echo "npm已经安装完成"
                            回声“------------------------”
                            # 获取外部IP地址
                            external_ip=$(curl -s ipv4.ip.sb)

                            echo "您可以使用以下地址访问Nginx代理管理器："
                            回显“http：$ external_ip：81”
                            echo "初始用户名: admin@example.com"
                            echo "初始密码:changeme"
                            ;;
                        2）
                            清除
                            docker rm -f npm
                            docker rmi -f jc21/nginx-proxy-manager:最新
                            rm -rf /home/docker/npm
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                  清除
                  echo "安装提示"
                  echo "如果你已经安装了其他面板工具或者LDNMP建站环境，建议先卸载，再安装npm！"
                  echo "官网介绍：https://nginxproxymanager.com/"
                  回声“”

                  # 提示用户安装确认
                  read -p "确定安装npm吗？(Y/N): " choice
                  案例“$choice”
                    [是]）
                      清除
                      如果 ！命令 -v iptables &> /dev/null; 然后
                      回声“”
                      别的
                          # iptables命令
                          iptables -P 输入接受
                          iptables -P 转发接受
                          iptables -P 输出接受
                          iptables-F
                      菲


                      # 检查是否安装Docker（如果需要）
                      如果 ！命令-v docker &>/dev/null; 然后
                          卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                          systemctl启动docker
                          systemctl 启用 docker
                      别的
                          echo "Docker 已经安装，正在配置容器……"
                      菲

                      docker 运行 -d \
                        --名称=npm \
                        -p 80:80 \
                        -p 81:81 \
                        -p 443:443 \
                        -v /home/docker/npm/data:/data \
                        -v /home/docker/npm/letsencrypt:/etc/letsencrypt \
                        --重新启动=始终\
                        jc21/nginx-proxy-manager：最新
                      清除
                      echo "npm已经安装完成"
                      回声“------------------------”
                      # 获取外部IP地址
                      external_ip=$(curl -s ipv4.ip.sb)

                      echo "您可以使用以下地址访问Nginx代理管理器："
                      回显“http：$ external_ip：81”
                      echo "初始用户名: admin@example.com"
                      echo "初始密码:changeme"
                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;
          5）

            如果 docker 检查 alist &>/dev/null; 然后
                    清除
                    echo "alist已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：5244”
                    回声“”
                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f alist
                            docker rmi -f xhofe/alist:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                                --重新启动=始终\
                                -v /home/docker/alist:/opt/alist/data \
                                -p 5244:5244 \
                                -e PUID=0 \
                                -e PGID=0 \
                                -e UMASK=022 \
                                --name="列表" \
                                xhofe/alist：最新

                            清除
                            echo "alist已经安装完成"
                            回声“------------------------”
                            # 获取外部IP地址
                            external_ip=$(curl -s ipv4.ip.sb)

                            echo "您可以使用以下地址访问列表："
                            回显“http：$ external_ip：5244”
                            docker exec -it alist ./alist admin 随机
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f alist
                            docker rmi -f xhofe/alist:最新
                            rm -rf /home/docker/alist
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                  清除
                  echo "安装提示"
                  echo "一个支持多种存储，支持网页浏览和WebDAV的文件列表程序，由gin和Solidjs驱动"
                  echo "官网介绍：https://alist.nn.ci/zh/"
                  回声“”

                  # 提示用户安装确认
                  read -p "确定安装Alist吗？(Y/N): " choice
                  案例“$choice”
                    [是]）
                      清除
                      如果 ！命令 -v iptables &> /dev/null; 然后
                      回声“”
                      别的
                          # iptables命令
                          iptables -P 输入接受
                          iptables -P 转发接受
                          iptables -P 输出接受
                          iptables-F
                      菲


                      # 检查是否安装Docker（如果需要）
                      如果 ！命令-v docker &>/dev/null; 然后
                          卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                          systemctl启动docker
                          systemctl 启用 docker
                      别的
                          echo "Docker 已经安装，正在配置容器……"
                      菲

                      docker 运行 -d \
                          --重新启动=始终\
                          -v /home/docker/alist:/opt/alist/data \
                          -p 5244:5244 \
                          -e PUID=0 \
                          -e PGID=0 \
                          -e UMASK=022 \
                          --name="列表" \
                          xhofe/alist：最新

                      清除
                      echo "alist已经安装完成"
                      回声“------------------------”
                      # 获取外部IP地址
                      external_ip=$(curl -s ipv4.ip.sb)

                      echo "您可以使用以下地址访问列表："
                      回显“http：$ external_ip：5244”
                      docker exec -it alist ./alist admin 随机
                      回声“”
                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;

          6）
            如果 docker 检查 ubuntu-novnc &>/dev/null; 然后
                    清除
                    echo "乌班图桌面已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：6080”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f ubuntu-novnc
                            docker rmi -f fredblgr/ubuntu-novnc:20.04
                            read -p "请设置一个登录密码: " rootpasswd

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                                --名称 ubuntu-novnc \
                                -p 6080:80 \
                                -v /home/docker/ubuntu:/workspace:rw \
                                -e HTTP_PASSWORD=$rootpasswd \
                                -e 分辨率=1280x720 \
                                --重新启动=始终\
                                fredblgr/ubuntu-novnc:20.04

                            清除
                            echo "Ubuntu远程桌面已经安装完成"
                            回声“------------------------”
                            # 获取外部IP地址
                            external_ip=$(curl -s ipv4.ip.sb)

                            echo "您可以使用以下地址访问Ubuntu远程桌面:"
                            回显“http：$ external_ip：6080”
                            echo "用户名: root"
                            echo "密码: $rootpasswd"
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f ubuntu-novnc
                            docker rmi -f fredblgr/ubuntu-novnc:20.04
                            rm -rf /home/docker/ubuntu
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "一个网页版Ubuntu远程桌面，挺好用的！"
                echo "官网介绍: https://hub.docker.com/r/fredblgr/ubuntu-novnc"
                回声“”

                # 提示用户确认安装
                read -p "确定安装Ubuntu远程桌面吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                        清除
                        read -p "请设置一个登录密码: " rootpasswd

                        如果 ！命令 -v iptables &> /dev/null; 然后
                        回声“”
                        别的
                            # iptables命令
                            iptables -P 输入接受
                            iptables -P 转发接受
                            iptables -P 输出接受
                            iptables-F
                        菲


                        # 检查是否安装Docker（如果需要）
                        如果 ！命令-v docker &>/dev/null; 然后
                            卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                            systemctl启动docker
                            systemctl 启用 docker

                        别的
                            echo "Docker 已经安装，正在配置容器……"
                        菲

                        docker 运行 -d \
                            --名称 ubuntu-novnc \
                            -p 6080:80 \
                            -v /home/docker/ubuntu:/workspace:rw \
                            -e HTTP_PASSWORD=$rootpasswd \
                            -e 分辨率=1280x720 \
                            --重新启动=始终\
                            fredblgr/ubuntu-novnc:20.04

                        清除
                        echo "Ubuntu远程桌面已经安装完成"
                        回声“------------------------”
                        # 获取外部IP地址
                        external_ip=$(curl -s ipv4.ip.sb)

                        echo "您可以使用以下地址访问Ubuntu远程桌面:"
                        回显“http：$ external_ip：6080”
                        echo "用户名: root"
                        echo "密码: $rootpasswd"
                        回声“”
                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;
          7）
            清除
            卷曲 -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -o nezha.sh && chmod +x nezha.sh
            ./哪吒.sh
              ;;
          8）
            如果 docker 检查 qbittorrent &>/dev/null; 然后
                    清除

                    echo "QB已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：8081”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f qbittorrent
                            docker rmi -f lscr.io/linuxserver/qbittorrent:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                                  --name=qbittorrent \
                                  -e PUID=1000 \
                                  -e PGID=1000 \
                                  -e TZ=等/UTC \
                                  -e WEBUI_PORT=8081 \
                                  -p 8081:8081 \
                                  -p 6881:6881 \
                                  -p 6881:6881/udp \
                                  -v /home/docker/qbittorrent/config:/config \
                                  -v /home/docker/qbittorrent/downloads:/downloads \
                                  --restart 除非停止 \
                                  lscr.io/linuxserver/qbittorrent：最新
                            清除
                            echo "QB已经安装完成"
                            回声“------------------------”
                            # 获取外部IP地址
                            external_ip=$(curl -s ipv4.ip.sb)

                            echo "您可以使用以下地址访问QB:"
                            回显“http：$ external_ip：8081”
                            echo "账号: admin"
                            echo "密码: adminadmin"
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f qbittorrent
                            docker rmi -f lscr.io/linuxserver/qbittorrent:最新
                            rm -rf /home/docker/qbittorrent
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "qbittorrent离线BT磁力下载服务"
                echo "官网介绍：https://hub.docker.com/r/linuxserver/qbittorrent"
                回声“”

                # 提示用户确认安装
                read -p "确定安装QB吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲


                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker 运行 -d \
                          --name=qbittorrent \
                          -e PUID=1000 \
                          -e PGID=1000 \
                          -e TZ=等/UTC \
                          -e WEBUI_PORT=8081 \
                          -p 8081:8081 \
                          -p 6881:6881 \
                          -p 6881:6881/udp \
                          -v /home/docker/qbittorrent/config:/config \
                          -v /home/docker/qbittorrent/downloads:/downloads \
                          --restart 除非停止 \
                          lscr.io/linuxserver/qbittorrent：最新
                    清除
                    echo "QB已经安装完成"
                    回声“------------------------”
                    # 获取外部IP地址
                    external_ip=$(curl -s ipv4.ip.sb)

                    echo "您可以使用以下地址访问QB:"
                    回显“http：$ external_ip：8081”
                    echo "账号: admin"
                    echo "密码: adminadmin"
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;

          9）
            如果 docker 检查邮件服务器 &>/dev/null; 然后

                    清除
                    echo "poste.io已安装，访问地址: "
                    yuming=$(cat /home/docker/mail.txt)
                    echo "https://$yuming"
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f 邮件服务器
                            docker rmi -f 类比/poste.io

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            yuming=$(cat /home/docker/mail.txt)
                            码头工人运行\
                                --net=主机\
                                -e TZ=欧洲/布拉格 \
                                -v /home/docker/mail:/data \
                                --名称“邮件服务器”\
                                -h "$yuming" \
                                --重新启动=始终\
                                -d 类比/poste.io

                            清除
                            echo "poste.io已经安装完成"
                            回声“------------------------”
                            echo "您可以使用以下地址访问poste.io:"
                            echo "https://$yuming"
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f 邮件服务器
                            docker rmi -f 类比/poste.io
                            rm /home/docker/mail.txt
                            rm -rf /home/docker/mail
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                如果 ！命令 -v telnet &>/dev/null; 然后
                    if 命令 -v apt &>/dev/null; 然后
                        apt update -y && apt install -y telnet
                    elif 命令 -v yum &>/dev/null; 然后
                        yum -y 更新 && yum -y 安装 telnet
                    别的
                        echo“未知的包管理器！”
                        1号出口
                    菲
                菲

                清除
                回声“”
                echo "端口检测"
                端口=25
                超时=3

                如果回显“退出” | $timeout telnet smtp.qq.com $port | 超时 grep '已连接'; 然后
                  echo -e "\e[32m端口$port当前可用\e[0m"
                别的
                  echo -e "\e[31m端口$port当前不可用\e[0m"
                菲
                回声“------------------------”
                回声“”


                echo "安装提示"
                echo "poste.io一个邮件服务器，确保80和443端口没被占用，确保25端口开放"
                echo "官网介绍：https://hub.docker.com/r/analogic/poste.io"
                回声“”

                # 提示用户确认安装
                read -p "确定安装poste.io吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除

                    read -p "请设置邮箱域名 例如 mail.yuming.com : " yuming
                    mkdir -p /home/docker # 高层创建目录
                    echo "$yuming" > /home/docker/mail.txt # 写入文件
                    回声“------------------------”
                    external_ip=$(curl -s ipv4.ip.sb)
                    echo "先解析这些DNS记录"
                    echo "一封邮件$external_ip"
                    echo "CNAME imap $yuming"
                    echo "CNAME pop $yuming"
                    echo "CNAME smtp $yuming"
                    echo "MX@$yuming"
                    回声“TXT @ v=spf1 mx ~全部”
                    回显“TXT？？”
                    回声“”
                    回声“------------------------”
                    echo "按任意键继续..."
                    读取-n 1 -s -r -p“”

                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    码头工人运行\
                        --net=主机\
                        -e TZ=欧洲/布拉格 \
                        -v /home/docker/mail:/data \
                        --名称“邮件服务器”\
                        -h "$yuming" \
                        --重新启动=始终\
                        -d 类比/poste.io

                    清除
                    echo "poste.io已经安装完成"
                    回声“------------------------”
                    echo "您可以使用以下地址访问poste.io:"
                    echo "https://$yuming"
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;

          10）
            如果 docker 检查 Rocketchat &>/dev/null; 然后


                    清除
                    echo "rocket.chat已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：3897”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f Rocketchat
                            docker rmi -f Rocket.chat

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker run --name Rocketchat --restart=always -p 3897:3000 --link db --env ROOT_URL=http://localhost --env MONGO_OPLOG_URL=mongodb://db:27017/rs5 -d Rocket.chat

                            清除
                            external_ip=$(curl -s ipv4.ip.sb)
                            echo "rocket.chat 已经安装完成"
                            回声“------------------------”
                            echo "多等一会，您可以使用以下地址访问rocket.chat:"
                            回显“http：$ external_ip：3897”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f Rocketchat
                            docker rmi -f Rocket.chat
                            docker rm -f 数据库
                            docker rmi -f mongo：最新
                            rm -rf /home/docker/mongo
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "rocket.chat国外知名开源开源聊天系统"
                echo "官网介绍：https://www.rocket.chat"
                回声“”

                # 提示用户确认安装
                read -p "确定安装rocket.chat吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除

                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker run --name db -d --restart=always \
                        -v /home/docker/mongo/dump:/dump \
                        mongo：最新--replSet rs5 --oplogSize 256
                   睡觉 1
                    docker exec -it db mongosh --eval “printjson(rs.initiate())”
                    睡5
                    docker run --name Rocketchat --restart=always -p 3897:3000 --link db --env ROOT_URL=http://localhost --env MONGO_OPLOG_URL=mongodb://db:27017/rs5 -d Rocket.chat

                    清除

                    external_ip=$(curl -s ipv4.ip.sb)
                    echo "rocket.chat 已经安装完成"
                    回声“------------------------”
                    echo "多等一会，您可以使用以下地址访问rocket.chat:"
                    回显“http：$ external_ip：3897”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;



          11）
            如果 docker 检查 zentao-server &>/dev/null; 然后

                    清除
                    echo "禅道已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：82”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f zentao-server
                            docker rmi -f idoop/zentao:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker运行-d -p 82:80 -p 3308:3306 \
                                    -e ADMINER_USER="root" -e ADMINER_PASSWD="密码" \
                                    -e BIND_ADDRESS=“假”\
                                    -v /home/docker/zbox/:/opt/zbox/ \
                                    --add-host smtp.exmail.qq.com:163.177.90.125 \
                                    --name zentao-server \
                                    --重新启动=始终\
                                    idoop/zentao:最新


                            清除
                            echo "禅道已经安装完成"
                            回声“------------------------”
                            echo "您可以使用以下地址访问禅道:"

                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：82”
                            echo "账号和密码没变"
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f zentao-server
                            docker rmi -f idoop/zentao:最新
                            rm -rf /home/docker/zbox
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "禅道是通用的项目管理软件"
                echo "官网介绍：https://www.zentao.net/"
                回声“”

                # 提示用户确认安装
                read -p "确定安装禅道吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker运行-d -p 82:80 -p 3308:3306 \
                            -e ADMINER_USER="root" -e ADMINER_PASSWD="密码" \
                            -e BIND_ADDRESS=“假”\
                            -v /home/docker/zbox/:/opt/zbox/ \
                            --add-host smtp.exmail.qq.com:163.177.90.125 \
                            --name zentao-server \
                            --重新启动=始终\
                            idoop/zentao:最新
                    清除
                    echo "禅道已经安装完成"
                    回声“------------------------”
                    echo "您可以使用以下地址访问禅道:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：82”
                    echo "账号: admin"
                    echo "密码: 123456"
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;

          12）
            如果 docker 检查 qinglong &>/dev/null; 然后
                    清除
                    echo "青龙面板已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：5700”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f 青龙
                            docker rmi -f Whyour/qinglong:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                              -v /home/docker/ql/data:/ql/data \
                              -p 5700:5700 \
                              --名字青龙\
                              --主机名青龙\
                              --restart 除非停止 \
                              Whyo​​ur/青龙：最新


                            清除
                            echo "青龙面板已经安装完成"
                            回声“------------------------”
                            echo "您可以使用以下地址访问青龙面板:"

                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：5700”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f 青龙
                            docker rmi -f Whyour/qinglong:最新
                            rm -rf /home/docker/ql
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "青龙面板是一个定时任务管理平台"
                echo "官网介绍：https://github.com/whyour/qinglong"
                回声“”

                # 提示用户确认安装
                read -p "确定安装青龙面板吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker 运行 -d \
                      -v /home/docker/ql/data:/ql/data \
                      -p 5700:5700 \
                      --名字青龙\
                      --主机名青龙\
                      --restart 除非停止 \
                      Whyo​​ur/青龙：最新

                    清除
                    echo "青龙面板已经安装完成"
                    回声“------------------------”
                    echo "您可以使用以下地址访问青龙面板:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：5700”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;
          13）
            如果 docker 检查 cloudreve &>/dev/null; 然后

                    清除
                    echo "cloudreve已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：5212”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f cloudreve
                            docker rmi -f cloudreve/cloudreve:最新
                            docker rm -f aria2
                            docker rmi -f p3terx/aria2-pro

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            cd /home/ && mkdir -p docker/cloud && cd docker/cloud && mkdir temp_data && mkdir -vp cloudreve/{上传、头像} && touch cloudreve/conf.ini && touch cloudreve/cloudreve.db && mkdir -p aria2/配置&& mkdir -p 数据/aria2 && chmod -R 777 数据/aria2
                            curl -o /home/docker/cloud/docker-compose.yml https://raw.githubusercontent.com/kejilion/docker/main/cloudreve-docker-compose.yml
                            cd /home/docker/cloud/ && docker-compose up -d


                            清除
                            echo“cloudreve已经安装完成”
                            回声“------------------------”
                            echo "您可以使用以下地址访问cloudreve:"
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：5212”
                            睡觉 3
                            docker 日志 cloudreve
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f cloudreve
                            docker rmi -f cloudreve/cloudreve:最新
                            docker rm -f aria2
                            docker rmi -f p3terx/aria2-pro
                            rm -rf /home/docker/cloud
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "cloudreve是一个支持多种云存储的网盘系统"
                echo "官网介绍：https://cloudreve.org/"
                回声“”

                # 提示用户确认安装
                read -p "确定安装cloudreve吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    cd /home/ && mkdir -p docker/cloud && cd docker/cloud && mkdir temp_data && mkdir -vp cloudreve/{上传、头像} && touch cloudreve/conf.ini && touch cloudreve/cloudreve.db && mkdir -p aria2/配置&& mkdir -p 数据/aria2 && chmod -R 777 数据/aria2
                    curl -o /home/docker/cloud/docker-compose.yml https://raw.githubusercontent.com/kejilion/docker/main/cloudreve-docker-compose.yml
                    cd /home/docker/cloud/ && docker-compose up -d


                    清除
                    echo“cloudreve已经安装完成”
                    回声“------------------------”
                    echo "您可以使用以下地址访问cloudreve:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：5212”
                    睡觉 3
                    docker 日志 cloudreve
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;

          14）
            如果 docker 检查 easyimage &>/dev/null; 然后

                    清除
                    echo "简单图床已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：85”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f easyimage
                            docker rmi -f ddsderek/easyimage:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲


                            docker 运行 -d \
                              --名称 easyimage \
                              -p 85:80 \
                              -e TZ=亚洲/上海 \
                              -e PUID=1000 \
                              -e PGID=1000 \
                              -v /home/docker/easyimage/config:/app/web/config \
                              -v /home/docker/easyimage/i:/app/web/i \
                              --restart 除非停止 \
                              ddsderek/easyimage：最新

                            清除
                            echo "简单图床已经安装完成"
                            回声“------------------------”
                            echo "您可以使用以下地址访问简单图床："
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：85”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f easyimage
                            docker rmi -f ddsderek/easyimage:最新
                            rm -rf /home/docker/easyimage
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "简单图床是一个简单的图床程序"
                echo "官网介绍：https://github.com/icret/EasyImages2.0"
                回声“”

                # 提示用户确认安装
                read -p "确定简单安装图床吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲


                    docker 运行 -d \
                      --名称 easyimage \
                      -p 85:80 \
                      -e TZ=亚洲/上海 \
                      -e PUID=1000 \
                      -e PGID=1000 \
                      -v /home/docker/easyimage/config:/app/web/config \
                      -v /home/docker/easyimage/i:/app/web/i \
                      --restart 除非停止 \
                      ddsderek/easyimage：最新


                    清除
                    echo "简单图床已经安装完成"
                    回声“------------------------”
                    echo "您可以使用以下地址访问简单图床："
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：85”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲
              ;;

          15）
            如果 docker 检查 emby &>/dev/null; 然后

                    清除
                    echo "emby已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：8096”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f emby
                            docker rmi -f linuxserver/emby:最新

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker run -d --name=emby --restart=always \
                                -v /homeo/docker/emby/config:/config \
                                -v /homeo/docker/emby/share1:/mnt/share1 \
                                -v /homeo/docker/emby/share2:/mnt/share2 \
                                -v /mnt/通知:/mnt/通知 \
                                -p 8096:8096 -p 8920:8920 \
                                -e UID=1000 -e GID=100 -e GIDLIST=100 \
                                linux服务器/emby：最新


                            清除
                            echo“emby已经安装完成”
                            回声“------------------------”
                            echo "您可以使用以下地址访问emby:"
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：8096”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f emby
                            docker rmi -f linuxserver/emby:最新
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "emby 是一个主要从架构式的媒体服务器软件，可以用于整理服务器上的视频和音频，提供音频和视频流式传输到客户端设备"
                echo "官网介绍：https://emby.media/"
                回声“”

                # 提示用户确认安装
                read -p "确定安装emby吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker run -d --name=emby --restart=always \
                        -v /homeo/docker/emby/config:/config \
                        -v /homeo/docker/emby/share1:/mnt/share1 \
                        -v /homeo/docker/emby/share2:/mnt/share2 \
                        -v /mnt/通知:/mnt/通知\
                        -p 8096:8096 -p 8920:8920 \
                        -e UID=1000 -e GID=100 -e GIDLIST=100 \
                        linux服务器/emby：最新

                    清除
                    echo“emby已经安装完成”
                    回声“------------------------”
                    echo "您可以使用以下地址访问emby:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：8096”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;


          16）
            如果 docker 检查 Looking-glass &>/dev/null; 然后

                    清除
                    echo "Speedtest测速面板已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：89”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f 镜子
                            docker rmi -f wikihostinc/looking-glass-server

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker run -d --name Looking-glass --restart always -p 89:80 wikihostinc/looking-glass-server


                            清除
                            echo“完成速度测试测速面板已经安装”
                            回声“------------------------”
                            echo "您可以使用以下地址访问Speedtest测速面板："
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：89”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f 镜子
                            docker rmi -f wikihostinc/looking-glass-server
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "Speedtest测速面板是一个VPS网速测试工具，演示测试功能，还可以实时监控VPS进出流量站"
                echo "官网介绍：https://github.com/wikihost-opensource/als"
                回声“”

                # 提示用户确认安装
                read -p "确定安装Speedtest测速面板吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲

                    docker run -d --name Looking-glass --restart always -p 89:80 wikihostinc/looking-glass-server

                    清除
                    echo“完成速度测试测速面板已经安装”
                    回声“------------------------”
                    echo "您可以使用以下地址访问Speedtest测速面板："
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：89”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;
          17）
            如果 docker 检查 adguardhome &>/dev/null; 然后

                    清除
                    echo "AdGuardHome已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：3000”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f adguardhome
                            docker rmi -f adguard/adguardhome

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker 运行 -d \
                                --name adguardhome \
                                -v /home/docker/adguardhome/work:/opt/adguardhome/work \
                                -v /home/docker/adguardhome/conf:/opt/adguardhome/conf \
                                -p 53:53/tcp \
                                -p 53:53/udp \
                                -p 3000:3000/tcp \
                                --始终重新启动\
                                adguard/adguardhome

                            清除
                            echo“AdGuardHome已经安装完成”
                            回声“------------------------”
                            echo "您可以使用以下地址访问AdGuardHome面板："
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：3000”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f adguardhome
                            docker rmi -f adguard/adguardhome
                            rm -rf /home/docker/adguardhome
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "AdGuardHome是一款全网络广告拦截与反跟踪软件，未来将不仅仅是一个DNS服务器。"
                echo "官网介绍：https://hub.docker.com/r/adguard/adguardhome"
                回声“”

                # 提示用户确认安装
                read -p "确定安装AdGuardHome吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲
                        docker 运行 -d \
                            --name adguardhome \
                            -v /home/docker/adguardhome/work:/opt/adguardhome/work \
                            -v /home/docker/adguardhome/conf:/opt/adguardhome/conf \
                            -p 53:53/tcp \
                            -p 53:53/udp \
                            -p 3000:3000/tcp \
                            --始终重新启动\
                            adguard/adguardhome

                    清除
                    echo“AdGuardHome已经安装完成”
                    回声“------------------------”
                    echo "您可以使用以下地址访问AdGuardHome:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：3000”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;


          18）
            如果 docker 检查 onlyoffice &>/dev/null; 然后

                    清除
                    echo "onlyoffice已安装，访问地址: "
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：8082”
                    回声“”

                    echo "应用操作"
                    回声“------------------------”
                    echo "1.更新应用 2.卸载应用"
                    回声“------------------------”
                    echo "0.返回上一级选单"
                    回声“------------------------”
                    read -p "请输入你的选择: " sub_choice

                    案例 $sub_choice 中
                        1）
                            清除
                            docker rm -f onlyoffice
                            docker rmi -f onlyoffice/documentserver

                            如果 ！命令 -v iptables &> /dev/null; 然后
                            回声“”
                            别的
                                # iptables命令
                                iptables -P 输入接受
                                iptables -P 转发接受
                                iptables -P 输出接受
                                iptables-F
                            菲


                            # 检查是否安装Docker（如果需要）
                            如果 ！命令-v docker &>/dev/null; 然后
                                卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                                systemctl启动docker
                                systemctl 启用 docker
                            别的
                                echo "Docker 已经安装，正在配置容器……"
                            菲

                            docker run -d -p 8082:80 \
                                --重新启动=始终\
                                --仅名称办公室\
                                -v /home/docker/onlyoffice/DocumentServer/logs:/var/log/onlyoffice \
                                -v /home/docker/onlyoffice/DocumentServer/data:/var/www/onlyoffice/Data \
                                 仅限办公室/文档服务器

                            清除
                            echo "onlyoffice已经安装完成"
                            回声“------------------------”
                            echo "您可以使用以下地址访问onlyoffice:"
                            external_ip=$(curl -s ipv4.ip.sb)
                            回显“http：$ external_ip：8082”
                            回声“”
                            ;;
                        2）
                            清除
                            docker rm -f onlyoffice
                            docker rmi -f onlyoffice/documentserver
                            rm -rf /home/docker/onlyoffice
                            echo“应用卸载已”
                            ;;
                        0）
                            break # 跳出循环，退出菜单
                            ;;
                        *)
                            break # 跳出循环，退出菜单
                            ;;
                    埃萨克
            别的
                清除
                echo "安装提示"
                echo "onlyoffice是一款在线办公工具，开源太强大了！"
                echo "官网介绍：https://www.onlyoffice.com/"
                回声“”

                # 提示用户确认安装
                read -p "确定安装onlyoffice吗？(Y/N): " choice
                案例“$choice”
                    [是]）
                    清除
                    如果 ！命令 -v iptables &> /dev/null; 然后
                    回声“”
                    别的
                        # iptables命令
                        iptables -P 输入接受
                        iptables -P 转发接受
                        iptables -P 输出接受
                        iptables-F
                    菲

                    # 检查是否安装Docker（如果需要）
                    如果 ！命令-v docker &>/dev/null; 然后
                        卷曲-fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin
                        systemctl启动docker
                        systemctl 启用 docker
                    别的
                        echo "Docker 已经安装，正在配置容器……"
                    菲
                    docker run -d -p 8082:80 \
                        --重新启动=始终\
                        --仅名称办公室\
                        -v /home/docker/onlyoffice/DocumentServer/logs:/var/log/onlyoffice \
                        -v /home/docker/onlyoffice/DocumentServer/data:/var/www/onlyoffice/Data \
                         仅限办公室/文档服务器

                    清除
                    echo "onlyoffice已经安装完成"
                    回声“------------------------”
                    echo "您可以使用以下地址访问onlyoffice:"
                    external_ip=$(curl -s ipv4.ip.sb)
                    回显“http：$ external_ip：8082”
                    回声“”

                        ;;
                    [NN])
                        ;;
                    *)
                        ;;
                埃萨克
            菲

              ;;



          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
    完毕
    ;;

  12）
    虽然真实；做
      回显“▼”
      echo "我的工作区"
      echo "系统将为你提供5个后台运行的工作区，你可以用来执行长时间的任务"
      echo "即使你断开SSH，工作区中的任务也不会中断，非常方​​便！来试试吧！"
      echo -e "\033[33m注意:进入工作区后使用Ctrl+b再单独按d，退出工作区！\033[0m"
      回声“------------------------”
      echo "a.安装工作区环境"
      回声“------------------------”
      echo "1.1号工作区"
      echo "2.2号工作区"
      echo "3.3号工作区"
      echo "4. 4号工作区"
      echo "5.5号工作区"
      回声“------------------------”
      echo "8.工作区状态"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          A）
              清除
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y tmux
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 tmux
              别的
                  echo“未知的包管理器！”
              菲

              ;;
          1）
              清除
              SESSION_NAME=“工作1”

              # 检查会话是否已经存在
              tmux has-session -t $SESSION_NAME 2>/dev/null

              ＃$？是一个特殊变量，保存最后执行的命令的退出状态
              如果 [ $? !=0]; 然后
                # 会话不存在，创建一个新会话
                tmux 新 -s $SESSION_NAME
              别的
                # 会话存在，附加到它
                tmux 附加会话 -t $SESSION_NAME
              菲
              ;;
          2）
              清除
              SESSION_NAME=“工作2”

              # 检查会话是否已经存在
              tmux has-session -t $SESSION_NAME 2>/dev/null

              ＃$？是一个特殊变量，保存最后执行的命令的退出状态
              如果 [ $? !=0]; 然后
                # 会话不存在，创建一个新会话
                tmux 新 -s $SESSION_NAME
              别的
                # 会话存在，附加到它
                tmux 附加会话 -t $SESSION_NAME
              菲
              ;;
          3）
              清除
              SESSION_NAME=“工作3”

              # 检查会话是否已经存在
              tmux has-session -t $SESSION_NAME 2>/dev/null

              ＃$？是一个特殊变量，保存最后执行的命令的退出状态
              如果 [ $? !=0]; 然后
                # 会话不存在，创建一个新会话
                tmux 新 -s $SESSION_NAME
              别的
                # 会话存在，附加到它
                tmux 附加会话 -t $SESSION_NAME
              菲
              ;;
          4）
              清除
              SESSION_NAME=“工作4”

              # 检查会话是否已经存在
              tmux has-session -t $SESSION_NAME 2>/dev/null

              ＃$？是一个特殊变量，保存最后执行的命令的退出状态
              如果 [ $? !=0]; 然后
                # 会话不存在，创建一个新会话
                tmux 新 -s $SESSION_NAME
              别的
                # 会话存在，附加到它
                tmux 附加会话 -t $SESSION_NAME
              菲
              ;;
          5）
              清除
              SESSION_NAME=“工作5”

              # 检查会话是否已经存在
              tmux has-session -t $SESSION_NAME 2>/dev/null

              ＃$？是一个特殊变量，保存最后执行的命令的退出状态
              如果 [ $? !=0]; 然后
                # 会话不存在，创建一个新会话
                tmux 新 -s $SESSION_NAME
              别的
                # 会话存在，附加到它
                tmux 附加会话 -t $SESSION_NAME
              菲
              ;;

          8）
              清除
              tmux 列表会话
              ;;
          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
    完毕
    ;;

  13）
    虽然真实；做

      回显“▼”
      echo“系统工具”
      回声“------------------------”
      echo "1. 设置脚本启动快捷键"
      回声“------------------------”
      echo "2.修改ROOT密码"
      echo "3.开启ROOT密码登录模式"
      echo "4.安装Python最新版本"
      echo "5.开放所有端口"
      echo "6.修改SSH连接端口"
      echo "7.优化DNS地址"
      echo "8.一键重装系统"
      echo "9.取消ROOT账户创建新账户"
      echo "10.切换优先ipv4/ipv6"
      echo "11. 查看端口占用状态"
      echo "12.修改虚拟内存大小"
      echo "13.用户管理"
      echo "14.用户/密码生成器"
      echo "15.系统时区调整"
      echo "16.开启BBR3加速"
      echo -e "17.防火墙高级管理器\033[33mNEW\033[0m"
      回声“------------------------”
      echo "21.留言板"
      回声“------------------------”
      echo "0.返回主菜单"
      回声“------------------------”
      read -p "请输入你的选择: " sub_choice

      案例 $sub_choice 中
          1）
              清除
              read -p "请输入你的快捷键:" kuaijiejian
              echo "alias $kuaijiejian='curl -sS -O https://raw.githubusercontent.com/kejilion/sh/main/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh'" >> ~/ .bashrc
              echo " 快捷键已添加。请重新启动终端，或运行 'source ~/.bashrc' 以使修改生效。"
              ;;

          2）
              清除
              echo "设置你的ROOT密码"
              密码
              ;;
          3）
              清除
              echo "设置你的ROOT密码"
              密码
              sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config;
              sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
              服务 sshd 重新启动
              echo "ROOT登录设置完毕！"
              read -p "需要重启服务器吗？(Y/N): " 选择
          案例“$choice”
            [是]）
              重启
              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
              ;;

          4）
            清除

            红色=“\033[31m”
            绿色=“\033[32m”
            黄色=“\033[33m”
            NC=“\033[0米”

            # 系统检测
            OS=$(cat /etc/os-release | grep -o -E "Debian|Ubuntu|CentOS" | head -n 1)

            如果 [[ $OS == "Debian" || $OS == "Ubuntu" || $OS == "CentOS"]]; 然后
                echo -e "检测到你的系统是${YELLOW}${OS}${NC}"
            别的
                echo -e "${RED} 很抱歉，你的系统不再支持！${NC}"
                1号出口
            菲

            # 检测安装Python3的版本
            版本=$(python3 -V 2>&1 | awk '{print $2}')

            # 获取最新Python3版本
            PY_VERSION=$(curl -s https://www.python.org/ | grep "下载/发布" | grep -o 'Python [0-9.]*' | grep -o '[0-9.]* '）

            # 卸载Python3旧版本
            如果 [[ $VERSION == "3"* ]]; 然后
                echo -e "${YELLOW}你的Python3版本是${NC}${RED}${VERSION}${NC}，${YELLOW}最新版本是${NC}${RED}${PY_VERSION}$ {NC}”
                read -p " 是否确认升级最新版本Python3？默认不升级 [y/N]: " CONFIRM
                如果 [[ $CONFIRM == "y" ]]; 然后
                    if [[ $OS == "CentOS" ]]; 然后
                        回声“”
                        rm -rf /usr/local/python3* >/dev/null 2>&1
                    别的
                        apt --purge 删除 python3 python3-pip -y
                        rm-rf /usr/local/python3*
                    菲
                别的
                    echo -e "${YELLOW}已取消升级Python3${NC}"
                    1号出口
                菲
            别的
                echo -e "${RED}检测到没有安装Python3。${NC}"
                read -p "是否确认安装最新版本Python3？默认安装 [Y/n]: " CONFIRM
                如果 [[ $CONFIRM != "n" ]]; 然后
                    echo -e "${GREEN}开始安装最新版本Python3...${NC}"
                别的
                    echo -e "${YELLOW}已取消安装Python3${NC}"
                    1号出口
                菲
            菲

            # 安装相关依赖
            if [[ $OS == "CentOS" ]]; 然后
                百胜更新
                yum groupinstall -y“开发工具”
                yum install wget openssl-devel bzip2-devel libffi-devel zlib-devel -y
            别的
                易于更新
                apt install wget build-essential libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y
            菲

            #安装python3
            cd /根目录/
            wget https://www.python.org/ftp/python/${PY_VERSION}/Python-"$PY_VERSION".tgz
            tar -zxf Python-${PY_VERSION}.tgz
            cd Python-${PY_VERSION}
            ./configure --prefix=/usr/local/python3
            使 -j $(nproc)
            进行安装
            如果 [ $? -eq 0 ];然后
                rm -f /usr/local/bin/python3*
                rm -f /usr/local/bin/pip3*
                ln -sf /usr/local/python3/bin/python3 /usr/bin/python3
                ln -sf /usr/local/python3/bin/pip3 /usr/bin/pip3
                清除
                echo -e "${YELLOW}Python3安装${GREEN}成功，${NC}版本为: ${NC}${GREEN}${PY_VERSION}${NC}"
            别的
                清除
                echo -e "${RED}Python3安装失败！${NC}"
                1号出口
            菲
            cd /root/ && rm -rf Python-${PY_VERSION}.tgz && rm -rf Python-${PY_VERSION}
              ;;

          5）
              清除
              iptables -P 输入接受
              iptables -P 转发接受
              iptables -P 输出接受
              iptables-F

              apt purge -y iptables-persistent > /dev/null 2>&1
              apt purge -y ufw > /dev/null 2>&1
              yum 删除 -y 防火墙 > /dev/null 2>&1
              yum 删除 -y iptables-services > /dev/null 2>&1

              echo "端口已全部开放"

              ;;
          6）
              清除
              #!/bin/bash

              # 去掉 #Port 的注释
              sed -i 's/#Port/Port/' /etc/ssh/sshd_config

              # 读取当前的SSH端口号
              current_port=$(grep -E '^ *端口 [0-9]+' /etc/ssh/sshd_config | awk '{print $2}')

              # 打印当前的 SSH 端口号
              echo "当前的 SSH 端口号是: $current_port"

              回声“------------------------”

              # 提示用户输入新的 SSH 端口号
              read -p "请输入新的 SSH 端口号: " new_port

              # 备份 SSH 配置文件
              cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

              # 替换 SSH 配置文件中的端口号
              sed -i "s/端口 [0-9]\+/端口 $new_port/g" /etc/ssh/sshd_config

              # 重新启动 SSH 服务
              服务 sshd 重新启动

              echo "SSH 端口已修改为: $new_port"

              清除
              iptables -P 输入接受
              iptables -P 转发接受
              iptables -P 输出接受
              iptables-F

              apt purge -y iptables-persistent > /dev/null 2>&1
              apt purge -y ufw > /dev/null 2>&1
              yum 删除 -y 防火墙 > /dev/null 2>&1
              yum 删除 -y iptables-services > /dev/null 2>&1

              ;;


          7）
            清除
            echo "当前DNS地址"
            回声“------------------------”
            猫 /etc/resolv.conf
            回声“------------------------”
            回声“”
            # 询问用户是否要优化DNS设置
            read -p "是否要设置为Cloudflare和Google的DNS地址？(y/n): " choice

            如果[“$choice”==“y”]; 然后
                # 定义DNS地址
                cloudflare_ipv4="1.1.1.1"
                google_ipv4="8.8.8.8"
                cloudflare_ipv6="2606:4700:4700::1111"
                google_ipv6="2001:4860:4860::8888"

                # 检查机器是否有IPv6地址
                ipv6_可用=0
                if [[ $(ip -6 addr | grep -c "inet6") -gt 0 ]]; 然后
                    ipv6_可用=1
                菲

                #设置DNS地址为Cloudflare和Google（IPv4和IPv6）
                echo "设置DNS为Cloudflare和Google"

                #设置IPv4地址
                echo“名称服务器$cloudflare_ipv4”> /etc/resolv.conf
                echo "名称服务器 $google_ipv4" >> /etc/resolv.conf

                # 如果有IPv6地址，则设置IPv6地址
                如果[[ $ipv6_available -eq 1 ]]; 然后
                    echo "名称服务器 $cloudflare_ipv6" >> /etc/resolv.conf
                    echo "名称服务器 $google_ipv6" >> /etc/resolv.conf
                菲

                echo "DNS地址已更新"
                回声“------------------------”
                猫 /etc/resolv.conf
                回声“------------------------”
            别的
                echo "DNS设置未更改"
            菲

              ;;

          8）
          清除
          echo "请备份数据，以便您重装系统，预计耗时 15 分钟。"
          read -p "确定继续吗？(Y/N): " choice

          案例“$choice”
            [是]）
              虽然真实；做
                read -p "请选择要重装的系统: 1. Debian12 | 2. Ubuntu20.04 : " sys_choice

                案例“$sys_choice”
                  1）
                    西通=“-d 12”
                    break # 结束循环
                    ;;
                  2）
                    xitong="-u 20.04"
                    break # 结束循环
                    ;;
                  *)
                    echo "无效的选择，请重新输入。"
                    ;;
                埃萨克
              完毕

              read -p "请输入你重装后的密码: " vpspasswd
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y wget
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 wget
              别的
                  echo“未知的包管理器！”
              菲
              bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') $xitong -v 64 -p $vpspasswd -port 22
              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
              ;;


          9）
            清除
            如果 ！命令 -v sudo &>/dev/null; 然后
                if 命令 -v apt &>/dev/null; 然后
                    apt update -y && apt install -y sudo
                elif 命令 -v yum &>/dev/null; 然后
                    yum -y 更新 && yum -y 安装 sudo
                别的
                    1号出口
                菲
            菲

            # 提示用户输入新用户名
            read -p "请输入新用户名: " new_username

            # 创建新用户并设置密码
            sudo useradd -m -s /bin/bash "$new_username"
            sudo passwd“$新用户名”

            # 赋予新用户sudo权限
            回声“$新用户名全部=（全部：全部）全部”| sudo tee -a /etc/sudoers

            # 取消ROOT用户登录
            sudo passwd -l 根

            echo "操作已完成。"
            ;;


          10）
            清除
            ipv6_disabled=$(sysctl -n net.ipv6.conf.all.disable_ipv6)

            回声“”
            如果[“$ipv6_disabled”-eq 1]; 然后
                echo "当前网络优先级设置: IPv4优先"
            别的
                echo "当前网络优先级设置: IPv6优先"
            菲
            回声“------------------------”

            回声“”
            echo "切换网络优先级"
            回声“------------------------”
            echo "1.IPv4优先 2.IPv6优先"
            回声“------------------------”
            read -p "选择优先的网络：" choice

            案例$选择
                1）
                    sysctl -w net.ipv6.conf.all.disable_ipv6=1 > /dev/null 2>&1
                    echo "已切换为IPv4优先"
                    ;;
                2）
                    sysctl -w net.ipv6.conf.all.disable_ipv6=0 > /dev/null 2>&1
                    echo "已切换为IPv6优先"
                    ;;
                *)
                    echo "无效的选择"
                    ;;

            埃萨克
            ;;

          11）
            清除
            SS-图纳佩
            ;;

          12）

            如果[“$EUID”-ne 0]; 然后
              echo "请以root权限运行此脚本。"
              1号出口
            菲

            清除
            # 获取当前交换空间信息
            swap_used=$(free -m | awk 'NR==3{print $3}')
            swap_total=$(free -m | awk 'NR==3{print $2}')

            如果[“$swap_total”-eq 0]; 然后
              交换百分比=0
            别的
              swap_percentage=$((swap_used * 100 / swap_total))
            菲

            swap_info="${swap_used}MB/${swap_total}MB (${swap_percentage}%)"

            echo "当前虚拟内存: $swap_info"

            read -p "是否调整大小？(Y/N): " 选择

            案例“$choice”
              [是]）
                # 输入新的虚拟内存大小
                read -p "请输入虚拟内存大小MB: " new_swap

                # 获取当前系统中所有的swap 分区
                swap_partitions=$(grep -E '^/dev/' /proc/swaps | awk '{print $1}')

                # 遍历并删除所有的交换分区
                对于 $swap_partitions 中的分区；做
                  交换“$分区”
                  wipefs -a "$partition" # 清晰文件系统标识符
                  mkswap -f“$分区”
                  echo "已删除并重新创建swap 分区: $partition"
                完毕

                #确保/swapfile不再被使用
                交换/交换文件

                # 删除旧的/swapfile
                rm -f /交换文件

                #创建新的交换分区
                dd if=/dev/zero of=/swapfile bs=1M count=$new_swap
                chmod 600 /交换文件
                mkswap /交换文件
                交换/交换文件
                echo "/swapfile 交换交换默认值 0 0" >> /etc/fstab

                echo "虚拟内存大小已调整为${new_swap}MB"
                ;;
              [NN])
                echo "已取消"
                ;;
              *)
                echo "无效的选择，请输入 Y 或 N。"
                ;;
            埃萨克
            ;;

          13）
              虽然真实；做
                清除
                # 显示所有用户、用户权限、用户组以及是否在sudoers中
                echo "用户列表"
                回声”------------------------------------------------ ----------------------------”
                printf "%-24s %-34s %-20s %-10s\n" "用户名" "用户权限" "用户组" "sudo权限"
                while IFS=: 读取 -r 用户名 _ 用户 ID 组 ID _ _ homedir shell; 做
                    groups=$(组“$用户名”| cut -d : -f 2)
                    sudo_status=$(sudo -n -lU "$用户名" 2>/dev/null | grep -q '(ALL : ALL)' && echo "是" || echo "否")
                    printf "%-20s %-30s %-20s %-10s\n" "$username" "$homedir" "$groups" "$sudo_status"
                完成 < /etc/passwd


                  回声“”
                  echo "账户操作"
                  回声“------------------------”
                  echo "1.创建普通账户 2.创建高级账户"
                  回声“------------------------”
                  echo "3.赋予最高权限 4.取消最高权限"
                  回声“------------------------”
                  echo "5.删除账号"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                       如果 ！命令 -v sudo &>/dev/null; 然后
                           if 命令 -v apt &>/dev/null; 然后
                               apt update -y && apt install -y sudo
                           elif 命令 -v yum &>/dev/null; 然后
                               yum -y 更新 && yum -y 安装 sudo
                           别的
                               回声“”
                           菲
                       菲

                       # 提示用户输入新用户名
                       read -p "请输入新用户名: " new_username

                       # 创建新用户并设置密码
                       sudo useradd -m -s /bin/bash "$new_username"
                       sudo passwd“$新用户名”

                       echo "操作已完成。"
                          ;;

                      2）
                       如果 ！命令 -v sudo &>/dev/null; 然后
                           if 命令 -v apt &>/dev/null; 然后
                               apt update -y && apt install -y sudo
                           elif 命令 -v yum &>/dev/null; 然后
                               yum -y 更新 && yum -y 安装 sudo
                           别的
                               回声“”
                           菲
                       菲

                       # 提示用户输入新用户名
                       read -p "请输入新用户名: " new_username

                       # 创建新用户并设置密码
                       sudo useradd -m -s /bin/bash "$new_username"
                       sudo passwd“$新用户名”

                       # 赋予新用户sudo权限
                       回声“$新用户名全部=（全部：全部）全部”| sudo tee -a /etc/sudoers

                       echo "操作已完成。"

                          ;;
                      3）
                       如果 ！命令 -v sudo &>/dev/null; 然后
                           if 命令 -v apt &>/dev/null; 然后
                               apt update -y && apt install -y sudo
                           elif 命令 -v yum &>/dev/null; 然后
                               yum -y 更新 && yum -y 安装 sudo
                           别的
                               回声“”
                           菲
                       菲

                       read -p "请输入用户名:" 用户名
                       # 赋予新用户sudo权限
                       echo "$用户名 ALL=(ALL:ALL) ALL" | sudo tee -a /etc/sudoers
                          ;;
                      4）
                       如果 ！命令 -v sudo &>/dev/null; 然后
                           if 命令 -v apt &>/dev/null; 然后
                               apt update -y && apt install -y sudo
                           elif 命令 -v yum &>/dev/null; 然后
                               yum -y 更新 && yum -y 安装 sudo
                           别的
                               回声“”
                           菲
                       菲
                       read -p "请输入用户名:" 用户名
                       # 从sudoers文件中删除用户的sudo权限
                       sudo sed -i "/^$用户名\sALL=(ALL:ALL)\sALL/d" /etc/sudoers

                          ;;
                      5）
                       如果 ！命令 -v sudo &>/dev/null; 然后
                           if 命令 -v apt &>/dev/null; 然后
                               apt update -y && apt install -y sudo
                           elif 命令 -v yum &>/dev/null; 然后
                               yum -y 更新 && yum -y 安装 sudo
                           别的
                               回声“”
                           菲
                       菲
                       read -p "请输入要删除的用户名: " username
                       # 删除用户及其主目录
                       sudo userdel -r "$用户名"

                          ;;

                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕
              ;;


          14）
            清除

            echo "随机用户名"
            回声“------------------------”
            对于 {1..5} 中的 i；做
                用户名=“用户$（< / dev / urandom tr -dc _a-z0-9 | head -c6）”
                echo "随机用户名 $i: $username"
            完毕

            回声“”
            echo "随机姓名"
            回声“------------------------”
            first_names=(“约翰”“简”“迈克尔”“艾米丽”“大卫”“索菲亚”“威廉”“奥利维亚”“詹姆斯”“艾玛”“艾娃”“利亚姆”“米娅”“诺亚”“伊莎贝拉”)
            last_names=(“史密斯”“约翰逊”“布朗”“戴维斯”“威尔逊”“米勒”“琼斯”“加西亚”“马丁内斯”“威廉姆斯”“李”“冈萨雷斯”“罗德里格斯”“埃尔南德斯”)

            # 生成5个随机用户名
            对于 {1..5} 中的 i；做
                名字索引=$((随机% ${#名字[@]}))
                姓氏索引=$((随机% ${#姓氏[@]}))
                user_name="${first_names[$first_name_index]} ${last_names[$last_name_index]}"
                echo "随机用户名 $i: $user_name"
            完毕

            回声“”
            echo "随机UUID"
            回声“------------------------”
            对于 {1..5} 中的 i；做
                uuid=$(cat /proc/sys/kernel/random/uuid)
                echo "随机UUID $i: $uuid"
            完毕

            回声“”
            echo "16位随机密码"
            回声“------------------------”
            对于 {1..5} 中的 i；做
                密码=$(< /dev/urandom tr -dc _A-Zaz-0-9 | head -c16)
                echo "随机密码 $i: $password"
            完毕

            回声“”
            echo "32位随机密码"
            回声“------------------------”
            对于 {1..5} 中的 i；做
                密码=$(< /dev/urandom tr -dc _A-Zaz-0-9 | head -c32)
                echo "随机密码 $i: $password"
            完毕
            回声“”

              ;;

          15）
              虽然真实；做
                  清除
                  echo "系统时间信息"

                  # 获取当前系统时区
                  current_timezone=$(timedatectl show --property=时区 --value)

                  # 获取当前系统时间
                  current_time=$(日期 +"%Y-%m-%d %H:%M:%S")

                  #显示时区和时间
                  echo "当前系统时区：$current_timezone"
                  echo "当前系统时间：$current_time"

                  回声“”
                  echo "时区切换"
                  echo "亚洲------------------------"
                  echo "1.中国上海时间 2.中国香港时间"
                  echo "3. 日本东京时间 4. 韩国首尔时间"
                  echo "5.新加坡时间 6.印度加尔各答题时间"
                  echo "7.迪拜时间 8.澳大利亚悉尼时间"
                  echo "欧洲------------------------"
                  echo "11. 英国伦敦时间 12. 法国巴黎时间"
                  echo "13.德国柏林时间 14.俄罗斯莫斯科时间"
                  echo "15.荷兰尤特赖赫特时间 16.西班牙马德里时间"
                  echo "美洲------------------------"
                  echo "21.美国西部时间 22.东部美国时间"
                  echo "23.加拿大时间 24.墨西哥时间"
                  echo "25.巴西时间 26.阿根廷时间"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                        timedatectl 设置时区亚洲/上海
                          ;;

                      2）
                        timedatectl 设置时区 Asia/Hong_Kong
                          ;;
                      3）
                        timedatectl 设置时区 亚洲/东京
                          ;;
                      4）
                        timedatectl 设置时区 亚洲/首尔
                          ;;
                      5）
                        timedatectl set-timezone 亚洲/新加坡
                          ;;
                      6）
                        timedatectl 设置时区 亚洲/加尔各答
                          ;;
                      7）
                        timedatectl 设置时区 亚洲/迪拜
                          ;;
                      8）
                        timedatectl set-timezone 澳大利亚/悉尼
                          ;;
                      11）
                        timedatectl 设置时区欧洲/伦敦
                          ;;
                      12）
                        timedatectl 设置时区欧洲/巴黎
                          ;;
                      13）
                        timedatectl 设置时区欧洲/柏林
                          ;;
                      14）
                        timedatectl 设置时区欧洲/莫斯科
                          ;;
                      15）
                        timedatectl 设置时区欧洲/阿姆斯特丹
                          ;;
                      16）
                        timedatectl 设置时区欧洲/马德里
                          ;;
                      21）
                        timedatectl 设置时区 America/Los_Angeles
                          ;;
                      22）
                        timedatectl 设置时区 America/New_York
                          ;;
                      23）
                        timedatectl 设置时区 美洲/温哥华
                          ;;
                      24）
                        timedatectl 设置时区 America/Mexico_City
                          ;;
                      25）
                        timedatectl 设置时区 America/Sao_Paulo
                          ;;
                      26）
                        timedatectl 设置时区 America/Argentina/Buenos_Aires
                          ;;
                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;
                  埃萨克
              完毕

              ;;

          16）
          如果 dpkg -l | grep -q 'linux-xanmod'; 然后
            虽然真实；做
                  清除
                  内核版本=$(uname -r)
                  echo "您已安装xanmod的BBRv3内核"
                  echo "当前内核版本: $kernel_version"

                  回声“”
                  echo "内核管理"
                  回声“------------------------”
                  echo "1.更新BBRv3内核 2.卸载BBRv3内核"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                        apt purge -y 'linux-*xanmod1*'
                        更新 grub

                        apt更新-y
                        apt install -y wget gnupg

                        # wget -qO - https://dl.xanmod.org/archive.key | gpg --dearmor -o /usr/share/keyrings/xanmod-archive-keyring.gpg --yes
                        wget -qO - https://raw.githubusercontent.com/kejilion/sh/main/archive.key | wget -qO - https://raw.githubusercontent.com/kejilion/sh/main/archive.key | gpg --dearmor -o /usr/share/keyrings/xanmod-archive-keyring.gpg --yes

                        #步骤3：添加仓库
                        echo 'deb [signed-by=/usr/share/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org 发布 main' | 三通 /etc/apt/sources.list.d/xanmod-release.list

                        # 版本=$(wget -q https://dl.xanmod.org/check_x86-64_psabi.sh && chmod +x check_x86-64_psabi.sh && ./check_x86-64_psabi.sh | grep -oP 'x86-64-v \K\d+|x86-64-v\d+')
                        版本=$(wget -q https://raw.githubusercontent.com/kejilion/sh/main/check_x86-64_psabi.sh && chmod +x check_x86-64_psabi.sh && ./check_x86-64_psabi.sh | grep -oP ' x86-64-v\K\d+|x86-64-v\d+')

                        apt更新-y
                        apt install -y linux-xanmod-x64v$版本

                        echo "XanMod内核已更新。重启后生效"
                        rm -f /etc/apt/sources.list.d/xanmod-release.list
                        rm -f check_x86-64_psabi.sh*

                        重启

                          ;;
                      2）
                        apt purge -y 'linux-*xanmod1*'
                        更新 grub
                        echo "XanMod内核已卸载。重启后生效"
                        重启
                          ;;
                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;

                  埃萨克
            完毕
        别的

          清除
          echo "请备份数据，将为您升级Linux内核开启BBR3"
          echo "官网介绍：https://xanmod.org/"
          回声”------------------------------------------------ ”
          echo "仅支持Debian/Ubuntu唯一支持x86_64架构"
          echo "VPS是512M内存的，请提前添加1G虚拟内存，防止因内存不足掉联！"
          回声”------------------------------------------------ ”
          read -p "确定继续吗？(Y/N): " choice

          案例“$choice”
            [是]）
            如果 [ -r /etc/os-release ]; 然后
                。/etc/os-release
                if [ "$ID" != "debian" ] && [ "$ID" != "ubuntu" ]; 然后
                    echo "当前环境不支持，仅支持Debian和Ubuntu系统"
                    休息
                菲
            别的
                echo "无法确定操作系统类型"
                休息
            菲

            #检查系统架构
            arch=$(dpkg --打印架构)
            if [ "$arch" != "amd64" ]; 然后
              echo "当前环境不支持，仅支持x86_64架构"
              休息
            菲

            apt更新-y
            apt install -y wget gnupg

            # wget -qO - https://dl.xanmod.org/archive.key | gpg --dearmor -o /usr/share/keyrings/xanmod-archive-keyring.gpg --yes
            wget -qO - https://raw.githubusercontent.com/kejilion/sh/main/archive.key | wget -qO - https://raw.githubusercontent.com/kejilion/sh/main/archive.key | gpg --dearmor -o /usr/share/keyrings/xanmod-archive-keyring.gpg --yes

            #步骤3：添加仓库
            echo 'deb [signed-by=/usr/share/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org 发布 main' | 三通 /etc/apt/sources.list.d/xanmod-release.list

            # 版本=$(wget -q https://dl.xanmod.org/check_x86-64_psabi.sh && chmod +x check_x86-64_psabi.sh && ./check_x86-64_psabi.sh | grep -oP 'x86-64-v \K\d+|x86-64-v\d+')
            版本=$(wget -q https://raw.githubusercontent.com/kejilion/sh/main/check_x86-64_psabi.sh && chmod +x check_x86-64_psabi.sh && ./check_x86-64_psabi.sh | grep -oP ' x86-64-v\K\d+|x86-64-v\d+')

            apt更新-y
            apt install -y linux-xanmod-x64v$版本

            #步骤5：启用BBR3
            猫 > /etc/sysctl.conf << EOF
net.core.default_qdisc=fq_pie
net.ipv4.tcp_congestion_control=bbr
EOF
            系统控制-p
            echo "XanMod内核安装并BBR3启用成功。重启后生效"
            rm -f /etc/apt/sources.list.d/xanmod-release.list
            rm -f check_x86-64_psabi.sh*
            重启

              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
        菲
              ;;

          17）
          如果 dpkg -l | grep -q iptables-持久；然后
            虽然真实；做
                  清除
                  echo "防火墙已安装"
                  回声“------------------------”
                  iptables -L 输入

                  回声“”
                  echo“防火墙管理”
                  回声“------------------------”
                  echo "1.开放指定端口 2.关闭指定端口"
                  echo "3.开放所有端口 4.关闭所有端口"
                  回声“------------------------”
                  echo "5.IP白名单 6.IP黑名单"
                  echo "7.清除指定IP"
                  回声“------------------------”
                  echo "9. 卸载防火墙"
                  回声“------------------------”
                  echo "0.返回上一级选单"
                  回声“------------------------”
                  read -p "请输入你的选择: " sub_choice

                  案例 $sub_choice 中
                      1）
                      read -p "请输入开放的端口号: " o_port
                      sed -i "/COMMIT/i -A INPUT -p tcp --dport $o_port -j 接受" /etc/iptables/rules.v4
                      sed -i "/COMMIT/i -A INPUT -p udp --dport $o_port -j 接受" /etc/iptables/rules.v4
                      iptables-restore < /etc/iptables/rules.v4

                          ;;
                      2）
                      read -p "请输入关闭的端口号: " c_port
                      sed -i "/--dport $c_port/d" /etc/iptables/rules.v4
                      iptables-restore < /etc/iptables/rules.v4
                        ;;

                      3）
                      current_port=$(grep -E '^ *端口 [0-9]+' /etc/ssh/sshd_config | awk '{print $2}')

                      猫 > /etc/iptables/rules.v4 << EOF
*筛选
:输入接受[0:0]
：转发接受[0:0]
：输出接受[0:0]
-A 输入 -m 状态 --state 已建立，相关 -j 接受
-A 输出 -m 状态 --state 已建立，相关 -j 接受
-A 输入 -i lo -j 接受
-A 转发 -i lo -j 接受
-A 输入 -p tcp --dport $当前端口 -j 接受
犯罪
EOF
                      iptables-restore < /etc/iptables/rules.v4

                          ;;
                      4）
                      current_port=$(grep -E '^ *端口 [0-9]+' /etc/ssh/sshd_config | awk '{print $2}')

                      猫 > /etc/iptables/rules.v4 << EOF
*筛选
：输入下降[0:0]
: 向前下降 [0:0]
：输出接受[0:0]
-A 输入 -m 状态 --state 已建立，相关 -j 接受
-A 输出 -m 状态 --state 已建立，相关 -j 接受
-A 输入 -i lo -j 接受
-A 转发 -i lo -j 接受
-A 输入 -p tcp --dport $当前端口 -j 接受
犯罪
EOF
                      iptables-restore < /etc/iptables/rules.v4

                          ;;

                      5）
                      read -p "请输入放行的IP: " o_ip
                      sed -i "/COMMIT/i -A 输入 -s $o_ip -j 接受" /etc/iptables/rules.v4
                      iptables-restore < /etc/iptables/rules.v4

                          ;;

                      6）
                      read -p "请输入主机的IP: " c_ip
                      sed -i "/COMMIT/i -A INPUT -s $c_ip -j DROP" /etc/iptables/rules.v4
                      iptables-restore < /etc/iptables/rules.v4
                          ;;

                      7）
                     read -p "请输入清除的IP: " d_ip
                     sed -i "/-A INPUT -s $d_ip/d" /etc/iptables/rules.v4
                     iptables-restore < /etc/iptables/rules.v4
                          ;;

                      9）
                      apt 删除 -y iptables-持久
                      apt purge -y iptables-持久
                      rm /etc/iptables/rules.v4
                      休息
                      # echo "防火墙已卸载，重启生效"
                      ＃ 重启
                          ;;

                      0）
                          break # 跳出循环，退出菜单
                          ;;

                      *)
                          break # 跳出循环，退出菜单
                          ;;

                  埃萨克
            完毕
        别的

          清除
          echo "将为你安装防火墙，该防火墙仅支持Debian/Ubuntu"
          回声”------------------------------------------------ ”
          read -p "确定继续吗？(Y/N): " choice

          案例“$choice”
            [是]）
            如果 [ -r /etc/os-release ]; 然后
                。/etc/os-release
                if [ "$ID" != "debian" ] && [ "$ID" != "ubuntu" ]; 然后
                    echo "当前环境不支持，仅支持Debian和Ubuntu系统"
                    休息
                菲
            别的
                echo "无法确定操作系统类型"
                休息
            菲

          清除
          iptables -P 输入接受
          iptables -P 转发接受
          iptables -P 输出接受
          iptables-F

          apt 删除 -y iptables-持久
          apt purge -y iptables-持久
          apt删除-y ufw
          apt purge -y ufw
          rm /etc/iptables/rules.v4

          apt update -y && apt install -y iptables-persistent

          current_port=$(grep -E '^ *端口 [0-9]+' /etc/ssh/sshd_config | awk '{print $2}')

          猫 > /etc/iptables/rules.v4 << EOF
*筛选
：输入下降[0:0]
: 向前下降 [0:0]
：输出接受[0:0]
-A 输入 -m 状态 --state 已建立，相关 -j 接受
-A 输出 -m 状态 --state 已建立，相关 -j 接受
-A 输入 -i lo -j 接受
-A 转发 -i lo -j 接受
-A 输入 -p tcp --dport $当前端口 -j 接受
犯罪
EOF

          iptables-restore < /etc/iptables/rules.v4
          systemctl 启用 netfilter 持久性
          echo "防火墙安装完成"


              ;;
            [NN])
              echo "已取消"
              ;;
            *)
              echo "无效的选择，请输入 Y 或 N。"
              ;;
          埃萨克
        菲
              ;;


          21）
          清除
          # 检查是否已安装sshpass
          如果 ！命令-v sshpass &>/dev/null; 然后
              if 命令 -v apt &>/dev/null; 然后
                  apt update -y && apt install -y sshpass
              elif 命令 -v yum &>/dev/null; 然后
                  yum -y 更新 && yum -y 安装 sshpass
              别的
                  echo“未知的包管理器！”
              菲
          别的
              echo "sshpass 已经安装，跳过安装步骤。"
          菲

          远程 IP =“66.42.61.110”
          Remote_user=“辽田123”
          Remote_file="/home/liaotian123/liaotian.txt"
          password="kejilionYYDS" # 替换为您的密码

          清除
          echo "科技狮留言板"
          回声“------------------------”
          #显示现有的留言内容
          sshpass -p "${password}" ssh -o StrictHostKeyChecking=no "${remote_user}@${remote_ip}" "cat '${remote_file}'"
          回声“”
          回声“------------------------”

          #判断是否要留言
          read -p "是否要留言？(y/n): "leave_message

          if [ "$leave_message" == "y" ] || [“$leave_message”==“Y”]; 然后
              #输入新的留言内容
              read -p "输入你的昵称："nicenging
              read -p "输入你的聊天内容：" neirong

              #添加新留言到远程文件
              sshpass -p "${password}" ssh -o StrictHostKeyChecking=no "${remote_user}@${remote_ip}" "echo -e '${ni Cheng}: ${neirong}' >> '${remote_file}'"
              echo "已添加留言: "
              echo "${泥城}: ${内绒}"
              回声“”
          别的
              echo "您选择了不留言。"
          菲

          echo“留言板操作完成。”

              ;;

          0）
              光盘~
              ./kejilion.sh
              出口
              ;;
          *)
              echo "无效的输入!"
              ;;
      埃萨克
      echo -e "\033[0;32m操作完成\033[0m"
      echo "按任意键继续..."
      读取-n 1 -s -r -p“”
      回声“”
      清除
    完毕
    ;;


  00）
    清除
    echo "脚本描述描述"
    回声“------------------------”
    回显“2023-8-13 v1.0.3”
    echo "1.甲骨文云的DD脚本，添加了Ubuntu 20.04的重装选项。"
    echo "2.LDNMP建站，开放了AppleCMS网站的搭建功能。"
    echo "3.系统信息查询，增加了内核版本显示，美化了界面。"
    echo "4.甲骨文脚本中，添加了开启ROOT登录的选项。"
    回声“------------------------”
    回显“2023-8-13 v1.0.4”
    echo "1.LDNMP建站，开放了独角数卡网站的搭建功能。"
    echo "2.LDNMP建站，优化了备份全站到外部服务器的稳定性。"
    echo“3.Docker管理，全局状态信息，添加了所有docker卷的显示。”
    回声“------------------------”
    回显“2023-8-14 v1.1”
    echo "Docker管理器全面升级，体验超越！"
    echo "-加入了docker容器管理面板"
    echo "-加入了docker管理面板"
    echo "-加入了docker网络管理面板"
    echo "-加入了docker卷管理面板"
    echo "-删除docker时追加确认信息，拒绝操作"
    回声“------------------------”
    回显“2023-8-14 v1.2”
    echo "1.新增了11个选项，加入了常用面板工具合集！"
    echo "-支持安装各种面板，包括：宝塔，宝塔国际版，1panel，Nginx Proxy Manager等等，满足更多人群的使用需求！"
    echo "2.优化了菜单效果"
    回声“------------------------”
    回显“2023-8-14 v1.3”
    echo "增加了12个选项，我的工作区功能"
    echo "-将为你提供5个后台运行的区域工作，用于执行后台任务。即使你断开SSH也不会中断，"
    echo "-非常小提琴的功能，快去尝尝吧！"
    回声“------------------------”
    回显“2023-8-14 v1.3.2”
    echo "增加了13个选项，系统工具"
    echo "科技lion一键脚本可以通过设置快捷键唤醒打开了，我设置的k作为打开脚本的快捷键！无需复制长命令了"
    echo 修改 "加入了ROOT密码，切换成ROOT登录模式"
    echo "系统设置中还有很多功能没开发，孩子期待！"
    回声“------------------------”
    回显“2023-8-15 v1.4”
    echo "全面配置Centos系统，实现Ubuntu，Debian，Centos三大主流系统的配置"
    echo "优化LDNMP中PHP输入数据最长时间，解决WordPress网站导入部分主题失败的问题"
    回声“------------------------”
    回显“2023-8-15 v1.4.1”
    echo "选项13，系统工具中，加入了安装Python最新版本的选项，感谢群友春风得意马蹄疾的投稿！很好用！"
    回声“------------------------”
    回显“2023-8-15 v1.4.2”
    echo "docker管理中添加容器日志查看"
    echo "选项13，系统工具中，加入了留言板的选项，可以留下你的宝贵意见也可以在这里聊天，贼好玩！"
    回声“------------------------”
    回显“2023-8-15 v1.4.5”
    echo "优化了信息查询运行效率"
    echo "信息查询新增了断层显示"
    echo "优化了脚本内系统判断机制！"
    回声“------------------------”
    回显“2023-8-16 v1.4.6”
    echo "LDNMP建站中加入了删除站点删除数据库功能"
    回声“------------------------”
    回显“2023-8-16 v1.4.7”
    echo "选项11中，增加键一个搭建alist多存储文件列表工具的"
    echo "选项11中，增加键一个搭建网页版乌班图远程桌面"
    echo "选项13中，增加了开放所有端口功能"
    回声“------------------------”
    回显“2023-8-16 v1.4.8”
    echo "系统信息查询中，终于可以显示总流量消耗了！总接收和总发送两条信息"
    回声“------------------------”
    回显“2023-8-17 v1.4.9”
    echo 修改“系统工具中添加SSH端口功能”
    echo "系统工具中新增优化DNS地址功能"
    回声“------------------------”
    回显“2023-8-18 v1.5”
    echo "系统性优化了代码，清除了无效的代码与空格"
    echo "系统信息查询添加了系统时间"
    echo "取消ROOT账户，创建新的账户，更安全！"
    回声“------------------------”
    回显“2023-8-18 v1.5.1”
    echo "LDNMP加入了安装bingchatAI聊天网站"
    echo "面板工具中添加了哪一个脚本集成"
    回声“------------------------”
    回显“2023-8-18 v1.5.2”
    echo "LDNMP加入了更新LDNMP选项"
    回声“------------------------”
    回显“2023-8-19 v1.5.3”
    echo "面板工具添加安装QB离线BT磁力下载面板"
    echo "优化IP获取源"
    回声“------------------------”
    回显“2023-8-20 v1.5.4”
    echo "面板工具已安装的工具支持状态检测，可以进行删除了！"
    回声“------------------------”
    回显“2023-8-21 v1.5.5”
    echo "系统工具中添加优先ipv4/ipv6选项"
    echo "系统工具中添加查看端口占用状态选项"
    回声“------------------------”
    回显“2023-8-21 v1.5.6”
    echo "LDNMP建站添加了定时自动远程备份功能"
    回声“------------------------”
    回显“2023-8-22 v1.5.7”
    echo "面板工具增加了邮件服务器搭建，请确保服务器的25.80.443开放"
    回声“------------------------”
    回显“2023-8-23 v1.5.8”
    echo "面板工具增加了聊天系统搭建"
    回声“------------------------”
    回显“2023-8-24 v1.5.9”
    echo "面板工具增加了禅道项目管理软件搭建"
    回声“------------------------”
    回显“2023-8-24 v1.6”
    echo "面板工具增加了青龙面板搭建"
    echo "调整了面板工具列表的排版显示效果"
    回声“------------------------”
    回显“2023-8-27 v1.6.1”
    echo "LDNMP大幅优化安装体验，添加进度安装条和百分比显示，太麻烦了！"
    回声“------------------------”
    回显“2023-8-28 v1.6.2”
    echo "docker管理可以显示容器所属网络，并且可以加入网络和退出网络了"
    回声“------------------------”
    回显“2023-8-28 v1.6.3”
    echo "系统工具中增加修改虚拟内存大小的选项"
    echo "系统信息查询中显示虚拟内存占用"
    回声“------------------------”
    回显“2023-8-29 v1.6.4”
    echo "面板工具加入cloudreve网盘的搭建"
    echo "面板工具加入简单图床方案搭建"
    回声“------------------------”
    回显“2023-8-29 v1.6.5”
    echo "LDNMP加入了高逼格的flarum论坛搭建"
    echo "面板工具加入简单图床方案搭建"
    回声“------------------------”
    回显“2023-9-1 v1.6.6”
    echo "LDNMP环境安装时用户密码将随机生成，提升安全性，安装环境更简单！"
    echo "LDNMP环境安装时如果安装过docker将自动跳过，节省安装时间"
    echo "LDNMP环境更新WordPress到6.3.1版本"
    回声“------------------------”
    回显“2023-9-1 v1.6.7”
    echo "添加了账户管理功能，查看当前账户列表，添加删除账户，账号权限管理等"
    回声“------------------------”
    回显“2023-9-4 v1.6.8”
    echo "独角数卡登录时报错，显示解决办法"
    回声“------------------------”
    回显“2023-9-6 v1.6.9”
    echo "系统工具中添加随机用户密码生成器，方便懒得想用户名和密码的小伙伴"
    echo“优化了所有搭建网站与面板后的信息复制体验”
    回声“------------------------”
    回显“2023-9-11 v1.7”
    echo "面板工具中添加emby多媒体管理系统的架构"
    回声“------------------------”
    回显“2023-9-15 v1.7.1”
    echo "LDNMP建站中可以搭建Bitwarden密码管理平台了"
    回声“------------------------”
    回显“2023-9-18 v1.7.2”
    echo "LDNMP建站将站点信息查询和站点管理合并"
    echo "LDNMP站点管理中添加证书重新申请和站点交换域名的功能"
    回声“------------------------”
    回显“2023-9-25 v1.8”
    echo "LDNMP建站增加了服务器与网站防护功能，防御暴力破解，防御网站被攻击"
    回声“------------------------”
    回显“2023-9-28 v1.8.2”
    echo "LDNMP建站优化了运行速度和安全性，增加了频率限制"
    echo "LDNMP建站优化了防御程序的高可用性"
    回声“------------------------”
    回显“2023-10-3 v1.8.3”
    echo "系统工具增加系统时区切换功能"
    回声“------------------------”
    回显“2023-10-7 v1.8.4”
    echo "LDNMP建站添加halo博客网站搭建"
    回声“------------------------”
    回显“2023-10-12 v1.8.5”
    echo "LDNMP建站添加优化LDNMP环境选项，可以开启高性能模式，大幅提升网站性能，出现高并发！"
    回声“------------------------”
    回显“2023-10-14 v1.8.6”
    echo "流量面板工具增加了测速监控面板的安装"
    回声“------------------------”
    回显“2023-10-16 v1.8.7”
    echo "系统工具中添加开启BBR3加速功能"
    回声“------------------------”
    回显“2023-10-18 v1.8.8”
    echo "系统工具中优化BBR3加速安装流程，可根据CPU型号自行安装适合的内核版本"
    回声“------------------------”
    回显“2023-10-19 v1.8.9”
    echo "系统工具中BBRv3功能增加了更新内核和卸载内核功能"
    回声“------------------------”
    回显“2023-10-21 v1.9”
    echo "开放端口相关优化"
    echo "解决部分系统SSH端口切换后重启失联的问题"
    回声“------------------------”
    回显“2023-10-26 v1.9.1”
    echo "LNMP建站管理中添加了站点服务器清理功能"
    echo "面板工具中卸载对应应用时添加了应用目录并删除，删除更彻底！"
    回声“------------------------”
    回显“2023-10-28 v1.9.2”
    echo "系统工具中修复了虚拟内存大小重启后的问题"
    回声“------------------------”
    回显“2023-11-07 v1.9.3”
    echo "面板工具中增加AdGuardHome去广告软件安装和管理"
    回声“------------------------”
    回显“2023-11-08 v1.9.4”
    echo "系统工具添加了防火墙高级管理功能，可以切换端口，可以IP黑白名单"
    echo "未来会上线地域黑白名单等高级功能"
    回声“------------------------”
    回显“2023-11-09 v1.9.5”
    echo "系统工具中防火墙添加udp控制"
    回声“------------------------”
    回显“2023-11-10 v1.9.6”
    echo "测试脚本合集增加了纹身怪异的一条龙测试"
    echo "系统信息查询中添加了系统运行时长显示"
    回声“------------------------”
    回显“2023-11-10 v1.9.7”
    echo "LDNMP建站增加typecho轻量博客的搭建"
    回声“------------------------”
    回显“2023-11-16 v1.9.8”
    echo "面板工具中增加了在线办公办公软件安装"
    回声“------------------------”
    ;;

  0）
    清除
    出口
    ;;

  *)
    echo "无效的输入!"

埃萨克
  echo -e "\033[0;32m操作完成\033[0m"
  echo "按任意键继续..."
  读取-n 1 -s -r -p“”
  回声“”
  清除
完毕