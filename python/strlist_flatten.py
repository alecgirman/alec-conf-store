def flatten_strlist(strlist: list, delimiter: str):

    '''
    Takes a list of strings and joins them into one string separated by a delimiter.
    
    This is very similar to str.join, except it is not a member function and can be
    used without a starting string. This effectively makes it the true opposite of 
    `str.split()` 

    @param strlist: A single dimension array of strings
    
    @param delimeter: String used to separate the joined strings.  If it is None, then
        it is evaluated to be an empty string (join the input strings with no separator).

    @return str: The new string
    '''

    result = ''
    merge_count = len(strlist) - 1

    for entry_index in range(merge_count):
        result += strlist[entry_index] + delimiter


    # Add the last element out of the loop so that a newline doesn't get appended 
    # as part of the loop.
    result += strlist[-1]
    return result
