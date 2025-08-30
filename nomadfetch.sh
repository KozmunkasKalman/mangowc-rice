b=$(tput bold)
n=$(tput sgr0)

kernel="$(uname)"
if [ $kernel == Linux ]; then
  kern_icon=""
fi

distro="$(grep -m1 -w "ID" /etc/os-release | cut -c4-999)"
if [ $distro == arch ]; then
  dist_icon=""
elif [ $distro == debian ]; then
  dist_icon="󰣚"
elif [ $distro == fedora ]; then
  dist_icon=""
elif [ $distro == nixos ]; then
  dist_icon=""
elif [ $distro == rhel ]; then
  dist_icon=""
elif [ $distro == ubuntu ]; then
  dist_icon=""
elif [ $distro == linux ]; then
  dist_icon=""
else
  dist_icon="?"
fi

wmde=$XDG_CURRENT_DESKTOP
if [ $wmde == gnome ]; then
  wmde_icon=""
elif [ $wmde == hyprland ]; then
  wmde_icon=""
elif [ $wmde == plasma ]; then
  wmde_icon=""
elif [ $wmde == XFCE ]; then
  wmde_icon=""
else
  wmde_icon=""
fi

pub_ip=$(curl http://ident.me -s)



printf "[${b}$(whoami)${n}@${b}$(uname -n)${n}] 󱔖\n"

printf "╓─${b}[ Hardware]${n}────╴•\n"
printf "╟╴• ${b} CPU:${n} $(lscpu | grep "Model name" | awk '{print $3 " " $4 " " $5 " @ " $8}' | tr -d '(R)''(TM)')\n"
printf "╟╴• ${b}? GPU:${n} $(nvidia-smi | grep "NVIDIA GeForce" | awk '{print $3 " " $4 " " $5 " " $6 " " $7}')\n"
printf "╟╴• ${b} RAM:${n} $(grep "MemTotal" /proc/meminfo | awk '{print $2/1048576}' | cut -c1-4)"GB"\n"
printf "╟╴• ${b} Swap:${n} $(grep "SwapTotal" /proc/meminfo | awk '{print $2/1048576 "GB"}')\n"
printf "╙╴• ${b} File System:${n} $(df -Th | grep -w '/' | awk '{print $4"/"$3}' | sed 's/G/GB/g')\n"

printf "┌─${b}[ System]${n}──────╴•\n"
printf "├╴• ${b}$dist_icon OS:${n} $(grep "PRETTY_NAME" /etc/os-release | cut -c13-999 | tr -d '"')\n"
printf "├╴• ${b}$kern_icon Kernel:${n} $(uname) $(uname -r)\n"
printf "├╴• ${b} IP:${n} $pub_ip\n"
printf "└╴• ${b} Uptime:${n} $(uptime | awk '{print $3}' | tr -d , | sed 's/:/h /g')m\n"

printf "╭─${b}[ Environment]${n}─╴•\n"
printf "├╴• ${b}$wmde_icon DE/WM:${n} ${XDG_CURRENT_DESKTOP^}\n"
printf "├╴• ${b} Terminal:${n} ${TERM^}\n"
printf "╰╴• ${b}󱆃 Shell:${n} $(ps -p $$ | grep "sh" | awk '{ for (i=1; i <= NF; i++) { sub(/[a-z]/, toupper(substr($i, 1, 1)), $i) }; print $4}')\n"

printf "┌─${b}[󰸌 \e[31mC\e[33mo\e[32ml\e[36mo\e[34mr\e[35ms\e[0m]${n}──────╴•\n"
printf "│\e[30m███\e[31m███\e[32m███\e[33m███\e[34m███\e[35m███\e[36m███\e[37m███\e[0m\n"
printf "│\e[90m███\e[91m███\e[92m███\e[93m███\e[94m███\e[95m███\e[96m███\e[97m███\e[0m\n"
printf "└─────────────────╴•\n"
