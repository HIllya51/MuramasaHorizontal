//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_035.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md02_035.nss","rec_001",true);
	Conquest("nss/md02_035.nss","rec_ex01",true);
	Conquest("nss/md02_035.nss","rec_ex02",true);
	Conquest("nss/md02_035.nss","rec_002",true);
	Conquest("nss/md02_035.nss","rec_003",true);
	Conquest("nss/md02_035.nss","rec_004",true);
	Conquest("nss/md02_035.nss","rec_005",true);
	Conquest("nss/md02_035.nss","rec_006",true);
	Conquest("nss/md02_035.nss","rec_007",true);
	Conquest("nss/md02_035.nss","rec_008",true);
	Conquest("nss/md02_035.nss","rec_009",true);
	Conquest("nss/md02_035.nss","rec_010",true);
	Conquest("nss/md02_035.nss","rec_011",true);
	Conquest("nss/md02_035.nss","rec_012",true);
	Conquest("nss/md02_035.nss","rec_013",true);
	Conquest("nss/md02_035.nss","rec_Delete",true);
	Conquest("nss/md02_035.nss","Saya_Shake",true);
	Conquest("nss/md02_035.nss","Saya_ShakeProcess",true);
	

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
	#bg008_����_01=true;
	#bg007_��m��·a_02=true;
	#bg005_ɽ��_02=true;
	#bg016_���@a_01=true;
	#bg044_�о�ʩ�O��_01a=true;
	#bg003_�Ĥ�Ұ_01=true;
	#bg096_��ᦌm�����ҿ�_01a=true;
	#bg099_������Τ褦��Ұԭ��ɽ_01=true;
	#bg109_������g=true;
	#bg097_ܥԽ�����ھ����β���_03b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_036.nss";

}

scene md02_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_034.nss"


//�����¥�����
//���m���ʱ������m���ʥ������B�A�ǥ��󥬥��ʾ��
//���F�����ϥ������ȥꥯ���������ɥ��˥�����
//���ʥ������񘔣����ޥ������ɥ����`�������ȡ�
//������ʵۡ�ɳҮ�����i�������
//���ǡ������Ԫ�β��ݡ����Фä��𤭤롣

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	Delete("�ϱ���");

	SoundPlay("@mbgm29", 0, 1000, true);

	Delete("�\Ļ��");

	rec_001();
	Wait(100);
	rec_002();
	Wait(100);
	rec_003();
	Wait(100);
	rec_004();
	Wait(100);
	rec_005();
	Wait(100);
	rec_006();
	Wait(100);
	rec_007();
	Wait(100);
	rec_008();
	Wait(100);
	rec_009();
	Wait(100);
	rec_010();
	Wait(100);
	rec_011();
	Wait(100);
	rec_012();
	Wait(100);
	rec_013();
	Wait(100);
	rec_ex01();
	Wait(100);
	rec_ex02();
	Wait(100);
	rec_Delete();

	SetVolume("@mbgm29", 1000, 0, null);

	OnBG(100,"bg097_ܥԽ�����ھ����β���_03b.jpg");
	FadeBG(0,true);

	OnSE("se����_����_�𤭤�02", 1000);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//	SetFwC("cg/fw/fw����_ͨ��b.png");
