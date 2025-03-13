# Play SDK
## Play overview
[Play](https://createwithplay.com/) is a visual platform for quickly designing interactive iOS apps and exporting production-ready Swift code in UIKit or SwiftUI. Now you can use Play to build, export, and ship your apps directly to the App Store.

:house_with_garden: [Homepage](https://createwithplay.com/)

:blue_book: [Play docs](https://createwithplay.com/docs)

🛠 [Play Forums](https://createwithplay.com/community/forums/home)

## Getting started
The library is distributed through Swift Package Manager

To get started with Play SDK, check out the following resources:

- [Getting Started with Play SDK](https://createwithplay.com/playsdk/getting-started)

## Supported devices

- Currently, this SDK supports a minimum iOS version of **17.4+**.
- The SDK is tested and developed using Xcode **16.2**.
- The package uses Swift Tools Version **5.8** and does not yet support Swift 6.

## Build and Run

### Installing Xcode from the App Store

If you’ve never built an app before, you may need to install Xcode from the App Store. This tutorial make it really easy to find the right version of Xcode and install it. 
[How to Make an App - Lesson 1 (Xcode 16 Updated)](https://www.youtube.com/watch?v=xkgaIm7QxK0&t=280s)

Once you have Xcode installed, come back and open your project and hit run.

<img width="842" alt="Screenshot_2025-03-11_at_3 35 50_PM" src="https://github.com/user-attachments/assets/27fe7e3f-f040-4004-beaa-e3dec80e7d63" />

### Running your Xcode project for the first time

When you export your project from Play, you'll receive an Xcode project file (with the **.xcodeproj** extension). To run your project for the first time, follow these steps:

1. **Open the .xcodeproj:** Launch Xcode and open the exported `.xcodeproj` file or the existing project into which you imported Play.
2. **Select a Target:** Choose the appropriate simulator or connected device from the device toolbar.
3. **Build the Project:** Press `Command + B` or select **Product > Build** to compile the project and check for any errors.
4. **Run the Project:** Press `Command + R` or select **Product > Run** to launch the app. The simulator or your device should display the app shortly.
5. **Configure if Needed:** If running on a physical device, ensure your developer certificate is trusted and any required permissions are set in your project’s settings.

### How do I import my Play project into my existing app?

During the export process, Play gives you the option to add your project to an existing app. Simply hit **Publish**, then **Export**, and instead of creating a new project, select an existing Xcode project.

Play will automatically add the necessary packages and entitlements to your existing project.

#### Using a Play Component in your existing application

##### SwiftUI
You can instantiate a component in your existing application by importing your package. 
```
var body: some View {
    VStack(spacing: 16) {
        
        // Add the component from Play SDK
        Chip()
        
        // Set the Component's state (this component has 2 states: 'defaultState' & 'selected')
            .state(currentState)
        
        // Do something when the state changes
        // Tap the button to change its state
            .onStateChange { state in
                currentState = state
                withAnimation() { isToggled.toggle() }
            }
    }
}
```

##### UIKit

```
override func viewDidLoad() {
  super.viewDidLoad()
  // Add the component from Play SDK
  let myComponent = Chip()
  myComponent.translatesAutoresizingMaskIntoConstraints = false
  view.addSubview(myComponent)
  
  NSLayoutConstraint.activate([
      myComponent.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      myComponent.centerYAnchor.constraint(equalTo: view.centerYAnchor)
  ])
  
  // Set the Component's state (this component has 2 states: 'defaultState' & 'selected')
  myComponent.state(.selected)
  
  // Do something when the state changes
  // Tap the button to change its state.
  myComponent.onStateChange = { [weak self] animation in
      self?.isToggled.toggle()
      changeBackgroundColor()
  }
}
```

Check out the `Examples/` folder and the [PlaySDK Documentation](https://createwithplay.com/playsdk/) for more examples of how to work with the PlaySDK.

## Issues

Have an issue with using the runtime, or want to suggest a feature/API to help make your development life better? Log an issue in our [issues](https://github.com/CreateWithPlayApp/PlaySDK/issues) tab! You can also browse older issues and discussion threads there to see solutions that may have worked for common problems.
