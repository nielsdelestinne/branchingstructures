@ECHO OFF
ECHO --------------------------------------------
ECHO --- Creating branch %1 from tag 'start'
ECHO --------------------------------------------
git checkout -b %1 start
ECHO --- Switched to branch %1
ECHO --------------------------------------------
ECHO --- Making root directory %1
ECHO --------------------------------------------
MKDIR %1
SET "COMMITMESSAGE=%1% Initial Commit"
ECHO --- Committing changes with message %COMMITMESSAGE%
ECHO --------------------------------------------
git add .
git commit -m "%COMMITMESSAGE%"
ECHO --- Navigating into root directory %1
ECHO --------------------------------------------
CD %1
ECHO --------------------------------------------
ECHO --- Ready ---
