import logging
from programming import count_pairs

log = logging.getLogger(__name__)


def test_example():
    """Tests using the given example in task"""
    arr, min, max = [1, 3, 1, 4], 1, 2
    count = count_pairs(list_arr=arr, min=min,  max=max)
    log.info('list_arr:{}, min:{}, max:{} -> count:{}'.format(arr, min, max, count))
    assert count == 2


def test_case_1():
    arr, min, max = [1, 1, 2, 2], 1, 2
    count = count_pairs(list_arr=arr, min=min,  max=max)
    log.info('list_arr:{}, min:{}, max:{} -> count:{}'.format(arr, min, max, count))
    assert count == 1


def test_case_2():
    arr, min, max = [1, 1, 2, 2, 3], 2, 4
    count = count_pairs(list_arr=arr, min=min,  max=max)
    log.info('list_arr:{}, min:{}, max:{} -> count:{}'.format(arr, min, max, count))
    assert count == 1


def test_case_3():
    arr, min, max = [1, 2, 1, 6, 3], 2, 4
    count = count_pairs(list_arr=arr, min=min,  max=max)
    log.info('list_arr:{}, min:{}, max:{} -> count:{}'.format(arr, min, max, count))
    assert count == 3
