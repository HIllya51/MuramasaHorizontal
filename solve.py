import os,re
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
    #if f.startswith('mc01_012')==False:continue
    with open('nss.origin/'+f,'r',encoding='gbk',errors='ignore')as ff:
        t=ff.read()
    t=t.replace('nss/0_boot_開始スクリプト.nss','nss/0_boot_kaisscript.nss')

    if f.startswith('m')==False:
        with open('nss/'+f,'w',encoding='gbk') as ff:
            ff.write(t)
        continue

    for k in funs:
        t=t.replace(f'{k}(',f'{funs[k]}(')
    
    tlines=t.split('\n')
    started=False
    lengthlimit=len('　因为吝于切换所需要的时间，直接以五为单位将热量平均')-1
    huakuohao=False
    for i in range(len(tlines)):
        if tlines[i].startswith('<PRE @box0>'):
            started=True
        elif tlines[i].startswith('</PRE>'):
            started=False
        elif started:
            if huakuohao:
                if '}' in tlines[i]:
                    huakuohao=False
                continue
            if tlines[i].startswith('//') or tlines[i].startswith('<') or tlines[i].startswith('['):
                newblock=True
            elif tlines[i].startswith('{'):
                huakuohao=True
                if '}' in tlines[i]:
                    huakuohao=False
            elif tlines[i].strip()=='':
                continue
            else:
                sub=re.sub('<(.*?)>','',tlines[i])
                if len(tlines[i+1])==0:continue
                if tlines[i+1][0] in '　/<[{《':continue
                if len(sub)>lengthlimit:
                    print(f,tlines[i],'——',tlines[i+1])
                    tolong=tlines[i][lengthlimit:]
                    tlines[i]=tlines[i][:lengthlimit]
                    tlines[i+1]=tolong+tlines[i+1]
    t='\n'.join(tlines)


    with open('nss/'+f,'w',encoding='gbk') as ff:
        ff.write(t)
os.rename('nss/0_boot_饑ﾊｼ･ｹ･ｯ･・ﾗ･ﾈ.nss','nss/0_boot_kaisscript.nss')