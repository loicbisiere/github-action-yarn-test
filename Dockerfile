FROM node:12.14.1-alpine

LABEL com.github.actions.name="Loïc Bisière"
LABEL com.github.actions.description="Run yarn test."
LABEL com.github.actions.icon="toggle-right"
LABEL com.github.actions.color="gray-dark"
LABEL homepage="https://github.com/loicbisiere/github-action-yarn-test"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]