//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_038.nss_MAIN
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
	#ev220_�衩�������=true;
	#bg097_ܥԽ�����ھ����β���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_039.nss";

}

scene md02_038.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_037.nss"


//���衩�������
//���ӣţ�����˥���
//��������˥ȩ`������󤷤ơ�����������̨�~��
//���ƥ����Ȥʤ��ܥ����Τߡ�

/*
	PrintBG("�ϱ���", 30000);
	CreateColorEX("�ۥ磻�ȥ���", 5000, "WHITE");
	Fade("�ۥ磻�ȥ���", 0, 1000, null, true);
	CreateTextureEX("�������ޤ�", 4000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Fade("�������ޤ�", 0, 1000, null, true);
	CreateSE("����", "se����_����_���`���å�04_L");
	MusicStart("����", 0, 1000, 0, 1000, null,false);
	Delete("�ϱ���");
	FadeDelete("�ۥ磻�ȥ���",1500,true);

	WaitKey(1000);
	SetVolume("����", 1000, 0, null);
*/

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	CreateTextureSP("�衩�������", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩�������", 0, 1500, 1500, null, true);
	CreateTextureEX("�衩������磲", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩������磲", 0, 1500, 1500, null, true);
	DrawEffect("�衩�������", 50, "LowWave ", 0, 100, null);
	DrawEffect("�衩������磲", 50, "SuperWave", 0, 500, null);
	SetFont("����", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("�}�Ҥ�", 16000, 50, 20, 700, 500, "���Ҿ���������");
	SetAlias("�}�Ҥ�","�}�Ҥ�");
	Move("�}�Ҥ�", 0, 450, 230, null, true);
	Fade("�}�Ҥ�", 0, 0, null, true);

	Delete("�ϱ���");

	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);

	CreateSE("�ܤ��`", "se����_������_�����01");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���02");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	MusicStart("�ܤ��`",2000,1000,0,500,null,false);

	FadeDelete("�\Ļ��",2000,true);


	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(50);
	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(150);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	Fade("�}�Ҥ�", 300, 1000, null, false);
	MusicStart("�Υ�����",0,1000,0,1000,null,true);
	Wait(100);
	Fade("�衩������磲", 0, 500, null, true);
//	Fade("�衩������磲", 0, 0, null, true);

//�����˺Ϥ碌�ơ����Ҿ������������ãǱ�ʾ��С������
//�����ݳ������С�inc�Ѿ�

	Fade("�}�Ҥ�", 300, 0, null, false);
	SetVolume("�Υ�����", 3000, 100, null);

	Wait(500);
/*
//������󡸱O�ޣ����¤Υ���ץ���ä˿����Ƥ������¤�����
	CreateVOICE("����㣯���Ǉ��","md02/0380010e287");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);

	SetVolume("�Υ�����", 0, 500, null);
	Wait(100);
	SetVolume("�Υ�����", 200, 100, null);

	CreateVOICE("����㣯���Ǉ��","md02/0380020e288");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380030e287");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380040e289");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380050e288");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380060e289");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380070e288");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380080e287");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380090e289");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);

	SetVolume("�Υ�����", 0, 500, null);
	Wait(100);
	SetVolume("�Υ�����", 500, 100, null);

	CreateVOICE("����㣯���Ǉ��","md02/0380100e287");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);


	CreateVOICE("����㣯���Ǉ��","md02/0380110e289");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);

	SetVolume("�Υ�����", 100, 600, null);
	Wait(100);
	SetVolume("�Υ�����", 600, 100, null);

	CreateVOICE("����㣯���Ǉ��","md02/0380120e287");
	MusicStart("����㣯���Ǉ��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����㣯���Ǉ��");
	WaitKey($�Еr�g);
	SetVolume("����㣯*", 100, 0, null);

	SetVolume("�Υ�����", 1500, 1000, null);
	Fade("�衩������磲", 2000, 1000, null, true);
*/


//	SetNwC("cg/fw/nw�У�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380010e287">
����Ҳ�������𣿡�

//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380020e288">
���ǰ�������û��
����ܥԽ��������������裡��

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380030e287">
���������١�
��ֻ��һ��һŮ����

//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380040e289">
������Ҫ���𣿡�

//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380050e288">
����Ȼ��
����ô��ʧ�������Ļ��ᣡ��

//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380060e289">
���������ڲŵ�������ܸ����𣿡�

//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380070e288">
������û����װ��
��һ�ѵ���Ҳ�㹻�㶨����

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380080e287">
�����£���̫³ç�ˡ�
����Ҫ���˶Է����������ޡ���

//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380090e289">
������˵��������

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380100e287">
����ʸ������ٶ��֡���

//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380110e289">
��ʸ��
���Ǽһ�ȥȡ�������𣿡�

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0380120e287">
��û��ϵ�ģ���û������ָ������
���ܿ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//������

	CreateColorEX("�ۥ磻�ȥ����ȣ�", 25000, "WHITE");
	SetVolume("�Υ�����", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	Fade("�ۥ磻�ȥ����ȣ�",2000, 1000, null, true);

//	ClearWaitAll(1500,1500);

}

..//������ָ��
//�Υե����롡"md02_039.nss"