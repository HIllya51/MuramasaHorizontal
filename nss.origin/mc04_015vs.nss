//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_015vs.nss_MAIN
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
	#ev187_㑷�������_g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_016vs.nss";

}

scene mc04_015vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_014vscb.nss"


	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");


//�����㤬��
	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se����_����_�z�i��03", 1000);

	CreateColorSP("���㤬��", 5000, "#000000");
	DrawTransition("���㤬��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}����*");

	SetFwC("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/015vs0010a06">
��ʲô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������
��������Ψһ���԰�ȫ�ĵط���

����ʨ�Ӻ�����ƣ��޷����´̻���
��
�����������ն�����������á������������޷���������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����_��֣㣺�����Ȥ꣦Ƭ�֡������|�
//����������ä�������ȫ����
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("�}����10", 4200, Center, Middle, "cg/ev/ev187_㑷�������_g.jpg");
	SetBlur("�}����10", true, 3, 500, 50,false);
	Zoom("�}����10", 0, 1400, 1400, null, true);
	Request("�}����10", Smoothing);

	DrawTransition("���㤬��", 150, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);

	Wait(100);

	Zoom("�}����10", 300, 1000, 1000, Dxl2, true);
	Delete("���㤬��");

	CreatePlainEX("�}��д", 9990);
	SetShade("�}��д", HEAVY);

	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}��", 10000, -700, -1060, "cg/ev/resize/ev187_㑷�������_glm.jpg");
	Request("�}��/�}��", Smoothing);
	Zoom("�}��/�}��", 0, 750, 750, null, true);

	Move("�}��/�}��", 10000, -870, @0, Dxl2, false);
	Zoom("�}��", 1000, 1000, 1000, Dxl2, true);

	Fade("�}��д", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ѣ�������֮��ʱ���ҵ��۾���ǿ������ʨ
�Ӻ����ֵĶ�����
���������������뿪��̫����������Ҫ�γ������С��
������

��������������������������������ʨ�Ӻ𶼻�Ͷ��
С��������ҡ�
������������������������<RUBY text="�ã���������">ɱ��</RUBY>��

�����ǣ��·�������Ψһ����·��
��������֮����ֻ�ܽ�С��Ͷ���ҵ�ͷ���������ַ�
������Ҳ�޷��ᴩ�ҵĺ�����
����Ϊ<RUBY text="����">����</RUBY>�޷��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 500, 1000, 0, Dxl2, false);
	FadeDelete("�}��д", 500, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0033]
����ʹʨ�Ӻ�Ҫ������������Ҳֻ�����ֵ����յ���
��
�����ֵĿ������޷������ҵ�װ�ס�

�����Ƶ����ӡ�������<k>���ڵ�ת�ˣ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}����*");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg090_���Bۡͨ·d_01.jpg");

	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/015vs0020a06">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�|�������");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ʨ�Ӻ��ӵ���С����
��˫��������ס̫�������Ϸ�������������

�����ǣ��Ҹ���һЩ!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\", 14000, BLACK);

//�����S��һ�W
//�������`��
	SL_left2(20000,@0, @0,1500);
	Rotate("@slashL*", 0, @0, @0, @20, null,true);
	OnSE("se���L_����_�����02", 1000);
	SL_leftfade2(10);

	CreateTextureSP("�nͻ", 15000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateTextureSP("�·�", 14000, @0, @0, "cg/ef/ef040_�����nͻ.jpg");

	Zoom("�nͻ", 0, 1500, 1500, null, true);

	OnSE("se���L_����_�z��������03", 1000);
	FadeFR2("�nͻ",0,750,300,@0,@0,40,Dxl2, false);
	Zoom("�nͻ", 200, 1000, 1000, Dxl2, true);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_016vs.nss"