@REM Execute in Windows using: .\EXFiles\scripts\CreateOrg.bat
@echo off
echo "*** Creating scratch Org..."
call sfdx force:org:create -f config/project-scratch-def.json --setdefaultusername --setalias conflict_test -d 1
echo "*** Pushing metadata to scratch Org..."
call sfdx force:source:push
echo "*** Opening scratch Org..."
call sfdx force:org:open