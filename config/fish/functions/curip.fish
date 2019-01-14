function curip
  ifconfig | grep "broadcast" | awk '{print $2}'
end
