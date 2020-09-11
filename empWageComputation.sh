echo "Welcome to Employee wage computation prgram"
wageperhr=20
ispartTime=1
isfullTime=2
totalWage=0
workingdays=25
totalWorkHrs=100
workhrs=0
days=0
echo "Day No.    workhrs     dailyWage         totalWage"
while [[ $workhrs -lt $totalWorkHrs && $days -lt $workingdays ]]
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

      workhrs=$(( $workhrs+$emphrs ))
      ((days++))
      dailyWage=$(( $emphrs*$wageperhr ))
      totalWage=$(( $totalWage+$dailyWage ))
      echo "Day $days         $workhrs         $dailyWage                    $totalWage"

done
