FROM maven:3.8.6-openjdk-11 as bittu
RUN  git clone https://github.com/spring-projects/spring-petclinic.git && \
     cd spring-petclinic && \
     mvn package
#creating another stage

FROM openjdk:11 
LABEL project="bittu"
EXPOSE 8080
COPY --from=bittu /spring-petclinic/target/spring-petclinic-2.7.3.jar /spring-petclinic-2.7.3.jar 
CMD ["java", "-jar", "/spring-petclinic-2.7.3.jar"]