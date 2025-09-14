FROM alpine:3.22

WORKDIR /app

RUN apk add --no-cache nasm build-base

COPY lab3.asm .

RUN nasm -f elf64 -o lab3.o lab3.asm && ld -o lab3 lab3.o

CMD ["./lab3"]
