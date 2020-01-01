palette = ['40', '80', 'c0']

name = input('Enter a name for the color theme: ')
out_file = open(f'palette_{name}.txt', 'wt+')
outbuf = ''

for sr in palette:
    for sg in palette:
        for sb in palette:
            #don't ask.
            outbuf += f'#{sr}{sg}{sb}\n'

out_file.write(outbuf)
out_file.close()
