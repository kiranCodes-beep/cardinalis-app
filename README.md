# 🛍️ E-Commerce React App

A modern, full-featured e-commerce web application built with React, Firebase, and Stripe for secure payments.

## ✨ Features

- 🛍️ **Product Catalog**: Browse products by categories (Men, Women, Kids, Accessories, Beauty)
- 🔐 **User Authentication**: Secure login/signup with Firebase Authentication (Email/Password & Google)
- 🛒 **Shopping Cart**: Add/remove items with real-time cart updates and persistence
- 💳 **Secure Payments**: Integrated Stripe payment processing with checkout sessions
- 📱 **Responsive Design**: Mobile-first, responsive interface
- 🔍 **Product Search**: Find products easily with search functionality
- 👤 **User Profile**: Manage account details and view order history
- 📧 **Email Verification**: Secure email verification for new accounts
- 🧾 **Invoice Generation**: Automatic invoice generation after successful payments
- 🎨 **Modern UI**: Clean, modern design with smooth animations

## 🛠️ Tech Stack

- **Frontend**: React.js 19, React Router v7, React Icons
- **Backend**: Firebase (Authentication, Firestore, Cloud Functions)
- **Payments**: Stripe (Checkout Sessions, Payment Intents)
- **Styling**: CSS3 with modern design principles
- **State Management**: React Context API
- **Deployment**: Vercel/Firebase Hosting ready

## 🚀 Getting Started

### Prerequisites

- Node.js (version 18 or higher)
- npm or yarn
- Firebase account
- Stripe account (for payments)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/e-commerce-app.git
   cd e-commerce-app
   ```

2. **Install dependencies**
   ```bash
   npm install
   cd functions && npm install && cd ..
   ```

3. **Set up Firebase**
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Authentication (Email/Password & Google providers)
   - Enable Firestore Database
   - Enable Cloud Functions
   - Copy your Firebase config

4. **Set up Stripe**
   - Create a Stripe account at [Stripe Dashboard](https://dashboard.stripe.com/)
   - Get your publishable and secret keys
   - Configure webhook endpoints (optional)

5. **Environment Variables**
   Create a `.env` file in the root directory:
   ```env
   # Firebase Configuration
   REACT_APP_FIREBASE_API_KEY=your_firebase_api_key
   REACT_APP_FIREBASE_AUTH_DOMAIN=your_firebase_auth_domain
   REACT_APP_FIREBASE_PROJECT_ID=your_firebase_project_id
   REACT_APP_FIREBASE_STORAGE_BUCKET=your_firebase_storage_bucket
   REACT_APP_FIREBASE_MESSAGING_SENDER_ID=your_firebase_messaging_sender_id
   REACT_APP_FIREBASE_APP_ID=your_firebase_app_id
   
   # Stripe Configuration
   REACT_APP_STRIPE_PUBLISHABLE_KEY=your_stripe_publishable_key
   ```

6. **Firebase Functions Environment**
   Set up environment variables for Firebase Functions:
   ```bash
   firebase functions:config:set stripe.secret="your_stripe_secret_key"
   ```

## 📜 Available Scripts

### Development
```bash
# Start the development server
npm start

# Run tests
npm test

# Build for production
npm run build
```

### Firebase Functions
```bash
# Serve functions locally
cd functions && npm run serve

# Deploy functions
cd functions && npm run deploy
```

### Firebase Deployment
```bash
# Deploy to Firebase Hosting
firebase deploy

# Deploy only functions
firebase deploy --only functions
```

## 🏗️ Project Structure

```
front_end/
├── public/                 # Static files
├── src/
│   ├── Components/         # Reusable UI components
│   ├── Context/           # React Context providers
│   ├── firebase/          # Firebase configuration and services
│   ├── Pages/             # Page components
│   ├── Assets/            # Images and static assets
│   └── utils/             # Utility functions
├── functions/             # Firebase Cloud Functions
│   ├── templates/         # Invoice templates
│   └── index.js          # Cloud Functions code
└── dataconnect/          # Firebase Data Connect configuration
```

## 🔧 Configuration

### Firebase Setup
1. Create a new Firebase project
2. Enable Authentication with Email/Password and Google providers
3. Create a Firestore database
4. Enable Cloud Functions
5. Set up security rules for Firestore

### Stripe Setup
1. Create a Stripe account
2. Get your API keys from the dashboard
3. Configure webhook endpoints (optional)
4. Test with Stripe's test mode first

## 🚀 Deployment

### Deploy to Vercel (Recommended)

1. **Push your code to GitHub**
2. **Connect to Vercel**:
   - Go to [Vercel](https://vercel.com/)
   - Sign up/Login with your GitHub account
   - Click "New Project"
   - Import your GitHub repository
   - Configure environment variables in Vercel dashboard
   - Deploy!

### Deploy to Firebase Hosting

1. **Install Firebase CLI**:
   ```bash
   npm install -g firebase-tools
   ```

2. **Login to Firebase**:
   ```bash
   firebase login
   ```

3. **Build and deploy**:
   ```bash
   npm run build
   firebase deploy
   ```

## 🔒 Security Features

- ✅ Environment variables for all sensitive data
- ✅ Firebase security rules
- ✅ Stripe webhook verification
- ✅ Input validation and sanitization
- ✅ Secure authentication flow
- ✅ HTTPS enforcement

## 🐛 Troubleshooting

### Common Issues

1. **Firebase config errors**: Ensure all environment variables are set correctly
2. **Stripe payment failures**: Check your Stripe keys and webhook configuration
3. **Build errors**: Make sure all dependencies are installed
4. **Authentication issues**: Verify Firebase Authentication is properly configured

### Development Tips

- Use Firebase Emulator Suite for local development
- Test Stripe payments in test mode first
- Check browser console for detailed error messages
- Use React Developer Tools for debugging

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you have any questions or need help:
- Open an issue on GitHub
- Check the documentation
- Review the troubleshooting section

## 🙏 Acknowledgments

- Firebase for the backend infrastructure
- Stripe for payment processing
- React team for the amazing framework
- All contributors and users of this project

---

**Note**: This project is configured for GitHub deployment with proper security measures. All sensitive keys are stored as environment variables and will not be exposed in the repository.
