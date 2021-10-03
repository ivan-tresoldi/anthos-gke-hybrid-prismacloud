FROM adoptopenjdk:11.0.3_7-jdk-openj9-0.14.0
VOLUME /tmp

USER root

#Secret exposed
COPY id_rsa ~/.ssh/id_rsa

#Copy Malware (Custom and WildFire generated)
COPY evil /evil
COPY EvilMalware-WF /evil-WF

#Install vulnerable os level packages
RUN apt-get update \
        && apt-get install -y nmap \
        && apt-get install -y netcat

#Expose vulnerable ports
EXPOSE 22
EXPOSE 80

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","org.springframework.samples.petclinic.PetClinicApplication"]
