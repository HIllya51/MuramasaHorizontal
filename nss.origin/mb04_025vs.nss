//<continuation number="560">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_025vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
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
	#bg003_�Ĥ�Ұ_03=true;
	#bg047_�������_�b_03=true;
	#bg014_�`�}���A��_03=true;
	#bg002_��a_03=true;
	#ev504_����ͻ�M=true;
	#ev948_����ͻ�M����=true;
	#bg201_�����ݳ������нֵ�_03=true;
	#ev917_���ږV���Ƅ�=true;
	#ev916_�����w����ڡ������a=true;
	#ev947_�����ؓĚ���=true;
	#ev915_劸���Ϥ�����������=true;
	#ev902_����늴Œi����`�륬��_c=true;
	#ev902_����늴Œi����`�륬��_e=true;
	#ev902_����늴Œi����`�륬��_d=true;
	#ev162_�����֣����ڛQ��=true;
	#ev138_���I������_d=true;
	#ev139_�y�򚢺�_b=true;
	#ev128_�����ι�_a=true;
	#ev163_��ö��Ĥ�����_a=true;
	#ev163_��ö��Ĥ�����_b=true;
	#ev159_һ��������_b=true;
	#ev163_��ö��Ĥ�����_c=true;
	#ev165_��K����_a=true;
	#ev165_��K����_b=true;
	#ev165_��K����_c=true;
	#ev993_һ�����åȥ���=true;
	#ev996_�������åȥ���=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	#msong02=true;
	#msong04=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_026.nss";

	//��ţĥ�`�볬�ٌ���
	PreSetRoll(0);
	TheEND(0);
}

scene mb04_025vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_024.nss"









//�����L�_ʼ
	PrintBG("�ϱ���", 30000);

//	SoundPlay("@msong04_full",0,1000,true);
//	CreateBGMEX("���`����","msong04_arrange",118617,185272);
	SoundPlay("@msong04_arrange",0,1000,true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_03.jpg");
	CreateTextureSP("�}����70", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	CreateColorEXadd("�}ɫ100", 1500, "#770000");
	CreateColorEXadd("�}ɫ200", 1500, "#000077");

	DrawTransition("�}ɫ100", 0, 500, 500, 500, null, "cg/data/beam_01_00_0.png", true);

	DrawTransition("�}ɫ200", 0, 500, 500, 500, null, "cg/data/beam_02_00_0.png", true);


	CreateSE("SE01","se���L_����_�ґ�02");
	MusicStart("SE01",3000,500,0,1000,null,true);


	Move("�}����100", 20000, @200, @0, null, false);
	Move("�}����70", 20000, @200, @0, null, false);
	FadeDelete("�ϱ���", 2000, true);


//	CreateMovieEX("������", 300, 0, 0, false, false, "dx/mv���ڣ֣Ӵ���.ngs");
//	SetAlias("������","������");
	CreateSE("SE11","se����_mv��_���ڣ֣Ӵ���");
	MusicStart("SE11",0,500,0,1000,null,false);

//	Fade("������", 1000, 800, null, false);


	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);

	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);

	Wait(300);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);

	Wait(100);

	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);


	Fade("������", 2000, 0, null, false);
	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);

	FadeDelete("�}����100", 3000, false);
	Wait(800);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);

	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);

	Wait(300);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);

	Wait(600);

	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);

	SetVolume("SE*", 3000, 0, null);


	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 500, true);

	Wait(300);

	Fade("�}ɫ200", 0, 1000, null, true);
	FadeDelete("�}ɫ200", 500, true);

	FadeDelete("�}����70", 1000, true);
	Delete("������");


//���ա�Ϧ��ҹ
//���֤Ĥ���Ϥ�������܉�E

