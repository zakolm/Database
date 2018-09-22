# python3.6


def gen_district_database():
    """!
    Генерация таблицы Административных округов Москвы
    \param[in] None
    \return fieldnames, district
    """
    fieldnames = ['Id', 'DistrictName']
    district =\
        [
            [1, 'ЗАО'], [2, 'ЮАО'], [3, 'ВАО'], [4, 'САО'], [5, 'ЦАО'],
            [6, 'СЗАО'], [7, 'СВАО'], [8, 'ЮВАО'], [9, 'ЮЗАО'],
            [10, 'Новомосковский округ'], [11, 'Троицкий округ'],
            [12, 'Зеленоградский округ']
        ]
    print('столбцы', fieldnames)
    print('ячейки(строки)', district)
    return fieldnames, district
