# Working locally with Docker

To introduce changes to this buildpack and have it tested locally before needing to use an heroku app
you can use this docker harness.

## Giving it a spin

Simply start docker and run `docker compose run app bash`  
This will build the local image - will take a bit.. - and launch you into a bash inside a container.  
You can now copy any files into the `shared` folder as they will be available both on the host and the container.

## Tweaking

Lets say you made some changes to the buildpack and want the `compile` step to run again...  
Well, you need to remove the image you previously built and build anew:

```
docker image rm heroku-im7-rsvg
```

NOTE: you can only delete images if there are no containers using it, so you may need to remove some containers too.
