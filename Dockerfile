FROM openjdk:8-jre-alpine

WORKDIR /minecraft

RUN apk add --no-cache wget

RUN wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/a0d0329c8016a8ab6f7495d5e8d75ffa2fb1463d/server.jar

COPY mods/ /minecraft/mods/

CMD ["java", "-Xmx4G", "-Xms1G", "-jar", "minecraft_server.jar", "nogui"]
