export enum
    ASSOC_KEY = 1,
    ASSOC_DATA = 2,
    ASSOC_REF = 3,
    ASSOC_EXTRA = 4


global function assoc_create()
    return {{}, {}, {}, {}}
end function


global function assoc_append(sequence arr, object key, object data)
    arr[ASSOC_KEY] = append(arr[ASSOC_KEY], key)
    arr[ASSOC_DATA] = append(arr[ASSOC_DATA], data)
    arr[ASSOC_REF] &= 0
    arr[ASSOC_EXTRA] = append(arr[ASSOC_EXTRA], {})
    return arr
end function

global function assoc_find_key(sequence arr, object key)
    return find(key, arr[ASSOC_KEY])
end function


global function assoc_get_data(sequence arr, object key)
    return arr[ASSOC_DATA][assoc_find_key(arr, key)]
end function


global function assoc_insert_extra_data(sequence arr, object key, object data)
    arr[ASSOC_EXTRA][assoc_find_key(arr, key)] &= data
    return arr
end function


global function assoc_get_extra_data(sequence arr, object key)
    return arr[ASSOC_EXTRA][assoc_find_key(arr, key)]
end function


global function assoc_reference(sequence arr, object key)
    arr[ASSOC_REF][assoc_find_key(arr, key)] = 1
    return arr
end function


global function assoc_is_referenced(sequence arr, object key)
    return arr[ASSOC_REF][assoc_find_key(arr, key)]
end function


global function assoc_get_keys(sequence arr)
    return arr[ASSOC_KEY]
end function


global function assoc_get_references(sequence arr)
    return arr[ASSOC_REF]
end function

