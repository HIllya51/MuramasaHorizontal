//<continuation number="870">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_010.nss_MAIN
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
	#bg047_�������_�a_01=true;
	#bg047_�������_�b_01=true;
	#bg023_��Դ̫�μ�_03a=true;
	#bg202_�����ݳ�����ɽ_02=true;

	#ev128_�����ι�_b03=true;
	#ev005_�ؤ���줿��=true;
	#ev132_Ц���y=true;
	#ev952_�y�Ǻŵǈ�=true;
	#ev951_С̫��װ��_a=true;
	#ev943_�����֣���ɽ=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_��Դ̫=true;
	#voice_on_�դ�=true;
	#voice_on_�դ�=true;

	if($ma02_010_routeFlag == true){$ma02_010_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_011.nss";

}

scene ma02_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_009vs.nss"

//���\
	PrintBG("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	FadeDelete("�ϱ���", 0, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001a]
�������䡪�ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����_
	CreateTextureSP("�}����4000", 4000, Center, Middle, "cg/bg/bg047_�������_�a_01.jpg");
	SetShade("�}����4000", HEAVY);

	FadeDelete("�}��ܞ", 1600, true);

	SoundPlay("@mbgm33",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001b]
���ա��衪�䡪
���ˡ������ޡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ι⡢ϳ�����
//��������ݳ������Y���ä������{����
//�룺�{���g��
//	CreateTextureSP("�}����3500", 3500, Center, Middle, "cg/bg/bg051_�����Ҿ��g_01.jpg");
	CreateTextureSP("�}����3500", 3500, Center, Middle, "cg/ev/ev128_�����ι�_b03.jpg");
	SetShade("�}����3500", HEAVY);

	FadeDelete("�}����4000", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0002]
�����Ρ��Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ζ�
	CreateTextureSP("�}����3000", 3000, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");
	SetShade("�}����3000", HEAVY);

	FadeDelete("�}����3500", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0003]
���ס���������������
���񡪳����ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ц���Bĸ
	CreateTextureSP("�}����2500", 2500, Center, Middle, "cg/ev/ev132_Ц���y.jpg");
	SetShade("�}����2500", HEAVY);

	FadeDelete("�}����3000", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0004]
�������������Ρ���
���⡪�㡪�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����¾���줿���_
	CreateTextureSP("�}����2000", 2000, Center, Middle, "cg/bg/bg047_�������_�b_01.jpg");
	SetShade("�}����2000", HEAVY);

	FadeDelete("�}����2500", 1600, true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma02/0100010a00">
���������Ρ���
�������ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�
//��������ݳ��������Ǥ��y�ǺŤόg���^ȥ���ݤ��Τ������Τ�����
	CreateTextureSP("�}����1500", 1500, 235, 90, "cg/ev/ev952_�y�Ǻŵǈ�.jpg");
	Zoom("�}����1500", 0, 1500, 1500, null, true);

	SetShade("�}����1500", HEAVY);

	FadeDelete("�}����2000", 1600, true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma02/0100020a00">
���⡭�����ɡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//���ۥ磻�ȥ�����
//����Դ̫�μ�
	CreateColorEXadd("�}�ե�", 1500, "#FFFFFF");
	Fade("�}�ե�", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

	PrintGO("�ϱ���", 15000);

	CreateColorSPadd("�}�ե�", 1500, "#FFFFFF");
	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");
	FadeDelete("�}�ե�", 2000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma02/0100030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

	#voice_on_�դ� = true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0031]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100040b06">
����������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100050a00">
������������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100060b06">
��үү��
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

//���֥�å�������
//���֥�å�����

	CreateColorSP("�}��ܞ", 5000, "#000000");
	DrawTransition("�}��ܞ", 600, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("�}��ܞ", 600, 1000, null, true);

	Wait(400);

	DrawDelete("�}��ܞ", 1000, 100, "slide_05_00_0", true);
	SoundPlay("@mbgm23",0,1000,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0034]
���������Ǽ��С�
��������ĳ�����ռҰɡ�

����˯��İ���Ĵ��ϣ�����İ���ı����С�
��˵ʵ���������Ӳ������Ҳ����ů��

����ע�⵽�Լ���ȫ�����¡�
��������ǰ�ƺ��������˱��������ñȽϽ���
����Ϊ���ƴ��ˣ�������Ӧ�Ծ��ҳ�Ѫʱ�Ĳ��Ʒ�����

�������롣
���������ں�ʱ�ε������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå�
//��С̫�ɡ���ɽ����������u
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 100, 1000, null, true);

	CreateTextureSP("�}�ݻ���", 4190, Center, Middle, "cg/ev/ev951_С̫��װ��_a.jpg");
	Fade("�}�ե�", 400, 200, null, true);

	Wait(500);

	CreateTextureSP("�}�ݻ��룲", 4180, Center, Middle, "cg/ev/ev943_�����֣���ɽ.jpg");
	FadeDelete("�}�ݻ���", 500, true);

	Wait(500);

	CreateTextureSP("�}�ݻ��뱳��", 4000, Center, -576, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�ݻ������}", 4010, Center, Middle, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
	Zoom("�}�ݻ������}", 0, 750, 750, null, true);
	Request("�}�ݻ������}", Smoothing);

	FadeDelete("�}�ݻ��룲", 500, true);

	Wait(500);

	Fade("�}�ե�", 100, 1000, null, true);
	Delete("�}�ݻ���*");
	FadeDelete("�}�ե�", 1000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0038]
����������
���������ˡ�

��û���ҡ���׹���ˡ�
���Ҽǵá�����������ɽ��б�桭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���𤭤褦�Ȥ�������������
//����åɥե�å���

	OnSE("se����_����_����01",1000);
	CreateColorSP("�Ą�", 10000, "#CC0000");
	FadeDelete("�Ą�", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma02/0100070a00">
����������


{	#voice_on_�դ�=true;
	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100080b05">
���ۣ����������㻹����������
������������š���


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100090a00">
���ۡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ڵ���������©��������
ͬʱ��ͷŤ�������ķ�Դ����
��һλ����Լ����ʮ�����Ů�������
����������ë�����Է���ʢˮ�����ӡ�

����ɫ�ļ�����
��������ϸ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma02/0100100a00">
����������Ϻ���ˣ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100110b05">
���ף�����������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������������ò��
�����������������ɡ�����������̣�
ͬʱ�������������Ű��巽��ĵ������С�

����ϸ��ָ�������������ذ�Ū��ë��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100120b05">
���롢���ʡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100130a00">
���š���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100140b05">
���Ҿ�������ò���������
��������ɡ������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ҵ�ȷȫ������졣
�����ܰ��Ҳ��Ļ������ǰ��˴�æ��
�Ҹ���û���ɾܾ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma02/0100150a00">
���������ˡ�ԭ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ᵽ����Ů�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/0100160a00">
����ʧ���ˡ������²����ͷ�������Ů֮�֡�
�����ë�����ҡ�
�������ֲ��ش��������ѿ������塣��


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100170b05">
����!?���������������Ҳ��������˼����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100180a00">
����������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100190b05">
�����������ġ���
���Ǹ������ǡ�Ϻ���ˡ����������Ļ���
�⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ᱻŪ��ġ�
����ŮԽ��ԽС������
����ƺ�������ô˵��

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma02/0100200a00">
���ǾͰ������ˡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100210b05">
�������á��õġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����Ů�������ŵ��ٴ�š��ʪë��
�����������ҵĶ�ͷ��
�������ĸо��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/ma02/0100220a01">
����������������״����Σ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100230a00">
���Ǵ��������о�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ת�����ߡ�
�����ɫ��֩����ڷ���Ľ��䡣
�⾰����쳣������������Ϻ���˵�ס����
���Ʋ��ᱻ�����������������һ���ɡ�

��ʵ���ϣ��ڿ�ذ��Ҳ�������Ů
Ҳ��ȫ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma02/0100240a00">
���������ٱ��˴Ӽ��б����ȥ��׹���
���Ѿ��㲻���ˡ�
���鷳�������֮��ľ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0100250a01">
�����������ˣ����������������
����Ҳ�������á�
������������Ϊ��ʱ��
һλϺ�ĵ����˹����������ǡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100260a00">
�����ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0100270a01">
����ҵ����ˡ�
��˳��һ�ᣬ�����������ɽ�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����꣬������Ƭ���Ժ���ƴ��������
�������峤�Ļ���ס��ɽ����������Ϻ��һ�塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma02/0100280a00">
��ԭ����ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0100290a01">
������˵�ľ�����Щ�ˡ�
ʱ�仹û��̫�á�
Ҳ�������ĸ�Сʱ�ɡ�
����ϸ״�����Լ��ʺ��ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100300a00">
��������˳̶���Σ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0100310a01">
�����Ǻ��㡣
�Ա��˴Ӽ��б����ȥ��׹�����ԡ�
���������һ�ר�Ļָ�����֮��Ͱ������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100320a00">
���˽��ˣ�

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100330b05">
���������Ǳ���λ֩�룬
����ʿ���˵Ľ��аɣ������ܵ������ء�
���Ǹ���֩��С�㡣
��λ�����ѹ�����Ŷ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƥ����ȥܥå�����ȥ
//������äȥ�������
	Wait(600);

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100340b05">
���������ء����ش��ҡ���
���ղŻ��û����Դ�
�����������������˵���ء���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100350a00">
����ֱ�Ǹ��
���Լ��Ĳٿ��ߺ����������Ұգ�
����Ҫ����ͨ�˶Ի�
�Ǻ����ѵġ���


//��������
<voice name="����" class="����" src="voice/ma02/0100360a00">
����û�б����˼��
��ֻ����Ϊ�������ˣ�
���Խ��������¶������ң�����ʼ��Ϣ�ˡ�
�����������������Ǹ����


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100370b05">
���ۣ�û��û�£���ô���أ�����ô�������ء�
����ֻ�Ǹе���Щ��ϧ���ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Ů����ͨ��ز�ͣ���֡�
��˳��һ�ᣬ��������ë��
�����Ҳ��ű�������ǰ��

���е��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

	#voice_on_��Դ̫=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100380b55">
������������ʲô��ʀ����


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100390b05">
���ף�������!!
���Զԡ��Բ��𣡡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100400a00">
��������û�¡���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100410b55">
��ʀ����ë����°ɡ�
�����û������ˡ�
�ӹ��������µĹ�������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100420b05">
�������õġ�үү����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����Ůվ�����������¹�
������������������������ƽ���ش�������ȫ��
��һ�������С���������Ů����
�����������̽����ͷ��

���������߽��ϣ��������һЦ��
��������Щ��֪����η�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��Դ̫_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100430b55">
�����ã�������״����Σ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100440a00">
�����������ĸ���
����л������һ������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100450b55">
��ûʲô��������������Լ���
����ֻ�����������������
������˱������ѡ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����Ե��ֽ⿪�˱�����
���м����ط����˿ںͱ���ճ��һ�𣬱��������룬
�˿��ֿ�ʼ��ʹ�ˡ�����Ѫ�������ء�
�����˿ڵĲ��س̶���ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100460b06">
��Ŷ����

{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100470b55">
�������㿴��
���������������ʱ�򣬹�ͷ��¶�����ˡ�
���������Ѿ����������������˿��ˡ�
�����ߵĻָ��������Ǿ��ˡ���

{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100480b05">
��Ϊ��Ϊʲô��������

{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100490b55">
�����ǲ���ɽկ�����������е�������
�������Ľ��м����Ŷ�ұʦ����������꣬
һ��������ǲ��ᱻ�ƻ��ġ������ܵ�һЩ�𺦣�
�Լ�Ҳ�����׵��޸�����

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100500b55">
�������嵶���Ե�������뽣��
���Ƕ���һ��ġ���
���ָ���Ҳ��Ӱ�����ߵ����塣
������������

{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100510b05">
������������
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100520a00">
��������ˡ�
����û��������ȣ��ڽ��лָ�ǰ��
�����Ҿ��Ѿ�ʧȥ�����ˡ�
���Ǳ���Ҫ������л����

{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100530b55">
���㲻�Ǳ��ط���Ա�������߹���
��ɱ�������ˡ�
���������ã���ֻ������
����Ӧ�����¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100540a00">
��������

{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100550b55">
������ɽ��Ĺ�������ֹ�Ǹ��׳�ʱ��
��Ҳ�ڳ���
���������Ǵ��ӵľ����������ˣ�
���������Ӳ����ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100560a00">
�������Ҹ��˵�˽�¡�
������⵱���ǰε����������Ҿ�̫�����ˡ���

{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100570b55">
��������ˣ��õ��˰�����Ӧ�ñ���л��
������������Ȼ�ģ������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100580a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���ܾ����Լ�ֻ�������ǿ���������С���ӡ�
�����ܵ�����������Ĳ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma02/0100590a00">
������������ʧ���ˡ�
�����ҿ������ƺ��Ǹ����ˣ�
�ⲻ�����ҵ����ɣ���

{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100600b55">
�����ǵģ������ˡ�
���ҵ������Ѿ���ʮ�����ˡ���Ϻ������
����������������ˣ����ɳ��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��������Ȼ������ò�Ͽ�����������ǿ������ֵ׳��
���ѣ����Ҳ�ܷ��ϲ��ϵ�Ϻ�������������������
һ��һ���а����ĳ��ȣ��Լ����������õ�
�����á���һ�ƺ�����ʾ����ʵ�ʵ����䡣

���ֽ�ʹ�á����á���һ��ν�����Ѿ������ˣ�
���ǳƺ����ߵĹŵ侴�ơ�
���������Դ�ڹ�ȥ�������ߵļ��ϳ���
һ�����������õĽ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma02/0100610a00">
����ô����������
��������������ɽ��
���м������һ��ġ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100620b55">
�������峤˵����
����һ������ĩ�����վ��������������ˡ���


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100630b55">
���ҽ���Դ̫��
������������Ů����һ�����ʀ��
СһЩ�Ľ����֡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100640a00">
���ܱ�Ǹ˵���ˡ�
���������־�����Ĵն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ҵ�ͷ����
�������ɱϾ��������ڰ��һ��µı�����
��Ҳû�취��־���Ӧ�е����ǡ�

����������̧��̧�°ͣ���ʾ��Ӧ��
���ҿ���������Ů�ǣ��곤��Ů��
�ֲ̿��Ѳ�ͣ��л�����׵�Ů���ٴζ���΢Ц��
���������ñȽ��������䣬�е���˼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100650b55">
�����Ǿ���ѽ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100660a00">
����л����֧�֡�
���պ��ұػ��л������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100670a00">
�������Ҳ��
��ʧ���ˡ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100680b05">
����!?
���⡭������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100690b55">
�������ղ��������ָ��ÿ졣
����������һ�������Ƕ������õġ�
��ǿ�ֻ���ٴγ����˿ڡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100700a00">
�����Ҳ��ܸ��������鷳��
�����������
��ֹ��ռ�ط�������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100710b55">
���㵣����Щ�ط���Ա�ǣ�
��ԭ����ˡ���
����˿ڹ�Ȼ�������ǽ�ս�Ľ��ѽ��
Ȼ������˵���»���׷������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100720a00">
�����ǡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100730b55">
�����㲻�ص�����Щ��
����ʹ���ڰ���ϳ�ȥ��
���ǻ��ǻ���������鷳����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100740a00">
���⡭����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100750b55">
�����Ǵ����������±�����Ǵ�����鷳��
�������ǲ��ǳ��ڸ��˵�˽�£����ã�
��Ȼ��Ҫ�ʹ����ǣ�
���Ұ�������ܸ����д������档��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0100760a00">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100770b55">
����һ���������������Ϣ�ɡ�
��������˵���������������Ȭ���ˡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100780b05">
�����������ɡ�
���Ҳ�����Щ���ӵ��¡���
�������������˵���
��������߶�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100790b06">
���ţ�
����㣬�����ô������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100800b05">
�������ؼҡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100810b06">
���ס���Ҫ�
������������һ���������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100820b05">
���԰ɡ�
���㿴����ʿ���ˡ���Ҳ��ô˵�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����������ô˵����
���������������ƺ�Ҳ�޷��ܾ�����
���뿪��

��������Դ̫�������Լ��ǣ����ڳ�ǿ���뿪��
����ѡ������洦Ҳû����
�����¹������������������֮�ٰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma02/0100830a00">
�������������ˡ�
���Ǿ͸��������鷳�ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0100840a01">
�����ָ�̡���

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0100850b05">
���ۣ���������������


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0100860b06">
�����衫����



{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//��΢Ц
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0100870b55">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


//�����ʥ��`�øжȣ�
//$Another_Flag = $Another++;
	$ma02_010_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

}

..//������ָ��
//�Υե����롡"ma02_011.nss"


