# HarmonyOS E-commerce Application Example

This is an e-commerce application example developed based on HarmonyOS, written in ETS (EcmaScript TypeScript), and designed with a modular architecture, making it easy to extend and maintain.

## Project Structure Overview

- **commons/basic/**: Public basic module, containing common pages and utility classes.
- **features/**: Functional modules directory, containing the following submodules:
  - **home**: Home page module
  - **category**: Category module
  - **cart**: Shopping cart module
  - **my**: Personal center module
- **products/phone/**: Application main entry and related resource files.
- **AppScope/**: Global application resource configuration.
- **build-profile.json5, hvigorfile.ts, etc.**: Files related to build configuration and dependency management.

## Key Functional Modules

### Home
Displays core content such as recommended products and promotional information.

### Category
Browse and filter by product categories.

### Cart
Manage selected products, support quantity adjustment and checkout operations.

### My
User personal information, order history, settings, and other functions.

## Technology Stack

- **ETS (EcmaScript TypeScript)**: Used for writing application logic.
- **HarmonyOS SDK**: Provides system-level APIs and UI components.
- **Modular Architecture**: Each functional module is developed independently, facilitating maintenance and reuse.

## Development and Build

### Development Environment Requirements

- **DevEco Studio**: Recommended to use the latest version for development and debugging.
- **Node.js**: Used for dependency management and build processes.
- **ETS Support**: Ensure that ETS compilation support is enabled in the project configuration.

### Build Process

1. Install dependencies:
   ```bash
   npm install
   ```

2. Build the project:
   ```bash
   hvigor build
   ```

3. Run the application:
   Deploy and run on an emulator or real device using DevEco Studio.

## Testing

- **Unit Tests**: Each module includes local unit tests (`LocalUnit.test.ets`).
- **UI Tests**: Component-level testing using `Ability.test.ets` and `List.test.ets`.

## Contribution Guide

Code contributions and documentation improvements are welcome. Please follow these steps:

1. Fork this repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Commit changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a Pull Request.

## License

This project is licensed under the [Apache-2.0](LICENSE) License.