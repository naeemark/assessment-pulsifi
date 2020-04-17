
# -----------Solution to Basic Programing-----------


def count_pairs(list_arr, min, max):

    pairs_dict = {}

    for i in range(0, len(list_arr)):
        for j in range(i+1, len(list_arr)):

            pair = sorted([list_arr[i], list_arr[j]])

            # creates a unique key to identify the same sets. in this scenario [1, 3] and [3, 1]
            # will be considered same as the difference of both members is same, an it will be counted as 1
            dict_unique_key = ','.join(str(x) for x in pair)

            pair_diff = pair[1] - pair[0]
            if pair_diff >= min and pair_diff <= max:
                pairs_dict[dict_unique_key] = pair_diff

    # Returns the number of sets which fulfils the criteria
    return len(pairs_dict)
