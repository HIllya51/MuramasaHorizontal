//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md05_006.nss_MAIN
{

	CP_AllSet("����");


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
	#bg106_��ʿɽ�h��b_00=true;
	#bg065_���ӘS���ڹ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_��������������װ��=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "md05_007vs.nss";

}

scene md05_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_005.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ҹ����ǰ�θ�ʿɽ��ɽ픤��V���x���Ƥ���

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("��", 15000, "WHITE");

	OnBG(100, "bg106_��ʿɽ�h��b_00.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ͬԤ����˵��һ����

���ڶ�̫�����ĺۼ����Ѿ�����Ļ�ϳ�����ʧ��
����������ʱ��ʼ�½�������Ѿ����䵽�����ϡ�

�����ͬʱ��ǿ�ҵĹ��߽���ƽϢ��
�������ڵ����ϵľ�����˵�������ʵĹ�ԣ�
����û����ʧ�����������������Լ������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/0060010a01">
����ʿ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0060020a00">
���ƺ�������ɽ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ȼ�����ڴ��֮�ˣ�
�㲻����˭�����������˰ɡ�
����������İ������ء�����渻��֮����
����֮ո�µ�������

����������ͬ���������ڰ��ׯ�ϡ�
���ַ·�����ʾ���緢֮�׵Ĳ��顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�������ȴ���

//�⤫���Ф��ƄӤ��٤��r�g���U�^������˼�碌�뤿�ᡢ�L�� inc�Ѿ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg065_���ӘS���ڹ�_02.jpg");
	FadeBG(0, true);
	
	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(0, true);
	FadeStR(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/0060030a00">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0060040a01">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0060050a00">
���߰ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0060060a01">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Ի�����Ϊֹ��

��Ҳû�б�Ҫ����ȷ�ϡ�
���µ����������ķ�ʱ�䡣

��һ������������ս����

��ֻ���ǹ��еĹ�ȥ�����㹻��
������ڴ�ʱ��Щʲô����Ϊ��ʲô�أ�
�˴���ȫ��֪����

��
������������������Ψ��ս�����ס�

������ֹ�⡣
��������ֹ����������
��
�����Ǵ����Ǻš�

������Ǹ����������Ļ����ͻ����񡱡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorSPadd("�}�ݷ���/�ե�", 25000, "#FFFFFF");
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -144, "cg/bg/bg065_���ӘS���ڹ�_02.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//	DrawEffect("�}�ݷ���/�}�ݱ���", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -220, "cg/st/resize/st����_װ��_˽��aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}�ݷ���/�ե�", 1000, false);

	Move("�}�ݷ���/�}�ݱ���", 600, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @-200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/0060070a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);
*/

	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -140, -220, "cg/st/resize/st����_װ��_˽��bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 3, 500, 70, false);

	OnSE("se���L_����_�z_���02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�}�ݷ���/�}���}", 200, 0, null, false);
	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("�}��д", 20000);
	Delete("�}�ݷ�*");
	Delete("�}ɫ*");
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	Zoom("�}��д", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}��д", 300, true);
	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/0060080a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ��
//��������Ұ̫�������ڣ�װ��Щ`�����
	#av_��������������װ��=true;
