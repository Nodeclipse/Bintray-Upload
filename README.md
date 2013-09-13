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

	coffee path/to/bintray-upload.coffee
	
use generate line like below in `.sh` or `.cmd` file

	curl -T bintray-upload.coffee -upaul-verest:ba636be90099ed1 https://api.bintray.com/content/undefined/generic/package/0.1.0/
	curl -T bintray-upload.js -upaul-verest:ba636be90099ed1 https://api.bintray.com/content/undefined/generic/package/0.1.0/
		
## Developing

nodejs, coffee

### Tools

Created with [Nodeclipse v0.5](https://github.com/Nodeclipse/nodeclipse-1)
 ([Eclipse Marketplace](http://marketplace.eclipse.org/content/nodeclipse), [site](http://www.nodeclipse.org))   
