# python3.6


def gen_trashbasket_table(districts):
    district = dict(districts)
    district = dict(zip(district.values(), district.keys()))
    fieldnames = ['Id', 'Area', 'District']
    file = open('area1.txt', 'r+')
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
                csv.append([index, i, district[region]])
                print(index, i, district[region])
                index += 1
    return fieldnames, csv
