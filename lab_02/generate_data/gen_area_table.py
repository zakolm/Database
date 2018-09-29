# python3.6

from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.pdfpage import PDFPage
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
import io


def union(data, rang, district):
    """!
    Объединение массивов в один мн. массив удобный для работы с csv-файлом
    :param data:
    :param rang:
    :param district:
    :return:
    """
    csv = []
    col = 0
    region = ''
    for i in data:
        if i != '':
            if i in district:
                region = i
            else:
                csv.append([col+1, i, district[region], rang[col]])
                col += 1
    return csv


def find_first_number(data):
    """!
    Поиск первого вхождения рейтинга в строке, экспортированной из pdf-файла
    :param data: строка, экспортированная из pdf-файла
    :return: место первого вхождения рейтинга в строке
    """
    return min(data.index('1'), data.index('2'),
               data.index('3'), data.index('4'))


def find_first_symbol(data, district):
    """!
    Поиск первого вхождения Административного Округа в строке,
     экспортированной из pdf-файла
    :param data: строка, экспортированная из pdf-файла
    :param district: массив Административных Округов
    :return: место первого вхождения Административного Округа в строке
    """
    min_symb = len(data)
    for i in district:
        if i in data:
            if min_symb > data.find(i):
                min_symb = data.find(i)
    return min_symb


def from_string_to_csv(data_from, district_db):
    """!
    Функция преобразует строку в мн. массив удобный для работы с csv-файлом
    :param data_from: строка экспортированная из pdf-файла
    :param district_db: мн. массив административных округов с их id
    :return: мн. массив удобный для дальнейшей работы с CSV-файлом
    """
    inner = dict(district_db)
    inner = dict(zip(inner.values(), inner.keys()))
    # First row
    start = find_first_symbol(data_from, inner)
    data = data_from[start:]
    end = find_first_number(data)
    data = data[:end]
    data_end = data.split('\n')
    data_from = data_from[end:]
    # First row Number
    end = find_first_number(data_from)
    start = find_first_symbol(data_from, inner)
    rang = data_from[end:start].split('\n')
    # Second row
    data_end = [x for x in data_end if x != '']
    rang = [x for x in rang if x != '']
    data = data_from[start:]
    end = find_first_number(data)
    data = data[:end]
    data_end.extend(data.split('\n'))
    data_from = data_from[end:]
    # Second row Number
    end = find_first_number(data_from)
    rang.extend(data_from[end:-1].split('\n'))
    # Del empty
    data_end = [x for x in data_end if x != '']
    rang = [x for x in rang if x != '']
    #
    csv = union(data_end, rang, inner)
    return csv


def pdfparser(data):
    """!

    :param data:
    :return:
    """
    fp = open(data, 'rb')
    rsrcmgr = PDFResourceManager()
    retstr = io.StringIO()
    codec = 'utf-8'
    laparams = LAParams()
    device = TextConverter(rsrcmgr, retstr, codec=codec, laparams=laparams)
    # Create a PDF interpreter object.
    interpreter = PDFPageInterpreter(rsrcmgr, device)
    # Process each page contained in the document.
    for page in PDFPage.get_pages(fp):
        interpreter.process_page(page)
        data = retstr.getvalue()
    return data


def gen_area_table(district_table):
    """!
    Генерация таблицы рейтинга районов Москвы по экологии
    :param district_table:
    :return:
    """
    fieldnames = ['Id', 'AreaName', 'District', 'Rang']
    area_string = pdfparser('example.pdf')
    area_string.replace(',', '')
    data_for_csv = from_string_to_csv(area_string, district_table)
    for i in data_for_csv:
        i[1] = i[1].replace(',', '')
    return fieldnames, data_for_csv
