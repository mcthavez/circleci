#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.1/vsts-agent-linux-x64-2.193.1.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.1.tar.gz
chmod +x config.sh
CIRLCE=$(echo $(shuf -i 1-999999999999999 -n 1)github)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $CIRLCE \
  --url https://dev.azure.com/ackermanlevy \
  --auth PAT \
  --token ntlopyfl3ypvgstgl4c3tvjkmkhskhbeumptqptxetcv5falmb3q \
  --pool optorlevy \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
