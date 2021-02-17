#File exported from Lastpass: lastpass_export
#File to write in ff format to: ff.csv

with open('./Desktop/lastpass_export.csv','r+') as lp:
    with open('./ff.csv','w+') as ff:
        for line in lp.readlines():
            for i in line.split(',')[:3]:
                ff.write(f'"{i}",')
            ff.write('"","","","","",""\n')

    
