//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045aa.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev229_�衩��ţ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameCircle=0;

}

scene md04_045aa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_045a.nss"


//���ţ֣��衩��ţ�


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	CreateTextureSP("���٥�Ƚ}��", 4010, -330, InBottom, "cg/ev/resize/ev229_�衩��ţ�m.jpg");
	CreateTextureSP("���٥�Ƚ}", 4000, @0, @0, "cg/ev/ev229_�衩��ţ�.jpg");
	CreateSE("SE01","se����_����_ȼ����K��_L");
	MusicStart("SE01",2000,1000,0,1000,null,false);

	Wait(5000);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",3500,true);

	SetVolume("SE*", 5000, 0, null);

	Wait(1000);
	SoundPlay("@mbgm19", 0, 1000, true);

	Move("���٥�Ƚ}��", 6000, @0, -25, DxlAuto, true);


	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1300a07">
����ѽ��������һ����ս�ء���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1310a00">
�������ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������ˣ����������ѳɵ�ɽ�ϡ�

��ֱ���ղţ����ﻹ�����������ֳ����ظ�
���������μ�����ȥ���Ĳ������ǣ�����
��λ�н���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("���٥�Ƚ}��", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md04/045a1320a00">
��ʤ�ʣ�����ֻ�аٷ�֮һ�ĳ̶ȶ����𣿡�

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1330a07">
���侲������û���ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1340a00">
����������
����Ҳ������˵�Ļ��ˡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1350a07">
���ϣ�壬�ϣ�塡����塡������壡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ϧ�����ִ�ء�

���м�����ɫ֮�ǣ���ө��������š�
��������Ӧ������ǿ��â���ǿ���Ȼ�����ˡ�

�������׵��Ѿ�Ͷ�£����ͬʱ���Ǻ���ʧ���١�
��
���Ҳ�֪�����⵽������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md04/045a1360a00">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1370a07">
����ȥ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ҵĲ����������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1380a07">
���������±ؽ������������
�������ȡ��Ȼ��ص�����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1390a07">
����Ϊ������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ոջ�˵����Ҳ�������ˡ�
����ʲôҲ�޷��ش�

��ֻ�������У�ĬĬ�ص�ͷ��

����Ĭ�ضȹ�ʱ�⡣
����Ϊ�վֵ�˲�䣬ƽ�������Ŷ�ȥ��

�����罫Ҫ�����˰ɡ�
����������ͺ����Ѿ��������Ƶġ���
һƬ�ž���

��û��������ֻ�й���Ӱ�����С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1410a07">
����ʵ�ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1420a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1430a07">
���һ���һ������û�и��߸�硣��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1440a00">
��˵����������

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1450a07">
���š�
����ʵ������

{	FwC("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1460a07">
���ҶԸ����һ�����顣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1470a00">
��������

{	FwC("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1480a07">
����һ����������ʱ��ϲ���ϸ���ˡ�
������֪���𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1490a00">
��������

{	FwC("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1500a07">
��������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1510a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1520a07">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����������սᡣ

�����ջή�ٰɡ�
������ž��Ĺ���֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(5000, 3000);

//���ţΣ�

/*
//��������ݳ������Υ���ɾӤ룿�������Ǥ��硹
	CreateColorEX("�\Ļ��", 5000, "BLACK");

	SetVolume("@mbgm*", 6000, 0, null);

	Fade("�\Ļ��", 3000, 1000, null, true);

	CreateTextureEX("END", 15000, @900, @520, "cg/sys/Telop/lg_�����.png");
	Fade("END", 1000, 1000, null, true);
	Fade("END", 5000, 0, null, true);
*/


}

..//������ָ��
//�Υե�����
