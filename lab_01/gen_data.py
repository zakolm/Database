import gen_csv_file
from gen_district_database import gen_district_database
from gen_district_raiting_table import gen_district_raiting_table
from gen_elements import gen_elements
from gen_link_table import gen_link_table
from gen_trashbasket_table import gen_trashbasket_table


def made_csv_file(fieldnames, data_for_csv, path):
    my_list = []
    cell = data_for_csv
    # print('столбцы', fieldnames)
    # print('ячейки(строки)', cell)
    for values in cell:
        # print('строки', values)
        inner_dict = dict(zip(fieldnames, values))
        my_list.append(inner_dict)
    gen_csv_file.csv_writer(path, fieldnames, my_list)


if __name__ == '__main__':
    # Create table with district
    fieldnames_of_district_db, cell_of_district_db = gen_district_database()
    made_csv_file(fieldnames_of_district_db, cell_of_district_db,
                  'district_table.csv')
    # Create table with area rang
    fieldnames_of_area_db, cell_of_area_db = gen_district_raiting_table(
                                                        cell_of_district_db
                                                                       )
    made_csv_file(fieldnames_of_area_db, cell_of_area_db, 'area_table.csv')
    # Create table with Elements
    fieldnames_of_elements, cell_of_elements = gen_elements()
    made_csv_file(fieldnames_of_elements, cell_of_elements, 'elements.csv')
    # Create table with trashbasket
    fieldnames_of_trashbasket, cell_of_trashbasket = gen_trashbasket_table(
                                                       cell_of_district_db,
                                                       cell_of_area_db
                                                                          )
    made_csv_file(fieldnames_of_trashbasket, cell_of_trashbasket,
                  'trashbasket_table.csv')
    # Create table
    fieldnames_of_link, cell_of_link = gen_link_table(len(cell_of_trashbasket),
                                                      len(cell_of_elements))
    made_csv_file(fieldnames_of_link, cell_of_link, 'link_table.csv')
