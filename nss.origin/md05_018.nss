//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_018.nss_MAIN
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
	#ev246_ħ���L�����_b=true;
	#ev246_ħ���L�����_c=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_019vs.nss";

}

scene md05_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_017vs.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 18000, "#000000");
	CreateEffect("�}����", 4110, 0, 0, 1024, 576, "KitanoBlue");
	SetAlias("�}����","�}����");
	CreateTextureSP("�}�ţ֣�", 4100, Center, Middle, "cg/ev/ev246_ħ���L�����_b.jpg");
	FadeDelete("�ϱ���", 2000, true);

	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/0180010a14">
�����ǳ��þ�����
�������ǵĸ�����<RUBY text="����">�ѵ�</RUBY>�ǳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DrawDelete("�}ɫ�\", 300, 1000, "circle_01_00_1", true);

//����������
	PrintBG("�ϱ���", 19000);
	CreateTextureSP("�}�ţ֣�", 4100, Center, Middle, "cg/ev/ev246_ħ���L�����_b.jpg");
	FadeDelete("�ϱ���", 800, false);

	WaitKey(800);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0180020a00">
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������ˡ�

���ոգ�
��ȷʵ��
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm01", 0, 1000, true);


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md05/0180030a14">
��������ô���ɲ���ġ�
���ѵõ�����֮������Ҫ���Լ������ˡ���

//���⡿
<voice name="��" class="��" src="voice/md05/0180040a14">
������ӣ�����ϣ�������ʿ���ţ�
��ֱ����л��Ҫ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ӥ��ӥ����ҤӸ����
	OnSE("se����_�z_���٥�_�ҤӸ��", 1000);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Wait(10);
	FadeDelete("�}ɫ��", 100, true);

	Wait(500);

	SetFwC("cg/fw/fw�L��ħ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/0180050b45">
������ʲô��������

{	FwC("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/0180060b45">
����������ѽ����������������?!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ӥ���
	OnSE("se����_�z_�ҤӸ��02", 1000);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Wait(100);
	FadeDelete("�}ɫ��", 1000, true);

	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md05/0180070a14">
����������
��Ӧ�Ǹ������ҵĿ��⣬
���������ʡ���������

//���⡿
<voice name="��" class="��" src="voice/md05/0180080a14">
�����ڳ�Ц�Ļ�ϲ������
����ϲ��֮Ļ��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɩ`�󡣸�ʿɽ�۳Z
	OnSE("se���L_�Ɖ�_�󱬰k01", 1000);

	CreateColorEX("�}ɫ�ե�å���", 18500, "WHITE");
	CreateTextureSPover("�}����", 3100, Center, Middle, "cg/ev/ev246_ħ���L�����_c.jpg");
	CreateTextureSP("�}��", 1000, Center, Middle, "cg/ev/ev246_ħ���L�����_c.jpg");
	SetVertex("�}����", 580, 410);
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}�ţ�*");

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);

	Wait(400);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	SetVertex("�}����100", 512, 576);

	Zoom("�}����100", 0, 3000, 1000, null, true);
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 2, 300, 100, false);
	Fade("�}����100", 0, 1000, null, true);

//	Wait(1000);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("�}����100", 3000, 10, 0, 10, 0, 1000, null, false);
	Zoom("�}����100", 3000, 1100, 15000, Dxl3, false);
	Move("�}����100", 3000, @0, @7500, Axl2, false);
	FadeDelete("�}����", 1000, true);

	Wait(800);
	Fade("�}ɫ�ե�å���", 1000, 1000, null, true);

	Wait(1000);

//	FadeDelete("�}����", 1000, true);

//��������ݳ����������y�ǺŤγ��ǈ��ݳ�����S����������������
//�����ߣ��ݳ��{���g��

	CreatePlainSP("�}����200", 20000);

	Delete("�}����100");
	Delete("�}��");
	DeleteStL(0,true);
	Delete("�}ɫ�ե�å���");

	CreateColorSP("�}ɫ100", 1000, "Black");
	CreateColorEXadd("�}ɫ200", 10000, "White");

	CreateTextureSP("�y��", 5000, -100, -472, "cg/ev/resize/ev152_Ҋ�¤��y�Ǻ�_a��.jpg");
	Request("�y��", Smoothing);
	CreateTextureEX("�y�ǣ�", 6000, 0, -200, "cg/ev/resize/ev247_�򤭺Ϥ��������y�Ǻ�l.jpg");
	Request("�y�ǣ�", Smoothing);

	Fade("�}����200", 3000, 0, null, true);

	Wait(500);


	Move("�y��", 6000, @0, @200, null, false);


	Wait(3000);



	Fade("�y�ǣ�", 1000, 1000, null, false);
	Move("�y�ǣ�", 5000, @0, 0, AxlDxl, true);

	Wait(500);

	Delete("�y��");
	Delete("�}ɫ100");

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/0180090a00">
����!!��

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0180100a14">
���������д�����?!
�������������羡ͷ������

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0180110a14">
��С��Ĺ��Ͷ�ħ�ļ��棬
���������Ӱ��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md05_019vs.nss"