from bs4 import BeautifulSoup
from html.parser import HTMLParser
import csv

html_template = '''<html><head><title></title></head><body><h1>Description</h1><span>A description</span><h1>Domains</h1><ul></ul></body></html>'''
output_field_names = ['assessment_id', 'html']


def generate_html(input_file=None, output_file=None):

    if not input_file or not output_file:
        raise IOError('Invalid file path')

    try:
        with open(input_file, 'r') as file:
            csv_file = csv.DictReader(file)

            csv_dict = []
            for row in csv_file:
                row_dict = dict(row)
                output_obj = get_output_object(row_dict)
                csv_dict.append(output_obj)

        with open(output_file, 'w', newline='') as file:
            writer = csv.DictWriter(file, fieldnames=output_field_names)
            writer.writeheader()
            for record in csv_dict:
                writer.writerow(record)
    except:
        print('Error! Something bad happened')


def get_output_object(row_dict):

    soup = BeautifulSoup(html_template, 'html.parser')
    assessment_id = row_dict['assessment_id']
    title = row_dict['assessment_title']
    description = row_dict['description']
    domains = {row_dict['domain_1'],
               row_dict['domain_2'],
               row_dict['domain_3']}

    # remove empty or null domain values, and sorts
    domains = sorted([i for i in domains if i])

    soup.title.string = title
    if description:
        soup.span.string = description
    else:
        soup.body.h1.extract()
        soup.body.span.extract()

    for domain in domains:
        li = soup.new_tag('li')
        li.string = domain
        soup.ul.append(li)

    return {
        output_field_names[0]: assessment_id,
        output_field_names[1]: str(soup)
    }
