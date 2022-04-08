start=$(date +%s)
amt=0
avg=0
while true ; do
    if $(cat /dev/urandom | hexdump -C | grep -q sex); then
        amt=$(($amt+1))
        minute=$((1+($(date +%s)-$start)/60))
        avg=$(($amt/$minute))
        clear
        printf "amount of sex: $amt\nfrequency: $avg SPM (sex per minute)"
    fi
done