//��������
<voice name="����" class="����" src="voice/md02/0350010a00">
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ĩ`�ä��Ϥ���֩�����

	StR(1000, @0, @-350, "cg/st/3d����֩��_����.png");
	Rotate("@StR*", 0, @0, @180, @180, null, false);
	Move("@StR*", 1000, @0, @150, null, false);
	FadeStR(1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//��������
<voice name="����" class="��������" src="voice/md02/0350020a01">
��������ô�ˣ�
�����ú�˯���Ļ��������û���񡣡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0350030a00">
�����С�
������о�Խ˯Խ�۰�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0350040a01">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 3000, @0, @-450, null, true);


	ClearWaitAll(1500, 1500);

..//������ָ��
//�Υե����롡"md02_036.nss"


}

//=====================//
..//rec_001��Chaos;Head��
//=====================//
function rec_001(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec100", 100, -90, -45, "cg/bg/bg007_��m��·a_01.jpg");
	Zoom("�}Rec100", 0, 1200, 1200, null, true);
	Request("�}Rec100", Smoothing);

	CreateTextureEX("�}Recst01_001", 100, Center, Middle, "cg/rec/st����_�Ʒ�_ͨ���ӥ��ã�_normal.png");
	CreateTextureEX("�}Recst01_002", 110, Center, Middle, "cg/rec/st����_�Ʒ�_ͨ���ӥ��ã�_normal_eye01.png");
	CreateTextureEX("�}Recst01_003", 120, Center, Middle, "cg/rec/st����_�Ʒ�_ͨ���ӥ��ã�_normal_eye02.png");

	Move("�}Recst01_001", 0, @-100, @0, null, true);

	Fade("�}Rec100", 0, 1000, null, true);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Move("�}Recst01_001", 300, @+100, @0, Dxl1, false);
	Fade("�}Recst01_001", 300, 1000, null, true);

	WaitAction("�}Recst01_001", null);

	Fade("�}Recst01_002", 50, 1000, null, true);
	Fade("�}Recst01_003", 50, 1000, null, true);
	Wait(50);
	Fade("�}Recst01_003", 25, 0, null, true);
	Fade("�}Recst01_002", 25, 0, null, true);

	Wait(200);

	Fade("�}Recst01_002", 10, 1000, null, true);
	Fade("�}Recst01_003", 10, 1000, null, true);
	Wait(10);
	Fade("�}Recst01_003", 5, 0, null, true);
	Fade("�}Recst01_002", 5, 0, null, true);
	Wait(5);
	Fade("�}Recst01_002", 10, 1000, null, true);
	Fade("�}Recst01_003", 10, 1000, null, true);
	Wait(10);
	Fade("�}Recst01_003", 5, 0, null, true);
	Fade("�}Recst01_002", 5, 0, null, true);

	WaitKey(500);

}

//=====================//
..//rec_ex01�������ӣ�
//=====================//
function rec_ex01(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Recsoni", 1000, Center, InBottom, "cg/rec/������.jpg");

	Move("�}Recsoni", 5000, @0, 0, null, false);
	Fade("�}Recsoni", 0, 1000, null, true);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(5000);

}

//=====================//
..//rec_ex02����������
//=====================//
function rec_ex02(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureSP("�}Recou", 1000, Center, InBottom, "cg/rec/�����������.jpg");
	Zoom("�}Recou", 0, 2000, 2000, null, true);
	SetBlur("�}Recou", true, 3, 500, 200, false);

	Zoom("�}Recou", 500, 1000, 1000, null, false);
	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(2000);

}

//=====================//
..//rec_002���񘔣�
//=====================//
function rec_002(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureSP("�}RecSMG00", 1000, Center, InBottom, "cg/bg/bg006_���w�β���_01.jpg");
	CreateTextureSP("�}RecSMG02", 1500, Center, InBottom, "cg/rec/stRec��_�Ʒ���_normal.png");
	CreateTextureSP("�}RecSMG01", 1500, Center, InBottom, "cg/rec/stRec��_�Ʒ�_normal.png");

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Wait(500);

	Fade("�}RecSMG02", 300, 1000, Dxl3, false);
	Fade("�}RecSMG01", 300, 0, Axl1, true);

	WaitKey(500);

}

//=====================//
..//rec_003������󥴣�
//=====================//
function rec_003(){

//��������ݳ��������΄Ӥ����{�����ޤ���10/01��

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);
	Delete("@�}Rec*");

	CreateCamera("�}Rec��", 0, 0, 1000);
	SetAlias("�}Rec��","�}Rec��");

	CreateTextureSP("�}Rec��/�}Rec�����01", 10, InLeft, Middle, "cg/rec/bg09110_3_������祢����_�ڲ�n.jpg");
	Zoom("�}Rec��/�}Rec�����01", 0, 990, 990, null, true);

	CreateTextureEX("�}Rec��/�}Rec�����02", 500, 760, -160, "cg/rec/buRec_�������.png");
	SetVertex("�}Rec��/�}Rec�����02", center, bottom);
	Zoom("�}Rec��/�}Rec�����02", 0, 500, 500, null, true);

	MoveCamera("�}Rec��", 5000, @576, @0, @0, DxlAuto, false);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Wait(500);

	Fade("�}Rec��/�}Rec�����02", 300, 1000, null, true);

	WaitKey(4000);


/*
	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec�����01", 1500, 0, 0, "cg/rec/bg09110_3_������祢����_�ڲ�n.jpg");
	CreateTextureEX("�}Rec�����02", 2000, Center, InBottom, "cg/rec/buRec_�������.png");
	Move("�}Rec�����02", 0, @+100, @0, null, true);

	Fade("�}Rec�����01", 0, 1000, null, true);
	Move("�}Rec�����01", 5000, -576, @0, null, false);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Wait(500);

	Move("�}Rec�����02", 4700, @-100, @0, Dxl1, false);
	Fade("�}Rec�����02", 300, 1000, null, true);

	WaitKey(4000);
*/

}

//=====================//
..//rec_004���o_����
//=====================//
function rec_004(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec�ɥ�last00", 1500, Center, InBottom, "cg/rec/stĸ_܊��happy.png");
	CreateTextureSP("�}Rec�ɥ�sec05", 1400, -282, InBottom, "cg/rec/st�ؙC��_ͨ��damage.png");
	CreateTextureSP("�}Rec�ɥ�sec06", 1400, 220, InBottom, "cg/rec/st�ؙC��_ͨ��damage.png");
	CreateTextureEX("�}Rec�ɥ�set02", 1300, -38, InBottom, "cg/rec/st�ؙC��_ͨ��ready.png");
	CreateTextureEX("�}Rec�ɥ�set03", 1200, -400, InBottom, "cg/rec/st�ؙC��_ͨ��attack.png");
	CreateTextureEX("�}Rec�ɥ�set04", 1100, 300, InBottom, "cg/rec/st�ؙC��_ͨ��normal.png");
	Move("�}Rec�ɥ�set04", 0, 1024, @0, null, true);
	Move("�}Rec�ɥ�set02", 0, 1024, @0, null, true);
	Move("�}Rec�ɥ�set03", 0, 1024, @0, null, true);

	Move("�}Rec�ɥ�sec05", 0, -1024, @0, null, true);
	Move("�}Rec�ɥ�sec06", 0, -1024, @0, null, true);
	Move("�}Rec�ɥ�last00", 0, @0, @+576, null, true);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Move("�}Rec�ɥ�set04", 500, 300, @0, Dxl1, false);
	Move("�}Rec�ɥ�set02", 500, -38, @0, Dxl1, false);
	Move("�}Rec�ɥ�set03", 500, -400, @0, Dxl1, false);
	Fade("�}Rec�ɥ�set*", 300, 1000, null, true);

	Wait(100);

	Move("�}Rec�ɥ�sec05", 500, -282, @0, Dxl1, false);
	Move("�}Rec�ɥ�sec06", 500, 220, @0, Dxl1, false);

	Fade("�}Rec�ɥ�sec*", 300, 1000, null, true);

	Wait(200);

	Move("�}Rec�ɥ�last00", 500, @0, @-576, Dxl1, false);
	Fade("�}Rec�ɥ�last00", 300, 1000, null, true);

	WaitKey(1000);

}

//=====================//
..//rec_005����ʹ��
//=====================//
function rec_005(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec����01", 100, Center, Middle, "cg/rec/stRec_���ٽM.png");
	Fade("�}Rec����01", 500, 1000, Dxl1, true);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(300);

}

//=====================//
..//rec_006���m����
//=====================//
function rec_006(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec���r01", 100, Center, Middle, "cg/rec/stRec_���r�S.png");
	CreateTextureEX("�}Rec���r02", 1000, Center, Middle, "cg/rec/stRec_���r�S.png");
	SetBlur("�}Rec���r02", true, 4, 600, 100, false);

	Fade("�}Rec���r01", 0, 1000, null, false);
	Fade("�}Rec���r02", 0, 1000, null, true);

	Zoom("�}Rec���r02", 700, 2000, 2000, Dxl1, false);
	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");
	Fade("�}Rec���r02", 500, 0, Dxl1, false);

	WaitKey(500);

}

//=====================//
..//rec_007���m����
//=====================//
function rec_007(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}Rec���i01", 1000, Center, Middle, "cg/rec/stRec_���i��.png");
	Zoom("�}Rec���i01", 0, 5000, 5000, null, true);
	SetBlur("�}Rec���i01", true, 4, 300, 50, false);

	Shake("�}Rec���i01", 400, 55, 50, 10, 10, 1000, null, false);
	Fade("�}Rec���i01", 400, 1000, Dxl1, false);
	Zoom("�}Rec���i01", 400, 1000, 1000, AxlDxl, false);
	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(500);

}

//=====================//
..//rec_008���ǥ��٥���
//=====================//
function rec_008(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateColorSP("�}Rec100", 1500, "Black");

	CreateTextureEX("�}Rec�ǥ�", 2000, Center, InBottom, "cg/rec/stRec_����ʵ�.png");
	Request("�}Rec�ǥ�", Smoothing);
	Move("�}Rec�ǥ�", 0, @+50, @0, Dxl1, true);

	Fade("�}Rec�ǥ�", 0, 1000, null, true);
	Move("�}Rec�ǥ�", 1000, @0, @+256, Dxl1, false);
	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(500);

}

//=====================//
..//rec_009���ǥ��٥���
//=====================//
function rec_009(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateColorSP("�}Rec100", 900, "Black");

	CreateTextureSP("�}Rec�C��01", 1000, Center, InBottom, "cg/rec/stRec_�ʥ���01.png");
	SetVertex("�}Rec�C��01", center, bottom);
	Zoom("�}Rec�C��01", 0, 900, 900, null, true);
	Request("�}Rec�C��01", Smoothing);

	CreateTextureEX("�}Rec�C��02", 1000, Center, InBottom, "cg/rec/stRec_�ʥ���02.png");
	SetVertex("�}Rec�C��02", center, bottom);
	Zoom("�}Rec�C��02", 0, 900, 900, null, true);
	Request("�}Rec�C��02", Smoothing);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Wait(500);

	Fade("�}Rec�C��02", 300, 1000, Dxl1, false);
	Fade("�}Rec�C��01", 300, 0, Axl1, true);

	WaitKey(500);

}


//=====================//
..//rec_010�������ɣ�
//=====================//
function rec_010(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureSP("�}Rec��Ѫ100", 100, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_03.jpg");
	CreateTextureSP("�}Rec��Ѫ110", 1000, Center, InBottom, "cg/rec/stRec_���ȥꥯ��.png");
	SetVertex("�}Rec��Ѫ110", center, bottom);
	Zoom("�}Rec��Ѫ110", 0, 900, 900, null, true);
	Request("�}Rec��Ѫ110", Smoothing);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(500);

}

//=====================//
..//rec_011����ޣ�
//=====================//
function rec_011(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureSP("�}Rec���", 1100, Center, Middle, "cg/rec/stRec_�ڥȥ��`���奫.png");
	Request("�}Rec���", Smoothing);
	Zoom("�}Rec���", 0, 1500, 1500, null, true);

	SetBlur("�}Rec���", true, 3, 500, 50, false);

	Zoom("�}Rec���", 400, 1000, 1000, Dxl1, false);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(500);

}

