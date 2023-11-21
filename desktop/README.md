# Requirements
NodeJS  
> You can get the latest version [here](https://nodejs.org/en/) where you can select LTS or Current  
npm
> You can find out how to install npm [here](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) 

# Modifying
1. Open Command Prompt in this folder and run this command  
   ```  
   npm i
   ```  
   This will download all required node modules  
2. All game logic is located in `app` folder, do your modifications there  
3. When you're done with all the modifications, you can test the changes  
   ```
   npm run start
   ```  
   This will run the electron app as it would after packaging  
4. If you're satisfied, you can package the game for distribution  
   ```
   node run package:win
   node run package:linux
   node run package:mac
   ```
   This will package the game for one of those three platforms,  
   the resulting files will be stored in `out/Incredibox-PLATFORM`,  
   for playability, the end user needs entire folder