# ms-esdproduct-ios


### Installation
- Download and install Mac OS 10.15.4 and Xcode 12.4
- App and code supports for iOS 13.2 and later devices (iPhone) only.
- Download `dev` Code from Github.

### Environment
- Bundler is used to make sure tools are the same on different computers.
- Use `bundler install` on root folder to prepare environment, use `bundler exec <your command>` to run command with correct tool.
- We are using Cocoapods and with bundler need to use `bundler exec pod ...` instead just `pod ...`

### Platform
- There are one main app and several white labeled clones. For more info see [Targets Readme](./CohesionIB/CohesionIB/Targets/Readme.md)
- Deploy - this term is used to describe Product environment, like Dev, Prod.
- Targets support multiple deploys, to change deploy for target go to Target Build Settings and change DEPLOY parameter

### Configuration Keys  
- Refer URLConstants.swift for web service endpoints for Dev and Prod.
- Refer KeyConstants.swift for necessary credentials keys [For Ex. Stripe Key]
- Refer ObjectConstant.swift for Enums

### Pods
- Refer pod file for current installed third party pod libraries.

### Certificates and Push Notifications
- Use Push enabled certificates only for Dev and Prod.
- Change constant `azureHubEndpoint` to setup Azure Notification Hub Endpoint to register device token.

### StoryBoards
- Use Module.StoryBoard as per Main Module for ex. Users,Visits, etc

### Auth0 Setup
- Setup Auth0 configuration settings from auth0.com admin portal into plist. 
- Put Auth0.plist into corresponding subfolder in Targets folder.
- Setup URL Schemes in Xcode Info section same as bundle identifier com.abc.cohesionIBDev.
- Using Bundle identifier create call backURL for Auth0. For ex.  com.abc.cohesionIBDev://cohesionib.auth0.com/ios/com.abc.cohesionIBDev/callback.

### HID
- (HIDManager.swift was deleted and methods partially moved to BuildingSecurityApi.swift) Refer HIDManager.swift for HID configurations.
- Refer MobileKeyController.swift for HID Methods.
