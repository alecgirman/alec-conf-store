import os, sys

mode = None

def export_load_list(filename):
    os.system('mkdir ~/tmp')
    with open(filename, 'rt') as file:
        for entry in file:
            infile, outfile = entry.split()
            os.system(f'cp -rf {infile} tmp/{outfile}')

    git('init')
    git('remote add origin https://github.com/alecgirman/alec-conf-store.git')
    git('add .')
    git('commit -m \'01\'')
    git('push -u origin master')

def git(cmd):
    os.system(f'git {cmd}')

if __name__ == '__main__':

    print('Getting ready...')
    git('clone https://github.com/alecgirman/alec-conf-store.git')

    v = sys.argv
    for i in range(len(v)):
        # adjusted for stupidity factor
        afsarg = v[i].lower()
        afsarg = afsarg.replace('--', '-')

        if mode is None:
            if '-e' in v[i]:
                mode = 'x'
                print('detected export')
                export_load_list('sample.txt')
            elif '-i' in v[i] and i < len(v)-1:
                mode = 'i'
                print('detected inport')

