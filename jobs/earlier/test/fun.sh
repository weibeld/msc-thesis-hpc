seconds() {
    #m=$(echo "$1" | cut -d " " -f 2 | cut -d m -f 1)
    m=$(echo "$1" | egrep -o '[0-9]*m' | sed 's/m$//')
    #s=$(echo "$1" | cut -d s -f 1 | cut -d m -f 2)
    s=$(echo "$1" | egrep -o '[0-9][0-9]?.[0-9]*s' | sed 's/s$//')
    #echo $m
    #echo $s
    seconds=$(bc <<< "$m * 60 + $s")
    printf "%.3f" $seconds
  }
