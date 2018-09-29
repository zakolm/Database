# python3.6

import docx
from functools import reduce


def gen_elements_table():
    fieldnames = ['Id', 'ElementName', 'string_sertificate', 'id_sertificate']
    cell_end = []
    doc = docx.Document('DATAFILE.docx')
    tables = doc.tables
    i = 1
    for table in tables:
        for row in table.rows:
            arr = []
            for cell in row.cells:
                if cell.text == '':
                    arr.append('')
                else:
                    repls = ('\xa0', ''), (',', '')
                    arr.append(reduce(lambda a, kv: a.replace(*kv), repls,
                                      cell.text))
            arr.insert(0, i)
            cell_end.append(arr)
            i += 1
    return fieldnames, cell_end
