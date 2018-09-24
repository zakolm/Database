# python3.6

from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.pdfpage import PDFPage
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
import io


def extend_in_one_database(data, rang, district):
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
    return min(data.index('1'), data.index('2'),
               data.index('3'), data.index('4'))


def find_first_symbol(data, district):
    min_symb = len(data)
    for i in district:
        if i in data:
            if min_symb > data.find(i):
                min_symb = data.find(i)
    return min_symb


def from_string_to_csv(data_from, district_db):
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
    csv = extend_in_one_database(data_end, rang, inner)
    return csv


def pdfparser(data):
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


def gen_district_raiting_table(cell_of_district_db):
    """!
    Генерация таблицы рейтинга районов Москвы по экологии
    """
    fieldnames = ['Id', 'AreaName', 'District', 'Rang']
    data_string = pdfparser('example.pdf')
    data_string.replace(',', '')
    data_for_csv = from_string_to_csv(data_string, cell_of_district_db)
    for i in data_for_csv:
        i[1] = i[1].replace(',', '')
    return fieldnames, data_for_csv
