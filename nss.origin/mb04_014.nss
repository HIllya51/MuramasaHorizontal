//<continuation number="820">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_014.nss_MAIN
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
	#bg041_Ƭ������_02=true;
	#bg051_�����Ҿ��g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_015vs.nss";

}

scene mb04_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_013.nss"

//���ذ�������
//��������ݳ����������äƤ�Τ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_02.jpg");
	StL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140010a02">
��ʲô��˼��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ת����Ҳֻ������ɫ��װ�ף��޷���̽���ڸ�������
��һ���ı��顣��ȴ�������Ʋ�õ���
�������ǲ�������������������ܵ���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140020a02">
���Ҳ�֪������˵ʲô������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140030a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140040a02">
���㾿��Ҫ����������
�����Ǻš���Ϊʲô��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140050a00">
���ұ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ҷ��Ե���
��������ԥ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb04/0140060a00">
�������κ��˶������ԣ��������ҡ�
�������һ�������Ǻ����������Ĺ��������
�Ķ�ħ���˴�ܣ��ⳡս���ͻ��Ϊ����֮ս��
�ͻ��Ϊ�����ַ�а���ս������


//��������
<voice name="����" class="����" src="voice/mb04/0140070a00">
�����ǻ�ä��ս���������ԡ�
���Ӷ������ⳡս�������ࡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb04/0140080a00">
��������ˣ�ֻ����֪��������ˣ�
��֪�����Ǻ�Ҳ��������һ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�⡢����һ��
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 6000, Center, Middle, "cg/bg/bg051_�����Ҿ��g_01.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	StL(7000, @0, @0,"cg/st/st������ǰ_ͨ��_�Ʒ�.png");
	StR(7000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStA(0,true);
	Fade("�}����Ļ", 0, 400, null, true);
	Fade("�}��ܞ", 300, 250, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������֪���������α���������һ��ʵ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStA(0,true);
	WaitKey(200);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb04/0140090a00">
��������֪��������ˣ����������ܡ�
��Ϊ����ȷ������һ��Ϊ��������������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140100a00">
����ֻ���Ҳ����õ�����


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140110a02">
���Ҳ����ף�
������˵ʲô������ȫ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ������ŭ��
����Խ������Խʧ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140120a02">
��Ϊʲô����Ϊʲô��
������ն����������������ɱ�����˵Ļ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140130a00">
���ͻ���ɱһ��ͬ�顣
����ɱ������֮�ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140140a02">
������֪����һ�㡭������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140150a00">
������������
��ս���Ľ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140160a02">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140170a00">
��ս��һֱ������������������֮��Ļ�ս��
�������Ĳ��Ҳ������һ�����ӽ���᳣ʶ
�����ϵ������Ե�������ѡ���


//��������
<voice name="����" class="����" src="voice/mb04/0140180a00">
��ÿһ��ս���ŵ��˶���Ϊ�Լ�������ģ�
������а��ġ�
����Ϊ������ˣ����޷���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�
	CreateTextureEX("�}��", 4000, -850, -100, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	Fade("�}��", 300, 800, null, false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/0140190a00">
�������ܰ�����һ��ģ����ֻ�е�����Ϊ��ս
����ս�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}��", 1000, false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140200a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140210a00">
������ս���Ľ����Զ���ǲ���ġ�
�����ߵ�������ʤ�ߵ�а����һ��������


//��������
<voice name="����" class="����" src="voice/mb04/0140220a00">
���ƶ���֡�
��������������䡣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��û��
�����ԡ�

{	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���Ұγ�̫����ָ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140230a02">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140240a00">
��������������ɱ¾֮�ˣ�Ӧ������һ����
�������������Ĺ�ͬ�壬�Լ���ɱ�е�ʱ��
��նɱ�ļ��Ƕ������ơ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140250a00">
������֮����û�н��Լ���ͬ�顢���������
նɱ�ľ��򣬾Ͳ���ɱ�С�
������û����ݾ�����������նɱ�˵��ˣ�
�Ǳ��Ǳ�����ų���޿ɾ�ҩ�ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140260a00">
�����ο�����
��<RUBY text="������������������������">������֮�����ݻ�����֮ʵ</RUBY>��
û�б�����������ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140270a02">
�������ն�����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140280a00">
����������ͨ����һ������
�����������Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������˵�Ļ����Ѿ�ȫ���ˡ�

��һ��û���κη�Ӧ��
����������һ��<RUBY text="��������">��ƽ����</RUBY>��Ĭ֮�С�

�������������˷�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0140290b40">
����������
�����Ѿ������˰ɡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140300a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0140310b40">
����������������
�������������ǵ����塣��


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140320a02">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0140330b40">
����������Ԥ�ϵ���������
������վ��Ƕ����


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140340a02">
����������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M���ؤ�
//�������`��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	DrawTransition("�}��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateColorSP("�}ɫ�\", 5100, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_rightdown2(6000,@0, @0,1500);
	SL_rightdownfade2(10);

	CreateSE("SE01c","se���L_����_���nͻ01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 6100, "#FFFFFF");
	StL(1000, @0, @0,"cg/st/3d����_����_���La.png");
	FadeStL(0,true);
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Wait(30);
	Delete("�}��");
	Delete("�}����");
	Delete("�}ɫ�\");
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 1000, 0, 6, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}�ե�å����", 1000, true);
	Delete("�}����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������·����������������׵ر�������װ�׵����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb04/0140350a00">
������������ĵ����ú���׼Ŀ�ꡣ��


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140360a02">
���ն���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140370a00">
������Ҫնɱ��Ҳ�޷�����


//��������
<voice name="����" class="����" src="voice/mb04/0140380a00">
����Ӧ������壬��������ʣ�����Ρ�
��ֻҪ�����һ������ӡ���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140390a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140400a00">
������ͬ������塣
��������նɱ�Ұɡ���


//��������
<voice name="����" class="����" src="voice/mb04/0140410a00">
�����ҿ���������նɱ�ɡ�
������ս����ì������ɡ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140420a02">
���㡭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140430a00">
����˵�Ļ��ܲп�ɡ�
��������Կ����ǵġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140440a00">
�������˫���Ѿ�մ������Ѫ��
����˱��޷����ѱ���֪��������������񣡡�


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140450a02">
������
������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mb04/0140460a00">
��������


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140470a02">
����������˵����������
����ô�����������������ʲô���壡��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140480a00">
������׷�����׵Ļ�����ȷ��ˡ�
����������һ��Ψһ�ľ��Եļ�ֵ�ۣ���ô
���ֶ������ǲ����ڵġ���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140490a02">
�����ڣ�
�����׸����ҡ�����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140500a02">
��������ƭ�������Ӷᡢ�������裡
���ų�а�����ȷ����������Ϊ�˵����壡��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140510a00">
�����������������
����Щ��ֻ��<RUBY text="������������">�������Ӷ���</RUBY>�Ľ�����ѡ���


//��������
<voice name="����" class="����" src="voice/mb04/0140520a00">
��������������Щ������
������Щ�����Ǿ��Ե�������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140530a02">
������
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140540a00">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140550a00">
�����޷���ɱ��������������
������Ϊ����ֵ���𾴵ġ���


//��������
<voice name="����" class="����" src="voice/mb04/0140560a00">
���������壬��а��ս��Ҳͬ����
���Ƿ��������ǿɾ��ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140570a02">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140580a00">
������ҪΪ���ս����������֮������


//��������
<voice name="����" class="����" src="voice/mb04/0140590a00">
������������֮��ս����ȡ��ʤ���Ļ���������
�ͻ��������塣����սʤа��ĵ��˾������塣
��<RUBY text="����">����</RUBY>������������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140600a00">
�������˶�����ս����Ͷ����ս����
����������ս�������С���


//��������
<voice name="����" class="����" src="voice/mb04/0140610a00">
��������ս���ı���ֻ�ǻ���ɱ¾���ѣ�
������֮�����ڸ���ս���ڳ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140620a00">
��������
���㽫����������ս�ҡ�����


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140630a00">
�������Ϊ<RUBY text="������������">��һ�����Ǻ�</RUBY>!!��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140640a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140650a00">
�����ԡ���
������Լ���ɡ���


//��������
<voice name="����" class="����" src="voice/mb04/0140660a00">
��Լ���Ӵ�֮�������������ģ����ڲ��ᡣ
�����������ģ���ô����նɱ�ҡ���


//��������
<voice name="����" class="����" src="voice/mb04/0140670a00">
��һ��������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140680a02">
����������


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb04/0140690a00">
��������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140700a02">
���ҡ���
����Ҫ������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140710a02">
����Ҫ����а�񣬽�����᳹���ף�
���Ҿ������أ���������޷�������������������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140720a02">
���޷�ʵ�ָ��׵���Ը��
���ҡ����ҡ�����


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140730a02">
���������һ����
���Ҳ��ǳ���֮����κ�������!!��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140740a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140750a02">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140760a00">
������
����ô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140770a00">
�������������һֱ���ڡ�
�����ǽ���ֲ�и�ؽ�¶ս����ª�ı��ʡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140780a00">
����Ҫ��������㣬�ɾ����㣬
��նɱ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140790a02">
��������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140800a02">
���������ѡ���
���������ģ���


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0140810a02">
���������ң���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0140820a00">
��������ʼ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);


}

..//������ָ��
//�Υե����롡"mb04_015vs.nss"