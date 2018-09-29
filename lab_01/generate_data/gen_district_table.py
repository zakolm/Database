# python3.6


def gen_district_table():
    """!
    Генерация таблицы Административных округов Москвы
    :return: fieldnames, district
    """
    fieldnames = ['Id', 'DistrictName']
    district =\
        [
            [1, u'ЗАО'], [2, u'ЮАО'], [3, u'ВАО'], [4, u'САО'], [5, u'ЦАО'],
            [6, u'СЗАО'], [7, u'СВАО'], [8, u'ЮВАО'], [9, u'ЮЗАО'],
            [10, u'Новомосковский округ'], [11, u'Троицкий округ'],
            [12, u'Зеленоградский округ']
        ]
    # print('столбцы', fieldnames)
    # print('ячейки(строки)', district)
    return fieldnames, district
