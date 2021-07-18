# Requirements
Java Development Kit 
> You can get the latest one [here](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html)

# Modifying
Before each modification, redownload this repo to be sure that all files are correct  

1. Go to /source/assets/www/ where you can modify Incredibox to your needs  
2. After doing your modifications, go back to /android and open Command Prompt here  
3. In Command Prompt first thing you want to do is building the apk with this command  
   ```
   java -jar apktool.jar b -f -d source -o Incredibox-v0.5.4-unaligned.apk
   ```  
4. Then you need to sign the apk file but first we need to generate a key with this command  
   ```
   keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
   ```  
   You will be asked to enter keystore password, remember this password because you will need to use it later  
   You will also be asked to enter details, you can keep it all Unknown and when it asks you if it is correct, answer <ins>yes</ins>  
5. Now we can sign the apk file with this command  
   ```
   jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore Incredibox-v0.5.4-unaligned.apk alias_name
   ```  
6. Verify the apk file with this command  
   ```
   jarsigner -verify -verbose -certs Incredibox-v0.5.4.apk
   ```  
   If verification passed correctly, you can continue  
7. Last thing you need to do is aligning the apk file with this command  
   ```
   zipalign -v 4 Incredibox-v0.5.4-unaligned.apk Incredibox-v0.5.4.apk
   ```  
8. You should now have file called `Incredibox-v0.5.4.apk` which you can move to your phone and install  
   If a prompt shows up saying <ins>Blocked by Play Protect</ins>, just click <ins>install anyway</ins>  
   The reason, you recieve this promt is because you signed the apk file yourself and Play Protect doesn't recognize the developer's signature  
