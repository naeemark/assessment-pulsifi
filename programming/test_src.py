from src import count_pairs


def test_example():
    """Tests using the given example in task"""
    count = count_pairs([1, 3, 1, 4], 1,  2)
    assert count == 2


def test_case_1():
    count = count_pairs(list_arr=[1, 1, 2, 2], min=1,  max=2)
    expected_count = 1
    assert count == expected_count


def test_case_2():
    count = count_pairs(list_arr=[1, 1, 2, 2, 3], min=2,  max=4)
    expected_count = 1
    assert count == expected_count


def test_case_3():
    count = count_pairs(list_arr=[1, 2, 1, 6, 3], min=2,  max=4)
    assert count == 3
