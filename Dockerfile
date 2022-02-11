FROM node:11.1.0-alpine

LABEL maintainer="Ivam Galvao Filho <ivam.galvao.filho@posgrad.ufsc.br>" \
      org.label-schema.vendor="Strapi" \
      org.label-schema.name="strapi docker image" \
      org.label-schema.description="Strapi containerized" \
      org.label-schema.url="https://strapi.io" \
      org.label-schema.vcs-url="https://github.com/strapi/strapi-docker" \
      org.label-schema.version=latest \
      org.label-schema.schema-version="1.0"

WORKDIR /usr/src/api

RUN echo "unsafe-perm = true" >> ~/.npmrc

RUN npm install -g strapi@alpha

COPY strapi.sh ./
RUN chmod +x ./strapi.sh

EXPOSE 1337

CMD ["./strapi.sh"]
