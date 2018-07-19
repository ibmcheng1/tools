# commercial-desktop

commercial-desktop is a Vue.js application

# Development

## Prerequisites

1. Setup [Node.js](http://a70tpcrputil005/isWiki/index.php?title=Node.js)
2. Setup Git to use a proxy to get around web sense
3. Install dependencies

    ```bash
    $ export NODE_TLS_REJECT_UNAUTHORIZED="0" # this allows npm to install things without failing on websense
    $ npm install
    ```

4. Run some tasks

    There are a few scripts defined in the `package.json` file that make development easy. Here is the list of available scripts. After running `npm install`, you can try out some of these commands.

    `npm run lint` - used to run linting on the project

    `npm run test` - used to run the tests built into the project and publishes the results to sonar

    `npm run test:dev` - used to run the tests built into the project but does NOT publish the results to sonar

    `npm run build` - used to build the application with a production level of optimizations.  Separate outputs are generated for each of the supported environment configurations (dist/dev, dist/unit, dist/system, dist/qual, dist/production).

    `npm run doc` - used to generated updated jsdocs for the project

    `npm run serve:[environment]` - used to serve up a development version of the application locally.  Use different environment identifiers to determine which environment configuration to target (dev, virtual, unit, system, qual, or production).  The "dev" environment identifer serves mock responses for all data fetches.  The "virtual" environment identifer serves virtual service responses for all data fetches.  The other environment identifiers call their cooresponding WebAPI endpoints.  Example: npm run serve:unit.

    `npm run serve:dist:[environment]` - used to serve up a production version of the application locally. Use different environment identifiers to determine which environment configuration to target (dev, virtual, unit, system, qual, or production).  The "dev" environment identifer serves mock responses for all data fetches.  The "virtual" environment identifer serves virtual service responses for all data fetches.  The other environment identifiers call their cooresponding WebAPI endpoints. Example: npm run serve:unit.

# Building

The application is built automatically as part of every push to a branch by Jenkins. The build includes the following steps:

* Configure NPM
* Install NPM Dependencies
* Building the projects
* Running Unit Tests with Code Coverage
* Publishing Unit Test Results to Jenkins
* Running Static Analysis
* Publishing Static Analysis Results to Jenkins
* Running BlackDuck Security Scans
* Generating Documentation
* Publishing Documentation to Jenkins
* Publishes the built artifacts to JFrog Artifactory

# Documentation

The source script files are documented using the JSDoc tool.  See [http://usejsdoc.org/](http://usejsdoc.org/) for more information on using the JSDoc tool.

# Gotchas

## SSH Error during npm install

1. Make sure an SSH key is generated for your account.

Taken from: https://help.github.com/enterprise/2.12/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

2. Open D:/Users/you/.ssh/id_rsa.pub and copy the contents of the file.
3. Log in to github.com and add it as an ssh key under Settings/SSH and GPG keys.
4. In a random directory, run the command:

```
git clone git@github.com:gulpjs/gulp.git
```

5. Now run ```npm install```
