git pull origin main
npm install
npm run build

pm2 stop next-app || true
pm2 start npm --name "next-app" --start
pm2 save

echo "Deployment completed! App is running with PM2."
