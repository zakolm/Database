# -*- coding: utf-8 -*-
import csv

def csv_writer(path, fieldnames, data):
    """
    Функция для записи в файл csv
    path - путь до файла
    fieldnames - название столбцов
    data - список из списков
    """
    with open(path, "w", newline='') as out_file:
        '''
        out_file - выходные данные в виде объекта
        delimiter - разделитель :|;
        fieldnames - название полей (столбцов)
        '''
        writer = csv.DictWriter(out_file, delimiter=',', fieldnames=fieldnames)
        writer.writeheader()
        for row in data:
            writer.writerow(row)