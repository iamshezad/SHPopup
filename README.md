# SHPopup
SHPop is lightweight library used for popup view

[![Version](https://img.shields.io/cocoapods/v/SHSnackBarView.svg?style=flat)](https://cocoapods.org/pods/SHPopup)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-ios-blue.svg?style=flat)](https://cocoapods.org/pods/SHPopup)


<img src="/Screenshots/mockup.png" />


### Sample One
<img src="/Screenshots/SampleOne.gif" />

### Sample Two
<img src="/Screenshots/SampleTwo.gif" />

### Sample Three
<img src="/Screenshots/SampleThree.gif" />

## Features
#### SHPopup supports a popup inside another popup without dismissing
#### SHPopup is customizable 

## Installation
Just drag and drop the SHPopup.swift file from SHPopup folder to your project.

## Usage

### Main viewcontroller must be embed in a navigation controller

### Set Popup View
 Set a viewcontroller as popup view using setPopup function
```swift
    let PopupVC = setPopupVC(storyboradID:"Main",viewControllerID:"restorationIdentifier")
```
you should set Storyboard name and viewcontroller id in setPopup function

### Present Popup View
```swift
    self.presentPopup(controller: popupVC, completion: nil)
```
### Dismiss Popup View
```swift
    self.dismissPopup(completion: nil)
```
### Customization

1. Popup View alignment options
    .top
    .center
    .bottom
    .custom  - you can specify the x and y point of popup view
```swift
    popupVC?.popupAlign = .top
 ```
custom alignment option
```swift
    popupVC?.popupCustomAlign = CGPoint(x: 100, y: 100)
```
2. Popup View animation options
    .normal
    .top
    .bottom
    .bottomBounce
    .topBounce
```swift
    popupVC?.popupAnimation = .bottom
```
3. Poup View touch dismiss
```swift
    popupVC?.touchDismiss = true
```
By default it is true

4. Popup View Size - you can specify the width and height of popup view
```swift
    popupVC?.popupSize = CGSize(width: 250, height: 250)
```
5. Popup View overlay Color - you can specify any color as overlay
```swift
    popupVC?.overlayColor = UIColor.black
```
6. Popup View Corner Radius
```swift
    popupVC?.popupCorner = 5
```
For more you can download the sample project.

## Requirements

* iOS 9.0+

## Example

Download the Sample project.

## Contact

<b>Shezad Ahamed</b>

Follow and contact me on:

 <a  href="mailto:iamshezad.dev@gmail.com"><img src="https://img.shields.io/badge/gmail-%23D14836.svg?&style=for-the-badge&logo=gmail&logoColor=white"> </a>   <a  href="https://www.instagram.com/iamshezad.dev/"><img src="https://img.shields.io/badge/instagram-%23E4405F.svg?&style=for-the-badge&logo=instagram&logoColor=white"></a>   <a href="https://www.linkedin.com/in/iamshezad/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" ></a>

If you like my content, please consider buying me a coffee. Thank you for your support!

<a href="https://www.buymeacoffee.com/iamshezad.dev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" width="174" height="41" ></a>

## Acknowledge

Inspired by  [STZPopupView](https://github.com/STAR-ZERO/STZPopupView)

## License

SHPopup is available under the MIT license. See the LICENSE file for more info.
