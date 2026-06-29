FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

RUN for task in task*/; do javac ${task}*.java 2>/dev/null || true; done

CMD sh -c "java -cp ${TASK} Main"