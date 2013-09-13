
# curl -T <FILE.EXT> -upaul-verest:<API_KEY> https://api.bintray.com/content/paul-verest/generic/<UR_COOL_PACKAGE_NAME>/<VERSION_NAME>/<FILE_TARGET_PATH>

config = {
  user_name: "paul-verest"
  api_key:"ba636be90099ed1",
  account_or_organization:"paul-verest",
  repository:"generic",
  package_name:"package",
  version_name:"0.1.0",
  file_target_path:"" #"0_1_0"
}

# don't change below

fs = require('fs');
console = require 'console'

config = (require "./bintray-config").config
console.log config   

# list files in the current folder
folder = process.cwd();
files = fs.readdirSync(folder);
for file in files 
  #console.log('- ' + file);
  console.log("curl -T %s -u%s:%s https://api.bintray.com/content/%s/%s/%s/%s/%s"
  ,file,
  config.user_name,
  config.api_key,
  config.account_or_organization,
  config.repository,
  config.package_name,
  config.version_name,
  config.file_target_path);
  


