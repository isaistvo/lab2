# Основа образу
FROM alpine:3.22 
# Задання робочої директорії
WORKDIR /app 
# Встановлення необхідних пакет
RUN apk add nasm build-base
# Копіювання локального файлу з кодом у образ
COPY lab3.s .
# Ассемблювання та лінкування програми
RUN nasm -f elf64 -o lab3.o lab3.s && ld -o lab3 lab3.o
# Запуск готової програми
CMD ["./lab3"]
