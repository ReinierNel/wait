FROM gcc:11.4 as BUILD
WORKDIR /build
COPY wait.c wait.c
RUN gcc wait.c -o wait

FROM scratch
WORKDIR /app
COPY --from=BUILD /build/wait .
CMD ["./wait $TIME"]