//=====================//
..//rec_012��ɳҮ��
//=====================//
function rec_012(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	CreateTextureEX("�}RecɳҮ", 1000, Center, InBottom, "cg/rec/evRec_ɳҮa.jpg");
	Request("�}RecɳҮ", Smoothing);

	CreateTextureEX("�}RecɳҮ10", 1000, Center, InBottom, "cg/rec/evRec_ɳҮa.jpg");

	CreateTextureEX("�}RecɳҮ00", 1000, Center, InTop, "cg/rec/evRec_ɳҮb.jpg");

	CreateTextureEX("�}RecɳҮ01", 1200, Center, -480, "cg/rec/evRec_ɳҮa.jpg");
	CreateTextureEX("�}RecɳҮ02", 1200, Center, 275, "cg/rec/evRec_ɳҮa.jpg");

	CreateTextureEX("�}RecɳҮ03", 1200, Center, -192, "cg/rec/evRec_ɳҮb.jpg");
	CreateTextureEX("�}RecɳҮ04", 1200, Center, 144, "cg/rec/evRec_ɳҮa.jpg");


	Move("�}RecɳҮ", 500, @0, @+192, DxlAuto, false);
	Fade("�}RecɳҮ", 300, 1000, null, true);

	Saya_Shake();

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	WaitKey(3000);

}

