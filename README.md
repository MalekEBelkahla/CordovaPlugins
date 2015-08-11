# Cordova UUID Generator Plugin for iOS

## DESCRIPTION

This plugin is for use with [Cordova](http://incubator.apache.org/cordova/), and allows your application to read the UUID of IOS devices.

This plugin use both NSUserDefaults Class and Keychain storage to generate and read the UUID string to be used inside a cordova application.
The use of keychain storage to ensure the uniqueness of UUID even after uninstallation and reinstallation of the application.

##<a name="license"></a> LICENSE

	The MIT License

	Copyright (c) 2015 Proxym-IT.
	portions Copyright (c) 2015 Malek BELKAHLA

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.




##<a name="manual_installation"></a>Manual Installation

This plugin uses [SFHFKeychain Class](https://github.com/jayway/SFHFKeychainUtils) to read and save the UUID to Keychain storage.
