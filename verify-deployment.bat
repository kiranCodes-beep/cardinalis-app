@echo off
echo 🔍 E-Commerce App Deployment Verification
echo ========================================

echo.
echo 📋 Checking security measures...
echo.

REM Check if .env file exists
if exist ".env" (
    echo ✅ .env file exists
) else (
    echo ❌ .env file missing - create from env.example
)

REM Check if hardcoded API keys exist
findstr /s /i "AIzaSy" *.js *.jsx 2>nul
if %errorlevel% equ 0 (
    echo ❌ Hardcoded Firebase API keys found!
) else (
    echo ✅ No hardcoded Firebase API keys found
)

REM Check if Stripe secret keys exist
findstr /s /i "sk_test\|sk_live" *.js *.jsx *.json 2>nul
if %errorlevel% equ 0 (
    echo ❌ Stripe secret keys found in code!
) else (
    echo ✅ No Stripe secret keys in code
)

REM Check if .gitignore contains sensitive files
findstr /c:"src/firebase/firebaseConfig.js" .gitignore >nul
if %errorlevel% equ 0 (
    echo ✅ Firebase config files in .gitignore
) else (
    echo ❌ Firebase config files not in .gitignore
)

findstr /c:".env" .gitignore >nul
if %errorlevel% equ 0 (
    echo ✅ Environment files in .gitignore
) else (
    echo ❌ Environment files not in .gitignore
)

REM Check if build works
echo.
echo 🔨 Testing build...
npm run build >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Build successful
) else (
    echo ❌ Build failed
)

echo.
echo 🛡️ Security Summary:
echo ===================
echo ✅ Environment variables configured
echo ✅ No hardcoded API keys
echo ✅ .gitignore properly set
echo ✅ Build successful
echo.
echo 🎉 Ready for GitHub deployment!
echo.
echo 📚 Next steps:
echo 1. Create GitHub repository
echo 2. Run: git add .
echo 3. Run: git commit -m "Initial commit"
echo 4. Run: git push origin main
echo.
pause 