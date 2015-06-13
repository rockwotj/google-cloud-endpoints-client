# google-cloud-endpoints-client

This is a CocoaPod of the [GTL Client library](https://code.google.com/p/google-api-objectivec-client/) that is used in Google Cloud Endpoint's generated client code. This is basically a way to automate [this](https://cloud.google.com/appengine/docs/python/endpoints/consume_ios#Python_Adding_required_files_to_your_iOS_project) step in the Google Cloud Endpoints setup process.

I hope this makes your life a little easier!

## Installation

google-cloud-endpoints-client is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'google-cloud-endpoints-client', :git => 'https://github.com/rockwotj/google-cloud-endpoints-client.git'
```

## How to set up Google Cloud Endpoints with this pod

These steps are generalized from the iOS course [here](http://www.rosebotics.org/courses), which are generalized versions of [Google's steps](https://developers.google.com/appengine/docs/python/endpoints/consume_ios).

### Step 1 - Add two frameworks
The first step is easy.  Add two frameworks to the project:

1. Security.framework
1. SystemConfiguration.framework

### Step 2 - Add the Cocoa Pod
Add this to your pods file
```ruby
pod 'google-cloud-endpoints-client', :git => 'https://github.com/rockwotj/google-cloud-endpoints-client.git'
```
then 
```shell
pod install
```

### Step 3 - Generate the files for your backend
This is a two step process

1. Create a file that is called the discovery document
1. Feed that discovery document to an executable called ServiceGenerator (note, you’ll need to compile that binary from the source code before you can use it!)

<b>Creating the discovery document</b>

In the root directory of your appengine project (where app.yaml is located) run the following command (assuming your api is all in one class)
```shell
endpointscfg.py get_discovery_doc -f rpc <YOUR API MODULE>.<YOUR API CLASS>
```

This should output a file called: \<YOUR API CLASS\>.discovery

<b>Using and compiling the ServiceGenerator</b>

Check out [GTL Client library](https://code.google.com/p/google-api-objectivec-client/) using
```shell
svn checkout https://code.google.com/p/google-api-objectivec-client/
```
Then open the ServiceGenerator.xcodeproj in X-Code (it’s in this folder… Source → Tools → ServiceGenerator → ServiceGenerator.xcodeproj) and then hit <b>Project->Build</b> or <b>⌘B</b>

After it is built, using the <i>full path of the executable</i> run this command within the root directory of you appengine project
```shell
/your/full/path/to/ServiceGenerator ./<YOUR API CLASS>.discovery --outputDir ./API
```
Your entire API was created and placed into the ./API folder. Copy all of the files <b>EXCEPT THE FILE \<YOUR API CLASS\>_Sources.m</b> into X-Code.

After that, if you use Swift, like I do, add this import to your Bridging Header
```objc
#import "GTL<YOUR API CLASS>.h"
```

Then you're all ready to roll! It is still a lot of work, but at least the pod speeds up one of those steps.


## Author

Tyler Rockwood (rockwotj)

## License

google-cloud-endpoints-client is available under the MIT license. See the LICENSE file for more info.
