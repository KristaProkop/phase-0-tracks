What are some common HTTP status codes?
100s: Informational - request received, continuing process
    ex: 102 Processing - indicates the server is processing the request to avoid timing out.
200s: Success
    ex: 200 OK - the standard response
        204 No Content - request processed but there is no content being returned
300s: Redirect
    ex: 301 Moved permanently - all future requests should be directed to a new URL
400s: Client Error
    ex: 403 Forbidden - the request was valid but the server refuses to repond (possibly due to login permissions for example)
        404 Not Found - the page wasn't found but you can continue requesting it if you want
        429 Too many requests - the client has sent too many requests in too short a time
500s: Server error
    ex: 500 Internal Server Error - general error was encountered; no additional information
        503 Service Unavailable - the server is not available due to overload or maintenance
        511 Network Authentication required - Client needs to log in for access



What is the difference between a GET request and a POST request? When might each be used?
GET: the requests include all required data in the url. Since parameters are limited to the URL length you should only use less than 2k data. Less secure, requests are saved in browser history and server logs in plain text. You can bookmark the url and directly return to the current state. Thus GET is recommended for forms that involve regular database queries only.
POST: supplies additional information from teh browser in the message body. Can send parameters and files to the server. Parameters are not saved in browser or server, so this method can be used for logins/passwords and other sensitive info. Recommended for use for anything that involves data changes, sensitive info, etc.


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a piece of data sent from the web server to the client. They function to remember useful info (like items in shopping cart, login status, pages visited in the past). 


