FROM maven as BUILD
WORKDIR /app
COPY . .
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
COPY --from=BUILD /app/target/Uber.jar /app/
EXPOSE 9099
CMD [ "java","-jar","Uber.jar" ]
