echo "Welcome to Employee wage computation prgram"
wageperhr=20
ispartTime=1
isfullTime=2
totalWage=0
workingdays=25
for (( day=1; day<=$workingdays; day++ ))
do
        empcheck=$(( RANDOM%3 ))
        case $empcheck in
             $ispartTime)
                   emphrs=4;;
             $isfullTime)
                   emphrs=8;;
            *)
        emphrs=0;;
      esac

          dailyWage=$(( $emphrs*$wageperhr ))
          totalWage=$(( $totalWage+$dailyWage ))

done

