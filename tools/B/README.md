# Commercial Desktop Backend

This project contains all of the backend logic for the commercial desktop.

## Contributing

Please see the [Contributing](CONTRIBUTING.md) documentation for guidance.

## Swagger

This project will generate a swagger definition. With the application running, you can go to the `/openapi.json`
endpoint to get the definition. You can then use that in something like Swagger UI to provide a mechanism for trying out
the endpoints. The easiest way to get started is to use the docker instance of
[Swagger UI](https://github.com/swagger-api/swagger-ui/blob/master/docs/usage/installation.md#docker-hub). If you don't
have Docker available on your workstation, but you do have Node.js, then you can run a small Node.js application to try
out the endpoints. You can use [this Node.js Swagger project](https://git.bcbssc.com/jonsturdevant/swagger-ui) if you
don't want to write any code.
