# Community Services App

Welcome to the Community Services App! This Flutter application allows users in a community to offer and request local services. Whether you need someone to help with household chores, gardening, or any other task, this app helps you connect with people willing to offer their services.

The app utilizes Firebase as the backend to store user information, service listings, and facilitate communication between users. This README will guide you through the steps required to set up and run the app on your local machine.

## Web portal

https://github.com/ayushh2k/share-skill/

## Figma Link
https://app.pitch.com/app/presentation/d0bac0ea-3f48-484b-ad53-34324597bbca/1255b77c-be1f-414a-8ecf-a5af5b9f4761/599afd8f-301a-46b7-950e-77b9ae5055a8

## Prerequisites

Before you begin, make sure you have the following software installed:

- Flutter SDK: Visit the official [Flutter website](https://flutter.dev) for installation instructions based on your operating system.
- Firebase Account: Create a Firebase account at [https://firebase.google.com](https://firebase.google.com) and set up a new project.

## Getting Started

Follow these steps to set up and run the app:

1. Clone the repository: `git clone https://github.com/your-username/community-services-app.git`
2. Change to the project directory: `cd community-services-app`
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

## Contributing

We welcome contributions to enhance the Community Services App. If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and test thoroughly.
4. Commit your changes with descriptive commit messages.
5. Push your changes to your fork.
6. Open a pull request to the original repository.

Please ensure that your code adheres to the project's coding standards and practices.

## License

The Community Services App is open-source and released under the [MIT License](LICENSE).

## Support

If you encounter any issues or have any questions, please feel free to contact us at [support@example.com](mailto:support@example.com).

## Acknowledgements

We would like to express our gratitude to the Flutter and Firebase communities for their excellent frameworks and documentation, which made this app possible.