//=====================//
..//rec_013�����ޥ��ӣУ�
//=====================//
function rec_013(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");


	CreateTextureSP("�}Recbg001", 100, Center, Middle, "cg/bg/bg001_��c_03.jpg");

	CreateTextureEX("�}Recst01_001", 100, 23, InBottom, "cg/rec/st�ǥͥ�_���\��_ħ��_rage.png");
	CreateTextureEX("�}Recst01_002", 110, 512, InBottom, "cg/rec/st���ڥ�_���\��_ħ��_rage.png");

	CreateTextureEX("�}Recef01_001", 1000, Center, Middle, "cg/rec/ef_ef_���ڥ��ͥ��ө`��a.jpg");
	CreateTextureEX("�}Recef01_002", 1100, Center, Middle, "cg/rec/ef_ef_�ǥ֥ͥ�ͥ��ө`��a.jpg");
	Zoom("�}Recef01_001", 0, 1500, 1500, null, true);
	Zoom("�}Recef01_002", 0, 1500, 1500, null, true);
	SetBlur("�}Recef01_001", true, 3, 500, 50, false);
	SetBlur("�}Recef01_002", true, 3, 500, 50, false);

	Move("�}Recst01_001", 0, @-100, @+50, null, true);
	Move("�}Recst01_002", 0, @+100, @+50, null, true);

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

	Move("�}Recst01_001", 300, @+100, @-50, Dxl1, false);
	Move("�}Recst01_002", 300, @-100, @-50, Dxl1, false);

	Fade("�}Recst01_001", 300, 1000, null, false);
	Fade("�}Recst01_002", 300, 1000, null, true);

	Wait(200);

	Zoom("�}Recef01_001", 300, 750, 750, null, false);
	Fade("�}Recef01_001", 300, 1000, null, true);

	Zoom("�}Recef01_002", 300, 750, 750, null, false);
	Fade("�}Recef01_002", 300, 1000, null, true);

	WaitKey(100);

}

