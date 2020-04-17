import pytest
import csv
from data_transformation import generate_html


def test_case_raise_IOError():
    with pytest.raises(IOError):
        generate_html(input_file=None, output_file=None)


def test_case():
    """Tests using the given example in task"""

    input_csv_file_path = 'data/sample_data.csv'
    output_csv_file_path = 'data/result_data.csv'
    generate_html(input_file=input_csv_file_path,
                  output_file=output_csv_file_path)

    with open(output_csv_file_path, 'r') as file:
        csv_file = csv.DictReader(file)

        # assert the col titles in output file
        assert csv_file.fieldnames == ['assessment_id', 'html']

        # assert the row count in output file
        row_count = sum(1 for row in csv_file)
        assert row_count == 3
