# Requirements
NodeJS  
> You can get the latest version [here](https://nodejs.org/en/) where you can select LTS or Current  

# Modifying
1. Go to /resources and rename app.asar to app.asar.bak  
2. Open Command Prompt in this folder and run this command  
   ```  
   npm install -g asar  
   ```  
3. Then you want to extract the source code from app.asar.bak with this command  
   ```  
   asar extract app.asar.bak app_src  
   ```  
4. You should now have a folder called `app_src`  
5. Go to /app_src/app and modify Incredibox to your needs  
6. After you finish modifying Incredibox, go back to /resources  
7. Open Command Prompt in /resources and pack the app with this command  
   ```  
   asar pack app_src app.asar  
   ```  
8. You should now have file called `app.asar` and you should be able to run Incredibox.exe and playing your mod  
