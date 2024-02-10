import os
funs={
    'TypeBeginCI':'TypeBeginHI',
    'TypeBeginCO':'TypeBeginHO',
    'TypeBeginCIO':'TypeBeginHIO',
    'TypeBeginCIFO':'TypeBeginHIFO',
    'TypeBeginRI':'TypeBeginHI',
    'TypeBeginRIFO':'TypeBeginHIFO',
    'TypeBeginRO':'TypeBeginHO',
    'TypeBeginRIO':'TypeBeginHIO',
    'TypeBeginLI':'TypeBeginHI',
    'TypeBeginLIFO':'TypeBeginHIFO',
    'TypeBeginLO':'TypeBeginHO',
    'TypeBeginLIO':'TypeBeginHIO',
    'TypeBeginTimeCI':'TypeBeginTimeHI',
    'TypeBeginTimeCO':'TypeBeginTimeHO',
    'TypeBeginTimeCIO':'TypeBeginTimeHIO',
    'TypeBeginTimeCIFO':'TypeBeginTimeHIFO',
    'TypeBeginTimeRI':'TypeBeginTimeHI',
    'TypeBeginTimeRO':'TypeBeginTimeHO',
    'TypeBeginTimeRIFO':'TypeBeginTimeHIFO',
    'TypeBeginTimeRIO':'TypeBeginTimeHIO',
    'TypeBeginTimeLI':'TypeBeginTimeHI',
    'TypeBeginTimeLIFO':'TypeBeginTimeHIFO',
    'TypeBeginTimeLO':'TypeBeginTimeHO',
    'TypeBeginTimeLIO':'TypeBeginTimeHIO',
    'SetTextEXC':'SetTextEXH',
    'SetTextEXR':'SetTextEXH',
    'SetTextEXL':'SetTextEXH',
    'SetTextEXCH':'SetTextEXH',
    'SetTextA':'SetTextAH',
    'SetTextEXhyperR':'SetTextEXH',
    'TypeBeginNOHIO':'TypeBeginHIO',
    'TypeBeginEXIO':'TypeBeginHIO',
    'SetFwC':'SetFwH',
    'SetFwL':'SetFwH',
    'SetFwR':'SetFwH',
    'SetNwC':'SetNwH',
    'SetNwL':'SetNwH',
    'SetNwR':'SetNwH',
    'FwC':'FwH',
    'FwR':'FwH',
    'FwL':'FwH',
    'NwC':'NwH',
    'NwR':'NwH',
    'NwL':'NwH',
    # 'OnFwC':'FwH'
    # 'SetTextEXCColor'
}
fun2={
     'SetTextEXCColor("RED");':'SetTextEXH();',
     'SetTextEXCColor("#990000");':'SetTextEXH();',
}
for f in os.listdir('nss.origin'):
    with open('nss.origin/'+f,'r',encoding='gbk',errors='ignore')as ff:
        t=ff.read()
    t=t.replace('nss/0_boot_開始スクリプト.nss','nss/0_boot_kaisscript.nss')

    if f.startswith('m')==False:
        with open('nss/'+f,'w',encoding='gbk') as ff:
            ff.write(t)
        continue

    for k in funs:
        t=t.replace(f'{k}(',f'{funs[k]}(')
    with open('nss/'+f,'w',encoding='gbk') as ff:
        ff.write(t)
os.rename('nss/0_boot_饑ﾊｼ･ｹ･ｯ･・ﾗ･ﾈ.nss','nss/0_boot_kaisscript.nss')