//=====================//
..//rec_Delete
//=====================//
function rec_Delete(){

	CreateColorEXadd("�ե�å���ۥ磻��", 15000, "WHITE");
	Fade("�ե�å���ۥ磻��",300,1000,null,true);

	Delete("@�}Rec*");

	Fade("�ե�å���ۥ磻��",300,0,null,true);
	Delete("�ե�å���ۥ磻��");

}

//=====================//
..//Saya_Shake
//=====================//
function Saya_Shake(){


	CreateProcess("�}RecɳҮ��", 150, 0, 0, "Saya_ShakeProcess");
	SetAlias("�}RecɳҮ��","�}RecɳҮ��");
	Request("�}RecɳҮ��", Start);


}

//=====================//
..//Saya_ShakeProcess
//=====================//
function Saya_ShakeProcess(){


	begin:

while(1){

	Fade("@�}RecɳҮ01", 10, 800, null, true);

	Fade("@�}RecɳҮ01", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 15, 800, null, true);

	Fade("@�}RecɳҮ02", 0, 0, null, false);
	Fade("@�}RecɳҮ03", 15, 800, null, true);

	Fade("@�}RecɳҮ03", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 20, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 1000, null, false);
	Fade("@�}RecɳҮ01", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 18, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 0, 0, null, false);
	Fade("@�}RecɳҮ04", 20, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 1000, null, false);
	Fade("@�}RecɳҮ04", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 14, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 20, 800, null, true);

	Fade("@�}RecɳҮ02", 15, 0, null, true);

	Wait(200);

	Fade("@�}RecɳҮ10", 0, 1000, null, false);
	Fade("@�}RecɳҮ02", 0, 0, null, false);
	Fade("@�}RecɳҮ03", 20, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 0, null, false);
	Fade("@�}RecɳҮ03", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 20, 800, null, true);

	Fade("@�}RecɳҮ01", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 20, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 1000, null, false);
	Fade("@�}RecɳҮ02", 0, 0, null, false);
	Fade("@�}RecɳҮ04", 20, 800, null, true);

	Fade("@�}RecɳҮ10", 0, 0, null, false);
	Fade("@�}RecɳҮ00", 0, 1000, null, false);
	Fade("@�}RecɳҮ04", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 20, 800, null, true);

	Fade("@�}RecɳҮ00", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 0, 0, null, true);

	Fade("@�}RecɳҮ03", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 20, 800, null, true);

	Fade("@�}RecɳҮ03", 0, 0, null, false);
	Fade("@�}RecɳҮ02", 20, 800, null, true);

	Fade("@�}RecɳҮ02", 0, 0, null, false);
	Fade("@�}RecɳҮ01", 20, 800, null, true);

	Fade("@�}RecɳҮ00", 0, 1000, null, false);
	Fade("@�}RecɳҮ01", 0, 0, null, false);
	Fade("@�}RecɳҮ04", 20, 800, null, true);

	Fade("@�}RecɳҮ00", 0, 0, null, false);
	Fade("@�}RecɳҮ04", 0, 0, null, false);
	Fade("@�}RecɳҮ03", 20, 800, null, true);

	Fade("@�}RecɳҮ03", 0, 0, null, true);


}

}


