//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_011vs.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_012.nss";

}

scene mc04_011vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_010.nss"

//�����vǰ�ι���
//���|�đ�ӣš������ޥ��󥬥�ϟo����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");

	CreateSE("�|�đ�", "se���L_�|��_ȭ�|�|�đ�01_L");
	MusicStart("�|�đ�", 0, 1000, 0, 1000, null,true);
	OnBG(100, "bg087_���Bۡ���vǰa_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0010e168">
�������ɶ�
���Ǹ��������ѳ������˶��ƣ���


//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0020e168">
�����������Ǹ���̫�ţ�����ô����ô��
��ô׼ȷ�������ѶԸ�����
�������໹û׼������!?��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ˡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0030e181">
����û�ã�
��û�и������źš���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�̡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0040e182">
�����������û���Ǹ�<RUBY text="ǽ">��</RUBY>�Ļ�����
���ӳ�������ǹ������Ч����
���Զ�������һ����������


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0050e168">
��Ҫ����̫�������լۡ��
�������ô���˰���
���������������ǽ������һ������ݵ��ˣ�
���������˶�Ҫ��ͷ������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�̡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0060e182">
�����Ǿ������������������Ҳ��ͬ���ĺ�
����
������ʨ�Ӻ���˵��Ը񰡣���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0070e168">
��������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�͡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0080e183">
��������
������˵һ�����оͿ����ˡ�һ������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�͡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0090e183">
�������Ǹ�������������͵ĳ���̫�š�����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0100e168">
��������������̽ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���`�󡣓Ĥ��줿
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B��ʿ�͡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0110e183">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	OnSE("se����_�n��_ܞ��01", 1000);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0120e168">
�������ء�����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ˡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0130e181">
���ӳ�����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0140e168">
��ʲô��!?��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ˡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0150e181">
�����źš���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0160e168">
������������


//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0170e168">
�������á�֧Ԯ�ɡ�
���ѵ��˵�ע������������ߡ���


//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0180e168">
������һ��ȫԱͬʱ������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�̡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0190e182">
����!?
���ӣ��ӳ�������̫��������


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0200e168">
���������ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä���󡣔S��Ͳ����
	OnSE("se���L_����_�S��Ͳ�ʂ�", 1000);

	Wait(1000);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0210e168">
������������


//������㣯���B��У�¡�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/011vs0220e168">
�������ڡ�����
��������һ����!!��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0230a04">
���������һ����
����ô������������ʺá���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɩ`�󡣤ܩ`�󡣴����w�����

	SetVolume("�|�đ�", 1000, 0, null);

/*
	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);
	
	CreateTextureSP("���k", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	CreatePlainEX("�}��д", 900);
	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2000, null, true);

	Shake("�}��д", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("�\Ļ��");

	Zoom("�}��д", 2000, 1000, 1000, null, true);

	Delete("�}��д");

	FadeDelete("���k", 1500, true);

*/
	CreateSE("SE00a","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(1000);

	OnSE("se���L_�Ɖ�_���k03", 1000);

	CreateTextureEX("���k", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("���k2", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	Request("���k*", Smoothing);
	Zoom("���k", 0, 1500, 1500, null, true);
	Zoom("���k2", 0, 2000, 2000, null, true);

	Shake("���k", 300, 20, 20, 0, 0, 200, Dxl3, false);
	Fade("���k", 150, 1000, null, false);
	Fade("���k2", 150, 200, null, true);
	Fade("���k2", 150, 0, null, true);

	Shake("���k", 950, 40, 40, 0, 0, 200, Dxl3, false);

	Fade("���k2", 300, 1000, null, false);

	CreateColorSP("��", 15000, "WHITE");
	DrawTransition("��", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	CreatePlainSPadd("�}��д", 110);
	Fade("�}��д", 2100, 0, DxlAuto, false);
	Shake("�}��д", 2100, 0, 20, 0, 0, 1000, Dxl1, false);

	Delete("���k2");
	FadeDelete("���k",1000,false);
	FadeDelete("��", 1800, true);

	WaitKey(500);

	WaitAction("�}��д", null);
	Delete("�}��д");

//������

//�����Ƥ��Τ��𤭤� �Ȥ����ݳ� inc�Ѿ�
	StC(1000, @0, @60, "cg/st/st����_ͨ��_˽��.png");
	Move("@StC*", 300, @0, @-60, DxlAuto, false);

	FadeStC(300, true);

	SetFwR("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0240a04">
����ô��
����������ʱ��<RUBY text="�ɣ������������">��Ϣʱ��</RUBY>�ˡ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0250a04">
������Ŷ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓ�
//�������`���ܤ����Ť���


	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(10);


	Move("@StC*", 100, @-200, @0, DxlAuto, false);


	Wait(200);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0260a04">
����������ԭ����ˡ�
��������Ŀ��������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ���ˡ��ױ�װ��

	StR(1000, @80, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	StCR(900, @-80, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStCR(300, false);
	Wait(150);
	FadeStR(300, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0270e184">
�������̫�ſ�����ˡ�
��Ϊʲô�ղ������ܶ㿪����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0280a04">
����Ϊ��ÿ�춼����ϰ������������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0290e184">
������������ǹ�Ѿ��ӵ����ء�
����������Ҳ�����ǲ���ǹ�����ӡ���



//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0300e184">
���͵���Ϊֹ�ɣ���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0310a04">
�������˼�ǡ�����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0320e184">
����û��˵ʲô���ӵĻ��ɡ�
��˫�ַŵ��Ժ�ſ���Ǳߡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0330a04">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StC*", 300, @0, @100, null, false);
	DeleteStC(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0340a04">
�����������𣿡�


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0350e184">
��������Ȼ����˵�������ġ�
����������Ҳ̫�����˰ɡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0360a04">
����ǰ��Ҿ�˵���Ǹ���ֱ�ĺú��ӡ���



{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0370e184">
������ô�룿��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ϡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0380e185">
��һ�婖�������塣��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0390e184">
���š���Ҳ��ô��Ϊ��
�����������˰ɡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ϡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0400e185">
���޳ɡ���


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0410a04">
�����Ͼ��񲻹����ߣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������S���B�����
//����ʿܞ��

	OnSE("se���L_����_�����02",1000);

	CreateMovie("��`�ө`��", 1200, Center, Middle, false, false, "dx/mv���_�Ҥ�����.ngs");
	WaitAction("��`�ө`��", null);
	Delete("��`�ө`��");

	Shake("@StR*", 300, 3, 1, 0, 0, 1000, DxlAuto, false);
	Shake("@StMR*", 300, 3, 1, 0, 0, 1000, DxlAuto, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0420e184">
������!?��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ϡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0430e185">
������<RUBY text="�ã�������">�����߼���</RUBY>����


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0440a04">
�����ǣ���ֻ�Ǻ���ģ�¶��ѣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¤���ͻ���Ϥ������
//����ʿ����
//���𤭤뤵�衣���L�������}��
	OnSE("se���L_����_Ź��01", 1000);

	CreateTextureEX("�}����501", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����501", 0, 1200, 1200, null, false);
	FadeFR2("�}����501",0,1000,300,@0,@0,40,Dxl2, true);
	DeleteStR(0, false);
	DeleteStCR(0, true);
	OnSE("se����_�n��_ܞ��03", 1000);

	FadeDelete("�}����501", 1000, true);

	OnSE("se����_����_һ�i", 1000);

	StL(1000, @50, @100, "cg/st/st����_���L_˽��.png");
	FadeStL(300, false);

	Move("@StL*", 300, @-50, @-100, null, true);
	SetBlur("@StL*", true, 3, 500, 30,false);

	StCR(900, @-20, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	StR(1000, @140, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	Move("@StMR*", 300, @-60, @0, Dxl2, false);
	FadeStCR(300, false);
	Wait(100);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯���B��ʿ�С�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0450e186">
����̫�š�������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ѡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0460e187">
������������Ҫ�������ݰ�����



{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0470a04">
������������Ŷ��
����������������<RUBY text="����">����</RUBY>ɱ���Ѿ��������ˡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0480a04">
����������İɡ�
���һ������<RUBY text="��������">Ū������</RUBY>�ġ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�С�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0490e186">
����֮������������죡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������˔ؤ�
//�����衢�ܤ�
//��ȭ��
//����ʿʳ��äƵ���

	Move("@StL*", 100, @180, @0, AxlAuto, false);

	CreateTextureSPadd("�}����500", 10000, -200, 0, "cg/ef/ef008_��������܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	CreateTextureSPadd("�}����501", 10000, Center, Middle, "cg/ef/ef042_���ô��.jpg");

	OnSE("se���L_����_Ź��02", 1000);

	Zoom("�}����501", 0, 1200, 1200, null, false);
	Zoom("�}����501", 200, 1000, 1000, Dxl2, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se����_�n��_ܞ��03", 1000);


	FadeDelete("�}����*", 500, true);

	SetNwL("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯���B��ʿ�ѡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0500e187">
��ɱ����!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Τα�ʿ
//�����S��
//�����衢���㤬�߱ܤ�
//�����åѩ`
//����ʿʳ�餦������

	CreateTextureSPadd("�}����500", 10000, -200, 0, "cg/ef/ef014_���ú�܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	Move("@StL*", 100, @0, @60, DxlAuto, true);

	FadeDelete("�}����500", 1000, false);



	OnSE("se���L_����_Ź��01", 1000);
	CreateColorSPadd("��", 15000, "WHITE");
	Move("@StL*", 300, @50, @-60, DxlAuto, false);
	DeleteStL(300,false);
	DrawDelete("��", 200, 80, "slide_07_00_1", true);


	Move("@StMR*", 300, @0, @100, null, false);
	DeleteStCR(300, false);
	OnSE("se����_�n��_ܞ��03", 1000);

	FadeDelete("�}����*", 500, true);



//���Τα�ʿ������
//�����Ĕؤ�
//������ܤ�
//���ϥ����å�
//����ʿһ�˵���


	StR(1000, @60, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	StCR(900, @-60, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	StC(1000, @0, @30, "cg/st/st����_���L_˽��.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStC(300, false);

	SetBlur("@StL*", true, 3, 500, 50,false);

	FadeStR(300, false);

	FadeStCR(300, true);



	Move("@StC*", 100, @180, @-30, null, false);
	DeleteStC(100, true);

	CreateTextureSPadd("�}����500", 10000, -200, 0, "cg/ef/ef011_����б��܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	CreateTextureSPadd("�}����501", 11000, Center, Middle, "cg/ef/ef042_���ô��.jpg");

	OnSE("se���L_����_Ź��03", 1000);

	Zoom("�}����501", 0, 1200, 1200, null, false);
	Zoom("�}����501", 200, 1000, 1000, Dxl2, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se����_�n��_ܞ��03", 1000);

	FadeDelete("�}����*", 500, true);


//���⤦һ���α�ʿ�������λ���Ƅ�
//����ͻ
//������ܤ�
//������ֱͻ����������

	DeleteStCR(150,true);

	StC(900, @0, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	FadeStC(150, true);


	OnSE("se���L_����_�����02",1000);
	SL_centerin(@50, @0,1000);

	SL_centerinfade2(5);


	CreateTextureSP("�}����501", 11000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����501", 0, 1100, 1100, null, true);

	OnSE("se���L_����_Ź��05", 1000);

	Zoom("�}����501", 200, 1300, 1300, null, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, true);


	FadeDelete("�}����*", 500, true);



//���Fβ�����i���줿��˼���ͤ���

	SetNwL("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯���B��ʿ�ҡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0510e188">
������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��󡣱�ʿ����
//�������Ϥ��ݳ���Ԕ���ϥ꥽�`������Մ��

	OnSE("se����_�n��_ܞ��03", 1000);
	Move("@StC*", 300, @0, @100, null, false);
	Shake("@StC*", 300, 2, 1, 0, 0, 500, null, false);
	DeleteStC(300, true);

//������

	StL(1500, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	StR(900, @0, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStR(300, false);
	FadeStL(300, true);


	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0520e184">
����������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0530a04">
�������Ҫ������ƣ����ÿ�������ɡ���



{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0540e184">
�����п����𣿡�


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0550a04">
����������������ʵ��
���������������ĵط�Ҳ����
���������֪���������ء���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0560e184">
���Ҹ���ô���氡����
�����˵��һ����̫�Ÿ��߰��ˣ�
ʨ�Ӻ���˲����������ҡ�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0570e195">
�����İɡ��н������ǽ�������ˡ�
��ֻҪ��˵<RUBY text="��������������">����������ɴ��</RUBY>��
������ܵġ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0580a04">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���o�T����ꑡ��Ρ��ȡ�

	OnSE("se���L_����_�z_�ŵ�01", 1000);

	DeleteStA(300,true);

	WaitKey(1500);
	OnSE("se����_�z_�l����02", 1000);

	StR(1000, @160, @0, "cg/st/3d����ʽ�o�T��_����_ͨ��.png");
	StCR(1000, @-100, @0, "cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");

	StL(1000, @40, @0, "cg/st/3d����ʽָ�]��_����_ͨ��.png");

	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStL(300, false);
	Wait(100);
	CreateSE("SE01a","se����_����_�z�i��04");
	MusicStart("SE01a",0,1000,0,800,null,false);
	FadeStR(300, false);
	Wait(100);
	CreateSE("SE01b","se����_����_�z�i��04");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/011vs0590e184">
��������<RUBY text="�ģ�������">�������</RUBY>!!��


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0600a04">
������һ������һ���������Ű���
�������������̫�ű���
��װ��������˹����𡭡���


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0610a04">
��������������������ֻ����Ҫƽ���ضȹ���
�����ѣ��ܲ��ܱ�̫������ǿ�Լ��˰�����



{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0620e195">
����˵Ц�ˡ�
���������Ƿ�����������
��������ȫû�м��˰�����


//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0630e195">
����������ʮ��ǰ����һ�δ�ˤ�ڵ����ذ���
�������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0640a04">
��������ѽ��
���ֲ����Ҿ���������Щ��Ϥ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0650a04">
��ԭ������ǰ���۰�����<RUBY text="������">С����</RUBY>������



{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0660e195">
�������š���������С���ҡ�
����������һ����ˣ�
�����Ķ����������۶Ϲ�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0670e196">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�á�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0680e197">
������������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0690a04">
�����������˻����
����������ʽ��ͬ�����ء���



{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0700a04">
���ñ��ط꣬���������ɰɡ�
����ѽ��������֮�󣬴������������
���������˸��˵İ�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0710e195">
��������ʹ����������Ҫ��
���һ��Ǳ�������ְ�𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0720a04">
����ѽ��Ҫ����˵����
��������Ϊ�������������׼�����Ǳߵĳ���
Ҳ�����Ƽ���Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0730e195">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0740e196">
����Զ��������ϻ���
������ٸ���ʱ�䣬
��֪������������Щʲô��������


//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0750e196">
�����ϼ�޻������ǵв�������
������ʲôҲ��ȥ˼����նɱ��
����ֻ�ù᳹��һ�㡣��


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0760e195">
����֪����
�����Ǻ�����֦����һͬ�����ŵ�����ģ���
�ֵĹ���ĸ�񡭡������ж�ô<RUBY text="��������">���öԸ�</RUBY>��
���������ڸ�����ɡ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0770e196">
���š���


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0780a04">
���������ԡ�
����΢��һ�¡��ղ��Ǿ仰ͣ�¡���

//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0790a04">
���ҿ�����ȷ�ظ������ǣ������ŵ������ֻ
������֦�����Լ�������ɴ��ֻ�����Լ�����
־������֦����ͬ�е�Ŷ��
�����ǲŲ��Ǳ�һͬ�ӵ����ء���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0800a04">
���ⲿ��һ�����ܸ����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0810e195">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0820e196">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���५���顣Ц�ŭ��ީ`������

	SetFwC("cg/fw/fw����_Ц�.png");
	SetComic(@0, @0, 15);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0830a04">
���������������ǰٷ�֮���ٵĲ��Ű���
�����������ʦ˵�Ļ���
������ʲô�¶��޷���ߡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0142]
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0840a04">
��������Ի������ʦ�����޷�������¡�����


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0143]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0850e195">
��������ʦ�Կ�ͽ��ʤ��ն����ߣ�
���޷�������¡���



{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0860a04">
�����������ö��Ҳ����ĵط�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0870e196">
����Զ����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0880e195">
���š���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T���i��


//	OnSE("se���L_����_��װ�ʂ�01", 1000);

	StR(900, @100, @0, "cg/st/3d����ʽ�o�T��_����_�i��.png");
	StL(900, @0, @0, "cg/st/3d����ʽָ�]��_����_�i��.png");
	StCR(1000, @-100, @0, "cg/st/3d�ũ�ʽָ�]��_����_�i��b.png");
	OnSE("se���L_����_������01", 1000);

	FadeStR(250, true);
	OnSE("se���L_����_������01", 1000);

	FadeStL(350, true);
	OnSE("se���L_����_������01", 1000);

	FadeStCR(550, true);


	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0890e195">
���õ�ָ���ʦ�����Ǵ��治����������Ҳ��
����֮����
��������Ϊ�����˵��
����Ϊ����Ƕ���ʦ�ı���������


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0900a04">
�������ǲ����ܵġ�
���Ƕ������������΢��ܺ���Ĳ�����ʵ��
ȻҲֻ�ǶԶ�ʦ�����𱨰ɣ��ӳ�ʶ���ǵĻ�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0910e196">
���Թѵ��ڵ�����֮�
�����ǲ�������İɡ���
������ʹ�����Ե�������ˣ�
Ҳ���޷���ص����ơ���

//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0920e196">
��û�н����ߣ��޷�սʤ���У���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T��չ�_

	StR(1000, @100, @0, "cg/st/3d����ʽ�o�T��_����_���La.png");
	StL(1000, @0, @0, "cg/st/3d����ʽָ�]��_����_���Lc.png");
	StCR(1000, @-100, @0, "cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	OnSE("se���L_����_������02", 1000);

	FadeStR(50, true);
	OnSE("se���L_����_������02", 1000);

	FadeStL(50, true);
	OnSE("se���L_����_������02", 1000);

	FadeStCR(50, true);


	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/011vs0930e195">
�������!!��


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0940a04">
����������
�����Ǻ���ǰһ��������һЩ<RUBY text="����������">û�õĺ���</RUBY>����


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/011vs0950a04">
�����ǵ����ڿ�ʲô�ء�
�����еĻ�����<?>
{Wait(500);}
����Ѿ������˰�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_012.nss"