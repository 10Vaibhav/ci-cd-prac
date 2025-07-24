# Put system paths first to use global PM2
export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:$PATH


git pull origin main
npm install
npm run build

pm2 stop next-app || true
pm2 delete next-app || true
pm2 start npm --name "next-app" -- start
pm2 save

echo "Deployment completed! App is running with PM2."
