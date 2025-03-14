# Play SDK
![Play hero image](playToXcode.jpg)

## Play overview
[Play](https://createwithplay.com/) is a visual platform for designing interactive iOS apps. It allows you to use real iOS views to build and prototype your ideas and see them live on your device.

With Play 3.0, the **PlaySDK** enables developers to export Play designs as production-ready code. Play generates highly performant native UIKit or SwiftUI code that integrates seamlessly with Xcode and can be safely shipped to production. The PlaySDK makes all of your Play styles, components, and assets accessible inside Xcode and the rest of your app. With **Play + PlaySDK**, anyone can design and build apps inside the Play app, export their work, and ship it to the App Store or integrate it into their existing iOS project.

:house_with_garden: [Homepage](https://createwithplay.com/)

:blue_book: [Play docs](https://createwithplay.com/docs)

🛠 [Play Forums](https://createwithplay.com/community/forums/home)

## Requirements

- Currently, this SDK supports a minimum iOS version of **17.4+**.
- The SDK is tested and developed using Xcode **16.2**.
- The package uses Swift Tools Version **5.8** and does not yet support Swift 6.

## Getting started
The library is distributed through Swift Package Manager

To get started with Play SDK, check out the following resources:

- [Getting Started with Play SDK](https://createwithplay.com/playsdk/getting-started)

<img width="700" alt="Screenshot 2025-03-14 at 3 42 38 PM" src="https://github.com/user-attachments/assets/b32f793d-1f9c-4689-abc0-714b3e501875" />

### Quick Start
To quickly see how PlaySDK works and how it can be embedded into an iOS app, check out the **example project** included in the repository. This project demonstrates how to integrate Play components and pages into an Xcode project.

1. Clone the PlaySDK repository.
2. Open the `Examples/` folder.
3. Run the example project in Xcode to explore PlaySDK in action.

This example provides a hands-on look at how PlaySDK translates Play designs into a functional iOS app.

You can get started with PlaySDK without having previously opened or used the Play application, though you may find it useful to install it to open Play files before exporting them. You can [download it here](https://createwithplay.com/).

### How do I import my Play project into my existing app?

<img width="700" alt="Screenshot 2025-03-14 at 3 43 22 PM" src="https://github.com/user-attachments/assets/fb25b4d1-53c5-46d2-a2fc-715bd6e5d320" />

During the export process, Play gives you the option to add your project to an existing app. Simply hit **Publish**, then **Export New Project**, and instead of creating a new project, select an existing Xcode project.

Play will automatically add the necessary packages and entitlements to your existing project.

#### Using a Play Component in your existing application



##### SwiftUI
You can instantiate a component in your existing application by importing your package. 
```swift
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

```swift
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

---

## Explore More Play Projects

You can check out our **gallery of projects** inside the Play app to explore more examples of what can be built with Play and PlaySDK. Download the app to browse these projects and see them in action: [Download Play](https://createwithplay.com/).

🌤️ We just launched **Lume**, an full app built entirely with Play and PlaySDK—without writing a single line of code! Check it out on the App Store.

---
## Issues

Have an issue with using the runtime, or want to suggest a feature/API to help make your development life better? Log an issue in our [issues](https://github.com/CreateWithPlayApp/PlaySDK/issues) tab! You can also browse older issues and discussion threads there to see solutions that may have worked for common problems.
