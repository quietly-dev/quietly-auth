# mohammaddev/quietly_auth

FROM node:12.8.0-alpine

ENV COMPlus_EnableDiagnostics=0
WORKDIR /usr/share/quietly_auth

RUN apk update && apk upgrade \
    && apk add --no-cache git \
	&& apk --no-cache add --virtual builds-deps build-base python

ENV PORT 6001
EXPOSE 6001

COPY . /usr/share/quietly_auth
RUN cd /usr/share/quietly_auth
RUN yarn

CMD ["yarn", "start"]