# Bintray-Upload

## Objective

automate [Bintray](http://bintray.com) file upload for many files.

`curl -T <FILE.EXT> -upaul-verest:<API_KEY> https://api.bintray.com/content/paul-verest/generic/<UR_COOL_PACKAGE_NAME>/<VERSION_NAME>/<FILE_TARGET_PATH>` 

## Usage

Create file `bintray-config.js` with content like below:

	// configuration
	// this is javascript module, not JSON to allow comments
	exports.config = {
	  user_name: "paul-verest",
	  api_key:"ba636be90099ed1",
	  account_or_organization:"paul-verest",
	  repository:"generic",
	  package_name:"package",
	  version_name:"0.1.0",
	  file_target_path:"" //#"0_1_0"
	};
	
then run from directory where are files to upload

	node path/to/bintray-upload.js
	
or		

	coffee path/to/bintray-upload.coffee
	
use generate line like below in `.sh` or `.cmd` file

	curl -T bintray-upload.coffee -upaul-verest:ba636be90099ed1 https://api.bintray.com/content/undefined/generic/package/0.1.0/
	curl -T bintray-upload.js -upaul-verest:ba636be90099ed1 https://api.bintray.com/content/undefined/generic/package/0.1.0/

### How to get curl on Windows ?

Get with [msysgit](http://code.google.com/p/msysgit/downloads/list?q=full+installer+official+git)
 ([git for Windows](http://msysgit.github.io/)) or from <http://curl.haxx.se/download.html>

### How to get API_KEY ?

From [Bintray User Guide](https://bintray.com/docs/bintrayuserguide.html)

> API Keys

> An API Key is a code for identifying, authenticating and authorizing a specific user’s access and activities using API tools in Bintray. Current functionality allows each user to use only one API Key at any given time but the feature of allowing multiple API Keys to each user is coming soon!

> To acquire an API Key for your user account:

>     1. Access your own User Profile.

>     2. Click the Edit button under your username.

>     3. Select the API Key tab.

>     4. If there is no API Key displayed, click the Generate One link.

>     The new API Key is displayed (it is already saved in the system).

## Developing

nodejs, coffee

https://github.com/styleguide/javascript

### Ideas, TODOs

I thought is there node.js libraries that implement culr.
I searching in NPM Registry <https://npmjs.org/search?q=curl>. There is a dozen modules, mostly 0.1x updated 2 years ago.
I have tried [node-curl](https://npmjs.org/package/node-curl), I doesn't work on Windows (though I already got curl.exe).

### Tools

Created with [Nodeclipse v0.5](https://github.com/Nodeclipse/nodeclipse-1)
 ([Eclipse Marketplace](http://marketplace.eclipse.org/content/nodeclipse), [site](http://www.nodeclipse.org))   
