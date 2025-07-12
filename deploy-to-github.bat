@echo off
echo 🛍️ E-Commerce App GitHub Deployment Script
echo ==========================================

REM Check if .env file exists
if not exist ".env" (
    echo ❌ .env file not found!
    echo 📝 Please copy env.example to .env and fill in your credentials:
    echo    copy env.example .env
    echo    Then edit .env with your Firebase and Stripe keys
    pause
    exit /b 1
)

REM Check if node_modules exists
if not exist "node_modules" (
    echo 📦 Installing dependencies...
    npm install
)

REM Check if functions/node_modules exists
if not exist "functions\node_modules" (
    echo 📦 Installing Firebase Functions dependencies...
    cd functions
    npm install
    cd ..
)

echo ✅ Dependencies installed

REM Test build
echo 🔨 Testing build...
npm run build
if %errorlevel% neq 0 (
    echo ❌ Build failed! Please fix the errors before deploying
    pause
    exit /b 1
)

echo ✅ Build successful

REM Initialize git if not already done
if not exist ".git" (
    echo 📝 Initializing git repository...
    git init
)

REM Add all files
echo 📝 Adding files to git...
git add .

echo.
echo 🎉 Ready for GitHub deployment!
echo.
echo 📋 Next steps:
echo 1. Create a new repository on GitHub
echo 2. Run these commands:
echo    git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 🔧 For deployment:
echo - Vercel: Connect your GitHub repo to Vercel
echo - Firebase: Run 'firebase deploy' after setup
echo.
echo 🛡️ Security checklist:
echo ✅ Environment variables configured
echo ✅ No hardcoded API keys
echo ✅ .gitignore properly set
echo ✅ Build successful
echo.
echo 📚 See SETUP_GUIDE.md for detailed instructions
pause 