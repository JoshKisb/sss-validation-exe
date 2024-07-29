# sss-validation-exe

This repository contains the necessary files to create a Windows installer for the Simon Validators Docker image. Follow the steps below to compile the installer using NSIS.

## Prerequisites

- **NSIS**: Download and install NSIS from [NSIS Downloads](https://nsis.sourceforge.io/Download).

## Steps to Compile the Installer

1. **Clone the Repository**:

   Open a terminal or Git Bash and clone this repository:

   ```sh
   git clone https://github.com/yourusername/sss-validation-exe.git
   cd sss-validation-exe
   
## Open NSIS and Compile

1. Launch NSIS from your Start menu or by running `makensisw.exe`.
2. In NSIS, click on `File` -> `Open...` and navigate to the `setup.nsi` file in the cloned repository.
3. Click on `Compile NSI script` (the hammer icon) to compile the script.

## Output

After compilation, you should see `SimonValidatorsInstaller.exe` in the output directory specified in the NSIS script.

## Notes

- Ensure that you have a stable internet connection during the installation process as it downloads Docker and the Docker image.
- Users may need to reboot their system after installing Docker to apply group changes.

If you encounter any issues or have questions, please open an issue in this repository or contact the maintainer.
