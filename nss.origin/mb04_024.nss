//<continuation number="190">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_024.nss_MAIN
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
	#bg049_�������_סլ��b_02=true;
	#bg004_�ɤӤ���b_02=true;
	#ev102_����Ű��_a=true;
	#ev505_�����_�M܊=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_025vs.nss";

}

scene mb04_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_023.nss"
//��bg049��
//��������һ�����i�߼Ĥ�
//����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateSE("SE01","se����_����_�i��02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}��ܞ", 2000, true);

	Wait(3000);

	SetVolume("SE*", 1000, 0, null);

	Wait(1000);

	OnSE("se����_����_һ�i",500);

	Wait(1000);

	FadeStA(500,true);

	Wait(2000);


	PrintGO("�ϱ���", 30000);
	CreateTextureSP("�}�ݱ���", 100, 100, -200, "cg/bg/bg004_�ɤӤ���b_02.jpg");
	Zoom("�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݱ���", HEAVY);

	CreateTextureSP("�}���}", 1000, 100, Middle, "cg/st/resize/stһ��_ͨ��_�Ʒ�ex.png");
	Move("�}���}", 0, @0, @298, null, true);
	FadeStR(0,true);
	Move("�}���}", 3000, @0, @-30, DxlAuto, false);
	Move("�}�ݱ���", 3000, @0, @-10, DxlAuto, false);
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm31",0,1000,true);


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb04/0240010a00">
�����ڣ��и��������������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240020a00">
�����ǵ���
���Ǹ����ڿ��ȵ����������к�������


//��������
<voice name="����" class="����" src="voice/mb04/0240030a00">
���Ǹ���������������۵��к�����


//��������
<voice name="����" class="����" src="voice/mb04/0240040a00">
����������Լ�˫�������Ľ�פ����ʯ�����ơ�
���κ��˶��¸ҡ�
���������������ı��嶼��֪������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240050a00">
��Ȼ�󡭡���˳����µ����ˡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240060a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240070a00">
��һ��������˵һ�Ρ�
���������һ���ˡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240080a00">
���Ҳ�����ֹ��������Ϊ����������ս����
�����ǣ���Ҫ��Ϊս��<RUBY text="����">����</RUBY>����֮���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240090a00">
��Ϊ�˲�����ս����ª�����ࡣ
��Ϊ�˲�������һ����ν��ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//	PrintGO("�ϱ���", 30000);
	CreateWindow("�}�ݷ���", 500, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureEX("�}�ݷ���/�}�ݱ���2", 500, 400, 0, "cg/bg/bg004_�ɤӤ���b_02.jpg");
	Rotate("�}�ݷ���/�}�ݱ���2", 0, @0, @180, @0, null,true);
	Request("�}�ݷ���/�}�ݱ���2", Smoothing);

	Zoom("�}�ݷ���/�}�ݱ���2", 0, 1200, 1200, null, true);
	SetShade("�}�ݷ���/�}�ݱ���2", HEAVY);
	CreateTextureEX("�}�ݷ���/�}���}2", 1000, Center, Middle, "cg/st/resize/st����_ͨ��_˽��m.png");
	Move("�}�ݷ���/�}���}2", 0, @286, @188, null, true);

	Fade("�}�ݷ���/*", 1000, 1000, null, false);

	Move("�}�ݷ���/�}���}2", 3000, @0, @30, DxlAuto, false);
	Move("�}�ݷ���/�}�ݱ���2", 3000, @0, @10, DxlAuto, false);
//	FadeDelete("�ϱ���", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240100a02">
����˵��û����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240110a02">
����ν��ս����ֻ�ǳ��Ļ�����ɱ��Ϊ���ѣ�
���������䱻��������֮������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240120a02">
����ô���Լ������壬��ϧ��������ҲҪ����
���ս����ȥ������������ӵ��о��ˡ�
���Ǿ����޷�������ˡ�ġ�<RUBY text="��������">�������</RUBY>����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0240130a00">
��������


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240140a02">
�����һ����������֮��ս����
����������˶��ֵ������ַ�а�񣡡�


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240150a02">
���Ҽ������ջᵽ���Ǹ��յ㡪��һ��û�з�
����������������硣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//����������
	SetVolume("@mbgm*", 2000, 0, null);
//	WaitKey(2000);

	Wait(1000);
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 25000, "#FFFFFF");
	DrawTransition("�}�ե�", 300, 0, 1000, 500, Axl2, "cg/data/slide_06_00_1.png", true);



	PrintGO("�ϱ���", 30000);

