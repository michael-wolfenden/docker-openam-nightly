## Building

> docker build -t wolfenden/docker-openam-nightly .

## Running

> docker run --rm -it -p 8080:8080 --add-host "openam.example.com:127.0.0.1" wstrange/openam-base-nightly

* --rm : removes the container as soon as you stop it
* -p : forwards the port to your host (or if you use boot2docker to this IP)
* -it : allows interactive mode
* --add-host : for OpenAM to be configured correctly the container must resolve the FQDN DNS name used to access OpenAM.

If your using docker for windows beta open

> http://docker:8080/openam