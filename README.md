# node-codebuild-example
Sample scripts I use within the AWS (EC2, CodeBuild, etc.).

## Details  
CodeBuild uses `buildspec.yml` to drive everything and ultimately calls `npm run push`.  This is a simply bash script which pulls in the `package.json` file and uses the `.name` and `.version` properties to tag and push the image.  CodePipeline triggers this build whenever the `master` branch in my project is updated.  The end result is that the project is autmatically tagged with the current version number and pushed into the private registry for deployment within ECS/EC2.

## Contact Info  
Feel free to email me with any questions:

**Fred Lackey**  
**[http://fredlackey.com](http://www.fredlackey.com)**  
**[fred.lackey@gmail.com](mailto:fred.lackey@gmail.com)**  