//������
//���x��
	SetFwC("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/025vs0010b21">
����������롭������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��e�Τɤ���
//���@�Ӥ��\��ͯ��
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg047_�������_�b_03.jpg");

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(300);

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/025vs0020b26">
����㣬���ǡ�����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/025vs0030b28">
������Ϊʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��e��
//��ѩ܇�
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg014_�`�}���A��_03.jpg");

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb04/025vs0040a12">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����L�Ò����
//��������С��o�����Ϥϥ��ʥꥪ���ݳ������ٿ�����
//���ޤ��������_ʼ�����ߥ󥰤����k�����������I�T
//��װ�ץ��`����^orĩβ��





//�����ߣ��زĶ��x
	CreateColorEXadd("�ϱ���", 15000, "WHITE");
	Fade("�ϱ���", 100, 1000, null, true);

//�����ߣ��زĶ��x_����
	CreateTextureSP("�}����100", 100, Center, -1864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");

//�����ߣ����`�ե��`�����x
	CreateTextureEX("�}����150", 10000, 0, 0, "cg/bg/bg002_��a_03.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 12000, 2000, null, true);
//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����150");
	Rotate("�}Suf", 0, @0, @0, @20, null,true);

//�����ߣ��زĶ��x_����饯���`
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d������K_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Rotate("�}�ݴ���*", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);
	Move("�}�ݴ���", 0, 177,-213, null, true);
//	SetBlur("�}�ݴ���", true, 1, 300, 70, false);

	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3d������K_�T��_ͨ��3.png");
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݥХ���", 0, 5000, 5000, null, true);
	Move("�}�ݥХ���", 0, 77,-413, null, true);
//	SetBlur("�}�ݥХ���", true, 1, 300, 50, false);


//�����ߣ��زĶ��x_���ե�����
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
	Zoom("�}�ݴ���", 1300, 50, 50, Axl1, false);
	Fade("�}�ݴ���", 300, 1000, null, false);
	Move("�}����100", 3000, @0, -1500, Axl1, false);

	FadeDelete("�ϱ���", 500, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(500);

	Rotate("�}�ݴ���", 600, @0, @0, @-65, Axl2,false);
	BezierMove("�}�ݴ���", 600, (177,-213){180,10}{160,10}(-1013,-348), Axl3, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

	Wait(150);
	Zoom("�}�ݴ���", 400, 10000, 10000, Axl3, false);
	Wait(250);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(100);

//�����ߣ����`�ե��`������
	Fade("�}����150", 0, 1000, null, false);
	Fade("�}Suf", 100, 1000, null, false);
	Move("@�}����150", 500, @4048, @0, AxlDxl, false);

	Fade("�}�ݴ���", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//	Fade("�}ɫ100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);



	Delete("�ץ�����");
	Delete("�ץ�����");
	Delete("�}����*");
	Delete("�ϵ����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");
	Delete("�}Suf");


	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");


	OnSE("se���L_����_��ͻ�M03",1000);

//	SetBlur("�}����", true, 1, 500, 200, false);
	Zoom("�}����", 10000, 1200, 1200, Dxl1, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev504_����ͻ�M.jpg", false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

//������ͻ�M



	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0050a00">
��Ŷ����������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ߣ��زĶ��x
	CreateColorEXadd("�ϱ���", 15000, "WHITE");
	Fade("�ϱ���", 100, 1000, null, true);
	Delete("�}����");

//�����ߣ��زĶ��x_����
	CreateTextureSP("�}����100", 100, Center, -1864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);

//�����ߣ����`�ե��`�����x
	CreateTextureEX("�}����150", 10000, 0, 0, "cg/bg/bg002_��a_03.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 12000, 2000, null, true);
//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����150");
	Rotate("�}Suf", 0, @0, @0, @-20, null,true);

//�����ߣ��زĶ��x_����饯���`
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Rotate("�}�ݴ���*", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);
	Move("�}�ݴ���", 0, -677,-213, null, true);
//	SetBlur("�}�ݴ���", true, 1, 300, 70, false);


	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

//	CloudZoomSet(1000);
//	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-800,@0,null,false);

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
	Zoom("�}�ݴ���", 1300, 50, 50, null, false);
	Fade("�}�ݴ���", 300, 1000, null, false);
	Move("�}����100", 3000, @0, -1500, Axl1, false);

	FadeDelete("�ϱ���", 500, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(500);

	Rotate("�}�ݴ���", 600, @0, @0, @65, Axl2,false);
	BezierMove("�}�ݴ���", 600, (-677,-213){-480,10}{-460,10}(2013,-348), Axl3, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

	Wait(150);
	Zoom("�}�ݴ���", 400, 10000, 10000, Axl3, false);
	Wait(250);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(100);

//�����ߣ����`�ե��`������
	Fade("�}����150", 0, 1000, null, false);
	Fade("�}Suf", 100, 1000, null, false);
	Move("@�}����150", 500, @-4048, @0, AxlDxl, false);

	Fade("�}�ݴ���", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//	Fade("�}ɫ100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);



	Delete("�ץ�����");
	Delete("�ץ�����");
	Delete("�}����*");
	Delete("�ϵ����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");
	Delete("�}Suf");


//������ͻ�M
	OnSE("se���L_����_��ͻ�M03",1000);
	CreateTextureEX("�}����", 100, Center, Middle, "cg/ev/ev948_����ͻ�M����.jpg");
	SetBlur("�}����", true, 1, 500, 200, false);
	Zoom("�}����", 10000, 1200, 1200, Dxl1, false);
	Fade("�}����", 0, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev948_����ͻ�M����.jpg", false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", true);


	SetFwL("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0060a02">
��������������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ġ������`��
	CreateTextureEX("�}����500", 15000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Request("�}����500", Smoothing);
//	SetBlur("�}����500", true, 1, 500, 100, false);

	CreateColorEXadd("�}ɫ100", 35000, "WHITE");


	CreateSE("SE01","se���L_����_�z_���04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}����", 200, false);
	Zoom("�}����500", 3000, 1500, 1500, Dxl2, false);
	Fade("�}����500", 100, 1000, null, false);
	EffectZoomDXadd(18000, 1000, 100, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", true);

	Fade("�}ɫ100", 500, 1000, null, true);

	Delete("�}����500");

	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d����_�T��_���La2.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 800, 800, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

//	SetBlur("�}�ݴ���", true, 1, 300, 100, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 100, false);


	Move("�}�ݴ���", 0, @50, @0, null, true);
	Move("�}�ݥХ���", 0, @-300, @-60, null, true);


	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@-300,@0,null,false);


	Move("�}����100", 30000, @0, @-200, null, false);

	FadeDelete("�}ɫ100", 500, false);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_0", false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݥХ���*", 900, @-60, @0, Dxl2, false);
	Move("�}�ݴ���*", 1000, @160, @0, Dxl2, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);




	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������һ�ж���Ȼ�����ˡ�

���Ѿ�ȫ���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ���å���", 1005, "WHITE");
	DrawTransition("�}ɫ���å���", 0, 500, 500, 500, null, "cg/data/circle_03_00_0.png", false);


	Request("�ץ�����", Stop);
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�ץ�����");

	OnSE("se���L_����_�z_�ϵ�������01",800);

	OnSE("se���L_����_��ͻ�M08",1000);
	Fade("�}ɫ���å���", 300, 1000, null, false);

	Wait(150);

	Zoom("�}�ݴ���*", 300, 2000, 2000, Axl2, false);
	Move("�}�ݴ���*", 300, @560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @-260, @0, Axl2, false);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	Delete("�}��*");
	Delete("�}����100");
	Delete("�}ɫ���å���");
	CloudZoomDelete(0,true);

//��������
	CreateTextureSP("�}����", 100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	Request("�}����", Smoothing);
	Zoom("�}����", 0, 1100, 1100, null, true);
	SetBlur("�}����", true, 1, 500, 100, false);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

$��`�ץ�`�֥ʥå��� = "@�}����";
$��`�ץ�`�֥����� = 3000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������һζ��׷������ν�ġ���������塱��
���·���δ����ĺ��Ӱ㣬������ᶨ��

���ǳ���ֱ��
��������׷�󾿾������������ء�

��û�д�
��û���κεĴ�

�������˼�⡣
��
��û���Լ������׵ġ�

��һֱ�����׵ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0070a00">
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�������Śݼ���

	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	OnSE("se����_��x_��������01",1000);
	Zoom("�}����", 700, 5000, 5000, Axl3, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);

	Wait(200);

	Fade("�}ɫ100", 300, 1000, Axl2, true);


	CreateTextureSP("�}����", 100, Center, Middle, "cg/ev/ev948_����ͻ�M����.jpg");
	Request("�}����", Smoothing);
	Zoom("�}����", 0, 1100, 1100, null, true);
	SetBlur("�}����", true, 1, 500, 100, false);

	Delete("�}����");
	Delete("�ץ�����");

$��`�ץ�`�֥ʥå����� = "@�}����";
$��`�ץ�`�֥����ࣲ = 3000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	FadeDelete("�}ɫ100", 500, true);



//�����ڂ�


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������ƶ��������Ҫ��ֹ�Լ���
����ֹ�п��ܳ�Ϊ��һ�����Ǻŵ��Լ���

�����η���Ǻ���Ե�ɵ���
������������ˡ�

���Լ���ȷ����ͼ�ٽ�����֮��������ս�ҡ�
���Ӵ�����������˵���Լ����������ʸ��Ϊ��������
ս�һ��ֵ�ħ���̳��ˡ�

�������˼�⡣
��
��û���Լ������׵ġ�

��һֱ�����׵ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0080a02">
���ʡ�����ʬ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�V���Ƅ�");
	CreateSE("SE02","se���L_����_���׷���");
	MusicStart("SE01",0,1000,0,1000,null,false);
//�����ڥҩ`�ȥ��`��
	CreateTextureEX("�}�����ݳ���", 100, Center, Middle, "cg/ev/resize/ev917_���ږV���Ƅ�l.jpg");
	CreateTextureEXadd("�}������", 100, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	CreateTextureEX("�}���ڣ�", 100, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	SetBlur("�}�����ݳ���", true, 1, 500, 70, false);
//	SetBlur("�}������", true, 2, 500, 200, false);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Rotate("�}������", 0, @0, @0, @-30, null,true);

	DrawEffect("�}������", 50, "LowWave ", 0, 100, null);

	Delete("�}����������");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Fade("�}������", 200, 1000, null, false);
	Fade("�}�����ݳ���", 200, 1000, null, false);
	Move("�}�����ݳ���", 500, -1024, 0, Dxl2, true);

	Delete("�}����");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}������", 1000, false);
	Zoom("�}�����ݳ���", 800, 500, 500, Axl3, false);
	Move("�}�����ݳ���", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ev/ev917_���ږV���Ƅ�.jpg", false);
	Fade("�}���ڣ�", 200, 1000, null, true);
	Delete("�}����������");
	Delete("�}����");

	Wait(800);

	SetVolume("SE*", 2000, 0, null);


//��������˥�ͻ�M
	CreateTextureEX("�}����", 100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");

	CreateSE("SE05","se����_냇��_���Q01");
	MusicStart("SE05",0,1000,0,1000,null,true);

	Fade("�}����", 200, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev504_����ͻ�M.jpg", true);
	Delete("�}���ڣ�");
	Delete("�}������");
	Delete("�}�����ݳ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������һ���ı�Ը������
����Ϊ���������ǳ��ڶ��Ƿݳ�ߵ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڥҩ`�ȥ��`��ͻ�M
	CreateTextureEX("�}����", 100, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	Fade("�}����", 200, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev917_���ږV���Ƅ�.jpg", true);
	Delete("�}����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ն���������ֹ������
����Ϊ���������ǳ��ڶ��Ƿݳ��ص����ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//�����T�ӽ�
	CreateColorEX("�}ɫ100", 15000, "WHITE");
	Fade("�}ɫ100", 200, 1000, null, true);


	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�}����");


	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, -400, "cg/st/3d����_�T��_���Lb.png");
	Request("�}�ף�*", Smoothing);
//	SetBlur("�}�ף�/�}�ӣԣ�", true, 1, 300, 120, false);
	SetAlias("�}�ף�","�}�ף�");

	Move("�}�ף�/�}������100", 0, @312, @0, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @230, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureEX("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}�ף�/�}�ӣԣ�", 500, Center, -600, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}�ף�*", Smoothing);
//	SetBlur("�}�ף�/�}�ӣԣ�", true, 1, 300, 120, false);
	SetAlias("�}�ף�","�}�ף�");

	Move("�}�ף�/�}������100", 0, @-212, @144, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);

	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);

	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("�}�ף�/�}�ӣԣ�", 0, @-190, @-200, Dxl2, true);
	Fade("�}�ף�*", 300, 1000, null, false);
	Move("�}�ף�/�}�ӣԣ�", 0, @190, @0, null, true);

$��`�ץ�`�֥ʥå��� = "@�}�ף�/�}�ӣԣ�";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ף�/�}�ӣԣ�";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");


	Move("�}�ף�/�}������100", 60000, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}������100", 60000, @380, @0, null, false);
	FadeDelete("�}ɫ100", 300, false);
	Move("�}�ף�/�}�ӣԣ�", 300, @20, @0, Dxl2, false);
	Move("�}�ף�/�}�ӣԣ�", 300, @-20, @0, Dxl2, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @0, @0, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @0, @0, null, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0090a00">
����������


{	FwC("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0100a02">
���ȡ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//���x���
//�����ߣ���ͻ
	CreateTextureEX("�}����200", 4500, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateColorEXadd("�}ɫ100", 5000, "WHITE");
	CreateSE("SE01","se���L_����_�z_���04");

	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnSE("se���L_����_��ͻ�M08",1000);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @600, @0, Axl2, false);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("�}����200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 500, "cg/ef/ef040_�����nͻ.jpg", true);

	Fade("�}ɫ100", 100, 1000, null, true);

	Delete("�}��*");
	Delete("�}����200");

	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 900, 900, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);
	Move("�}�ݴ���", 0, @-100, @60, null, true);
	Move("�}�ݥХ���", 0, @230, @-60, null, true);
//	SetBlur("�}�ݴ���", true, 1, 300, 100, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 100, false);


	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@300,@0,null,false);

	FadeDelete("�}ɫ100", 500, false);

	Move("�}����100", 30000, @0, @-200, null, false);

	FadeDelete("�}ɫ100", 500, false);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_0", false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݥХ���*", 1000, @60, @0, Dxl2, false);
	Move("�}�ݴ���*", 1000, @-160, @0, Dxl2, true);
	Move("�}�ݥХ���*", 0, @0, @0, null, true);
	Move("�}�ݴ���*", 0, @0, @0, null, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������Ƕ�֪����
�����ǵ�Ŀ�ꡢ��׷��Ķ���������ͬ�ġ�

���ǻ�ΪʲôҪս���أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnSE("se���L_����_��ͻ�M08",1000);


	Zoom("�}�ݴ���*", 300, 2000, 2000, Axl2, false);
	Move("�}�ݴ���*", 300, @-560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @560, @0, Axl2, false);

//������
//��һ˲���쥤������
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("�}�ݥХ���");
	Delete("�}�ݴ���");
	CloudZoomDelete(0,true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}�ף�", 500, Center, -600, "cg/st/resize/3d�����˜�_�T��_���Lam.png");
	Request("�}�ף�", Smoothing);
	SetBlur("�}�ף�", true, 1, 300, 100, false);
	Move("�}�ף�", 0, @-750, @0, null, true);


$��`�ץ�`�֥ʥå����� = "@�}�ף�";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", SubRender);
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @90, null,true);
	Fade("�}������", 0, 100, null, true);


	Shake("�}����50", 200000, 0, 1, 0, 0, 1000, null, false);

	CreateEffect("���ե����ȣ�", 15000, 0, 0, 1024, 576, "Monochrome");
	Fade("���ե����ȣ�", 0, 0, null, true);
	OnSE("se����_�z_�l����01",1000);



	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", false);

	Move("�}����50", 1000, @100, @0, Dxl2, false);
	Move("�}�ף�", 1000, @1000, @0, Dxl2, true);

	Request("�ץ�����", Start);
	SetBlur("�}�ף�", false, 0, 300, 100, false);

	OnSE("se����_���å��ԥå�_����`��",1000);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("���ե����ȣ�", 1500, 0, null, false);

	Wait(500);

//	FadeF4("�}�ף�", 0, 1000, 100000, 0, 0, null, false);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0110a01">
�������½������ѽ���Σ��ֵ��
���������ټ������������Ļ�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������ļ���ʹ���������ͬ�к���
������ʧȥ�˸�֪�����������������ź���ʯͷ���
�޾�ƣ���ж������ҵ��񾭡�

��ʹ�ࡣ
��������
���������ܡ�һ�붼�޷������ܡ�

�������������˯��ȥ��
����Ϊ�Ѿ�����ս���ˡ�

��Ϊʲôһ��Ҫս���أ�
���˴˼������ǻ����Ͽɻ������ص�

������Ҫս����ȥ�����ɾ�����ʲô�أ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0120a00">
�������ټ��һ�¡���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0130a01">
��������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/025vs0140a00">
�������Ҽ��һ�¡�
���������ҵĽ��С���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0150a01">
�������š�
�������ס�����

//��������
<voice name="����" class="��������" src="voice/mb04/025vs0160a01">
�������ǲ�����ս�ɡ�
��ֻҪ������־���ܼ���ս������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ݼ���
	CreateColorEXadd("�}ɫ100", 15000, "#5500AA");
	OnSE("se���L_����_��ͻ�M07",1000);

	Delete("�ץ�����");
	Fade("�}ɫ100", 300, 1000, null, true);
	Move("�}�ף�", 200, @-1000, @0, Axl1, false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}�ף�");
	Delete("�}ɫ100");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}�ף�", 500, Center, -800, "cg/st/resize/3d����_�T��_���Lal_ex.png");
	Request("�}�ף�", Smoothing);
	Zoom("�}�ף�", 0, 500, 500, null, true);
	Move("�}�ף�", 0, @620, @200, null, true);

//	SetBlur("�}�ף�", true, 1, 300, 100, false);

$��`�ץ�`�֥ʥå����� = "@�}�ף�";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	CreateColorEXmul("���ե����ȣ�", 1500, "RED");

	Shake("�}����50", 200000, 0, 1, 0, 0, 1000, null, false);


	OnSE("se����_�z_�l����02",1000);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", false);

	Move("�}����50", 500, @-100, @0, Dxl2, false);
	Move("�}�ף�", 500, @-1000, @0, Dxl2, true);

	Request("�ץ�����", Start);

	OnSE("se����_���å��ԥå�_����`��",1000);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("���ե����ȣ�", 1500, 0, null, false);

	Wait(500);


//������
//��һ˲��åɥ�����

	SetFwL("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0170a02">
��������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0180b40">
�����ŵ�ǹ���ѿ��ˡ���
���������ȳ��˰ɣ���ֹס�˿ڳ�Ѫ�Ļ���Σ��
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������Ӧ�������ǹ�ˣ��˿������ѿ���������Ӧ��
˵�ѿ��ñ�ԭ����Ϊ�����ˡ�
��ѪҺÿ���Ӷ�����ʧ���Լ��ܸо�����������Ҳ����
֮���ϵ�˥�ˡ�

����ʹ��
��Ż�¸С�
������������������������ʵ�����Լ��ƽ���

���������ھ�����ս����
����Ϊ�Ѿ�����ս���ˡ�

��Ϊʲôһ��Ҫս���أ�
���˴˼������ǻ����Ͽɻ������صġ�

������Ҫս����ȥ�����ɾ�����ʲô�أ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0190a02">
����˵��ô�������Ļ�����
�����ڣ���


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0200b40">
������������


{	FwL("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0210a02">
������ô��Ѫ���������˵ģ�����ʱ��Ӧ��˵
�ٲ���Ҳ����С�����Ѫ�Ŷ԰�!?
�������ųƵ������ҵĽ��а�������


{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0220a02">
������С����һ�̾͹�ȥ�ˣ�
�����ڣ�������ս����չ�ֳ�������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0230b40">
��������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M02",1000);

//����ڰk��
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");

	Delete("�ץ���*");
	Delete("�}������");

	Move("�}�ף�", 300, @1000, @0, Axl2, false);
	Fade("�}ɫ100", 300, 1000, null, true);
	Fade("�}����100", 0, 1000, null, true);
	Delete("�}�ף�");

	OnSE("se���L_����_⟳h�k��01",1000);

	Fade("�}ɫ100", 300, 0, null, true);

	OnSE("se���L_����_⟳h�k��01",1000);

	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev916_�����w����ڡ������a.jpg", true);

//������
	CreateColorSPadd("�ϱ���", 18100, "WHITE");

	CreateTextureSP("�}����150", 17010, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����250", 17000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev948_����ͻ�M����.jpg");
	Request("�}����150", Smoothing);
	Request("�}����200", Smoothing);
	Request("�}����250", Smoothing);
	Request("�}����300", Smoothing);

	CreateSE("SE01","se���L_�Ɖ�_���k07");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Zoom("�}����150", 5000, 1500, 1500, Dxl1, false);
	FadeF4("�}����150", 500, 800, 5000, 0, 0, Dxl3, false);

	Delete("�}����100");
	Delete("�}�ף�");

	Fade("�}����200", 0, 1000, null, true);
	EffectZoomadd(18000, 5000, 4000, "cg/ef/ef026_���ñ���.jpg", false);

	FadeDelete("�ϱ���", 500, true);

	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 0, null, true);


	Fade("�}����150", 500, 0, null, false);
	Move("�}����250", 500, @-150, @0, Axl2, false);
	Zoom("�}����250", 500, 2000, 2000, Axl2, false);
	Fade("�}����250", 300, 1000, null, true);

	Move("�}����300", 500, @150, @0, Axl2, false);
	Zoom("�}����300", 500, 2000, 2000, Axl2, false);
	Fade("�}����300", 300, 1000, null, true);

	Fade("�}ɫ100", 200, 1000, null, true);

	Delete("�}����150");
	Delete("�}����200");
	Delete("�}����250");
	Delete("�}����300");

	Wait(500);

//�����������פ�ͻ���i����ͻ�M
//������ͻ�M
//��I�T



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��׷Ѱ����ͬ��Ŀ�ꡭ��
����ѡ��ĵ�·ȴ��Ȼ�෴��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������
	CreateTextureSP("�}����200", 3100, Center, Middle, "cg/st/resize/3d����_�Tͻ_���Lex.png");
//	SetBlur("�}����200", true, 1, 500, 100, false);

	Zoom("�}����200", 0, 900, 900, null, true);

	Move("�}����200", 0, -1022, -855, null, true);
	CreateTextureSP("�}����", 3000, -385, -300, "cg/bg/resize/bg002_��a_03l.jpg");

	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("�}����200", 3000, 1000, 1000, Dxl2, false);
	Move("�}����200", 3000, -1022, -795, Dxl2, false);
	Move("�}����", 3000, @0, @-60, Dxl2, false);

	FadeDelete("�}ɫ100", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������������а��ġ�
����Ϊս�ҵ�ԴȪ���������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}��", 4100, -313, -405, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}�ݷ���/�}����", 4200, -632, -749, "cg/st/resize/3d�����˜�_�Tͻ_���Lex.png");
	Zoom("�}�ݷ���/�}����", 0, 900, 900, null, true);
//	SetBlur("�}�ݷ���/�}����", true, 1, 500, 100, false);

	OnSE("se���L_����_��ͻ�M02",1000);
	Fade("�}�ݷ���/�}��", 500, 1000, null, false);
	Fade("�}�ݷ���/�}����", 500, 1000, null, false);
	Zoom("�}�ݷ���/�}����", 3000, 1000, 1000, Dxl2, false);
	Move("�}�ݷ���/�}����", 3000, -632, -810, Dxl2, false);
	Move("�}�ݷ���/�}��", 3000, -313, -439, Dxl2, false);


	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������������ġ�
����Ϊս����ԴȪ���������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�T����
//�����e�بD�D
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateTextureEX("�}����3200", 3200, -1024, Middle, "cg/ev/ev993_һ�����åȥ���.jpg");
	CreateTextureEX("�}�ݷ���/�}����4400", 4400, 1024, Middle, "cg/ev/ev996_�������åȥ���.jpg");
	Fade("�}����100", 0, 1000, null, true);

	OnSE("se���L_����_��ͻ�M03",1000);

	Fade("�}����3200", 300, 1000, null, false);
	Fade("�}�ݷ���/�}����4400", 300, 1000, null, false);
	Move("�}����3200", 300, -430, @0, Dxl2, false);
	Move("�}�ݷ���/�}����4400", 300, 319, @0, Dxl2, false);
	Zoom("�}����200", 300, 2000, 2000, Axl2, false);
	Zoom("�}�ݷ���/�}����", 300, 2000, 2000, Axl2, true);



	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0240a02">
��а�񡤵�ն!!��


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/025vs0250a00">
�����塤��ն!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}����3200", 300, 0, @0, Axl2, false);
	Move("�}�ݷ���/�}����4400", 300, 0, @0, Axl2, false);
	Fade("�}ɫ100", 300, 1000, null, true);

	Delete("�}����3200");
	Delete("�}����200*");
	Delete("�}��*");




/*
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




*/
















//�����ġ�����򤫤����Ϥ�һ�Ĥ�һ�ġ�
//�������׿�����һ˲������`��`������L�ݳ���


	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Rotate("�}�ݴ���*", 0, @0, @0, @20, null,true);
	Zoom("�}�ݴ���*", 0, 1500, 1500, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 100, false);
//	SetBlur("�}�ݥХ���", true, 2, 300, 70, false);

	Move("�}�ݥХ���", 0, @300, @-60, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	$�����ʥå����� = @�}�ݴ���;
	$�����ʥå����� = @�}�ݥХ���;
	CreateProcess("�ץ�����", 150, 0, 0, "RotateLoop");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@300,@0,null,false);


	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",1000,1000,0,1200,null,true);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);



	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�}ɫ100", 500, false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Move("�}����100", 3000, @0, @-300, Axl2, false);
	Shake("�}����100", 3000, 5, 2, 0, 0, 800, null, false);
	Move("�}�ݥХ���", 3000, -100, @0, Axl3, false);
	BezierMove("�}�ݴ���*", 3000, (-2500,-200){-2260,-300}{-2340,-400}(-2260,-320){-2350,-300}{-2400,-600}(-2200,-300){-2220,-200}{-2320,-310}(-2000,-250), null, false);
	Zoom("�}�ݥХ���", 3000, 300, 300, Axl3, false);
	Zoom("�}�ݴ���*", 3000, 600, 600, Axl2, 2700);


	Fade("�}�ݴ�����", 200, 0, null, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SetVolume("SE10", 0, 500, null);
	SetFrequency("SE10", 0, 200, null);
	Delete("�ץ�����");
	Delete("�ץ�����");
	CloudZoomDelete(0,true);
	Delete("�}����������");

	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Move("�}�ݴ���", 0, -2000,-250, null, true);
	Zoom("�}�ݴ���", 0, 600, 600, null, true);


	Rotate("$�����ʥå�����", 0, @0, @0, 5, AxlDxl,false);
	Rotate("$�����ʥå�����", 00, @0, @0, 0, AxlDxl,false);
	Fade("�}�����ݤ�", 300, 1000, null, false);
	Fade("�}ɫ200", 300, 300, null, false);
	Move("�}����100", 10000, @0, @-100, Dxl2, false);
	Rotate("$�����ʥå�����", 8000, @0, @0, 10, null,false);
	Rotate("$�����ʥå�����", 8000, @0, @0, -10, null,false);
	Zoom("�}�����ݤ�", 10000, 2000, 2000, Dxl2, false);
	Move("�}�ݥХ���", 10000, @-30, @0, Dxl2, false);
	Zoom("�}�ݥХ���", 10000, 350, 350, Dxl2, false);
	Move("�}�ݴ���", 10000, @30, @0, Dxl2, false);
	Zoom("�}�ݴ���", 10000, 550, 550, Dxl2, false);



	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��
���������ա�
�������������ı�������΢���ٵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}��", 19000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18800, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");


	OnSE("se���L_����_�z_���03",1000);
	OnSE("se���L_����_�z_�����w��02",1000);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	Zoom("�}��", 1000, 1200, 1200, Dxl2, false);
	Zoom("�}��2", 1000, 1100, 1100, Dxl2, false);

	Delete("�}��*");
	Delete("�}�����ݤ�");

//���Ф��`�����x���
//	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 600, 600, null, true);
	Zoom("�}�ݥХ���", 0, 100, 100, null, true);
	Move("�}�ݴ���", 0, -373, -295, null, true);
	Move("�}�ݥХ���", 0, @230, @-60, null, true);

//	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 70, false);


	CreateSE("SE01","se���L_����_���ϕN01");
	CloudZoomSet(1000);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 15000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	MusicStart("SE01",0,1000,0,1000,null,false);
	CloudZoomStartB(1000,1000,1000,500,800);
	CloudZoomVertex(500,@300,@0,null,false);

	EffectZoomDXadd(19100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	Move("�}����100", 30000, @0, @-200, null, false);

	Request("�ץ�����", Start);
	SetVolume("SE10", 500, 500, null);
	SetFrequency("SE10", 0, 1200, null);

	FadeDelete("�}��*", 500, false);
	FadeDelete("�}ɫ200", 500, false);
	Zoom("�}�ݴ���*", 1500, 1000, 1000, Dxl2, false);
	Zoom("�}�ݥХ���*", 1500, 50, 50, Dxl2, false);
	Move("�}�ݥХ���*", 1500, @60, @0, Dxl2, false);
	Move("�}�ݴ���*", 1500, @-160, @0, Dxl2, true);
	Move("�}�ݥХ���*", 0, @0, @0, null, true);
	Move("�}�ݴ���*", 0, @0, @0, null, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);





//���٤ӽ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������ս����
��������Ϊ�޵С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 300, null);

//������
	CreateColorEX("�}ɫ���", 18000, "BLACK");
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}��", 0, 2000, 2000, null, true);
	Zoom("�}��2", 0, 2000, 2000, null, true);
	Rotate("�}��", 0, @0, @0, @10, null,true);
	Rotate("�}��2", 0, @0, @0, @-110, null,true);



	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnSE("se���L_����_��ͻ�M08",1000);
	Zoom("�}�ݴ���*", 300, 2000, 2000, Axl2, false);
	Move("�}�ݴ���*", 300, @-560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @560, @0, Axl2, false);

	Fade("�}ɫ���", 300, 1000, Axl3, true);

//	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	Move("�}����100", 0, @0, -700, null, true);

	Delete("�}��*");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d����_�T��_���La2.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 800, 800, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

//	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 70, false);

	Move("�}�ݴ���", 0, @50, @0, null, true);
	Move("�}�ݥХ���", 0, @-300, @-60, null, true);


	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomVertex(500,@-600,@0,null,false);


	OnSE("se���L_����_�z_���04",1000);
	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);


	Wait(300);


	Move("�}����100", 30000, @0, @-200, null, false);

	FadeDelete("�}��*", 200, false);
	FadeDelete("�}ɫ���", 200, false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݥХ���*", 900, @-60, @0, Dxl2, false);
	Move("�}�ݴ���*", 1000, @160, @0, Dxl2, true);
	Move("�}�ݥХ���*", 0, @0, @0, null, true);
	Move("�}�ݴ���*", 0, @0, @0, null, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������ս����
��������Ϊͬ�顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateColorEX("�}ɫ���", 18000, "BLACK");
	Zoom("�}��", 0, 2000, 2000, null, true);
	Zoom("�}��2", 0, 2000, 2000, null, true);
	Rotate("�}��", 0, @0, @0, 100, null,true);
	Rotate("�}��2", 0, @0, @0, 110, null,true);


	CreateColorEXadd("�}ɫ���å���", 1005, "WHITE");
	DrawTransition("�}ɫ���å���", 0, 500, 500, 500, null, "cg/data/circle_03_00_0.png", false);


	Delete("�ץ�����");
	Delete("�ץ�����");

	OnSE("se���L_����_�z_�ϵ�������01",800);

	OnSE("se���L_����_��ͻ�M08",1000);
	Fade("�}ɫ���å���", 300, 1000, null, false);

	Wait(150);

	Zoom("�}�ݴ���*", 300, 2000, 2000, Axl2, false);
	Move("�}�ݴ���*", 300, @560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @-260, @0, Axl2, false);
	Fade("�}ɫ���", 300, 1000, null, true);

	OnSE("se���L_����_�z_���04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	SetVolume("SE10", 2000, 0, null);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);

	CloudZoomDelete(0,true);

	Delete("�ץ�����");
	Delete("�}����������");
	Delete("�}ɫ���å���");
	Delete("�}��*");
	Delete("�}����100");
	Delete("�}ɫ���");
	Delete("�}ɫ���");

	CreateTextureSP("�}EV", 17000, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	SetBlur("�}EV", true, 1, 500, 100, false);
	Zoom("�}EV", 0, 1500, 1500, null, true);

	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("�}EV", 500, 1000, 1000, Dxl2, false);
	FadeDelete("�}��*", 500, true);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������ս����
���ڽ�Ȼ�෴��������·�ϱ��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Zoom("�}��", 0, 2000, 2000, null, true);
	Zoom("�}��2", 0, 2000, 2000, null, true);
	Rotate("�}��", 0, @0, @0, -90, null,true);
	Rotate("�}��2", 0, @0, @0, 30, null,true);

	OnSE("se���L_����_�z_���04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	CreateTextureSP("�}EV", 17000, Center, Middle, "cg/ev/ev947_�����ؓĚ���.jpg");
	SetBlur("�}EV", true, 1, 500, 100, false);
	Zoom("�}EV", 0, 1500, 1500, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("�}EV", 500, 1000, 1000, Dxl2, false);
	FadeDelete("�}��*", 500, true);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������ս����
����ͬһ�յ�ΪĿ�ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Zoom("�}��", 0, 1800, 1800, null, true);
	Zoom("�}��2", 0, 1800, 1800, null, true);
	Rotate("�}��", 0, @0, @0, @-90, null,true);
	Rotate("�}��2", 0, @0, @0, @-90, null,true);

	OnSE("se���L_����_�z_���04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	CreateTextureSP("�}EV", 17000, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	SetBlur("�}EV", true, 2, 500, 100, false);
	Zoom("�}EV", 0, 1500, 1500, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("�}EV", 800, 1000, 1000, Dxl2, false);
	FadeDelete("�}��*", 800, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateColorEXadd("�}ɫ100", 20000, "WHITE");
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Zoom("�}��", 0, 2000, 2000, null, true);
	Zoom("�}��2", 0, 2000, 2000, null, true);
	Rotate("�}��", 0, @0, @0, @90, null,true);
	Rotate("�}��2", 0, @0, @0, @0, null,true);

	OnSE("se���L_����_�z_���04",1000);
	OnSE("se���L_�Ɖ�_�z04",1000);
	OnSE("se���L_����_�z_�����w��02",1000);

	EffectZoomDXadd(18100, 1000, 100, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	Fade("�}ɫ100", 1000, 1000, null, true);
	FadeDelete("�}��*", 0, false);


	Wait(1000);

	PrintBG("�ϱ���", 30000);
	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",1000,700,0,1200,null,true);
	CreateColorSP("�\Ļ��", 18000, "BLACK");

	FadeDelete("�ϱ���", 1000, true);

	Wait(500);

	OnSE("se���L_����_��ͻ�M03",1000);

	SetFrequency("SE10", 1000, 1100, null);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);
	Zoom("@�}����50", 0, 600, 600, null, true);
	CreateTextureEX("�}��", 2000, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
//	SetBlur("�}��", true, 1, 500, 150, false);
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);

//�����ߣ����å��ԥåȄ������x=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",false);
	CP_EnemyFade(0,10,188,300);
	CP_EHPChange(0,3,null,true);

	MyLife_Count(0,176);
	MyTr_Count(0,217);
	CP_PowerChange(0,189,null,false);
	CP_IHPChange(0,3,null,false);


	CP_AziChange(0,78,null,false);
	CP_AltChange(0,10,Dxl2,false);
	CP_HighChange(0,1100,null,false);
	CP_SpeedChange(0,540,null,false);

	BGMoveAuto("@�}����50",1);
//===================================================

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@0,@0,null,false);

$��`�ץ�`�֥ʥå��� = "@�}��";
$��`�ץ�`�֥����� = 20000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	CP_RollBarMove("@�}����50", 0, 0, null, true);
	Fade("@�}��", 0, 1000, null, true);


	FadeDelete("�\Ļ��", 500, false);

	CP_LockOnMove("@�}��",600,@0,@-20,Dxl2,true);
	CP_LockOnMove("@�}��",0,@0,@0,null,true);
	Request("�ץ�����", Start);


	SetFrequency("SE10", 1000, 1000, null);
	SetVolume("SE10", 2000, 300, null);


//��������˥��`
	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0260a01">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������˵�Ļ�����������Ҳ֪����
�����Ѿ����ܵ��ˡ�

�������𽥱�ѹ���ˡ�
������������ƽ�⿪ʼ�ı䣬�ҷ�����תΪ���ơ�

��������������û��˥�ˡ�
�������ǣ���һ���������Ϊһ�����������ά������
�ߵ��ս������

��������ȴ��ͬ��
����û��ͣ����ĳ����ߵ㡣��ǿ��һ��֮���Ǹ���ǿ��
����ǿ����֮�����Ǳȷ��Ÿ�Ϊǿ���Ĺ�����

��ÿһ���������һ����ǿ������ǿӲ����������
��
��Ҳ����������һ���������ֳ��ģ�Ӣ�۵�������

��Ӣ�����޷������ܵģ�<RUBY text="��������������������">һ����ȡ�����յ�ʤ��</RUBY>��
��Ϊ�����ջ��ܵ��ˣ�Ӣ�ۻ����ʵǽ��ݰ㣬�̿�ء�
һ�����ػ�������������ȡ��ʤ����

��������ȥ�ᱻ��ܡ�
��
����Ϊһ����ͨ�����࣬���������̾��ͬʱ��Ҳ��
�ò����ϡ�

��������ȥ�ᱻ��ܡ�
��
��Ȼ�����ڵ�����һ��ս���ߣ���Ϊ������״��һ����
�ˣ��ұ������ȳ�����һ�㡣

��Ҫ��ת���ڵ����ơ�
��������������������Ȼ���а취��

��������һֱ���ڿҿҵ��ʵǽ��ݣ���ֻҪվ������Զ
�޷��󼰵�ңԶ�߶ȼ��ɡ�
������һֱ�������Ǹ��������ĵط���ֻ��ľ�ȫ��
������һ˲�䡣ֻ���ǹ�����һɲ�ǡ�

��ʹ���Լ��ı�ɱ�������ӡ�
��
����עȫ��������������Űε�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 1000, 1, null);

	EfRecoIn1(18000,600);

	CreateTextureSPadd("�}������", 17101, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_e02.png");
	Fade("�}������", 0, 600, null, true);
	CreateTextureSP("�}����", 17100, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	Rotate("�}������", 0, @0, @180, @0, null,true);

	EfRecoIn2(300);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0270a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���������С�
��������һ�У����޷�ȡʤ�ġ�

������ӵ���ܹ���ɱ�ؼ����ؼ���
����ӵ�����նԷ�������������ڸı䷽��֮���ٴ���
�����������ܡ�

�����塤�췣���档

���ڵ������Լ�ʹ����ɱ��ʱ���������вþ�������
�����������ı�ɱ����������ִ�С�
���޷��������޷��ӱܣ�Ψ�и�Ը���ܵ��췣��

�����Ѿ���������һ���ˡ�
����һ��֮����û��������Ҳֻ����Ϊ��ʱ�ҵĹ�����
������ǿ��

���Լ���ʹ���ı�ɱ���ؽ�����Ϊͬ�ȵı�ɱ��������
�Լ����ϡ������ϸ��ֹ������о���
��û��˿����������

����ʹ����Űε���ͬʱ���ҵ�����Ҳ����ע����
�������������ʹ�õĻ���һζս����ȥҲ�����н����

������ô�죿

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);


	Delete("�}����*");
	SetVolume("SE10", 2000, 300, null);

	EfRecoOut2(600,true);

//�����ڽ�����
	Zoom("@�}����50", 4000, 700, 700, Dxl3, false);
	Zoom("@�}��", 4000, 200, 200, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������ʲô�취��
���ܹ������Ǹ�Ӣ�ۣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���Թ�ע������������һ��Ҳ�޷����ܵĶ��֡�
�������Ӧ�ԣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����
	Zoom("@�}����50", 4000, 800, 800, Dxl3, false);
	Zoom("@�}��", 4000, 300, 300, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
������ָ����ʱ�ᷢ���漣��
���漣�����ܳ�Ϊ�ҵ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����Բ�ͣ��˼���š�
��һ���ӵİٷ�֮һ���ٷ�֮һ��ǧ��֮һ����ɳ©�е�
ɳ����΢С�Ļҳ����ʱ�䣬��������������ʱ��Ϊ��λ
Ѹ�ٵ���ת�š�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����
	Zoom("@�}����50", 4000, 900, 900, Dxl3, false);
	Zoom("@�}��", 4000, 400, 400, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���Լ������Ƭ���в�׽��
�������Լ���ս����ÿһ�����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���崨�����������ġ�
�������Ҿ������˰�ʽ�������
����ħС̫�ɡ�����ɽ����λ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����
	Zoom("@�}����50", 4000, 1000, 1000, Dxl3, false);
	Zoom("@�}��", 4000, 500, 500, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��ɽ����ͷ�졭��
��һβ������

�����ֵ�ɽ������
��ѩ���һ�ء�

�������Լ��ҵ����ã�
���ն��⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�������ǵ�һս��
���Լ��������ǵ�һ����
�����������еĹ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����
	Zoom("@�}����50", 4000, 1100, 1100, Dxl3, false);
	Zoom("@�}��", 4000, 600, 600, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��<RUBY text="�ң����䡡�ϣ桡�ͣ����£�������">������ս����¼</RUBY>��
��������ؼ���ÿһҳ��ս����¼���ܶ���ʼ������
��顣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������������Ż��Ѫ�ȵ�ս�������У����뵽���ϰ�����
������ǧ���ĶԲߡ�
��ÿһ�������������������صķ����������Ӷ�������
���ֶΡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����
	OnSE("se���L_����_��ͻ�M02",1000);

	EffectZoomadd(100, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}����50", 8000, 1200, 1200, Dxl3, false);
	Zoom("@�}��", 8000, 700, 700, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������ȷ�Ĵ�ȴֻ��һ����
����ʱ�˵أ������ǰ�ĵ��ˣ�����ⳡս����������
��ʹ�õĽ�ֻ��һ���������Ķ������õ���Ʒ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڽ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���������ѡ��һ����
��ѡ����ȷ���ǰѽ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 0, null);


//�����ڽ�����
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	Fade("�}ɫ100", 0, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���ǣ�
��
��
����Ȼ��ֻ������ѽ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "BLACK");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	Fade("�}����50", 0, 500, null, true);

	CloudZoomDelete(0,true);

	Cockpit_AllFade0();

	OnSE("se���L_����_������02",1000);


	FadeDelete("�ϱ���", 500, true);


//�����ڽ�����������������
	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0280a00">
��<RUBY text="�ţ������">�Ų���װ</RUBY>����<RUBY text="�ţ�����">����</RUBY>!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��늴Œi���ʂ䡣���
	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("@�}��*");
	Delete("�}ɫ100");

	CreateTextureSP("�}EV100", 18099, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 18100, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE11","se����_늓�_���01");
	MusicStart("SE11",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(1000);

//������

	SetFwL("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0290a02">
��Ҫ���ˡ�����


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0300b40">
�����а�!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FadeDelete("�}E*", 500, true);

	Shake_LoopDelete();

	SetVolume("SE11", 2000, 0, null);

//����x�k��
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	CP_LockOnMove("@�}��",0,@0,@-10,null,true);

	SetBlur("�}��", true, 3, 800, 200, false);
	CreateTextureEX("�}�ꣲ", 1600, center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�ꣲ", Smoothing);
	Zoom("�}�ꣲ", 0, 200, 200, null, true);
	Move("�}�ꣲ", 0, @0, @-10, null, true);
	SetBlur("�}�ꣲ", true, 3, 800, 200, false);
	CreateTextureEXadd("�}����100", 1500, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
	Zoom("�}����100", 0, 1200, 1200, null, true);
	Move("�}����100", 0, @0, @50, null, true);

	CreateColorEXadd("�tɏ", 1600, "#FFFFFF");

	FadeF4("�}��", 500, 600, 200000, 0, 0, null, false);
	FadeF4("�}�ꣲ", 500, 300, 100000, 0, 0, null, false);

	Fade("�}�ݷ���*", 500, 0, null, false);
	Fade("����", 500, 0, null, true);
	Delete("�}�ݷ���*");
	Delete("����");

	Wait(1000);

	CreateSE("SE21","se����_��x_�k��04");
	CreateSE("SE10","se����_��x_���ڜʂ�_L");
	MusicStart("SE21",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,500,0,1000,null,true);

	Move("�}����100", 100000, @0, @50, Dxl2, false);
	Zoom("�}����100", 100000, 3000, 3000, Dxl2, false);
	Fade("�tɏ", 500, 500, null, false);
	Fade("�}����100", 1000, 500, null, true);

	CreateColorEXmul("�tɏ���`��", 2500, "#000000");
	DrawTransition("�tɏ���`��", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);


//	CreateProcess("�ץ�����", 12000, 0, 0, "Lastfire");
//	Request("�ץ�����",Start);


	Fade("�tɏ���`��", 1000, 500, null, true);
//������
	SetFwR("cg/fw/fw����֩��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0310a01">
������������������!?��


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/025vs0320a00">
��ûʲô�ò��õġ���
������֮�����������Ҫ�ﵽ�ȵ��˸��ߵ�
�߶ȣ�ֻ������취����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����Ϊ�µȵĲ��ԡ�
����Ϊ�޴��Ĳ��ԡ�
��
��������ʱ�̣���ѡ�������������

���κ���ʽ���޷�սʤ��
���κβ��Զ��޷���Ч��

��һ�������壬�����������Ķ���������

������ȼ�յ�̫����
���κ������������ֶΣ�����������֮ǰ�ͻᱻȼ�մ�
����ֻ����ȡ������

���ܹ�����̫���ķ���ֻ��һ����
���Ǿ����Ա����Ϊ���ص�����ֱ��ײ����

��һ���в��������壬
�������в��Ƶ����塣
��
����ô��ѵİ취����ͬʱ������һͬ���顣

������Ψһ�İ취��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0330a01">
����������!!
�����ɿ��١�����ִ�С����޷��֡���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);


//����K���
	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}��*");
	Delete("�tɏ*");

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ��k/*");

	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("������ɥ��k");

	Delete("�}����*");
	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureSPadd("�}����������", 17500, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur2");
	SetAlias("�ץ�����","�ץ�����");


	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	RailgunFlash();
	Shake_Loop("@�}EV200","supershake01");
	Request("�ץ�����", Start);


	CreateSE("SE01","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE01",300,700,0,1000,null,true);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
��ֻҪն����һ������
��������κ����ܶ�����ú������塣

��һ�й��㣬һ�л��ޡ�
��
��Ȼ�󣬴����Ǽ��¾����̫��������ɱ��κ��˶���
���ġ������һ��!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0340a00">
����Ұ������ս�񷨡�Ѹ�ס�֮���ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ʤ��֤����
	SetFwR("cg/fw/fw����_���L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0350a00">
����Űε���������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��늴Œi�����k���
//�����Щ`��
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateColorEXadd("�}ɫ�Ϸ�", 20000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE03","se����_늓�_���01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ�Ϸ�", 1000, 1000, null, true);

	Request("�ץ�����", Stop);

	Delete("�}EV*");
	Delete("�ץ�����");
	Delete("�}����������");
	Delete("�}����200");
	Delete("�}����300");
	Shake_LoopDelete();

	MovieSESet(19000,"mv늴Œi��_��","se����_mv��_늴Œi��_��");

	Fade("�}ɫ�Ϸ�", 1000, 0, null, false);
	Fade("�}ɫ100", 500, 1000, Axl3, false);
	MovieSEStart(100);
	Delete("�}ɫ�Ϸ�");
//	CreateTextureSP("�}EF100", 200, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
//	Request("�}EF100", Smoothing);
//	Zoom("�}EF100", 0, 2000, 2000, null, true);
//	Rotate("�}EF100", 0, @0, @0, @-90, null,true);
//	Move("�}EF100", 0, @0, @-500, null, true);
//	Move("�}EF100", 400, @0, @1000, Axl2, false);

	SetVolume("SE*", 200, 0, null);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev162_�����֣����ڛQ��.jpg");
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/ev/ev162_�����֣����ڛQ��.jpg");
	Zoom("�}����200", 0, 2000, 2000, null, true);

	CreateSEEX("SE10","se���L_����_�z_���05_L");
	MusicStart("SE10",0,1000,0,1000,null,true);
	OnSE("se���L_����_�z_�����w��02",1000);

	Shake_Loop("@�}����200","shake02");
	Fade("�}����200", 0, 300, null, true);
	Zoom("�}����200", 2000, 1020, 1020, Dxl2, false);
	FadeDelete("�}ɫ100", 2000, true);

	Wait(1000);

//�����ڡ�̫�����褷���ܤ�ֹ���
//�������`���Τ��᤮�Ϥ���
	SetFwR("cg/fw/fwһ��_��ʹ.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0360a02">
������������������������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0370b40">
��������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
����һ������
��
�����ڿ�������!!

�����Ƚ����������ͷ��ֻ��һ���ʱ��
������װ���˶��Ƶ�̫����������һ����

��������Ӣ�µ�������ȫ��Խ���������ĳ���
������������ε���������ٰ�Ѹ�ٵ�һ�����������
֧��ס�Լ��������أ�

�����徹�����ǿ����
��
��
��Ȼ����������ˣ�

����ҲҪ������նɱ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѻ���z��
	OnSE("se����_늓�_���02",1000);
	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev915_劸���Ϥ�����������.jpg", true);
//	Zoom("�}����100", 500, 1500, 1500, Dxl2, false);
//	Zoom("�}����200", 500, 1500, 1500, Dxl2, true);


	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0380a02">
��������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
��̫�������صģ�����ӵ�е�һ�С�
���Լ�������������һ�С�

��������
��������
���Լ����������е����ǡ�

��������
�����䡣
��˼�

��һ�С���
��һ�У�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå�
//��ɽ�\���I����
//���r�Ċ���
//���Bĸ����
//����
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	Fade("�}ɫ100", 1000, 1000, null, true);

	Shake_LoopDelete();
	RG_FlashDelete();

//�����ߣ���Τ���ɫ�������Ƥ����ޤ���
	SetVolume("@msong04_full", 2500, 0, null);
	SetVolume("@msong04_arrange", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);

	Delete("�}����100");
	Delete("�}����200");


	CreateTextureEX("�}����400", 17500, Center, Middle, "cg/ev/ev138_���I������_d.jpg");
	CreateTextureEX("�}����500", 17500, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03a.jpg");
	StL(17500, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StR(17500, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");

	CreateTextureEX("�}����600", 17500, Center, Middle, "cg/ev/ev139_�y�򚢺�_b.jpg");
	CreateTextureEX("�}����700", 17500, Center, Middle, "cg/ev/ev128_�����ι�_a03.jpg");

	Fade("�}����400", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(150);
	Fade("�}ɫ100", 200, 1000, null, true);
	Fade("�}����500", 0, 1000, null, true);
	FadeStL(0,true);
	FadeStR(0,true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(150);
	Fade("�}ɫ100", 200, 1000, null, true);
	DeleteStA(0,true);

	Fade("�}����600", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(150);
	Fade("�}ɫ100", 200, 1000, null, true);
	Fade("�}����700", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(150);

	Fade("�}ɫ100", 200, 1000, null, true);
	Delete("�}����400");
	Delete("�}����500");
	Delete("�}����600");
	Delete("�}����700");

	Wait(500);

	SetFwR("cg/fw/fw����_ŭ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0390a00">
��Ŷ����������������������������������!!��


//���ܥ����δ����˻ؾ��������Ф��褦�ʣӣ�
{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0400a01">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��Ѻ���z��Ѻ���z��
//�����ѩ`�󡣿k��һ�W��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev947_�����ؓĚ���.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 1100, 1100, null, true);
	Shake("�}����100", 1000, 0, 20, 0, 0, 500, null, false);

	OnSE("se����_늓�_���01",1000);


	EffectZoom(10000, 1000, 500, "cg/ev/ev947_�����ؓĚ���.jpg", false);
	Fade("�}����100", 100, 1000, null, true);
	Wait(400);
	FadeDelete("�}����100", 500, true);


	SetFwC("cg/fw/fwһ��_����b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0410a02">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/025vs0420b40">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤä���
//�����Z�������`��
//���£ǣͥե��`�ɥ�����
//����������
	SetVolume("SE*", 2000, 0, null);
	CreateTextureSP("�}EF100", 200, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
	Request("�}EF100", Smoothing);
	Zoom("�}EF100", 0, 20000, 2000, null, true);
	Rotate("�}EF100", 0, @0, @0, @-90, null,true);

	Move("�}EF100", 0, @0, @-2500, null, true);

	OnSE("se����_늓�_���02",1000);

	Move("�}EF100", 400, @0, @1000, Axl2, false);
	Fade("�}ɫ100", 100, 0, null, true);
	Wait(200);

	Fade("�}ɫ100", 100, 1000, null, true);

	CreateSE("SE01","se���L_�Ɖ�_�z05");
	OnSE("se���L_����_�z_�����w��02",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ100", 18000, "WHITE");

//������Ƥ椯һ������ö��ģ�
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev163_��ö��Ĥ�����_a.jpg");
	Request("�}����100", Smoothing);
	Move("�}����100", 0, -120, -45, null, true);
	Zoom("�}����100", 0, 1500, 1500, null, true);
//	SetBlur("�}����100", true, 1, 500, 500, false);

	CreateTextureEX("�}����200", 100, Center, Middle, "cg/ev/ev163_��ö��Ĥ�����_b.jpg");
	CreateTextureEX("�}����300", 100, Center, Middle, "cg/ev/ev159_һ��������_b.jpg");
	CreateTextureEX("�}����400", 100, Center, Middle, "cg/ev/ev163_��ö��Ĥ�����_c.jpg");

	Delete("�ϱ���");

	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Rotate("���ӻ�", 0, @0, @0, @20, null,true);
	Zoom("���ӻ�", 0, 6000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-100, null, true);

	Wait(500);
	Move("�}����100", 5000, 0, 0, null, false);
	Zoom("�}����100", 5000, 1000, 1000, null, false);
	Fade("�}ɫ100", 2500, 0, null, true);
	Wait(1500);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("���ӻ�", 0, 0, null, true);
	Fade("�}����200", 0, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Wait(1500);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����300", 0, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Wait(1500);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����400", 0, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Wait(1500);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("���ӻ�", 0, 1000, null, true);
	Delete("�}����200");
	Delete("�}����300");
	Delete("�}����400");
	Zoom("�}����100", 0, 1100, 1100, null, true);
	Zoom("�}����100", 20000, 1000, 1000, null, false);
	Fade("�}ɫ100", 2000, 0, null, true);

	Wait(2000);

//��һ������åף����֣�
//���ۥ��å�
//���ե�å���Хå������ף�һ����
//���ۥ��å�

//��Ҋ�¤�����
//����������
	SetFwR("cg/fw/fw����_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0430a00">
�����������ˡ����𡭡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��������ս������
��ȫ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	SetVolume("SE*", 4000, 0, null);
	SetVolume("@mbgm*", 4000, 0, null);
	Wait(2000);
	ClearFadeAll(2000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "BLACK");
	Delete("�ϱ���");

	Wait(1000);

/*
	SetFont("@����", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"��");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Rotate("voice01", 0, @0, @0, @0, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @-12, @0, null, false);

	WaitKey(3000);

	Delete("voice01");
*/
	CreateTextureEX("�}��������", 1600, Center, 230, "cg/sys/Telop/tp_Ӣ�۾�����03.png");
	Fade("�}��������", 300, 1000, null, true);
	WaitKey(2000);
	FadeDelete("�}��������", 300, true);

	FadeDelete("�}ɫ100", 300, true);

//�����ߣ���ǥƥ�å��ݳ�
//���ե��`�ɥ�����
//���ƥ�åף���
//��������ˡ�С�����ե���Ȥǡ�ͨ���ƥ����ȥ�٥룿
//���ե��`�ɥ���

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0440a00">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
//���ƥ�åף����x�ϝ����ƥϥʥ��Ҳ
//���ƥ�åף����಻���δ�䥿��ɥ�
//���������С�ե����
//���ե��`�ɥ���
	CreateColorEX("�}ɫ100", 1500, "BLACK");

	Fade("�}ɫ100", 500, 1000, null, true);

/*
	SetFont("@����", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"���x�ϝ����ƥϥʥ��Ҳ");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @2, @0, null, false);

	WaitKey(3000);

	SetFont("@����", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice02",30411,Center,Middle,auto,auto,"���಻���δ�䥿��ɥ�");
	Rotate("voice02", 0, @0, @0, @90, null,true);
	Request("voice02",NoLog);
	Move("voice02", 0, @-25, @0, null, false);


	WaitKey(3000);
	Delete("voice0*");
*/

	CreateColorSP("�}ɫ�����L", 1700, "BLACK");
	Move("�}ɫ�����L", 0, -512, @0, null, true);

	CreateTextureEX("�}��������", 1600, Center, 40, "cg/sys/Telop/tp_Ӣ�۾�����04.png");
	Fade("�}��������", 300, 1000, null, true);
	WaitKey(4000);
	FadeDelete("�}ɫ�����L", 300, true);
	WaitKey(4000);
	FadeDelete("�}��������", 300, true);

	CreateSE("SE11","se����_늓�_���01");
	MusicStart("SE11",3000,1000,0,1000,null,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/resize/ev165_��K����_al.jpg");

	Move("�}����100", 5000, @0, @-200, null, false);

	FadeDelete("�}ɫ100", 1500, true);

	Wait(1000);

//���\�������Τβ����׽��
//���o܉�����l��Ѳ��

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0450a01">
��ʲ����ʲô������
�����ǡ���!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
�����ǡ���
��
����������!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƥ�åף������ߙC�ɡ���¥�һ��
//����С�ե���ȡ�����˶��ФǱ�ʾ����


//���\���������ɤЩ`�ä���ؕN��




//���ƥ�åף���������
//������ե���ȡ����֤��Ķ��С���ʾ��һ�֤���

//���ƥ�åף���K���xF
//������ե���ȡ����֤������С���ʾ��һ�֤���

//�����Щ`�󡣥��å����ݳ����Ĥ�
//���ţ֣���K���ڡ��Х����

	SetVolume("SE*", 5000, 0, null);

	CreateColorEX("�}ɫ100", 1400, "BLACK");
	Fade("�}ɫ100", 500, 1000, null, true);

/*
	SetFont("@����", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"�����ߙC��");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @2, @0, null, false);

	WaitKey(3000);

	SetFont("@����", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice02",30411,Center,Middle,auto,auto,"��¥�һ��");
	Rotate("voice02", 0, @0, @0, @90, null,true);
	Request("voice02",NoLog);
	Move("voice02", 0, @-25, @0, null, false);


	WaitKey(3000);
	Delete("voice0*");
*/

	CreateColorSP("�}ɫ�����L", 1700, "BLACK");
	Move("�}ɫ�����L", 0, -512, @0, null, true);

	CreateTextureEX("�}��������", 1600, Center, 143, "cg/sys/Telop/tp_Ӣ�۾�����05.png");
	Fade("�}��������", 300, 1000, null, true);
	WaitKey(2500);
	FadeDelete("�}ɫ�����L", 300, true);
	WaitKey(2500);
	FadeDelete("�}��������", 300, true);

	SoundPlay("@mbgm10",0,1000,true);
	WaitKey(2000);


	CreateSE("SE02","se���L_����_�z������01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��װ", 1500, Center, Middle, "cg/sys/Telop/tp_������K01-a.png");
	SetBlur("�}��װ", true, 1, 500, 100, false);
	Shake("�}��װ", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}��װ", 50, 1100, 1100, null, true);
	Zoom("�}��װ", 200, 1000, 1000, null, false);

	WaitKey(200);

	CreateSE("SE02b","se���L_����_�z������01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ּ�", 1500, Center, Middle, "cg/sys/Telop/tp_������K01-b.png");
	SetBlur("�}�ּ�", true, 1, 500, 100, false);
	Shake("�}�ּ�", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}�ּ�", 50, 1100, 1100, null, true);
	Zoom("�}�ּ�", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se���L_����_�z������01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ִ�", 1500, Center, Middle, "cg/sys/Telop/tp_������K01-c.png");
	SetBlur("�}�ִ�", true, 1, 500, 100, false);
	Shake("�}�ִ�", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}�ִ�", 50, 1100, 1100, null, true);
	Zoom("�}�ִ�", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateSE("SE02d","se���L_����_�z������01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("�}���x", 1500, Center, Middle, "cg/sys/Telop/tp_������K01-d.png");
	SetBlur("�}���x", true, 1, 500, 100, false);
	Shake("�}���x", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}���x", 50, 1100, 1100, null, true);
	Zoom("�}���x", 200, 1000, 1000, null, false);

	WaitKey(1000);

	CreateColorEX("�}ɫ�L��", 1500, "BLACK");
	Fade("�}ɫ�L��", 0, 1000, null, true);

	CreateSE("SE02","se���L_����_�z������01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��װ", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-a.png");
	SetBlur("�}��װ", true, 1, 500, 100, false);
	Shake("�}��װ", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}��װ", 50, 1100, 1100, null, true);
	Zoom("�}��װ", 200, 1000, 1000, null, false);

	WaitKey(200);

	CreateSE("SE02b","se���L_����_�z������01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ּ�", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-b.png");
	SetBlur("�}�ּ�", true, 1, 500, 100, false);
	Shake("�}�ּ�", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}�ּ�", 50, 1100, 1100, null, true);
	Zoom("�}�ּ�", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se���L_����_�z������01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ִ�", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-c.png");
	SetBlur("�}�ִ�", true, 1, 500, 100, false);
	Shake("�}�ִ�", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}�ִ�", 50, 1100, 1100, null, true);
	Zoom("�}�ִ�", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateSE("SE02d","se���L_����_�z������01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("�}���x", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-d.png");
	SetBlur("�}���x", true, 1, 500, 100, false);
	Shake("�}���x", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}���x", 50, 1100, 1100, null, true);
	Zoom("�}���x", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se���L_����_�z������01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ִ�", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-e.png");
	SetBlur("�}�ִ�", true, 1, 500, 100, false);
	Shake("�}�ִ�", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("�}�ִ�", 50, 1100, 1100, null, true);
	Zoom("�}�ִ�", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateColorEXadd("�}ɫ���`��", 1500, "WHITE");

	CreateSE("SE02d","se����_냇��_�z�ǈ���02");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�������x", 1500, Center, Middle, "cg/sys/Telop/tp_������K02-f.png");
	SetBlur("�}�������x", true, 1, 500, 100, false);
	Shake("�}�������x", 500, 5, 3, 0, 0, 1000, Dxl1, false);
	Fade("�}ɫ���`��", 50, 500, null, false);
	Zoom("�}�������x", 50, 1080, 1080, null, true);
	Zoom("�}�������x", 1000, 1000, 1000, null, false);
	FadeDelete("�}ɫ���`��", 1000, true);

	Wait(300);


	Delete("�}��*");
	Delete("�}ɫ�L��");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev165_��K����_a.jpg");

	FadeDelete("�}ɫ100", 2000, true);
	Wait(1000);

	FadeDelete("�}�������x", 3000, false);

	Wait(2500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�������ǡ�
��
���Ѿ���
���Ѿ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0460a00">
������һ��������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0470a01">
���������Ѿ��������������ˡ�
�����ǽ��С�������ߡ�����


//��������
<voice name="����" class="��������" src="voice/mb04/025vs0480a01">
����ֻ�ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
�������㡭��
������˵أ�

��<RUBY text="������������������">����˵ؿ���ʤ����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ݳ�
//�����¡�һ��̨�~�ˤω�ʥ��ե����Ȥ�

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0490a02">
��������û�н���������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0500a02">
����ô���ܽ�������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0510a02">
�����彫����ȡʤ������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0520a02">
��ֻҪ�����޷�ȡʤ����{WaitKey(3000);}<BR>�������а����޷�����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���\�ө`��һ�W
//���������ؤ�؞ͨ�������`��


	CreateSE("SE01","se���L_����_�z��������");

	OnSE("se���L_����_�\�ө`��01",1000);
	CreateColorSP("�\Ļ��", 1500, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);



//	CreateTextureEX("�}EF", 100, Center, Middle, "cg/ef/ef041_�त����a.jpg");
//	Zoom("�}EF", 0, 1000, 1050, null, false);

//	Shake("�}EF", 500, 0, 5, 0, 0, 500, null, false);
//	Zoom("�}EF", 500, 2000, 1200, Dxl2, false);
//	Fade("�}EF", 200, 1000, null, true);
	CreateTextureSP("�}����50", 50, Center, -200, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	Delete("�}����100");

	MusicStart("SE01",0,1000,0,1000,null,false);

//	Wait(300);
//	FadeDelete("�}EF", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/mb04/025vs0530a00">
������!!��


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/025vs0540a01">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�Ɖ�_�z03",1000);
	Move("�}����50", 60000, @0, @-600, null, false);
	DrawDelete("�\Ļ��", 500, 100, "circle_01_00_1", true);

	Wait(1000);

//�����򤱤˵��졢����롭��
//���g��ȡ�ꡣ


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
������ԭ����������

���������ˣ�һ����

������֮���ս������
�����Ѳ������������ĶԾ���

�����������ġ�
�����ڱ���ġ�
����ϸ���ŵء�

���Ա˴˴��ڵĳ������١�

���������������ɱ֮��
�����գ���һ�������ܹ�����<RUBY text="��������">һ˿��Ƭ</RUBY>�ء���

��Ψ����������������
���������໥�����ķ�ʽ�������ס�

��ԭ����������
��ԭ������������һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\�ө`�����������Ф��Ф�����
	CreateSE("SE01","se���L_����_�z��������");
	OnSE("se���L_����_�\�ө`��01",1000);
	CreateColorSP("�\Ļ��", 1500, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(300);

//	FadeDelete("�}EF", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
��������ô��
����Ҳ����ֻ�Ӧ�㵽���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W�⡣�\�ө`���ȫ���Ф�B��
//�����𤹤����
//���ţֲ�֣���K���ڤˌ��Ť������
	CreateColorSPadd("�}ɫ100", 15000, "WHITE");
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/ev/ev165_��K����_b.jpg");
	Request("�}����200", Smoothing);
	Delete("�\Ļ��");

	OnSE("se���L_����_�z_���03",1000);
	Wait(1000);
	OnSE("se���L_�n��_�nͻ01",1000);


	FadeDelete("�}ɫ100", 1500, true);



	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/025vs0550a02">
����������!!��


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/025vs0560a00">
���������ڡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
�����������껹δȼ����
���ҵ����Ҳ���д档

��΢�����������ȱ�����࣬��������Ѿ���ʼ�˵���ʱ��
������Ŭ���ؽ�������������

���ҽ����������µ�һ������Ӧ�����־��
����Ҫ���Լ�����־�᳹���ס�

�������໥���ʡ�

�����塣
��а��
�����������ߵĺ��塢���������ࡣ

�������������ʰɡ�

��ֱ�����
���ն����������һ����������ȼ�մ���Ϊֹ��

����һ���⣬
����ȥҲһ���кܶ��ˡ������ɮ�¡���ʿ���Ѹ���
ѧ�ߡ�ʫ�ˡ����ˡ�ũ����ؤ��������ϧƴ���Լ���
������

��ϣ����׷Ѱ��𰸰ɡ�
����ֱ�أ�ǰ�����Լ���ѡ���������·�ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 5000, 0, null);

	CreateColorEX("�}ɫ100", 15000, "WHITE");
	CreateTextureEX("�}����300", 300, Center, Middle, "cg/ev/ev165_��K����_c.jpg");
	CreateSE("SE01","se����_�z_���ͥ륮�`���01");
	CreateSE("SE02","se���L_����_�z_�ϵ�������01");
	CreateSE("SE03","se���L_����_���ͥ륮�`�]���Ϥ�01_L");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����200", 2000, 1050, 1050, Axl1, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 3000, 100, "cg/ev/ev165_��K����_c.jpg", false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(2000);
	Fade("�}ɫ100", 3000, 1000, null, true);

	Wait(2000);

	SoundPlay("@msong02_full",0,1000,true);
	ClearWaitAll(5000, 4000);



//���ţĥƩ`���_ʼ
//����֣�����������
//��ӭ���Ĥ��\�ө`��
//���Ф�B��
//��������˥��`���������K����
//��ͻ��
//���ե��`�ɥ�����
//���ţĥ�`��

}

..//������ָ��
//�Υե����롡"mb04_026.nss"

