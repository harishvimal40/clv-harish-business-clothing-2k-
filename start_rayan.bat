@echo off
echo 💎 Starting Rayan Stores Ecosystem...

echo ⚙️ Starting Backend (Port 5000)...
start "Rayan-API" cmd /c "cd services\api && npm run dev"

echo 🎨 Starting Frontend (Port 3002)...
start "Rayan-Web" cmd /c "cd apps\web && npm run dev -- --port 3002"

echo ✅ Both services are launching in separate windows.
echo 🌐 Frontend: http://localhost:3002
echo ⚙️ Backend: http://localhost:5000
pause
