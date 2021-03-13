import random
import sys


def binary_search_start(mas, k):
    l = 0
    r = len(mas) - 1
    countr = 0
    while l <= r:
        m = (l + r) // 2
        if mas[m] > k:
            r = m - 1
        else:
            l = m + 1
            countr = l
    return countr


def binary_search_end(mas, k):
    l = 0
    r = len(mas) - 1
    countr = 0
    while l <= r:
        m = (l + r) // 2
        if mas[m] >= k:
            r = m - 1
        elif mas[m] < k:
            l = m + 1
            countr = l
    return countr


def quick_sort(mas, l, r):
    def partition(mas, l, r):
        f = random.randint(l, r - 1)
        mas[f], mas[r - 1] = mas[r - 1], mas[f]
        j = l
        counter = 0
        less = []
        equal = []
        more = []
        for i in range(l, r - 1):
            if mas[i] == mas[r - 1]:
                equal.append(mas[i])
                counter += 1
                j += 1
            elif mas[i] < mas[r - 1]:
                less.append(mas[i])
                j += 1
            else:
                more.append(mas[i])
        equal.append(mas[r - 1])
        mas[l:r] = less + equal + more
        return j - counter, j

    while l < r:
        m = partition(mas, l, r)
        quick_sort(mas, l, m[0])
        l = m[1] + 1
    return mas


number_of_segments, number_of_points = [int(i) for i in next(sys.stdin).split()]
start = []
end = []

for segment in range(number_of_segments):
    start_and_end = [int(i) for i in next(sys.stdin).split()]
    start.append(start_and_end[0])
    end.append(start_and_end[1])

points = [int(i) for i in next(sys.stdin).split()]

quick_sort(start, 0, len(start))
quick_sort(end, 0, len(start))
res_counter = []
for point in points:
    cntr_of_starts = binary_search_start(start, point)
    cntr_of_ends = binary_search_end(end, point)
    print(cntr_of_starts - cntr_of_ends, end=' ')
