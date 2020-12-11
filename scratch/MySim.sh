export payloadSize=1472 # bytes
export simulationTime=10 # seconds
export distance=8 # meters
export interBssDistance=8 # meters
export txMaskInnerBandMinimumRejection=-40.0 # dBr
export txMaskOuterBandMinimumRejection=-56.0 # dBr
export txMaskOuterBandMaximumRejection=-80.0 # dBr

export channelBssA=36
export channelBssB=40
export channelBssC=40
export channelBssD=36
export channelBssE=44
export channelBssF=44
export channelBssG=44

export primaryChannelBssA=36
export primaryChannelBssB=40
export primaryChannelBssC=40
export primaryChannelBssD=36
export primaryChannelBssE=44
export primaryChannelBssF=44
export primaryChannelBssG=44

export mcs1=VhtMcs0
export mcs2=VhtMcs0
export mcs3=VhtMcs0
export mcs4=VhtMcs0
export mcs5=VhtMcs0
export mcs6=VhtMcs0
export mcs7=VhtMcs0

export ccaEdThresholdPrimaryBssA=-62.0
export ccaEdThresholdSecondaryBssA=-62.0
export ccaEdThresholdPrimaryBssB=-62.0
export ccaEdThresholdSecondaryBssB=-62.0
export ccaEdThresholdPrimaryBssC=-62.0
export ccaEdThresholdSecondaryBssC=-62.0
export ccaEdThresholdPrimaryBssD=-62.0
export ccaEdThresholdSecondaryBssD=-62.0
export ccaEdThresholdPrimaryBssE=-62.0
export ccaEdThresholdSecondaryBssE=-62.0
export ccaEdThresholdPrimaryBssF=-62.0
export ccaEdThresholdSecondaryBssF=-62.0
export ccaEdThresholdPrimaryBssG=-62.0
export ccaEdThresholdSecondaryBssG=-62.0

export downlinkA=0
export downlinkB=0
export downlinkC=0
export downlinkD=0
export downlinkE=0
export downlinkF=0
export downlinkG=0


export uplinkA=400
export uplinkB=400
export uplinkC=400
export uplinkD=400
export uplinkE=0
export uplinkF=0
export uplinkG=0

export channelBondingType="ConstantThreshold"
export Test=""

export n=10
export nBss=4

RngRun=1

for mcs in VhtMcs0 VhtMcs1 VhtMcs2 VhtMcs3 VhtMcs4 VhtMcs5 VhtMcs6 VhtMcs7 VhtMcs8;
do
for RngRun in 1 2 3 4 5;
do
echo "Starting Bss=$nBss n=$n, RngRun=$RngRun, mcs=$mcs "
../waf --run "channel-bonding  --payloadSize=$payloadSize --simulationTime=$simulationTime --distance=$distance --interBssDistance=$interBssDistance --txMaskInnerBandMinimumRejection=$txMaskInnerBandMinimumRejection --txMaskOuterBandMinimumRejection=$txMaskOuterBandMinimumRejection --txMaskOuterBandMaximumRejection=$txMaskOuterBandMaximumRejection --channelBssA=$channelBssA --primaryChannelBssA=$primaryChannelBssA --channelBssB=$channelBssB --primaryChannelBssB=$primaryChannelBssB --channelBssC=$channelBssC --primaryChannelBssC=$primaryChannelBssC --channelBssD=$channelBssD --primaryChannelBssD=$primaryChannelBssD --channelBssE=$channelBssE --primaryChannelBssE=$primaryChannelBssE --channelBssF=$channelBssF --primaryChannelBssF=$primaryChannelBssF --channelBssG=$channelBssG --primaryChannelBssG=$primaryChannelBssG --mcs1=$mcs --mcs2=$mcs --mcs3=$mcs --mcs4=$mcs --mcs5=$mcs --mcs6=$mcs --mcs7=$mcs --ccaEdThresholdPrimaryBssA=${ccaEdThresholdPrimaryBssA} --ccaEdThresholdSecondaryBssA=$ccaEdThresholdSecondaryBssA --ccaEdThresholdPrimaryBssB=${ccaEdThresholdPrimaryBssB} --ccaEdThresholdSecondaryBssB=$ccaEdThresholdSecondaryBssB --ccaEdThresholdPrimaryBssC=${ccaEdThresholdPrimaryBssC} --ccaEdThresholdSecondaryBssC=$ccaEdThresholdSecondaryBssC  --ccaEdThresholdPrimaryBssD=${ccaEdThresholdPrimaryBssD} --ccaEdThresholdSecondaryBssD=$ccaEdThresholdSecondaryBssD --ccaEdThresholdPrimaryBssE=${ccaEdThresholdPrimaryBssE} --ccaEdThresholdSecondaryBssE=$ccaEdThresholdSecondaryBssE --ccaEdThresholdPrimaryBssF=${ccaEdThresholdPrimaryBssF} --ccaEdThresholdSecondaryBssF=$ccaEdThresholdSecondaryBssF --ccaEdThresholdPrimaryBssG=${ccaEdThresholdPrimaryBssG} --ccaEdThresholdSecondaryBssG=$ccaEdThresholdSecondaryBssG --downlinkA=${downlinkA} --downlinkB=$downlinkB --downlinkC=$downlinkC --downlinkD=$downlinkD --downlinkE=$downlinkE --downlinkF=$downlinkF --downlinkG=$downlinkG --uplinkA=$uplinkA --uplinkB=$uplinkB --uplinkC=$uplinkC --uplinkD=${uplinkD} --uplinkE=$uplinkE --uplinkF=$uplinkF --uplinkG=$uplinkG --channelBondingType=$channelBondingType --n=$n --nBss=$nBss --RngRun=$RngRun " 
wait
done
wait
done
