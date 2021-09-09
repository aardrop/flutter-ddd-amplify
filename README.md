# flutter_ddd_amplify

This is an example project using the Domain Driven Design pattern based off or ResoCoder's DDD Firebase Course (https://github.com/ResoCoder/flutter-ddd-firebase-course). 

It uses AWS Amplify for authentication, follow their documentation for setup (https://docs.amplify.aws/start/q/integration/flutter/)

After following the amplify setup to connect to AWS/Cognito you'll likely need to run the code generation script: ```flutter pub run build_runner watch --delete-conflicting-outputs```

The project currently supports: 
- amplify auth:
    - sign in (with email and passwords)
    - sign up
    - confirmation code
    - sign out 
    - auto sign in
    - forgotten password reset

The project uses: 
- BLoC state management
- Injectable singletons
- Auto Route building
- Freezed
- GetIt

Coming soon: 
- amplify auth:
    - password recovery
    - social logins
- amplify API
- amplify storage

Additionally see the snippets.json file to see my dart snippets I used to speed up the build

Note: I'd love any feedback on how to do this better, particularly the management of the different auth stages as I'm relatively new to the BLoC pattern. 
