# LastBite
GitHub repository for the flutter/dart code of the UI of LastBite. This is a project of the course GSL in Tilburg University. Refer to Irene Sostero.

In order to try the code by yourself you have to install the flutter framework on your device from the following link: \
https://docs.flutter.dev/get-started/install

After that, press Ctrl+Alt+t and open your terminal. I'm currently using a Debian-based Linux distribution so i'll show you how to compile the code on Ubuntu.

- Fist of all go to your development directory and type
  ```bash
  flutter create last_bite
  ```
  After the creation of the last_bite directory you will have to type
  ```bash
  cd last_bite
  ```
- After that you will have to remove the $lib$ and $pubspec.yaml$ files in order to substitute them with the ones I provide in this repo
  ```bash
  rm -r lib | rm pubspec.yaml
  ```
- Finally run the bash script (with which you will also download the images and fonts used in the app)
  ```bash
  git clone https://github.com/BabyMicky/LastBite.git
  ```
Instead of compiling the code, I provided the $.apk$ fie you can install on your Android device. 

Thanks to the Group 26 for the opportunity to work with them in this amazing project! 😄
