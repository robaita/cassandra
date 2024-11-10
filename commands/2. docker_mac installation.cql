// Step 1: Download Docker for Mac
// Visit the official Docker website and download Docker Desktop for Mac.
// https://www.docker.com/
// Make sure to choose the version that matches your macOS (Apple Silicon or Intel Chip).

// Step 2: Install Docker Desktop
// Once the download is complete, open the .dmg file to start the installation process.

// Drag the Docker icon into the Applications folder.

// Step 3: Start Docker
// Go to the Applications folder and double-click Docker to start it.

// Docker will ask for your system password to install the necessary helper tools. Enter your password and follow the prompts.

// Once Docker is started, you'll see the Docker icon in the macOS menu bar.

// Step 4: Verify Docker Installation
// Open a Terminal window and run the following command to check the Docker version:
docker --version
// To ensure Docker is running properly, you can also run the hello-world container:
docker run <image name>
// This command will pull an image from Docker Hub and display a success message if everything is working correctly.