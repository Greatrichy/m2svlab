#!/bin/bash 
# Update system and install NGINX 
apt update -y 
apt install -y nginx 
systemctl start nginx 
systemctl enable nginx 
# Create a web page with images from S3 and GitHub 
cat <<EOF > /var/www/html/index.html 
<h2>Images from S3 and GitHub</h2> 
<!-- S3 Image --> 
<img src="https://m2svlabbucket-947362.s3.us-east-1.amazonaws.com/your-image.jpg" 
width="500"> 
<!-- GitHub Image --> 
<img src="https://raw.githubusercontent.com/username/practice-images/main/image.jpg" 
width="500"> 
</body> 
</html> 
EOF