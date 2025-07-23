FROM jenkins/jenkins:lts

USER root

# Optional: install curl or other required utilities
RUN apt-get update && apt-get install -y curl

# Switch back to jenkins user
USER jenkins

# Install the unique-id plugin (correct spacing)
RUN jenkins-plugin-cli --plugins unique-id
