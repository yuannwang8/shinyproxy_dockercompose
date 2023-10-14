# Workaround

This workaround allows Docker Compose (from Docker Desktop) to launch the `openanalytics/shinyproxy` official image.    ShinyProxy runs as a non-root user in OpenAnalytics' official Docker image. As the non-root user is unable to access the Docker socket, this workaround essentially forces the container to run as root (which isn't ideal).

The alternative is to use the old method of installing the ShinyProxy jar file into a Java image: see commented out codes in the `sp.dockerfile`. This has the added benefit of being able to use newer Java images.

Files are amended from [Source 02-containerized-docker-engine from OpenAnalytic's GitHub page](https://github.com/openanalytics/shinyproxy-config-examples/tree/master/02-containerized-docker-engine)

Also added OpenAnalytics' Streamlit demo.

Also added `-v` to extract the container logs onto the host as a convenience feature.

To launch / stop from Docker Compose: 

> docker compose up -d 

> docker compose down

To force a re-build of a particular service

> docker compose up -d --build shinyproxy


## Requirements

ShinyProxy expects relevant Docker images to be already available on the host. Before running this example, pull the Docker image used in this example with:

> docker pull openanalytics/shinyproxy-demo

> docker pull openanalytics/shinyproxy-streamlit-demo