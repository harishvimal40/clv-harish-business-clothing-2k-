@echo off
echo ==============================================
echo Rayan Stores - Complete Setup Initiation
echo ==============================================

echo [1/3] Installing Frontend Dependencies...
cd apps\web
call npm install
echo Frontend installed!

echo.
echo [2/3] Installing Backend Dependencies...
cd ..\..\services\api
call npm install
echo Backend installed!

echo.
echo [3/3] Prisma Database Client Setup
call npx prisma generate
echo Database client ready!

echo.
echo ==============================================
echo Environment is ready.
echo To start the Frontend: open a terminal in apps/web and run "npm run dev"
echo To start the Backend: open a terminal in services/api and run "npm run dev"
echo ==============================================
pause
