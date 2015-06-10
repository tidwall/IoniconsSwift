/*
* IoniconsSwift (ionicons.swift)
*
* Copyright (C) 2015 ONcast, LLC. All Rights Reserved.
* Created by Josh Baker (joshbaker77@gmail.com)
*
* This software may be modified and distributed under the terms
* of the MIT license.  See the LICENSE file for details.
*
* The Ionicons TTF font file was originated from http://ionicons.com/
*/
import UIKit

private var loaded = false
private func load(){
	if loaded {
		return
	}
	loaded = true
	let inData = NSData(contentsOfFile: NSBundle(identifier: "com.oncast.IoniconsSwift")!.pathForResource("ionicons", ofType: "ttf")!)
	var error : Unmanaged<CFError>?
	let provider = CGDataProviderCreateWithCFData(inData)
	let font = CGFontCreateWithDataProvider(provider)
	if !CTFontManagerRegisterGraphicsFont(font, &error) {
		let errorDescription = CFErrorCopyDescription(error!.takeRetainedValue())
		NSLog("Failed to load font: %@", errorDescription as! String);
	}
}
public enum Ionicons : String {
	public func label(size: CGFloat, color: UIColor = UIColor.blackColor()) -> UILabel {
		load()
		let label = UILabel()
		label.font = UIFont(name: "ionicons", size: size)
		label.text = rawValue
		label.textColor = color
		label.textAlignment = .Center
		label.backgroundColor = UIColor.clearColor()
		label.frame = CGRectMake(0, 0, size, size)
		label.accessibilityElementsHidden = true
		return label
	}
	public func image(size: CGFloat, color: UIColor = UIColor.blackColor()) -> UIImage {
		let label = self.label(size, color: color)
		UIGraphicsBeginImageContextWithOptions(label.bounds.size, false, UIScreen.mainScreen().scale)
        label.layer.renderInContext(UIGraphicsGetCurrentContext())
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext();
		return image
	}
{{Items}}}
