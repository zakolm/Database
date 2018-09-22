# python3.6

import random


def gen_link_table(len_trashbasket, len_elements):
    fieldnames = ['id', 'id_trashbasket', 'id_element']
    csv = []
    id_trashbasket = 1
    for i in range(len_trashbasket):
        count_elements = random.randint(1,5)
        for j in range(count_elements):
            csv.append([id_trashbasket, i, random.randint(1, len_elements)])
            id_trashbasket += 1
    return fieldnames, csv
