//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_020.nss_MAIN
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
	#bg049_�������_סլ��a_03=true;
	#bg112_���ؤ��ε�b_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_021.nss";

}

scene md06_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_019.nss"

//��bg049
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg049_�������_סլ��a_03.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	DrawDelete("�\", 300, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md06/0200010a00">
��֪�������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0200020a01">
������Ŷ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200030a00">
�����̶ֳȻ��ǿ���Ӧ���ġ���
���ã����Ǳߵľ������졣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0200040a01">
�������𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200050a00">
���š�
���б�Ҫ�ô�ҵ�֪���ࡣ��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0200060a01">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����󤫤󤫤󤫤�

	CreateSE("SE01", "se����_����_�o��犤���_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	WaitKey(1500);

	SetNwC("cg/fw/nw������y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200070e227">
����ô��!?��ʧ����!?��

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0200080e109">
���ۣ�����Ц��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����虜��
//���ɤ�ɤ�

//�����ؤ���bg112a_ҹ

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE01", 1000, 0, null);

	CreateSE("SE02", "se����_����_����᤭01_L");
	MusicStart("SE02", 0, 1000, 0, 1000, null,true);


	OnBG(100, "bg112_���ؤ��ε�b_03.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��û�б�⧲������Ļ��ָ����µ����ˡ�
�����־��������������˸���һ������˯�е����ǣ�
���˷׷׷ɱ�������

������Ȼ�󣬿����֪��
������Ŀ������ǰ��һ�С�

�������������š���
����������Χ���ĸ��������������ˡ�

�������������Ź��ߡ�
�����ӡ���������ͷ����

����Ϊ����ס�����ܵ�·�߶�ãȻʧ������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE02", 1000, 500, null);


	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200090e110">
�����ǡ�����

{	NwC("cg/fw/nw������.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200100b54">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200110a00">
�����ǹ���ά����һ���ΰ���
<RUBY text="������">��ͷ��</RUBY>���ǻ����𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200120e110">
���͡����ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������ˮ��ʯ���ˡ�
��������ʵ������ʲô<RUBY text="��������">ϡ������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0200130a00">
�������ֶλ�������Υ�����ء���

{	NwC("cg/fw/nw������.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200140b54">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200150a00">
��Ϊ��ʹ�ΰ��Ļָ���Ϊ��Ҫ��
����Ҫ��֮�ƻ���
����˵�������ܲ����𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200160e110">
��������ôһ���£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200170a00">
���ƻ��ŵ�������Щ�ˡ�
����������ͼ�ʼ����ݡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200180a00">
��Ϊ�˷���ԭס������񡣡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200190e110">
��ʲ����ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����虜��

	SetVolume("SE02", 1000, 1000, null);


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200200b54">
��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200210a00">
����һ�ж���Ϊ��ƭȡ�������
������ʽ���Դ�ɡ�������
�����Ļ��ˡ�
�������İɡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200220a00">
��ʲô������˵����������ȥ��
�����ҽ����ԶҲ��Ҫ�ٲ��ִ��£�
����ס�񷽺�����Ӧ��Ҳ����
�������ǰɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200230a00">
���������Լ�Ҳ���и���������

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200240b54">
����������ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����һԒ�Υ䥯��
	SetVolume("SE02", 1000, 0, null);

	StL(1000, @0, @0, "cg/st/stҰľɽ�M_ͨ��_˽��.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200250b54">
�������Ѿ����Ǵ��ű������޹�Ӷ
����ž�����ʳ���ǵ�ʱ���ˡ�
�����Լ���ı��·���ͽҲ������ˡ���

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200260b54">
��������������֣���Ҳ���Դ�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200270a00">
����ν���������¡���

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200280b54">
���ٷϻ���
���������¡�����

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200290b54">
������Ī�ֵ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�



	DeleteStL(300,true);

	OnSE("se�M��_냇��_�i��01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������������ͷĿ�����Ӱγ��嵶��
���ֳ־��ӵ����Ӹĳ̵ֶ����ֳָ�ͷ�������ཫ����
ת���ң����˷������ҵ����ࡣ

�����ܾ�������Ȼ����Ⱥ�׷׺��ˡ�
��
�������򶷳������������Ӧ�رܡ����������ֳ���
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0200300a00">
���������ѻ�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0200310a01">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����޴���������ĸ������������å�е㲻�
������ʹ�ý���Ҳδ��̫С���������һ��̫��ǡ�á�

//�����㤭�`��
{	OnSE("se���L_����_������01", 1000);}

�������˻��治��С�����������ͻȻ
���ֵ�̫������Ȼ����һ������δ¶��˿��������
��������ǰ�����������������ǻ����Ż����ϡ�

���Ķ�һ�ľ��ơ�
���������������룬��ֹ����Χ����
Ӧ�������ְɡ�

��������α�����ս�پ���
����������Χ���˷������������ˡ�

�����Բ�����ס����������ˡ�

����˲��ܺ��ˡ�
��ǰ����

������ǰ�����ֱ����ſ��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se����_����_һ�i", 1000);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0200320a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ǰ��<k>ֱ����������һ˲����ͻȻ�ı乥���ķ���
��ӭ����Ҹ�����мƶ�����Ծ�����ֳָ�ͷ�����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W���ܤ���

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	OnSE("se���L_����_Ź��03", 1000);

	DrawDelete("�}����500", 100, 100, "slide_01_00_1", true);

	CreateTextureSP("�}����501SP", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	CreateTextureEXadd("�}����501", 9010, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Fade("�}����501", 0, 500, null, true);
	Zoom("�}����501", 0, 1200, 1200, null, false);

	Zoom("�}����501", 200, 1000, 1000, Dxl2, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	FadeDelete("�}����*", 500, true);
	Delete("�\Ļ��");

	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]

���õ���������һ��û����գ��ͻ������ӵ������ϡ�
���������³��Ĵ�������ȡ��������һ��
���ز���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200330b54">
�������ɶ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�����02", 1000);

	CreateTextureSP("�k", 15000, @0, @0, "cg/ef/ef008_��������܉��.jpg");
	DrawTransition("�k", 100, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������о��Ա���֮�⡣
���ڽ�����Ͷ����һ�ߵ�ɲ�ǣ���ͷ���������ٵ�
Σ������������ȫ��

��������һ��Ϯ����
�����ҵ����Խ��ҵ�����ն�����Ρ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������`��
	OnSE("se���L_����_���nͻ01", 1000);

	CreateTextureSPadd("�����`���", 16010, @0, @0, "cg/ef/ef040_�����nͻ.jpg");
	CreateTextureSP("�����`��", 16000, @0, @0, "cg/ef/ef040_�����nͻ.jpg");
	FadeDelete("�����`���", 300, false);
	DrawTransition("�����`��*", 50, 0, 1000, 100, null, "cg/data/circle_04_00_0.png", true);
	Delete("�k");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
���Ҷ�̫����ʱ���������ձܹ���
�����������ôһ�й��ƿ���ס��������б���壬
�ܿ���һ����

�������Զ��ʺ�Х������
��ն���˼��Ʒ�˿��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0200340a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�����`��",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ҽ�����һת��
����ת̫����ͷ��һ�ܡ�������ֱ��
����Ҹ�¡�

��һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�
	OnSE("se���L_����_Ź��03", 1000);
	CreateTextureSPadd("б��", 15000, @0, @0, "cg/ef/ef010_����б��܉��.jpg");
	DrawTransition("б��", 50, 0, 1000, 100, null, "cg/data/beam_02_00_1.png", true);

	DrawDelete("б��", 50, 100, "beam_02_00_0", true);

	CreateTextureSP("�}����501SP", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	CreateTextureEXadd("�}����501", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����501", 0, 1200, 1200, null, false);
	Fade("�}����501", 0, 500, null, true);

	FadeDelete("�}����501", 500, false);
	Zoom("�}����501", 200, 1000, 1000, Dxl2, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����501SP", 750, true);

	SetFwC("cg/fw/fwҰľɽ�M_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="Ұľɽ�M" src="voice/md06/0200350b54">
���ذ�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����501",1000,true);

	OnSE("se����_�n��_ܞ��05", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��Ϊ�������ܵ����ˣ��Ѿ�������������
���������Ҫ�����������ػ���������ڴ�ܶ�Ź
�Ǽҳ��㷹����å��˵��Ӧ��Ҳ�������ܡ�

������ʹ�����ش�������°�ĭ��
����Ȼʧȥ��ս����������

������һ��������Ҳ�������ˡ�

����ʣ�������ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(1500, 1000);

//���ե��`�ɥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg112_���ؤ��ε�b_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ߴ�ڴ�����������ȥ��ˮ��
�����ݶ����ҵ�ս�������Ҿ�ƣ���ߡ�

����ǿ֧��סû�����˵����塣
���ĸ���åȫ��̱���ڵأ���������
Σ�����������ˡ�

��������֮��������㲻��ɡ�
��������ö��־��ܽ�����¾ͺ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md06/0200360a00">
������������������ͬ���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0200370a01">
�����İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���������Ļش�������һ������
��������ô˵�������������ˡ�

��������ס������񹴼���̸Ц����
�ǲ�̫���ܣ������ٹ�ϵ���ת�ɡ�
��������ԭ���Ѿ������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md06/0200380a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����أ��������³���ļž���
����ע������Χ����

�����µ�����ʵ������������
��
����ȷ��������֮��Ķ�����������������Ū�ġ�

�����ڼȲ��Ǿ����಻���ﷸ��ƽ�������˵��
���⽣Ӱ�ı�Ȼ������в�ԡ�
�����������ջػ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����夤��
	CreateSE("SE01","se����_냇��_�k��03");
	MusicStart("SE01",0,750,0,1300,null,false);

	WaitKey(500);

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0200390e109">
����ʧ�ˡ���!?��

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200400e110">
��ι��ι��
���ѵ������Ǽ��¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������⡣

����Ϊ�������ȶ��ô��˷�����
���ղŵ��龰�ڳ������У�����ͬ
̫��ƾ����ʧһ�㡣

����Ȼ���ڻ��Ͻ���һ���͡�
��������취���ι�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200410e110">
�������㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����������
��������˼����ô���������֮ǰ��
��һ�����ȿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200420e110">
���㡭����

//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200430e110">
����˵������Ϊֹ߱��������������
ɱ�˹����ߡ���
���⡪���������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(800);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md06/0200440a00">
�������ף���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200450e110">
�����ܶԷ���˭����
��������Ů�˺�С��Ҳ����ɱ������

//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200460e110">
����˵����������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200470a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm15", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����˭��

����˭��˵������һ�У�

������Щ����������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0200480e228">
��ͻ����ͻȻ�䣬˵ʲô������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200490e110">
���������ǡ�
���ұ���Ҳ�����š���

//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200500e110">
�����Ƕ������˰ɣ�
���ѵ������������׾ٵؽ������Щ��å��
�ְѵ���û�ˣ���

//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200510e110">
��������������ֻ�����߲�����������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0200520e228">
���⡭����ȷ��ˡ�����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200530e227">
���ȡ���һ�£�
��������λѲ�������п���������
����Ҳ��һ������ɱ��ħ�ɣ���

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200540e227">
���ǰ�!?��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200550a00">
������������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200560e227">
������������

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200570e227">
��ι��ι��
����ô��˵���ˣ���

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200580e227">
������˵��ʲô������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200590a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��˵����
��Ҫ˵Щ����ʲô��

��˵�Լ�����ɱ��ħ��

�������֡������ԣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md06/0200600a00">
������������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200610e227">
���㡭���ѵ�����

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200620e227">
���ѵ�����ģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200630a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01", "se����_����_����᤭01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������˲�䡣
��
�����������ˡ�

������å�ǰε�֮ʱ��Ϊ�������С�
�����桪�����أ�������˻���ߵؽ����ţ��·���Ϊ��
�����Դ��ԶԶ��Χס�ҡ�

��Ϊ�˾����ܵ�Զ���ң�Ϊ��ɨ���󷽵������谭��
��������Է���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0200640e109">
����������������һ��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200650e227">
���ن��£������ң���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0200660e109">
��ʲô!?
��˵�����Ǹ����˸�����������
�����İɣ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200670e227">
����ʲô����֪������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0200680e110">
��������������Ը����ǵİ�!?��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0200690e227">
����˵���Ҳ�֪����
����������ɱ�����ǵ������ǲŶ԰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����ִ��
���ò����ײ��������Ƶ����ǡ�

����ִ��
��������Ϊ�ҡ�

����ִ����
�����������������˰̡����භŹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����y�Ǻ��¼�

	EfRecoIn1(18000,600);
	CreateTextureSP("���ٽ}10", 10000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	EfRecoIn2(300);

	WaitKey(500);
	EfRecoOut1(300);
	Delete("���ٽ}*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/md06/0200700a00">
��ס�֣���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200710a00">
��ס�ְ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE01", 1000, 0, null);

	WaitKey(1500);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/md06/0200720a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����Ⱥ������ᡣ
��һ�뽫����Ͷ���ҡ�

��ÿһ��ͫ�׶������־塣
�����޵�η��С�

�����մ����Ѫ��ɱ��ħ���������뷨Ҳ��������Ȼ��

���־塣
���־塣
���־塣
���־塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md06/0200730a00">
���ء�����

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md06/0200740a00">
�����۰�����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��Ӥ���
//���ե��`�ɥ�����
	OnSE("se����_����_�ߤ�03", 1000);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	SetVolume("OnSE*", 1000, 0, null);
	WaitKey(1000);

	Fade("�}ɫ�\", 1500, 0, null, true);

//��С��
	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	WaitKey(800);

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0200750b34">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_021.nss"