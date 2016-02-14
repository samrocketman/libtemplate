# libtemplate

A Job DSL script library template for creating libraries used by Job DSL
scripts.  For use by Job DSL plugin scripts to generate Jenkins jobs.

# Getting Started

### Building

Assemble dependencies:

    ./gradlew assemble

Execute unit tests:

    ./gradlew check

Package Jar file:

    ./gradlew package

Clean workspace:

    ./gradlew clean

Test against a different version of Groovy using the `GROOVY_VERSION`
environment variable:

    GROOVY_VERSION="2.3.9" ./gradlew check

### API Documentation

Generate groovydoc:

    ./gradlew groovydoc

### Additional metrics

View test coverage reports:

    GROOVY_VERSION="1.8.9" ./gradlew cobertura

_Note: Get more accurage coverage reports with an older version of groovy.  This
is due to known bugs in cobertura support for newer versions of Groovy.  To
learn more about this see issues: [jervis#39][jervis#39],
[cobertura#184][cobertura#184]._


[cobertura#184]: https://github.com/cobertura/cobertura/issues/184#issuecomment-72327078
[jervis#39]: https://github.com/samrocketman/jervis/issues/39
