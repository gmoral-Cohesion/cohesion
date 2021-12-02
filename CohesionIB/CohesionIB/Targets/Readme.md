
## General info

In this _Targets_ folder located Target related source files and resources.

Root folder for Target should be named as *<PRODUCT_NAME>*
Put into target folder all sources and resources that should be available only for this target.
If resource is deploy related then put it into *Resources<DEPLOY>* folder and **don't add** to the target it will be copied to the app during "Copy DEPLOY related resources" script.  

As values for Deploy use: Dev|Prod


## How to add new target

Select project in file navigator.
Right click on CohesionIB target and select Duplicate
Choose Duplicate only
Rename target to a new name (later will reference to it as <NEW_NAME>)
Replace *INFOPLIST_FILE* value to *$(INFOPLIST_$(DEPLOY))* and check other build settings
In General/Frameworks Remove reference to Pods-CohesionIB.framework  
Delete CohesionIB copy-Info.plist file from project and from disk
In Targets folder create *<NEW_NAME>* folder
Copy Info.plist file from Targets/CohesionIB folder to *<NEW_NAME>* folder and check values
In Podfile add:
`target '<NEW_NAME>' do
shared_pods
end`
 and run `bundler exec pod install`
In *<NEW_NAME>* folder put all target related sources and resources.
For each supported deploy create *Resources<DEPLOY>* subfolder and put there needed files:
1. Auth0.plist
2. GoogleService-Info.plist
