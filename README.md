# Personal Utility Scripts

A collection of utility scripts for various file operations, media downloads, and file transfers. This repository contains PowerShell, Batch, and Shell scripts to automate common tasks.

## Project Structure

- **Batch/** - Windows batch scripts
  - `resize_media.bat` - Lightweight image resizing script (supports GIF, PNG, JPG, JPEG)

- **PowerShell/** - Windows-specific utility scripts
  - `rename-files-from-list.ps1` - Batch rename files using a reference list
  - **ez-release/** - A modular system for automating software releases (versioning, building, packaging, signing). See the [ez-release README](/PowerShell/ez-release/README.md) for details.

- **Shell/** - Bash shell scripts for various operations
  - **yt-dlp/**: Scripts for downloading media using yt-dlp (see [Shell/yt-dlp/README.md](./Shell/yt-dlp/README.md))
    - `yt-dlp-from-txt.sh` - Download media from URLs listed in a text file
    - `yt-dlp-tv-from-txt.sh` - Download TV episodes from a list, with automated episode naming
    - `yt-dlp-from-txt-impersonate.sh` - Like yt-dlp-from-txt.sh but impersonates another user agent or platform
  - **audio-transfer/**: Scripts for processing and transferring audio files (see [Shell/audio-transfer/README.md](./Shell/audio-transfer/README.md))
    - `append-mp3.sh` - Append .mp3 extension to files in a directory
    - `ssh-wav-mp3.sh` - Transfer audio files (WAV/MP3) to a remote server via SSH
    - `ssh-wav-mp3-master-stems.sh` - Transfer master audio files while handling stem files
  - `sshfs-mount.sh` - Mount remote filesystem via SSHFS with VPN bypass
  - `nfs-mount.sh` - Mount NFS shares with automatic directory creation and verification

## Requirements

### Batch Scripts
- Windows operating system
- ImageMagick installed and added to system PATH
- Read/Write permissions in target directories

### PowerShell Scripts
- Windows PowerShell or PowerShell Core
- Appropriate file system permissions

### Shell Scripts
- Bash shell environment
- Required tools:
  - `yt-dlp` for media downloads
  - `rsync` for file transfers
  - `sshfs` for remote mounting
  - SSH access and configuration for remote operations
  - Mullvad VPN (optional, for VPN bypass operations)

## Features

### Media Processing
- Basic image resizing with custom scale
- Support for common image formats
- Directory-based batch processing
- Interactive command-line interface

### File Management
- Batch file renaming
- Directory organization
- File transfer and synchronization
- Remote file operations
- Extension management

### Media Downloads
- Batch URL processing
- Audio file management
- Support for various media sources

### Remote Operations
- SSHFS mounting with VPN bypass
- Secure file transfers
- Remote directory synchronization

## Usage

Each script directory contains its own README with specific usage instructions and examples. Please refer to:
- [Batch Scripts Documentation](./Batch/README.md)
- [PowerShell Scripts Documentation](./PowerShell/README.md)
- [Shell Scripts Documentation](./Shell/README.md)

## Contributing

Feel free to submit issues and enhancement requests. Pull requests are welcome

## License

This project is licensed under the MIT License