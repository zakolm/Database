# python3.6

import random


def chooze(a, b):
    res = []
    for i in range(len(b)):
        if b[i][2] == a:
            res.append(b[i][0])
    return res[random.randint(0, len(res)-1)]


def gen_trashbasket_table(districts, area):
    district = dict(districts)
    district = dict(zip(district.values(), district.keys()))
    fieldnames = ['Id', 'Area', 'District']
    file = open('area.txt', 'r+')
    text = file.read().strip().split('\n')
    file.close()
    csv = []
    region = ''
    index = 1
    for i in text:
        if i != '':
            if i in district:
                region = i
            else:
                res = chooze(district[region], area)
                csv.append([index, i, res])
                # print(index, i, res)
                index += 1
    return fieldnames, csv
