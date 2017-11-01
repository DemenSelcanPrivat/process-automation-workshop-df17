#!/bin/bash
sfdx force:org:create -f config/project-scratch-def.json -s
sfdx force:source:push
sfdx force:user:permset:assign -n WorkshopPerms
sfdx force:apex:execute -f apexScripts/setup.cls
sfdx force:org:open

