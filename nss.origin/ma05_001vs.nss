//<continuation number="380">

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

scene ma05_001vs.nss_MAIN
{

	$TITLE_NOW = "��";

//�룺���å��ԥå��ãӣ��
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
	#ev126_�཭�ˤ�ޤ�Ц��_a = true;
	#ev126_�཭�ˤ�ޤ�Ц��_b = true;
	#ev126_�཭�ˤ�ޤ�Ц��_c = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	CP_AllDelete();

	#voice_on_�཭=true;

	#av_�཭ؑ��=true;

/*
	if($ħ������� == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($һ������ == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($����֦���� == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else{
		$Others_Flag = 2;
		$OthersFav_After = 2;
	}
*/


	$PreGameName = $GameName;
	$GameName = "ma05_002.nss";

}

scene ma05_001vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_023.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��Ϧ��
//�����L��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se���L_����_���Б��L��_L");
	MusicStart("SE01",2000,1000,0,800,null,true);

	WaitKey(2000);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ͨս�����������֮�����һ��һ����ʱ��������
�ڿ��л������޵���״��
�����������ս������˫������ԭ��

�����е�����Խ�ǻ��࿹�⡪���ٿ��ߵ�����Խ���ƾ�
���У�������˫�ֱ�Խ��������
��Ȼ���������Ļ������������������Ҳֻ��꼻�һ
�֣����������˶��޷���֤��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm10",0,1000,true);
	SetVolume("SE*", 300, 0, null);

//�������֣Ө��˥å���_�཭ؑ��
	#av_�཭ؑ��=true;

