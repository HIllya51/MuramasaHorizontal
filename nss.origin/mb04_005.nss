//<continuation number="400">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_005.nss_MAIN
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
	#bg023_��Դ̫�μ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_006.nss";

}

scene mb04_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_004bbb.nss"

//��Ŀҙ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg023_��Դ̫�μ�_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������С�ݡ�
���ƺ��ǻص���ʵ���������ˡ�

��<RUBY text="����">��ʵ</RUBY>��
��û�����������ʵ���ղŵ����ξ���

������������ɽ�µķ�������������
��
���Ҳ���Ϊ�Լ��������뷨ʧЦ��

����ô���ܡ�
��������ָ���ĵ�·����ԶԶƫ���ڷ���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mb04/0050010a01">
�������������������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050020a00">
���ǰ���
����˯�˶�ã���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050030a01">
��ֻ�м����Ӷ��ѡ�
�������ƺ�����ƣ��û���������ٰ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050040a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������һ�㶼���泩��
��������˵����ˡ�

��������˵����֫�����������ˡ�
�����Ƿ��ŵ��������������ӵģ��ҵ�������������

�����ǡ�����ȴ���������ݳ��ء�
������֪������Ӧ�������ġ�

����ݳ��ظ����ҡ�
�����Ǵն�����Ϊ�˹᳹�Լ��������������µ��

��������

������һ����ϧ��ȡ���˵�����Ҳ����Ҫ��ɵ�Ŀ�ġ�
����Ŀ�ģ���δ��ɡ�

����ȴ�����ɡ�
��һ��̤�Ͻ�������̤�ڽŵ׶�ǰ���ĵ�·����ֻ�ܹ᳹
ʼ�ա�

���Ų�������������֮·����һ������·��
��ֻҪ�޷��ɱ��֮�˸���������;��Բ�����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb04/0050050a00">
��������
���߰ɡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050060a01">
������
���������Ǹ����ﻹ˯�š���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050070a00">
���޷�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050080a01">
��������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050090a00">
�����һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14",2000,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������Ѿ��ֵ�����
��
�����������š�

�����������ҵĲ���·��
��һ��Ҳ�����Լ��ģ�����·��

���˺�Ĵ����������ᱻһ�������ܰɡ�
���������Ѿ��޷��ٽ�������һ�㡣

���ҵ���ã����ʱ��������ϵ����һ��
�������ڣ���Ȼ��ʧ��

����·�Ѿ��ֿ���
������һ���������ϲ�ͬ�ĵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/mb04/0050100a01">
�������������𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050110a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050120a01">
���������ɱ�����ǺŵĻ�����
������������֮�����Ҫ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050130a00">
����Ҫ���Ǹ�����Ϊ���Ƶ��ˡ�
���Ǹ�ֵ���𾴵��ˡ���


//��������
<voice name="����" class="����" src="voice/mb04/0050140a00">
�������һ��Ҳɱ������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050150a01">
�������š���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050160a00">
�����ǿ��¡�
����������񰡡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050170a01">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050180a00">
�����ǡ�
��ɱ¾֮�¾�����ô�޿��κΡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҷ�й����׳����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb04/0050190a00">
��������ֻ��<RUBY text="��">����</RUBY>���ر�ġ�
������ֻ�ǽ�����������ѡ�Ϊ�����Լ���
���������Ƿݳ�ª����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050200a01">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050210a00">
��նɱа��Ļ����䷴���ñ�Ὣ��Ҳն�ϡ�
���ƶ���֡���


//��������
<voice name="����" class="����" src="voice/mb04/0050220a00">
���������е��������������������ŵ����䡣
����Ϊÿһ�������У��������ͬʱ���ڵġ���


//��������
<voice name="����" class="����" src="voice/mb04/0050230a00">
��˭�ĵ�������˭�Ļ�顣
��˭�Ķ�����˭���ơ�
�����õ���ȡ��������һ�̣�
��Ȼ�ǻ���ͬ�ƶ�һ��ն�ϡ���


//��������
<voice name="����" class="����" src="voice/mb04/0050240a00">
��û���κ����⡣
��û��ֻ����񣬻���ֻնɱ�Ƶ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ԣ�һ����
��
������������������������Ǳ������˵Ĵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mb04/0050250a01">
����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050260a00">
���������ĵ��ˣ���ͬ���ԵĻ��һͬɱ������
����������������Ļ�����ô������޷�����ɱ
������¡���Ϊû���㹻�ľ��򡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050270a00">
�����Դ���֮�������ʩ��ɱ¾���ǲ�ֵһ̸��
��<RUBY text="������������������������������������">��ɱ������ȴ��������飬����һ��ų��</RUBY>��
����������Լ��Ļ����ȥ�Ļ���
��ô���˱�Ҳ�ǲ���ɱ�ġ���


//��������
<voice name="����" class="����" src="voice/mb04/0050280a00">
�����˵�����������ǵȼ۵ġ�
���������޷��Ƚϳ��������صġ�
Ҳ�޷�����������
��ֻ��һ����˽�Ķ̼�����


//��������
<voice name="����" class="����" src="voice/mb04/0050290a00">
����Ϊ���˱���Ϊ���ͬʱ��Ҳ���ơ�
���������ŵ��˵Ķ�����ȥɱ�ˣ��Ǳ���Ϊ��
����ɱ¾�ĳ�ª�����еı������������ˡ���


//��������
<voice name="����" class="����" src="voice/mb04/0050300a00">
����һ�����ƶ�һͬն�ϡ�
������Ҫ�д˾���������˭Ҫɱ˭��ʱ
�򡪡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���ƶ����ϡ�
������Ƕ��������ࡣ

����֮���ʡ�
����ֻ��<RUBY text="��������������">����ɱ¾������</RUBY>���ѡ�

���ҿ�������һ�㡣
��
�����ԡ���һ����

���Ҳ����ٴ�����ɱ¾�ߵ����塣
������������һͬǰ���ˡ�

���Ҿ�����
�������㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/0050310a00">
���߰ɣ�������
��ȥ�����Ǻ���ɱ����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050320a01">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050330a00">
����������Ҳ����������
��ֻ�ǳ���ɱ¾����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050340a00">
��������ˡ�����Ҳ����Ҫ����
���Ҿ���Ҫ��ֹ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050350a00">
����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050360a01">
�������ڡ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0050370a00">
���������е��������������ҡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0050380a01">
��ȫ���������׸�����
���ҵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ץ��������
	OnSE("se����_����_һ�i",1000);


	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a1.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb04/0050390a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5000);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b1.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, false);

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb04/0050400a00">
������֮���������ڴ�!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000, true);

	WaitPlay("SE*", null);

//���w��
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	WaitPlay("SE*", null);

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);
	WaitKey(2000);

}

..//������ָ��
//�Υե����롡"mb04_006.nss"