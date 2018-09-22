# python3.6

import docx


def gen_elements():
    fieldnames = ['Id', 'ElementName', 'string_sertificate', 'id_sertificate']
    cell_end = []
    doc = docx.Document('DATAFILE1.docx')
    tables = doc.tables
    i = 1
    for table in tables:
        for row in table.rows:
            arr = []
            for cell in row.cells:
                if cell.text == '':
                    arr.append('')
                else:
                    arr.append(cell.text.replace('\xa0', ''))
            arr.insert(0, i)
            cell_end.append(arr)
            i += 1
    return fieldnames, cell_end
