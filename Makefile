# цель по умолчанию (при вызове make или make main)
# собираем программу main из объектного файла main.o
main: main.o
	gcc -g -O0 -o main main.o

main.o: main.c
	gcc -g -O0 -c main.c

# команда indent используется для автоформатирования кода
# -kr: используется стиль форматирования K&R
# -nut: запрещает использование табуляции для отступов
# -ts4: устанавливает размер отступа равным 4 пробелам
# main.c: файл, который будет отформатирован
indent:
	indent -kr -nut -ts4 main.c

# цель clean (при вызове make clean)
# удаляем программу и объектные файлы
clean:
	rm main.o
