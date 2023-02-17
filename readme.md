### Deployer

Deployer is a collection of shell scripts designed to deploy a javascript application into a VPS

This can be cloned in a VPS and set up in a way that the github actions trigger the executable `deploy` which reads the environment file and then deploys the project.

### Configuration

The deployer is configured by using a `.env` file. The example to the configuration options are given in `.env.example` file.


### Customization

The deployment process is separated into prepare, build, and deploy phase. Each phase has two hooks that run before and after the process completes. If anything needs to be added or customized, the thing can be registered into its own hook and can be used pretty easily.

There are plans for making an architecture which would allow injection of custom scripts. This is in the pipeline for future releases.


### Contribution

If you think this can be of help for you, please contribute. If you think something is missing or something needs to be fixed, open a pull request against the `master` branch. Create issue if you want to report a bug.