//��������װ�לʂ䡣�������܇�˴������ѩ`�ķ��x
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	CreateColorEX("�}ɫ�\", 5100, "#000000");

	OnBG(100,"bg049_�������_סլ��b_02.jpg");
//	StC(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
//	FadeStC(0,true);
	FadeBG(0,true);

	FadeDelete("�ϱ���", 600, true);

	WaitKey(100);
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������һ����Ϊ�����Ľ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ץ��������
//	SoundPlay("@msong04_full",0,1000,true);
//	CreateBGMEX("���`����","msong04_arrange",118617,185272);
	SoundPlay("@msong04_arrange",0,1000,true);


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 25000, "#000000");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	StC(1000, @0,@0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/bg004_�ɤӤ���b_02.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	DrawEffect("�}�ݷ���/�}�ݱ���", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -220, "cg/st/resize/st����_װ��_˽��aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 1, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}��ܞ", 500, true);

	Wait(300);

	Move("�}�ݷ���/�}�ݱ���", 600, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @-200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040a]
//��������
<voice name="����" class="����" src="voice/mb04/0240160a00">
������ɱ��
�����߱�𡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������
	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -140, -220, "cg/st/resize/st����_װ��_˽��bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 1, 500, 70, false);


	OnSE("se���L_����_�����02",1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�}�ݷ���/�}���}", 200, 0, null, false);
	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);
//	Fade("�}�ݷ���/�}���}2", 200, 1000, null, true);

	PrintBG("�ϱ���", 30000);
	SetBlur("�ϱ���", true, 2, 500, 50, false);
	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	StC(1000, @0,@0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("�ϱ���", 400, 4000, 4000, Axl2, false);
	FadeDelete("�ϱ���", 400, true);

	WaitKey(500);

	CreateTextureEX("�}�ݱ���", 5000, Center, Middle, "cg/ev/ev102_����Ű��_a.jpg");
	Fade("�}�ݱ���", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040b]
�����Ľ��У�������������������ս����
����Ϊ���ޣ����Է���Ҫ�������¶ս����ª�����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ�װ�לʂ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	CreateColorSPadd("�}ɫ��", 4990, "#FFFFFF");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	StC(1000, @0,@0,"cg/st/stһ��_װ��_�Ʒ�a.png");
	FadeStC(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������һ����Ϊ���ڵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 200, true);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -344, "cg/bg/bg004_�ɤӤ���b_02.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);

	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	DrawEffect("�}�ݷ���/�}�ݱ���", 50, "LowWave ", 0, 100, null);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -80, -220, "cg/st/resize/stһ��_װ��_�Ʒ�aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 1, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}ɫ��", 500, true);

	Wait(300);

	Move("�}�ݷ���/�}�ݱ���", 600, @100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);



	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240170a02">
�������������𾡶��
�������������Ͼ�а�񡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -217, -50, "cg/st/resize/stһ��_װ��_�Ʒ�bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 1, 500, 70, false);


	OnSE("se���L_����_�����01",1000);
	EffectZoomadd(17000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Fade("�}�ݷ���/�}���}", 200, 0, Axl3, false);

	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);


