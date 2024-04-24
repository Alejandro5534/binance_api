# CryptoViewer Mobile App

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Contributors](#contributors)
- [License](#license)

## Introduction
CryptoViewer is a mobile application developed using Flutter that enables users to register, log in, and view real-time cryptocurrency charts. The app leverages the Binance API to fetch and display up-to-date cryptocurrency data, making it a valuable tool for crypto traders and enthusiasts who wish to track their favorite cryptocurrencies on the go.

## Installation
To install the CryptoViewer app, follow these steps:

1. Ensure you have Flutter installed on your machine. If not, download and install Flutter from [Flutter's official site](https://flutter.dev).
2. Clone the repository to your local machine:

```
git clone https://github.com/yourgithubusername/cryptoviewer.git
```

3. Navigate to the project directory:

```
cd cryptoviewer
```

4. Install all the necessary dependencies:

```
flutter pub get
```

5. Run the app on your connected device or emulator:

```
flutter run
```


## Usage
After installation, you can use the app to:

- **Register** a new user account.
- **Log in** using your credentials.
- View **real-time charts** of various cryptocurrencies.

## Features
- User registration and authentication.
- Real-time cryptocurrency chart visualization.
- Data fetched directly from the Binance API.

## Dependencies
- Flutter SDK
- Binance API
- `Dio` 
- `riverpod_annotations`
- `go_router`

## Configuration
To configure the app, you will need to:

1. Obtain an API key from Binance:
- Visit [Binance API Management](https://www.binance.com/en/support/faq/360002502072), create an account if you don't have one, and follow the instructions to obtain an API key.
2. Insert your API key in the appropriate location in your Flutter app to ensure it can fetch data from Binance.

## Documentation
For more detailed documentation on the app's functionality and architecture, refer to the `docs` folder in the repository.

## Contributors
To contribute to this project, please fork the repository and propose your changes via a pull request.

## License
CryptoViewer is released under the MIT License. See the `LICENSE` file in the repository for more details.
