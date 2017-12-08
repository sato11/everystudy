class StrDict(dict):
    # StrDict inherits dict.
    def __init__(self):
        pass

    def __setitem__(self, key, value):
        """ Overriding special method.
            Raise error unless key is str.
        """
        if not isinstance(key, str):
            raise ValueError('Key must be str.')

        # Call a superclass special method.
        dict.__setitem__(self, key, value)

d = StrDict()
d['spam'] = 1
print(d.keys())