/*
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d������K_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000, true);

*/
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 20000, "#FFFFFF");

	Fade("�}�ե�", 600, 1000, null, true);

	DeleteStA(0,true);

	Wait(1000);

	CreateColorEX("�}ɫ�\", 21000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	CreateColorSP("�}ɫ�\��", 5000, "#000000");
	Delete("�}�ե�");
	Delete("�}ɫ�\");

//��������ݳ��������װ�פ���������Ȥ�������줿����
	Cockpit_AllFade(300,720,0);

	CreateSE("SE01a","se����_���å��ԥå�_������04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5010, "#FFFFFF");
	DrawTransition("�}ɫ��", 600, 0, 1000, 100, Dxl2, "cg/data/slide_05_00_1.png", true);
	Delete("�}ɫ�\��");

	CreateTextureSP("�}�ݱ���", 4500, Center, Middle, "cg/bg/bg062_���ӘS�Ǵ��ֵ�_02.jpg");

	FadeDelete("�}ɫ��", 2000, true);

	WaitKey(2000);

	PrintGO("�ϱ���", 20000);
	Delete("�}ɫ��");
	Delete("�}ɫ�\");
	Cockpit_AllFade0();

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg065_���ӘS���ڹ�_02.jpg");
	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/st/resize/3d�����˜�_����_ͨ��l.png");
	Move("�}����100", 0, -563, -669, null, true);

	Move("�}����100", 3000, -563, -539, null, false);

	FadeDelete("�ϱ���", 1000, true);

	WaitKey(1000);

	CreateColorEXadd("�}�ե�", 18000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}����100");

	DeleteStC(0,false);
	StC(1000, @0, @0,"cg/st/3d������K_����_ͨ��.png");
	FadeStC(300,false);
	FadeDelete("�}�ե�", 1000, true);

	WaitKey(1000);

	OnSE("se�M��_냇��_�i��01", 1000);

	StC(1000, @0, @0,"cg/st/3d������K_����_�i��.png");
	FadeStC(300,true);

	WaitKey(1000);

	OnSE("se���L_����_��ͻ�M01", 1000);


//	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
//	Fade("�}�ե�", 900, 0, null, false);
//	DrawDelete("�}�ե�", 600, 1000, "slide_08_00_0", false);

//���x�
//	DrawDelete("@StC*", 150, 100, "beam_04_00_1", true);

	CreateColorSP("�ϱ���", 19000, "#FFFFFF");
	DrawTransition("�ϱ���", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteStA(0,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������ǰ�С�

��Ϊ����һ�н�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm12",0,1000,true);


//�����ߣ��زĶ��x
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

//�����ߣ��زĶ��x_����
	CreateTextureSP("�}����100", 100, Center, -1864, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");

//�����ߣ����`�ե��`�����x
	CreateTextureEX("�}����150", 10000, 0, 0, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 12000, 1000, null, true);
//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����150");
	Rotate("�}Suf", 0, @0, @0, @20, null,true);

//�����ߣ��زĶ��x_����饯���`
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d������K_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Rotate("�}�ݴ���*", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);
	Move("�}�ݴ���", 0, 177,-213, null, true);
	SetBlur("�}�ݴ���", true, 1, 300, 70, false);

	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3d������K_�T��_ͨ��3.png");
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݥХ���", 0, 5000, 5000, null, true);
	Move("�}�ݥХ���", 0, 77,-413, null, true);
	SetBlur("�}�ݥХ���", true, 1, 300, 50, false);

//�����ߣ��زĶ��x_���ե�����
	CreateTextureEXadd("�ϵ����a", 17500, center, middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�ϵ����b", 17500, center, middle, "cg/ef/ef044_��c.png");
	Zoom("�ϵ����a", 0, 500, 500, null, true);
	Zoom("�ϵ����b", 0, 200, 200, null, true);
	SetBlur("�ϵ����*", true, 1, 300, 100, false);

//	SetVertex("�ϵ����*", 500, 500);


	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@400,@0,null,false);

	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

//�����ߣ��زĶ��x_SE
	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M04");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE11","se���L_����_��ͻ�M05");
	CreateSE("SE20","se���L_����_�z_�ϵ�������01");
	CreateSE("SE21","se���L_����_�z_�ϵ�������01");

//�����ߣ������_ʼ
	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("�ץ�����", Start);

	Shake("�}�ݴ���", 2500, 1, 0, 0, 0, 1000, Axl2, false);
	Zoom("�}�ݴ���", 2500, 50, 50, null, false);
	Fade("�}�ݴ���", 300, 1000, null, false);
	Move("�}����100", 3000, @0, -1500, Axl1, false);

	FadeDelete("�ϱ���", 1000, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(1000);

	Rotate("�}�ݴ���", 1100, @0, @0, @-65, Axl2,false);
	BezierMove("�}�ݴ���", 1100, (177,-213){180,10}{160,10}(-1013,-348), Axl3, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

	Wait(300);
	Zoom("�}�ݴ���", 800, 10000, 10000, Axl3, false);
	Wait(500);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

//�����ߣ����`�ե��`������
	Fade("�}����150", 0, 1000, null, false);
	Fade("�}Suf", 100, 1000, null, false);
	Move("@�}����150", 500, @4048, @0, AxlDxl, false);

	Fade("�}�ݴ���", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);


	MusicStart("SEͻ�M",0,1000,0,1000,null,false);
	Wait(200);

	Rotate("�}����100", 0, @0, @180, @0, null,true);
	Move("�}����100", 0, @0, -1500, null, true);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@400,@0,null,false);


	MusicStart("SE01",0,1000,0,900,null,false);
	Move("�}����100", 3000, @0, -600, Dxl3, false);
	SetVolume("SE11", 1000, 1000, null);

//�����ߣ����`�ե��`�������K��
	Fade("�}����150", 100, 0, null, false);
	Fade("�}Suf", 100, 0, null, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	SetFrequency("SE11", 2000, 800, null);
	Shake("�}�ݥХ���", 1500, 0, 1, 0, 0, 1000, Dxl2, false);
	Rotate("�}�ݥХ���", 1500, @0, @0, @90, Dxl2,false);
	Zoom("�}�ݥХ���", 1000, 20, 20, Dxl3, false);
	BezierMove("�}�ݥХ���", 2500, (113,-1848){-1080,-450}{-1060,-410}(77,-313), Dxl3, false);
	BezierMove("�ϵ����*", 2500, (13,-2048){-980,-650}{-860,-610}(-123,-513), Dxl3, false);
	Fade("�}�ݥХ���", 100, 1000, null, true);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	SetVolume("SE11", 2500, 0, null);

	Wait(300);

	MusicStart("SE20",0,500,0,1200,null,false);
	Rotate("�ϵ����a", 500, @0, @0, @10000, null,false);
	Fade("�ϵ����a", 0, 500, null, true);
	Fade("�ϵ����a", 500, 0, null, false);

	Wait(500);

	MusicStart("SE21",0,300,0,1100,null,false);
	Rotate("�ϵ����b", 500, @0, @0, @10000, null,false);
	Fade("�ϵ����b", 0, 500, null, true);
	Fade("�ϵ����b", 500, 0, Axl2, false);

	Wait(500);
	Fade("�}ɫ100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);

	Wait(1000);


	Delete("�ץ�����");
	Delete("�ץ�����");
	Delete("�}����*");
	Delete("�ϵ����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");

}

..//������ָ��
//�Υե����롡"md05_007vs.nss"