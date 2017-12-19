# SHPopup
SHPop is lightweight library used for popup view

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

Just drag and drop the SHPop.swift file from SHPopup folder to your project.

## Usage

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

Mail me @: shezadahamed95@gmail.com

## Acknowledge

Inspired by  [STZPopupView](https://github.com/STAR-ZERO/STZPopupView)

## License

SHPopup is available under the MIT license. See the LICENSE file for more info.
