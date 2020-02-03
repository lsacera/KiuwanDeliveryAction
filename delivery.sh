#!/bin/sh -l
# STEP 1: Download Kiuwan local analyzer
wget https://www.kiuwan.com/pub/analyzer/KiuwanLocalAnalyzer.zip
# STEP 2: Unzip Kiuwan local analyzer
unzip KiuwanLocalAnalyzer.zip -d $HOME/.
# STEP 3: Execute Kiuwan Delivery
echo "Executing analyzer with"
echo "--user " $INPUT_USERID 
echo "--pass " $INPUT_PASSWORD
echo "--sourcePath" $GITHUB_WORKSPACE 
echo "--softwareName" $INPUT_PROJECT 
echo "--cr" $INPUT_CHANGEREQUEST
echo "--label " $INPUT_LABEL
echo "-bn" $INPUT_BRANCH
echo "-wr" 
echo "-as" $INPUTTYPE
echo "-crs" $INPUTSTATUS
$HOME/KiuwanLocalAnalyzer/bin/agent.sh -s \"$GITHUB_WORKSPACE\" -n \"$INPUT_PROJECT\" -cr \"$INPUT_CHANGEREQUEST\" -l \"$INPUT_LABEL\" -bn \"$INPUT_BRANCH\" -wr --user $INPUT_USERID --pass $INPUT_PASSWORD -as $INPUTTYPE -crs $INPUTSTATUS                     
