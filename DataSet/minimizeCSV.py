import os
import sys
import fileinput
with open(os.path.join(sys.path[0], 'SRMinimized.csv'), 'w', encoding='utf-8') as fMin:
    id = ''
    counter = 0
    with fileinput.input(os.path.join(sys.path[0], 'SteamReviews.csv'), encoding='utf-8') as f:
        for line in f:
            columns = line.split(',')

            #if columns[0] != id:                                                       # next game -> counter zeroing
             #   counter = 0
              #  id = columns[0]

            #if counter < 1000:                                                         # limit
            if len(columns) == 5 and columns[1] != '' and columns[2].isascii():    # validation
                if columns[4] == 1 or len(columns[2]) >= 50:                       # importance
                    if columns[3] == '-1':                                         # boolean
                        columns[3] = '0'
                        line = ','.join(columns)
                    counter += 1
                    fMin.write(line)

print("New file is done")