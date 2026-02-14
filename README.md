# Automated EC2 Web Server Using User-Data

## Overview
This repository demonstrates automated EC2 instance provisioning on AWS using user-data scripts.  
The instance automatically installs and configures Nginx, deploys a custom webpage, and showcases server bootstrapping and cloud automation concepts.

---

## Project Workflow

### 1. Create S3 Bucket
- Create a public S3 bucket with a unique name.
- Upload an image file.
- Configure bucket policy for public read access.
- Example policy is included in `scripts/bucket-policy.json`.

### 2. GitHub Repository
- Store images and scripts in this repository.
- Use **raw GitHub URLs** for direct image access in your webpage.

### 3. Launch EC2 Instance
- **AMI**: Ubuntu Server 22.04 LTS  
- **Instance type**: t2.micro (Free Tier eligible)  
- **Security group**: Allow SSH (22) and HTTP (80)  
- **User-data script**: Installs Nginx, creates `index.html`, and embeds images from both S3 and GitHub.

Script example is in `scripts/user-data.sh`.

### 4. Access Web Page
- Visit `http://<Public-IP>/index.html` in your browser.
- The page displays images hosted in **S3** and **GitHub**.

---

## Repository Structure

