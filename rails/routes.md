### Introduction

- when an HTTP request arrives from the user's browser, we need to know which controller action (method) needs to run
- the router works as a matching service

  - it will look at the HTTP verb and the URL requested and will match it with the appropriate controller action to run

- Rails will grab all the parameters that come with a request and will make them available for you in a hash called params that can be used in a controller
  - useful for form submissions