//���˥å����཭�Ϛ�ɫ����Ц���ä�����ǡ�
//��̫�����һ�ϡ������`��
	CreateSE("SE001","se���L_����_��ͻ�M01");
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSP("�}�ݱ���", 900, InRight, InTop, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}�ݿ����}", 1000, 120, -430, "cg/st/3d�����˜�_�T��_���La.png");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("�}�ݱ���", 10000, @1024, @0, null, false);
	Move("�}�ݿ����}", 300, @-60, @10, DxlAuto, false);
	Shake("�}�ݿ����}", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_0", true);

	Wait(650);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("�}�ݿ����}", true, 1, 500, 60, true);
	Move("�}�ݿ����}", 200, @-5000, @300, Axl2, false);
	Zoom("�}�ݿ����}", 200, 3000, 3000, Axl2, true);

	WaitKey(500);

	CreateSE("SE001","se���L_����_��ͻ�M01");
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("�}�ݱ���", 900, InLeft, InBottom, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}�ݿ����}", 1000, -900, -410, "cg/st/3d�཭_�T��_���L.png");
	MusicStart("SE001",0,1000,0,750,null,false);

	Move("�}�ݱ���", 10000, @-1024, @0, null, false);
	Move("�}�ݿ����}", 300, @600, @-10, DxlAuto, false);
	Shake("�}�ݿ����}", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	Wait(650);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("�}�ݿ����}", true, 1, 500, 60, true);
	Move("�}�ݿ����}", 200, @5000, @-300, Axl2, false);
	Zoom("�}�ݿ����}", 200, 800, 800, Axl2, true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);
	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	Delete("�}ɫ�\");
	Delete("�}��*");

	CreateSE("SE01","se���L_�n��_���Ľ��e02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,47,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("�}������", 110, Center, -5486, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);

	MoveFFP1("@�}������",20000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0010a01">
��������
���������˲������<RUBY text="����">Ц��</RUBY>�����ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0020a00">
�����ǲ���ȡ��ѵ��
����������ΪЦ���཭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 20000, "#000000");

//����ܞ
//��������ݳ����ãФǷ�ܞ����ͻ�M��
	MoveFFP1stop();

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��������", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("�}������", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,225,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("�}��������", null);
	Move("�}������", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("�}��������", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//��ͻ�M�`��
	Zoom("�}��������", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�}������", 110, Center, -5190, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);
	MoveFFP1("@�}������",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("�}ɫ�\", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureEX("�}���཭��", 1110, Center, -290, "cg/st/resize/3d�཭_����_�i��bs.png");
	CreateTextureEX("�}���཭", 1100, Center, -290, "cg/st/resize/3d�཭_����_�i��bs.png");
	Request("�}���཭*", Smoothing);
	Zoom("�}���཭*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}���཭*", 300, @0, -320, DxlAuto, false);
	Fade("�}���཭", 300, 1000, null, true);

	CreateSE("SE01a","se����_���å��ԥå�_������02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CP_EHPChange(300,7,null,true);
	EnLife_Count(300,480);
	EnTr_Count(300,444);

	MoveFRP1("@�}���཭",40000,10,10);
	MoveFRP2("@�}���཭��",30000,20,20);

	SetFwR("cg/fw/fw�཭_ͨ��.png");

	#voice_on_�཭=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0030b41">
���ǣ�  �ǣ�
���ǺǺǺǺǺǺǺǺǺ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}���཭*", 100000, 400, 400, null, false);
	Fade("�}���཭��", 2000, 500, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ī�����Ĵ�Ц���쳹��ա�
������Ȼ�����Ⲣ�Ǳ���Ц֮�⡣

���������
������������ҡҷ�š����ֳ�һ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//���˥å����Ц���楺�`�ॢ�å�
//�����줬�ʤ󤫿֤����ʤ��ˉ仯
//����푄�����Ĥ��뤫��������`��
	CreateSE("SE01","se����_��x_��Ӱ01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݣţ�", 19100, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	CreateTextureEXadd("�}�ݣţ���", 19110, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݣţ���", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݣţ���", 250, 1000, null, true);
	Fade("�}�ݣţ���", 250, 0, DxlAuto, true);

	Delete("�}St*");
	Delete("@Cloud*");
	Delete("@BGMAP*");
	Delete("@shake*");

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma05/001vs0040a00">
�����Ѿ����������������ˣ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������W
	CreateColorSP("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

//�����Щ`��
	CreateColorSP("�}��ܞ", 30000, "#FFFFFF");
	Delete("�}ɫ�\");
	Delete("�}�ݣţ�*");
	Delete("�}���཭*");
	CreateSE("SE01a","se���L_����_�z��������");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	WaitKey(10);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

	SetFwR("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0050b41">
���º�?!��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0060a00">
������Ϸ���þ���ħ��ʦ�˳���ʱ���ˡ�
������������������ȥ�ɣ��཭����

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0070a00">
����������һ����Ҳ�ᵽ�Ǳ�ȥ��
����ĳ����Թ������ʱϴ�������ɡ���

{	FwR("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0080b41">
���١����ϡ�������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 20000, "#000000");

//���T�����ݳ��Ƥ��ȩ`��
	MoveFFP1stop();

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��������", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("�}������", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(2000);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Cockpit_AllFade0();
	Delete("�}������");
	Delete("�}��������");
	MoveFRP1stop();
	MoveFRP2stop();

	CreateTextureSP("�}���཭", 1100, -700, -230, "cg/st/3d�཭_�T��_���L.png");
	CreateTextureSP("�}�ݱ���", 100, InLeft, Middle, "cg/bg/bg204_�����ر���b_02.jpg");
	Move("�}�ݱ���", 40000, -5088, @0, DxlAuto, false);
	Move("�}���཭", 450, -225, -400, Dxl2, false);
	Shake("�}���཭", 2160000, 2, 1, 0, 0, 1000, null, false);

	DrawDelete("�}ɫ�\", 150, 1000, "slide_01_03_0", true);

	SetFwR("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0090b41">
���ҡ�Ц���཭�����᲻��������ˣ�
����ô�ᣡ��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0100b41">
������!!
����֮���б����������֮�����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}���཭", 300, 2048, @0, Axl3, false);

	Wait(1000);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("�}�ݴ���", 1100, 450, -460, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���b_02.jpg");
	Move("�}�ݱ���", 40000, 0, @0, DxlAuto, false);
	Move("�}�ݴ���", 450, 10, -340, Dxl2, false);
	Shake("�}�ݴ���", 2160000, 2, 1, 0, 0, 1000, null, false);

	CreateSE("SE01a","se���L_����_��ͻ�M03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0110a01">
��������˵��������ۡ�
����û�뵽�����Ҫ<RUBY text="��������">���ֶ���</RUBY>������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݴ���", 300, -2048, @0, Axl3, false);

	Wait(1000);

//���٤���ͻ�M
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}��*");

	CreateMask("�}��", 6000, 0, 0, "cg/mask/ci����å���_05_01.png", false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 6000, -193, -980, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}��/�}�����}", 6100, 81, -280, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Request("�}��/�}�����}", Smoothing);
	Rotate("�}��/�}�����}", 0, @0, @0, @20, null,true);
	Zoom("�}��/�}�����}", 0, 850, 850, null, true);

	CreateTextureSP("�}�ݱ���", 100, -30, -1180, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureSP("�}���཭", 1000, -250, -160, "cg/st/resize/3d�཭_����_�i��bs.png");

	CreatePlainEX("�}��д", 7000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 0, 1500, 1500, null, true);
	SetBlur("�}��д", true, 3, 500, 60, false);

	CreateSE("SE01a","se���L_����_�ռ�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	FadeDelete("�}��д", 400, false);
	Zoom("�}��д", 450, 1000, 1000, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "zoom_01_00_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0120a01">
���������ǲ����ø���ģ��཭��Ρ�
���������ζ����Ҫ�����Ļ�����

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0130b41">
���ǺǺǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤ӻ���
	CreateSE("SE01","se����_��x_��Ӱ01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݣţ�", 18100, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	CreateTextureEXadd("�}�ݣţ���", 18110, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݣţ���", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݣţ���", 250, 1000, null, true);
	Fade("�}�ݣţ���", 250, 0, DxlAuto, true);

	Delete("�}��");
	Delete("�}���཭");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0140a01">
������<RUBY text="����">��ǰ</RUBY>��ʮ���˽��㡣
��������ͬһʱ���Ĳ����ء���

//��������
<voice name="����" class="��������" src="voice/ma05/001vs0150a01">
��������཭һ�����ߣ�
���ƻ���ʹ����ٿ��ߣ�������СŮ��ΪĿ�꣬
ʵʩɱ¾�������������޽��е�������
�����ּһ<RUBY text="��������������������">���ǻ�¯����ɷ����</RUBY>!!��

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0160b41">
���������˵����������
����Ȼ�Խ���˵���ֻ�!!��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0170b41">
������ԭ��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����񤬸��ˉ仯
//��������������ء�
//����푄����⤨��`�Ф��ˡ�
	CreateSE("SE01","se����_��x_��Ӱ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 500, AxlDxl);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݣţ�", 18100, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_b.jpg");
	CreateTextureEXadd("�}�ݣţ���", 18110, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_b.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݣţ���", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݣţ���", 250, 1000, null, true);
	Fade("�}�ݣţ���", 250, 0, DxlAuto, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/001vs0180a00">
����������

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0190b41">
����Σ�
��ȥ��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���཭������
	CreateColorSP("�}ɫ�\��", 20000, "#000000");
	CreateColorSP("�}ɫ�\", 100, "#000000");
	Wait(10);
	Delete("�}�ݣţ�*");
	Delete("�}ɫ�\��");

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown(@0, @0,2000);
	SL_rightdownfade(0);

	WaitKey(200);

//�􏎤�������һ�ġ��ɤ���`��
	CreateSE("SE01","se���L_����_��ꪏ���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 3100, Center, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef044_��a.jpg");
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}�\Ļ");
	Delete("@slash*");

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 250, true);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE02","se���L_����_�z��������03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(10);

	Delete("�}��*");

	CreateTextureSP("�}���཭", 1110, 270, -190, "cg/st/resize/3d�཭_����_�i��bs.png");
	Zoom("�}���཭", 0, 950, 950, null, true);
	CreateTextureSP("�}�ݴ���", 1100, -345, -260, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Zoom("�}�ݴ���", 0, 600, 600, null, true);
	Request("�}��*", Smoothing);

	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	Zoom("�}�ݴ���", 10000, 500, 500, null, false);
	Move("�}�ݴ���", 10000, -446, -270, DxlAuto, false);

	Zoom("�}���཭", 10000, 1000, 1000, null, false);
	Move("�}���཭", 10000, 310, -170, DxlAuto, false);

	FadeDelete("�}��ܞ", 300, false);

	CreatePlainEX("�}��д", 2000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 1000, 1250, 1250, null, false);
	FadeFR2("�}��д",0,500,300,0,0,30,Dxl3, true);
	FadeDelete("�}��д", 700, false);

	SetFwC("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0200b41">
������������?!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0210a00">
��������˵�����Ѿ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 20000, "#000000");

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�ݴ���", 300, 300, 300, Axl3, false);
	Move("�}�ݴ���", 300, -1024, -320, Axl3, false);

	Zoom("�}���཭", 300, 1100, 1100, null, false);
	Move("�}���཭", 300, 370, -140, DxlAuto, false);

	Wait(300);

	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}��*");

	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,900,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1150,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}������", 100, Center, -5536, "cg/bg/bg203_�����ݳ�������a_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FrameShake();
	MoveFFP1("@�}������",10000);

	DrawDelete("�}ɫ�\", 150, 1000, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Դ��ʧȥƽ�⡢��ʼ����ʧ�ص���Ӱ��������
�����һ�䡣
����֪����ɱ������ɱ���Ⱥý����໥��������<RUBY text="����">�ں�</RUBY>��
�཭���Ƿ��������ҵĻ��

�����ϵȵ�װ��������������δ�⵽�����Ĵ����Ȼ��
����ս����Ӧ�ÿ���ʧ�����˰ɡ�
���ٸ���һ���Ļ������������������Ļ
Ҳ��ֹͣ�˰ɡ�


����Ȼ���Ҳʮ�����գ������ƺ���ǧ��һ��֮�ʽ�
���ѡ��ķ�����ֹ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0220b41">
��Ϊʲô����!!
��Ϊʲô��������!!��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0230b41">
�����཭�����ֵĵ���Ҳ�ã���ج��Ҳ�ã�
��Ϊ������˺��޷�Ӧ?!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0240a00">
��������ج����
�����ֶ����������ֲ�����������
���ҡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0250a00">
�������<RUBY text="����">����</RUBY>������
���������ֵĻ��񣬲����ɣ�������˵ֻ����
�����ŵ�ǰ���������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0260a00">
���úúͱϼ����ĸ���Ῠѧһ�±������ɣ���

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0270b41">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 20000, "#000000");

//����ܞ
	MoveFFP1stop();

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��������", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("�}������", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,-42,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("�}��������", null);
	Move("�}������", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("�}��������", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//�������ϡ����T�·�
	Zoom("�}��������", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�}������", 110, Center, -5340, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);
	MoveFFP1("@�}������",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("�}ɫ�\", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureEX("�}���཭��", 1110, Center, -130, "cg/st/resize/3d�཭_����_�i��bs.png");
	CreateTextureEX("�}���཭", 1100, Center, -130, "cg/st/resize/3d�཭_����_�i��bs.png");
	Request("�}���཭*", Smoothing);
	Zoom("�}���཭*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}���཭*", 300, @0, -120, DxlAuto, false);
	Fade("�}���཭", 300, 1000, null, true);

	CreateSE("SE01a","se����_���å��ԥå�_������02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CP_EHPChange(300,4,null,true);
	EnLife_Count(300,265);
	EnTr_Count(300,243);

	MoveFRP1("@�}���཭",40000,10,10);
	MoveFRP2("@�}���཭��",30000,20,20);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������Ӱ��������Ұ�ڡ�
�������ú��������Ķ����������ơ�


��֮���Է�����������·����Ϊ���𣬻��Ƿ�ŭ�ء�
�ֻ�����Ԥ�ȼ�����ٶȵĲ���ء�
��������Σ���Ӧ���������鶼���������仯��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma05/001vs0280a00">
����������һ���������
���µ���񻹸���ʱ�����������
Ҳ̫�ò���ʧ�ˡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0290a01">
���˽⡣
�������ҽ�����ֺ���֮��ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveFRP1stop();
	MoveFRP2stop();

//��ͻ�M
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}������", 800, @0, -5480, DxlAuto, false);
	CP_AltChange(1600,-16,AxlDxl,false);
	CP_HighChange(30000,1310,null,false);

	Move("�}���཭*", 800, @0, -260, DxlAuto, true);

	MoveFRP1("@�}���཭",40000,10,10);
	MoveFRP2("@�}���཭��",30000,20,20);

	CreateSE("SE01a","se���L_����_��ͻ�M03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}���ٶ�", 5000, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	Zoom("�}���ٶ�", 300, 1500, 1500, null, false);
	FadeDelete("�}���ٶ�", 1000, false);

	Zoom("�}���཭*", 300000, 500, 500, null, false);
	Zoom("�}��������", 300000, 3000, 3000, null, false);
	CP_SpeedChange(300,630,null,false);
	MyTr_Count(300,506);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ҿ�ʼ�½�������
������Ҳӭ�����ϡ���Ȼ���ʤ��־������ʮ�����塣


�����߶Ȳ�ࡢ�ٶȲ�ࡢ
������˶�����������������ࡣ
���ݹ�ȫ�֣�ʤ���Ѷ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0300b41">
���������˵ج�κ͵���������û�õĻ���
��������������أ���

{	FwR("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0310b41">
���ǣ��ǣ�
���ǡ��ǺǺǺǺǺǺǺǺ�!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se����_��x_��Ӱ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSPover("�}�ݣţ�", 18100, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	CreateTextureEXadd("�}�ݣţ���", 18110, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_a.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݣţ���", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݣţ���", 250, 1000, null, true);
	Fade("�}�ݣţ���", 250, 0, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������Ц��չ����
��������������Ƭ��ռ����ľ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0320a01">
�����˵Ĵ�������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/001vs0330a00">
��ҪΪ�Լ�������ѳ���𡪡�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSPover("�}�ݣţ֣�", 18090, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_b.jpg");
	DrawDelete("�}�ݣţ�", 1000, 100, "wave_01_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����󽥽����ֳ���״��
���µ�������ۿ���ʲô����Ϊ�����˵Ĺ���ֻ��
�����Ƿ����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SOUND01","se����_��x_��Ӱ01");
	MusicStart("SOUND01",0,1000,0,1000,null,false);
	CreateTextureSPover("�}�ݣţ֣�", 18080, Center, Middle, "cg/ev/ev126_�཭�ˤ�ޤ�Ц��_c.jpg");
	DrawDelete("�}�ݣţ֣�", 1000, 100, "wave_01_00_0", true);

//���Bĸ��������r��Ц�
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateTextureSP("�}�ݣţ֣�", 18100, -283, -45, "cg/ev/resize/ev132_Ц���ym.jpg");
	CreateTextureSPsub("�}�ݣţ֣���", 18110, -273, -37, "cg/ev/resize/ev132_Ц���ym.jpg");
	FadeFR4("�}�ݣţ֣���",0,750,80,0,0,30,Dxl2,true);
	Delete("�}�ݣţ֣�*");

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma05/001vs0340a00">
������ʲ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ιʡ�
��Ϊʲô�����֣������ᡣ

��
����������������������ͳ���ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0350b41">
������������������
������ʲô��?!������ʲô�ˣ���

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0360b41">
���������<RUBY text="����">ο��</RUBY>!!
���������ֵܵ������ĺ��䡪��
������ο��ܵ��������ů?!��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/001vs0370b41">
����û�ɣ�
����û�����ȵ��ξ��а�!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/001vs0380a01">
��������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Bĸ�λä˅פޤ��
//���ۥ磻�ȥ�����
	CreateSE("SE01","se����_냇��_�k��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݣţ֣�", 18100, -283, -45, "cg/ev/resize/ev132_Ц���ym.jpg");
	CreateTextureEXmul("�}�ݣţ֣���", 18110, -283, -45, "cg/ev/resize/ev132_Ц���ym.jpg");
	CreateColorEXadd("�}ɫ��", 30000, "#FFFFFF");
	Fade("�}�ݣţ֣�", 3000, 1000, null, false);
	FadeFR4("�}�ݣţ֣���",3000,1000,3000,0,0,20,Dxl2,false);
	Fade("�}ɫ��", 2600, 1000, null, true);

	CP_AllDelete();

	WaitPlay("SE*", null);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_002.nss"

