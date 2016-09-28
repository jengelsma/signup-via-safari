# signup-via-safari
This is a simple iOS example app (Swift 2) that shows how to onboard new users via a web signup form that is already in place.  The app launches the web signup form via a Safari View Controller (SFSafariViewController).  In theory, once the form is filled / submitted if all checks out (e.g. username/password valid, and account provisioned) the web app then redirects the browser to a custom URL Scheme defined by the example app.  

## Instructions

To try it out, do the following: 

1. Deploy the test.html file on your web server.  It presents the form and implements the redirect to the app's custom URL in Javascript.  

2. Modify the URL passed to the SFSafariViewController in ViewController.swift so it points to the file deployed in the previous step.

3. Run the app, and give it a try! 


