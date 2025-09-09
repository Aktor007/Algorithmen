def insertion_sort(arr):
    for i in range(1, len(arr)):           # 0-basiert
        key = arr[i]                       # "aktuelle Karte"
        j = i - 1
        while j >= 0 and arr[j] > key:     # nach links wandern
            arr[j + 1] = arr[j]            # nach rechts schieben
            j -= 1
        arr[j + 1] = key                   # einstecken
    return arr

# Demo
data = [5, 2, 4, 6, 1, 3]
print("vorher :", data)
print("nachher:", insertion_sort(data.copy()))
