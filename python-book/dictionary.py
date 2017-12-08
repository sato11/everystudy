def convert_numbers(num):
    nums = {
        1: 'one', 2: 'two', 3: 'three',
        4: 'four', 5: 'five', 6: 'six'
    }
    if num in nums:
        return nums[num]
    else:
        return '[変換できません]'

for i in range(19):
    print(convert_numbers(i))