//��װ�ץ��������
	PrintBG("�ϱ���", 30000);
	SetBlur("�ϱ���", true, 2, 500, 50, false);
	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	StC(1000, @0,@0,"cg/st/stһ��_װ��_�Ʒ�b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("�ϱ���", 400, 4000, 4000, Axl2, false);
	FadeDelete("�ϱ���", 400, true);

	WaitKey(500);

	CreateTextureEX("�}�ݱ���", 5000, Center, Middle, "cg/ev/ev505_�����_�M܊.jpg");
	Fade("�}�ݱ���", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������Ľ��У��������޹�֮��Ϊ����а��
����Ϊ���ޣ����Է���Ҫ��һ��а�����С������壬
�������䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�µ�", 100, "#000000");
	CreateColorSP("�}ɫ�饤��1", 10000, "#FFFFFF");
	CreateColorSP("�}ɫ�饤��2", 10000, "#FFFFFF");

	CreateMask("�}�ݷ���", 2000, 0, 0, "cg/mask/ci����å���_01_00.png", false);

	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureSP("�}�ݷ���/�}�ݱ���", 6100, 0, 0, "cg/bg/bg049_�������_סլ��b_02.jpg");
	CreateTextureSP("�}�ݷ���/�}���}", 6200, 124, -198, "cg/st/resize/st����_װ��_˽��bex.png");
	Move("�}�ݷ���/�}�ݱ���", 0, 0, 0, null, true);
	Move("�}�ݷ���/�}���}", 0, -276, -198, null, true);

	CreateTextureSP("�}�ݱ���2", 5100, 0, 0, "cg/bg/bg049_�������_סլ��b_02.jpg");
	Rotate("�}�ݱ���2", 0, @0, @180, @0, null,true);

	CreateTextureSP("�}���}2", 5200, Center, Middle, "cg/st/resize/stһ��_װ��_�Ʒ�bex.png");
	Move("�}���}2", 0, -120, 96, null, true);

	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 70, false);
	SetBlur("�}���}2", true, 3, 300, 70, false);


	CreateSE("SE01","se���L_����_������03");
	CreateSE("SE02","se���L_����_�z_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	DrawTransition("�}ɫ�饤��1", 600, 1000, 0, 500, Axl2, "cg/data/beam_01_00_0.png", false);
	DrawTransition("�}ɫ�饤��2", 600, 1000, 0, 500, Axl2, "cg/data/beam_04_00_0.png", false);
	FadeDelete("�ϱ���", 200, false);


	Move("�}���}2", 1000, -520, 96, Dxl3, false);
	Move("�}�ݷ���/�}���}", 1000, 124, -198, Dxl3, true);

	CreateVOICE("����","mb04/0240180a00");
	CreateVOICE("һ��","mb04/0240190a02");

	SetBacklog("���ĥ륮����D�D�D�D�������ڤ�!!��", "voice/mb04/0240180a00", ����);
	SetBacklog("���ĥ륮����D�D�D�D�������ڤ�!!��", "voice/mb04/0240190a02", һ��);

	Delete("@text0070*");

	MusicStart("����",0,1000,0,1000,null,false);
	MusicStart("һ��",0,1000,0,1000,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������������һ��������
//������������һ����
��������֮���������ڴ�!!����

</PRE>
	SetTextEXC();
	Request("@text0080",NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


/*
//������һ�r�˱�
//��ͬ�r�k��
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb04/0240180a00">
������֮���������ڴ�!!��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0240190a02">
������֮���������ڴ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//��װ�����ˡ�����������

	CreateEffect("�ϱ���", 30000, Center, Middle, 1024, 576, "Plain");
	SetBlur("�ϱ���", true, 3, 500, 50, false);
	Delete("�}ɫ�饤��*");
	Delete("�}ɫ�µ�");

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	CreateSE("SE03","se���L_����_�z_���04");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	CreateColorEXadd("�}�ե�", 39990, "#FFFFFF");

	Zoom("�ϱ���", 1000, 4000, 4000, Axl3, false);
	EffectZoomadd(35000, 800, 500, "cg/ef/ef034_����AȾ.jpg", false);
	Wait(500);
	Fade("�}�ե�", 500, 1000, null, true);

	Delete("�ϱ���");
	CreateTextureSP("�}�ݷ���/�}���}", 6200, -317, -616, "cg/st/resize/3d�����˜�_����_ͨ��l.png");
	CreateTextureSP("�}���}2", 5200, -1600, -522, "cg/st/resize/3d����_����_ͨ����.png");
//	Move("�}�ݷ���/�}���}", 0, @120, @-60, null, true);
//	Move("�}���}2", 0, @-120, @228, null, true);
	WaitKey(500);


	Move("�}���}2", 5000, -1600, -542, null, false);
	Move("�}�ݷ���/�}���}", 5000, -317, -596, null, false);

	FadeDelete("�}�ե�", 1000, true);

	Wait(2000);

	Fade("�}ɫ�\", 2000, 1000, null, true);

//��������ݳ��������Υƥ����Ȥ�<k>��줿���ʡ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100a]
����Ϊ�����Ľ��С�<k>
����Ϊ���ڵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100b]
����������ͬ����׷�󡪡�

��׷������̫ƽ�Ľ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mb04_025vs.nss"