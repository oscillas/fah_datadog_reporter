# FAH Datadog Reporter
### Description + Setup
This is a pretty simple script to report a few statistics about your Folding@Home progress to Datadog.

1. **IMPORTANT:** Be gentle on Folding@Home's servers. Do not run this script every minute of every day. Most rank and other metrics are only updated once an hour anyway. We have ours set to run every 20 minutes.
2. Make sure you have the Datadog agent running on the machine that will be running this script.
2. Replace `REPLACE_TEAM_NUM` in `fah_rankcheck.sh` with your team number.
3. Use cron or some other form of task scheduling to run it on a regular schedule! 
4. Optional: Replace the custom metrics names to suit your own needs. All of ours start with the prefix `fah` but they're completely customizable. 

Check us out at https://oscillas.com or email me at cj [at] oscillas.com. Thanks! 
