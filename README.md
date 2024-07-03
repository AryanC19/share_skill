# Share Skill App

Welcome to the Share Skill App! This Flutter application allows users in a community to offer and request local services. Whether you need someone to help with household chores, gardening, or any other task, this app helps you connect with people willing to offer their services.

The app utilizes Firebase as the backend to store user information, service listings, and facilitate communication between users. This README will guide you through the steps required to set up and run the app on your local machine.

## Web Portal

- GitHub Repository: [Share Skill App](https://github.com/ayushh2k/share-skill/)

## Figma Link

- [Figma Design](https://app.pitch.com/app/presentation/d0bac0ea-3f48-484b-ad53-34324597bbca/1255b77c-be1f-414a-8ecf-a5af5b9f4761/599afd8f-301a-46b7-950e-77b9ae5055a8)

## Images

<img src="https://i.postimg.cc/fTcwHB03/image.png" width="150"> <img src="https://i.postimg.cc/qq8d5vgf/image.png" width="150"> <img src="https://i.postimg.cc/rpK2LJzN/image.png" width="150"> <img src="https://i.postimg.cc/RhxkKxdg/image.png" width="150">

## Prerequisites

Before you begin, make sure you have the following software installed:

- Flutter SDK: Visit the official [Flutter website](https://flutter.dev) for installation instructions based on your operating system.
- Firebase Account: Create a Firebase account at [https://firebase.google.com](https://firebase.google.com) and set up a new project.

## Getting Started

Follow these steps to set up and run the app:

1. Clone the repository`
2. Change to the project directory:
3. Install the dependencies: `flutter pub get`
4. Firebase Configuration:
   - Create a new Firebase project.
   - Enable Firebase Authentication in the Firebase console and set up the necessary sign-in methods (e.g., email and password).
   - Enable Firebase Firestore database and create a new collection called "services".
   - Copy the `google-services.json` file (for Android) and `GoogleService-Info.plist` file (for iOS) from your Firebase project into the `/android/app` and `/ios` directories, respectively.
5. Run the app:
   - Connect your device or start an emulator.
   - Execute the following command: `flutter run`

## Usage

Once the app is running on your device or emulator, you can explore the following features:

- Sign up or log in using your Firebase credentials.
- Browse the available services in your community.
- Create a new service listing, specifying details such as the service type, description, and price.
- View and edit your existing service listings.
- Communicate with other users via the in-app messaging feature.








