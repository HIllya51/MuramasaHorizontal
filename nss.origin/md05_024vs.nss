//<continuation number="960">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_024vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_024vs.nss","RotetoLoop1",true);
	Conquest("nss/md05_024vs.nss","RotetoLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md05_024vs.nss","TurboBlur3",true);

	//�������ԥåȣ����x��
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
	#bg109_������g=true;
	#ev933_�y�Ǻ����_a=true;
	#ev933_�y�Ǻ����_b=true;
	#ev934_�����ƴ�_a=true;
	#ev935_����ϥ���_a=true;
	#ev935_����ϥ���_b=true;
	#bg204_�����ر���_04=true;
	#ev934_�����ƴ�_b=true;
	#ev932_�y�Ǻ���ȭͻ��_a=true;
	#bg205_�����ݳ���������_01=true;
	#ev901_�y�Ǻ�����ʧ��С����_d=true;
	#ev251_����VS�y�ǺśQ��ڶ���=true;
	#ev936_�y�Ǻť֥쥤���󥰥��ȥ�`��=true;
	#ev903_�����ŚݥХꥢ�`չ�__b=true;
	#ev923_�y�Ǻų��݅���=true;
	#ev924_�y�Ǻ��|�I���ħ����=true;
	#ev926_Ұ̫��ȫ��=true;
	#bg001_��c_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;
//	#����ꇽK�� = true;

//������
	CP_AllDelete();


	if(#����ꇽK�� == true){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "md05_025.nss";
	}


}

scene md05_024vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_023.nss"

//��������ݳ���֩��α��餬�����ˤʤäƤޤ����˘��Ǥ���

//���Q�顤�ڶ���
//���£ǣͣ�����åɥ��Ʃ`�ȥ��������`������o�������
//��������˥��`���y�Ǻ��Ȥ�
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 1500, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�}����100", 0, 2000, 2000, null, true);

	DrawEffect("�}����100", 50, "SuperWave ", 0, 1000, null);


	MyLife_Count(0,717);
	MyTr_Count(0,358);
	CP_IHPChange(0,8,null,false);

	CP_AziChange(0,45,null,false);
	CP_SpeedChange2(0,2000,null,false);
	CP_HighChange2(0,5000,null,false);


	//�������ԥåȣ�˲�g��ʾ��
	Cockpit_AllFade2();

	CreateEffect("���ե����ȣ�", 16000, 0, 0, 1024, 576, Monochrome);
	CreateTextureSP("������", 100, Center, Middle, "cg/bg/bg109_������g.jpg");
	CreateTextureSP("���C��", 1000, 86, -247, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Zoom("���C��", 0, 300, 300, Dxl2, true);


	FadeDelete("�ϱ���", 100, true);
	Wait(1000);
	DrawDelete("�}����100", 500, 100, "mosaic_01_00_0", true);

	Wait(1000);
	SoundPlay("@mbgm08",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ȷ�ϵ���Ӱ��

�����뼫����
��������ٶȳ��ҷ�������

���ƶϾ���Ӵ�����ʱ��Ϊ�������롣

����ɻرܵ������ϲߡ�
��������ȥ����ʧȥ�ж�ѡ��Χ��������󶨻�ܱ���

���ж���ӭ������ʡ�

��������װΪҰ̫�����̵���<k>
��
�����߶����á�

�����ǵ�����Ļ������ܣ�ʹ�������ػᵼ�¸������ƣ�
��ʹ�����ɹ����½������͡�
�����ʺ�ʹ�á�

��Ӧͽ�ֻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(300);

//���y�ǺŤ����
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev933_�y�Ǻ����_a.jpg");
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev934_�����ƴ�_a.jpg");
	CreateColorEX("ɫ��", 19000, "#FFFFFF");
	CreateTextureEX("���C��", 1000, -335, -320, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	CreateTextureEX("���C��", 1000, -315, -320, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	CreateTextureEX("���C��", 100, 200, -42, "cg/st/resize/3d�y�Ǻ�_����_ͨ��s.png");
	Zoom("���C��", 0, 2000, 2000, Dxl2, true);

	//Zoom("���C��", 0, 2000, 2000, null, true);
	//SetBlur("���C��", true, 2, 500, 100, false);

	OnSE("se���L_����_��ͻ�M01",1000);
	Wait(200);
	OnSE("se����_��x_��������02",1000);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Move("���C��", 150, @0, @100, Axl1, false);
	Zoom("���C��", 150, 2000, 2000, null, true);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 300, 1000, null, true);

//���������o����ȭ��һ�k
	Delete("���٥�ȣ�");
	Delete("���C��");
	Fade("���C��", 0, 1000, null, false);
	Fade("���C��", 0, 500, null, false);
	Move("������", 0, @50, @0, Dxl1, true);

	Fade("ɫ��", 500, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Move("������", 1000, @40, @0, null, false);
	Move("���C��", 1000, @-60, @0, null, false);
	Move("���C��", 1000, @-60, @0, null, true);

	OnSE("se���L_����_ͻ�M01",1000);

	Delete("���C��");
	Fade("���ե����ȣ�", 0, 0, null, false);
	Zoom("���C��", 200, 2000, 2000, Axl1, false);
	Zoom("������", 200, 1100, 1100, Axl1, false);

	Fade("���٥�ȣ�", 200, 1000, null, true);
	OnSE("se���L_����_�z_���01",1000);
	Fade("ɫ��", 200, 1000, null, true);

	Delete("���٥�ȣ�");
	Delete("���C��");
	Zoom("������", 0, 1000, 1000, Axl1, false);
	Fade("���C��", 0, 1000, null, true);

	Fade("ɫ��", 500, 0, Axl1, false);
	Zoom("���C��", 500, 1000, 1000, Dxl2, false);
	Shake("���C��", 500, 10, 50, 0, 0, 500, Dxl1, false);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0010a14">
��������Ŷ?!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���ե����ȣ�", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ڵ�����߻���׷��һ���ƻ���
��������΢����ȫδ�����˺���

������˱�á�
����һ����ס���˵Ĺ���������Ϊ�˽��ӵ�һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������B��
	CreateTextureEX("���٥�ȣ�׷��", 16000, 0, 0, "cg/ev/ev935_����ϥ���_b.jpg");
	Zoom("���٥�ȣ�׷��", 0, 1200, 1200, Dxl2, true);
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev934_�����ƴ�_a.jpg");
	Zoom("���٥�ȣ�", 0, 1200, 1200, Dxl2, true);

	OnSE("se���L_�Ɖ�_�z04",1000);

	Fade("���ե����ȣ�", 0, 0, null, true);

	Move("���C��", 200, @50, @200, Axl1, false);
	Zoom("������", 200, 1100, 1100, Axl1, false);
	Zoom("���C��", 200, 2000, 2000, Axl1, false);
	Fade("ɫ��", 200, 1000, null, true);

	Fade("���٥�ȣ�׷��", 0, 1000, null, true);
	Shake("���٥�ȣ�׷��", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 500, 0, null, true);

	OnSE("se���L_����_�z��������",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Shake("���٥�ȣ�", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 500, 0, null, true);

	Delete("���٥�ȣ�׷��");

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0020a14">
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev935_����ϥ���_a.jpg");
	CreateTextureEX("���ե����ȣ�", 16000, 0, 0, "cg/ef/ef042_���ô��.jpg");

	CreateTextureEX("������", 16000, -4000, 0, "cg/bg/bg204_�����ر���_04.jpg");
	Zoom("������", 0, 2000, 2000, Dxl2, true);
	CreateTextureEX("���C��", 16000, -300, -100, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Rotate("���C��", 0, @0, @0, -135, null, true);

	CreateTextureEX("������", 16000, Center, Middle, "cg/bg/bg109_������g.jpg");
	StC(16000, @0, @0,"cg/st/3d������K_����_���Lb.png");

	OnSE("se���L_����_�z��������02",1000);
	OnSE("se���L_����_��ͻ�M04",1000);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Shake("���٥�ȣ�", 300, 0, 50, 0, 0, 500, Dxl1, true);

	OnSE("se���L_����_�z��������",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);

//�������w���y�Ǻ�
	Fade("������", 0, 1000, null, true);
	Fade("���C��", 0, 1000, null, true);

	//��ȫ������
	//MoveFRP1("@���C��",5000,15,15);
	//��������
	MoveSSP1("@���C��",100000,0,3,0,3,300,null);

	Fade("ɫ��", 500, 0, null, false);
	Fade("���ե����ȣ�", 500, 0, null, false);
	Move("���C��", 2000, @-100, @0, null, false);
	Rotate("���C��", 2000, @0, @0, @-20, null, false);
	Move("������", 2000, @6000, @0, null, 1000);

//���������o�֘���
	Fade("������", 1000, 1000, null, false);
	FadeStC(1000,true);

	MoveSSP1stop();
	//MoveFRP1stop();

	Delete("���ե����ȣ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ˡ�

����Ȼ����Ļ��������������ǳ�׿Խ������
װ��ǿ���޷�����ҷ���
���ⲫ�����ܹ�����˺���

������ʵ��Ŀǰս����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("������", 18000);
	Wait(1);

	Fade("������", 0, 0, null, true);
	DeleteStA(0,true);

	CreateTextureSP("���C��", 16100, 100, -50, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Rotate("���C��", 0, @0, @0, -90, null, true);
	Zoom("������", 0, 1000, 1000, Dxl2, true);
	Move("������", 0, -3000, @0, Dxl2, true);

	OnSE("se���L_����_��ͻ�M01",1000);

	FadeDelete("������", 300, false);
	Move("������", 500, @1500, @0, Dxl2, false);
	Rotate("���C��", 500, @0, @0, @-270, Dxl2, false);
	Move("���C��", 500, @-400, @50, Dxl2, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0030a14">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš������Ȍ���

	CreateWindow("������ɥ���", 16000, 512, 0, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	CreateTextureEX("������ɥ���/������", 16100, -80, -256, "cg/bg/bg109_������g.jpg");
	CreateTextureEX("������ɥ���/�ԙC��", 16100, 300, InBottom, "cg/st/3d������K_����_���Lb.png");

	Move("���C��", 2000, @0, @-50, null, false);

	Move("������ɥ���/������", 500, @20, @0, Dxl1, false);
	Move("������ɥ���/�ԙC��", 500, @-200, @0, Dxl1, false);
	Fade("������ɥ���/*", 500, 1000, null, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0040a14">
���������У�������
���ղŵ��������ù���ֲ�������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0050a14">
�������Ŵ˵��������ٶ���
���᲻���������������ᣡ��

{
//��������ݳ���֩��α��餬�����ˤʤäƤޤ����˘��Ǥ���
	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0060a01">
������������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0070a14">
�����˵�������Ŷ����Ļ�����Ҳ����
��Ӧ��ɾ��ˡ�
����һ��ʤ���ɣ���

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0080a14">
���������һ�У������ҿ������һ�У�
����Ҳ����һ�л�Ӧ�㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("������ɥ���", 500, 0, @0, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ﴫ���źš�<k>
��
��û�л�Ӧ�ı�Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ǰ��
//���y�Ǻ�ǰ��

	SetFwC("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0090a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("������ɥ���/�ԙC��", 300, @-100, @0, Axl1, false);
	Move("������ɥ���/������", 300, @50, @0, Axl1, false);
	Fade("������ɥ���/*", 300, 0, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);

	BezierMove("���C��", 300, (@0,@0){@333,@100}{@666,@100}(@2000,@0), Axl1, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0100a14">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("���C��", null);
	Delete("������ɥ���");
	Delete("������ɥ���/*");

//���������B��
//���y�ǺŻرܡ������B��
//�������ر�

	CreateColorEX("ɫ��", 19999, "#000000");
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev934_�����ƴ�_b.jpg");
	SetBlur("���٥�ȣ�", true, 2, 500, 200, false);
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev932_�y�Ǻ���ȭͻ��_a.jpg");
	SetBlur("���٥�ȣ�", true, 2, 500, 200, false);

	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef012_����б��܉��.jpg");
	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef011_����б��܉��.jpg");

	CreateTextureEX("���C��", 16000, 100, -50, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	CreateTextureEX("�ԙC��", 16000, -302, -168, "cg/st/3d������K_�T��_ͨ��.png");

	OnSE("se���L_����_�����02",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Zoom("���٥�ȣ�", 300, 2000, 2000, Axl2, false);
	Fade("ɫ��", 300, 0, null, true);

	OnSE("se���L_����_�����01",1000);

	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);
	Fade("���C��", 0, 1000, null, true);
	Move("���C��", 200, @-130, @-20, Dxl1, false);
	Fade("���ե����ȣ�", 200, 0, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���C��", 200, @-130, @20, Dxl1, false);
	Fade("���ե����ȣ�", 200, 0, null, true);

	OnSE("se���L_����_���02",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���C��", 0, 0, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Zoom("���٥�ȣ�", 300, 2000, 2000, Axl2, false);
	Fade("ɫ��", 300, 0, null, true);

	OnSE("se���L_����_���04",1000);

	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);
	Fade("�ԙC��", 0, 1000, null, true);
	Move("�ԙC��", 200, @130, @-20, Dxl1, false);
	Fade("���ե����ȣ�", 200, 0, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("�ԙC��", 200, @130, @20, Dxl1, false);
	Fade("���ե����ȣ�", 200, 0, null, true);

	Delete("���ե�����*");
	Delete("���٥��*");

	CreateTextureSP("���C��", 16000, -1000, InBottom, "cg/st/3d�y�Ǻ�_����_���L.png");
	Move("�ԙC��", 300, 1000, @0, Dxl1, false);
	Move("���C��", 300, 0, @0, Dxl1, false);
	Move("������", 300, 0, @0, Dxl1, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0110a14">
����ѽ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš���������
//�����������`��
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev933_�y�Ǻ����_b.jpg");
	Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
	SetBlur("���٥�ȣ�", true, 2, 500, 200, false);

	CreateTextureEX("���ե����ȣ�", 16000, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");
	Zoom("���ե����ȣ�", 0, 1500, 1500, Dxl2, true);

	OnSE("se���L_����_��ͻ�M01",1000);

	//Fade("ɫ��", 0, 1000, null, true);
	Move("���C��", 200, @200, @50, Axl1, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Zoom("���٥�ȣ�", 300, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 300, 1000, null, true);

	Fade("���C��", 0, 0, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);
	Move("�ԙC��", 0, 0, @0, Dxl1, true);

	OnSE("se���L_����_��ꪏ���02",1000);

	Fade("ɫ��", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Zoom("���ե����ȣ�", 300, 1200, 1200, Dxl2, false);
	FadeFF("���ե����ȣ�",0,1000,300,@0,@0,Dxl1,100);

	Fade("���ե����ȣ�", 200, 0, null, false);
	FadeFF("�ԙC��",0,1000,300,50,0,Dxl1,false);
	MyLife_Count(0,687);
	MyTr_Count(0,252);
	CP_IHPChange(0,7,null,false);

	SetFwC("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0120a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ȭ
//���y�Ǻš�����
	CreateTextureEX("���٥�ȣ�", 16000, 0, 0, "cg/ev/ev934_�����ƴ�_b.jpg");
	Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
	SetBlur("���٥�ȣ�", true, 2, 500, 200, false);

	CreateTextureEX("���C��", 16000, 0, InBottom, "cg/st/3d�y�Ǻ�_����_���L.png");

	CreateTextureEX("���ե����ȣ�", 16000, 0, 0, "cg/ef/ef042_���ô��.jpg");
	Zoom("���ե����ȣ�", 0, 1500, 1500, Dxl2, true);

	OnSE("se���L_����_��ͻ�M02",1000);

	BezierMove("�ԙC��", 300, (@0,@0){@-333,@-200}{@-666,@-200}(@-2000,@0), Axl1, true);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Zoom("���٥�ȣ�", 300, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 300, 0, null, true);

	OnSE("se���L_����_�z_���02",1000);

	Fade("ɫ��", 300, 1000, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Fade("ɫ��", 0, 0, null, true);

	Shake("���ե����ȣ�", 300, 0, 50, 0, 0, 300, null, 100);

	Fade("���ե����ȣ�", 200, 0, null, false);

	Shake("���C��", 300, 0, 100, 0, 0, 600, Dxl1, false);
	FadeFF("���C��",0,1000,400,-600,-250,Dxl1, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0130a14">
�������У������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("������", 16000);

	Wait(100);

	Delete("���٥��*");
	Delete("���ե�����*");
	Delete("���C*");

	CreateTextureSP("������", 100, Center, -500, "cg/bg/bg205_�����ݳ���������_01.jpg");
	CreateTextureSP("���C��", 100, 81, -235, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Zoom("���C��", 0, 100, 100, Dxl2, true);

	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������ͬʱ�ٴα�ײ�ɣ�������˵ؿ����ˡ�
���������Ҳ�ô����������ˣ�����ɫ���ޱ仯��

���������������ߣ��ٶ�չ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�ǺŽӽ�
	CreateEffect("���ե����ȣ�", 16000, 0, 0, 1024, 576, Monochrome);
	SetAlias("���ե����ȣ�", "���ե����ȣ�");

	OnSE("se���L_����_��ͻ�M01",1000);
	Wait(100);

	Move("���C��", 300, @0, @150, Axl1, false);
	Rotate("���C��", 300, @0, @0, @360, null, false);
	Zoom("���C��", 300, 1000, 1000, Axl2, true);

	Fade("���ե����ȣ�", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������ƶϡ�
��
���¶���֮������ȭ�����������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ʸФ����B��
//�������Ф�
	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef044_��b.png");

	SetBlur("���C��", true, 2, 500, 50, false);

	Fade("���ե����ȣ�", 0, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -500, 0, Axl1, true);

	Move("���ե����ȣ�", 400, -100, 0, Axl1, false);
	Move("���C��", 400, @30, @-10, Dxl1, false);
	FadeFF("������",0,1000,400,-30,10,Dxl2,false);
	Fade("ɫ��", 400, 0, null, false);
	Fade("���ե����ȣ�", 400, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, 500, 50, Axl1, true);

	Move("���ե����ȣ�", 400, 50, 50, Axl1, false);
	Move("���C��", 400, @-30, @10, Dxl1, false);
	FadeFF("������",0,1000,400,30,-10,Dxl2,false);
	Fade("ɫ��", 400, 0, null, false);
	Fade("���ե����ȣ�", 400, 0, null, true);


	Fade("���ե����ȣ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������Ԥ�⡣
��һ�����ͷ��������������ķ�϶�в��뷴����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���B��
//���ܤ��Ф��y�Ǻ�
	CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "cg/ef/ef011_����б��܉��.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
	CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	Fade("���ե����ȣ�", 0, 0, null, true);

	OnSE("se���L_����_�����01",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);

	Move("������", 400, @-30, @-50, Dxl1, false);
	Move("���C��", 400, @100, @-50, Dxl1, false);
	Fade("ɫ��", 200, 0, null, false);
	Zoom("���ե����ȣ�", 400, 1000, 1000, Dxl1, false);
	Fade("���ե����ȣ�", 400, 0, null, true);

	OnSE("se���L_����_�����02",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);

	Move("������", 400, @30, @0, Dxl1, false);
	Move("���C��", 400, @-100, @0, Dxl1, false);
	Fade("ɫ��", 200, 0, null, false);
	Zoom("���ե����ȣ�", 400, 1000, 1000, Dxl1, false);
	Fade("���ե����ȣ�", 400, 0, null, true);

	Fade("���ե����ȣ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ƫ�ˡ�
������Ļر����������ҷ��Ĺ����ٶȡ�

�������ﵽ���ޡ��з�������
��
�������ƶϡ��������ȭ�����϶λ��ߡ����������
����������������������ȭ�����¶λ��ߡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ޤ�����äݤ��B��
//�������һ�kʳ�餦
	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef044_��b.png");
	CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	SetBlur("���C��", true, 1, 300, 20, false);

	Fade("���ե����ȣ�", 0, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//��ȭ
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, 1000, 0, null, true);
		Move("���ե����ȣ�", 210, 200, 0, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, -149, -157, Dxl1, false);
		FadeFF("������",0,1000,210,50,50,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//��ȭ
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -1000, 0, null, true);
		Move("���ե����ȣ�", 210, -200, 0, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, 235, -137, Dxl1, false);
		FadeFF("������",0,1000,210,-50,0,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//�϶����
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -500, 600, null, true);
		Move("���ե����ȣ�", 210, 100, -100, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, -90, -20, Dxl1, false);
		FadeFF("������",0,1000,210,100,-50,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//�����϶����
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -500, 600, null, true);
		Move("���ե����ȣ�", 210, 0, 300, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, -10, -232, Dxl1, false);
		FadeFF("������",0,1000,210,-80,-80,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//�ҤҤ�
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -800, 200, null, true);
		Move("���ե����ȣ�", 210, -100, -100, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, 187, -85, Dxl1, false);
		FadeFF("������",0,1000,210,-50,10,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	//������
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, 1000, 0, null, true);
		Move("���ե����ȣ�", 210, 200, 0, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, 223, -119, Dxl1, false);
		FadeFF("������",0,1000,210,50,0,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -1000, 0, null, true);
		Move("���ե����ȣ�", 210, -200, 0, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, -222, -105, Dxl1, false);
		FadeFF("������",0,1000,210,-80,0,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	OnSE("se���L_����_���02",1000);
	OnSE("se���L_����_��ꪏ���01",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, 1000, 0, null, true);
		Move("���ե����ȣ�", 210, 200, 0, Dxl2, false);
		Zoom("���C��", 210, 1000, 1000, Dxl1, false);
		Move("���C��", 210, 242, -103, Dxl1, false);
		FadeFF("������",0,1000,210,120,0,Dxl2,false);
		Fade("ɫ��", 110, 0, null, false);
		Fade("���ե����ȣ�", 210, 0, null, true);

	CreateSE("������ɣ�","se���L_����_�z_���02");
	CreateSE("������ɣ�","se���L_����_��ͻ�M04");
	OnSE("se���L_����_���02",1000);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);

	//�϶�
	Fade("ɫ��", 0, 1000, null, true);
	Zoom("���C��", 0, 1200, 1200, Dxl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Move("���ե����ȣ�", 0, -1000, -500, null, true);
		Move("���ե����ȣ�", 500, -100, -200, Dxl2, false);
		Zoom("���C��", 500, 1000, 1000, Dxl1, false);
		Move("���C��", 500, 66, -230, Dxl1, false);
		Shake("������", 1000, 50, 0, 0, 0, 800, Dxl1, false);
		FadeFF("@CP_Frame",0,1000,1000,0,0,Dxl1,false);
		Fade("ɫ��", 1000, 0, null, false);
		Fade("���ե����ȣ�", 1000, 0, null, 500);

	Move("���C��", 500, @0, @700, Dxl1, false);
	Move("������", 500, @0, @50, Dxl1, false);
	Fade("���ե����ȣ�", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������һ�С�
���ܵ���΢�Ĺ��������Ʋ��ȡ�

���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���ե����ȣ�", 300, 0, null, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0140a14">
����Ұ������ս�񷨡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("������", 100, -42, -266, "cg/bg/bg109_������g.jpg");
	CreateTextureEXadd("���٥�ȣ�", 100, 0, 0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");

	OnSE("se���L_����_��ͻ�M07",1000);

	Move("������", 800, @0, -5500, Dxl1, 400);
	Fade("������", 400, 1000, null, false);
	Fade("���٥�ȣ�", 400, 1000, null, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0150a14">
���淢����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���ե����ȣ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��Ťת���壬���·�����Ϯ���Ÿ��ߡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`������
//��ʳ��ä��������w��
	CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef042_���ô��.jpg");

	Fade("���ե����ȣ�", 0, 0, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);

	Fade("���٥�ȣ�", 200, 1000, null, false);
	Zoom("���٥�ȣ�", 200, 2000, 2000, Axl1, 180);

	CreateSE("������ɣ�","se���L_����_��ͻ�M04");
	MusicStart("������ɣ�",0,1000,0,1000,null,false);

	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_����_�z��������03",1000);
	OnSE("se���L_����_�z��������",1000);
	OnSE("se���L_����_��ͻ�M02",1000);

	Fade("ɫ��", 0, 500, null, false);
	Fade("���ե����ȣ�", 0, 500, null, true);

	Delete("���٥��*");

	Shake("������", 300, 0, 100, 0, 0, 1000, Dxl1, false);
	Move("������", 300, -360, 0, Dxl3, false);
	Fade("������", 300, 0, null, false);

	Fade("ɫ��", 1500, 0, null, false);
	Fade("���ե����ȣ�", 2000, 0, null, false);

	MyLife_Count(1500,487);
	MyTr_Count(1500,258);
	CP_IHPChange(1000,6,null,false);
	Move("������", 1500, @0, 0, Dxl1, true);

	CreateColorEX("ɫ��", 10000, "#000000");

	Move("������", 20000, @0, @-200, null, false);

	SetFwR("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0160a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 300, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ֱ�ӹ�����
���ܵ������˺���

������δ�ﵽ�����˵ĳ̶ȡ�
�����Լ���ս����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateEffect("���ե����ȣ�", 19998, 0, 0, 1024, 576, Monochrome);
	SetAlias("���ե����ȣ�", "���ե����ȣ�");
	Fade("���ե����ȣ�", 0, 0, null, true);

	CreateTextureSP("���C��", 100, 93, 200, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Zoom("���C��", 0, 100, 100, Dxl2, true);

	LoadImage("����`����", "cg/bg/bg204_�����ر���_04.jpg");

	CreateTextureEX("������", 18000, Center, 0, "����`����");
	CreateTextureEX("������", 18000, Center, 0, "����`����");
	CreateTextureEX("������", 18050, Center, 0, "����`����");

	CreateColorEX("ɫ��", 16001, "#000000");

	CreateTextureSP("���C��", 18100, 0, 1000, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	CreateTextureSPover("���C��", 18100, 0, 1000, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Zoom("���C��", 0, 1500, 1500, Dxl1, true);
	Zoom("���C��", 0, 1500, 1500, Dxl1, true);

	CreateTextureSP("�ԙC��", 18099, 1000, 0, "cg/st/3d������K_�T��_ͨ��.png");

	//��ȫ������
	MoveFRP1("@���C��",5000,10,10);

//���y�ǺŽӽ���һ��
//���o��
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",2000,500,true);

	Fade("ɫ��", 300, 0, null, true);
	Move("������", 2000, @0, @-100, Dxl1, 500);
	Move("���C��", 1500, @0, -160, Dxl1, true);

	Zoom("���C��", 200, 200, 200, Axl1, false);
	Fade("ɫ��", 200, 1000, null, true);

	CreateSCR1("@������","@������",500,-4500,@0);

	Move("���C��", 2000, -198, -110, Dxl1, false);
	Move("���C��", 2000, -198, -110, Dxl1, true);

	Wait(300);

	OnSE("se���L_����_��ͻ�M02",1000);

	FadeQC5("���C��",200,0,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,0,200,400,0,Dxl2,true);

	Move("���C��", 0, 74, -203, Dxl1, true);
	Move("���C��", 0, 74, -203, Dxl1, true);
	Zoom("���C��", 0, 800, 800, Dxl1, true);
	Zoom("���C��", 0, 800, 800, Dxl1, true);
	FadeQC5("���C��",200,1000,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,1000,200,400,0,Dxl2,true);

	OnSE("se���L_����_��ͻ�M02",1000);

	FadeQC5("���C��",200,0,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,0,200,400,0,Dxl2,true);

	Move("���C��", 0, 248, 40, Dxl1, true);
	Move("���C��", 0, 248, 40, Dxl1, true);
	Zoom("���C��", 0, 300, 300, Dxl1, true);
	Zoom("���C��", 0, 300, 300, Dxl1, true);
	FadeQC5("���C��",200,1000,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,1000,200,400,0,Dxl2,true);

	OnSE("se���L_����_��ͻ�M02",1000);

	FadeQC5("���C��",200,0,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,0,200,400,0,Dxl2,true);

	Move("���C��", 0, 0, -90, Dxl1, true);
	Move("���C��", 0, 0, -90, Dxl1, true);
	Zoom("���C��", 0, 1000, 1000, Dxl1, true);
	Zoom("���C��", 0, 1000, 1000, Dxl1, true);
	FadeQC5("���C��",200,1000,200,400,0,Dxl1,false);
	FadeQC5("���C��",200,1000,200,400,0,Dxl2,true);

	Wait(1000);

	CreateSE("������ɣ�","se����_냇��_����01_L");

	SetVolume("@mbgm09", 1000, 500, NULL);
	SetVolume("������ɣ�", 1000, 0, NULL);
	SoundPlay("������ɣ�",0,500,true);

	MoveFRP1stop();
	Move("���C��", 150, 172, -46, Dxl1, false);
	Move("�ԙC��", 150, -305, -197, Dxl1, true);

	Fade("������", 0, 1000, null, true);
	SCR1stop();
	FadeDelete("���C��", 0, true);
	Delete("������");
	Delete("������");

	Fade("���ե����ȣ�", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ܿ�׷����һ�У���������ڲࡣ
���Ӽ����ľ��룬���ֻػ����ֱ����ͬʱ��
��ȭ�����ؿڡ���

����Ұ������ս�񷨣����衣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�������w���y�Ǻ�
//������������
	Fade("���ե����ȣ�", 0, 0, null, true);

	CreateTextureEX("���٥�ȣ�", 19000, 0, 0, "cg/ev/ev934_�����ƴ�_a.jpg");
	Zoom("���٥�ȣ�", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("������", 18000, -5000, -3500, "����`����");
	CreateTextureEX("������", 18000, -5000, -3500, "����`����");
	Zoom("������", 0, 4000, 4000, Dxl2, true);
	Zoom("������", 0, 4000, 4000, Dxl2, true);
	Rotate("������", 0, @0, @0, @45, null, true);
	Rotate("������", 0, @0, @0, @45, null, true);

	SetVolume("@�������*", 500, 0, NULL);
	SetVolume("@mbgm09", 1000, 1000, NULL);
	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_����_�z��������03",1000);
	OnSE("se���L_����_�z��������",1000);

	Fade("���٥�ȣ�", 0, 1000, null, false);
	Shake("���٥�ȣ�", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 500, 1000, null, true);

		Move("������", 0, @0, @-280, Axl1, true);
		Fade("������", 0, 0, null, true);
		Delete("���٥�ȣ�");
		Delete("���C��");
		Delete("�ԙC��");
		Move("���C��", 0, -10, -80, Axl1, true);
		Rotate("���C��", 0, @0, @0, @-120, null, true);
		Zoom("���C��", 0, 500, 500, Dxl2, true);
		//��������
		MoveSSP1("@���C��",100000,0,3,0,3,500,null);
		SetBlur("���C��", true, 2, 300, 50, false);
		Request("���C��", Smoothing);

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		OnSE("se���L_����_�z_�����w��02",1000);
		SoundPlay("������ɣ�",500,600,true);

	CreateSCR1("@������","@������",1000,1000,3000);
	Fade("ɫ��", 500, 0, null, false);

	Wait(3000);

	//WaitKey();
	SetVolume("������ɣ�", 2000, 0, NULL);

	SetBlur("���C��", false, 2, 500, 200, false);

	MoveSSP1stop();
	Move("������", 1000, @100, @280, Dxl1, false);
	Fade("������", 1000, 1000, null, false);
	Shake("���C��", 1000, 50, 50, 0, 0, 700, Dxl1, false);
	Move("���C��", 1000, -950, -533, Dxl2, false);
	Rotate("���C��",1000, @0, @0, 30, Dxl2, true);

	SCR1stop();
	Wait(500);

	CreateWindow("������ɥ���", 150, -500, 90, 3000, 1000, false);
	SetAlias("������ɥ���", "������ɥ���");
	CreateTextureEX("������ɥ���/������", 18100, -900, -505, "cg/bg/bg109_������g.jpg");
	CreateTextureEX("������ɥ���/�ԙC��", 18100, 50, -50, "cg/st/3d������K_����_���Lb.png");
	Rotate("������ɥ���", 0, @0, @0, @-29, null, true);
	Rotate("������ɥ���/�ԙC��", 0, @0, @0, @50, null, true);
	Zoom("������ɥ���", 0, 0, 0, Dxl2, true);
	Fade("������ɥ���/*", 0, 999, null, true);

	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	Move("������ɥ���/�ԙC��", 2000, @100, @100, Dxl1, false);
	Move("������ɥ���/������", 2000, @-50, @-50, Dxl1, false);
	Move("���C��", 2000, -364, -145, Dxl2, false);
	Zoom("������ɥ���", 2000, 1000, 1000, Dxl2, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0170a14">
��������������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0180a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ǰ��������ǰ����
��������ǰ��������ǰ����

������һ����ս��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�T��ͻ
//�����Ф餯�ݳ������`
//�����������Ӥ����Ƥ����������Ϥä��¤�����
//��Ź��Ϥ��˙C�ӑ��줼���ꡣ
//���ɥ饴��ܩ`��Α��L�äݤ��Ф�����
//�������Ȥ��Ƶ������á�

	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M06",1000);

	Move("���C��", 300, 441, 327, Axl1, false);
	Move("������ɥ���/�ԙC��", 300, -500, -500, Axl1, false);

	DrawTransition("ɫ��", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Fade("ɫ��", 200, 1000, null, true);

	Wait(1000);

	Delete("������ɥ�/*");
	Delete("������ɥ���");
	Delete("���٥��*");
	Delete("����*");
	Delete("���ե�����*");
	Delete("���C*");
	Delete("�ԙC*");
	CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev251_����VS�y�ǺśQ��ڶ���.jpg");
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������ã�����ʤ����

���޷������������һ����
�����ǣ�����Ҳ�޷���������һ����

�������ԣ��ƾ����С�
������ǧ��������ξ����������׷��ִ����ս��������
�Ѿ��ﵽ�Ͷ���ǧ��������ξ���������Ǻ�ͬ�ȵ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//���ǡ�����˴�����һ�������y�ǺŴ����w�ӡ�����
//��׷�ġ��y�ǺŤϤ�����o�����ϕN

	CreateTextureEX("������", 18000, -5000, -3500, "����`����");
	CreateTextureEX("������", 18000, -5000, -3500, "����`����");
	Zoom("������", 0, 4000, 4000, Dxl2, true);
	Zoom("������", 0, 4000, 4000, Dxl2, true);
	Rotate("������", 0, @0, @0, @45, null, true);
	Rotate("������", 0, @0, @0, @45, null, true);

	CreateTextureEX("������", 18050, -4000, Middle, "����`����");

	CreateTextureEXadd("���ե����ȣ�", 19000, 20, 20, "cg/ef/ef020_����ͻ؞03.jpg");
	Zoom("���ե����ȣ�", 0, 10000, 10000, Dxl2, true);
	SetVertex("���ե����ȣ�", 1024, 576);
	CreateTextureEXadd("���ե����ȣ�", 19000, -20, -20, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	Zoom("���ե����ȣ�", 0, 10000, 10000, Dxl2, true);
	SetVertex("���ե����ȣ�", 0, 0);

	CreateTextureEXadd("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef044_��a.jpg");
	SetBlur("���ե����ȣ�", true, 2, 500, 100, false);

	//��ȫ������
	MoveFRP1("@���ե����ȣ�",5000,15,15);
	MoveFRP2("@���ե����ȣ�",5000,15,15);

	CreateSE("������ɣ�","se����_��x_��������03_L");
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	OnSE("se���L_����_��ͻ�M01",1000);
	SoundPlay("������ɣ�",0,1000,true);
	SoundPlay("������ɣ�",4000,1000,true);

	Fade("ɫ��", 100, 1000, null, true);
	Delete("���٥�ȣ�");
	CreateSCR1("@������","@������",1000,1000,3000);
	Fade("ɫ��", 1000, 0, null, false);
	Zoom("���ե����ȣ�", 1000, 1100, 1100, Dxl2, false);
	Fade("���ե����ȣ�", 1000, 1000, null, true);

	Wait(1000);

	Fade("ɫ��", 100, 1000, null, true);
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("ɫ��", 1000, 0, null, false);
	Zoom("���ե����ȣ�", 1000, 1100, 1100, Dxl2, false);
	Fade("���ե����ȣ�", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("������ɣ�", 3000, 0, NULL);
	SetVolume("������ɣ�", 3000, 400, NULL);
	OnSE("se���L_�n��_�nͻ01",1000);
	OnSE("se���L_�Ɖ�_���k06",1000);

	Shake("������", 2000, 100, 0, 0, 0, 700, Dxl3, false);
	Fade("������", 200, 1000, null, false);

	Zoom("���ե����ȣ�", 2000, 20000, 20000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 20000, 20000, Axl2, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Wait(500);

	Zoom("���ե����ȣ�", 1500, 2000, 2000, Axl1, false);
	Fade("���ե����ȣ�", 1000, 1000, null, 500);
	Fade("ɫ��", 1000, 1000, null, true);

	MoveFRP1stop();
	MoveFRP2stop();
	SCR1stop();

	Wait(1000);

	Delete("���ե�����*");

	CreateTextureEX("������", 18000, -4500, Middle, "����`����");
	CreateTextureEX("������", 18000, -4500, Middle, "����`����");

	CreateTextureSP("���C��", 18100, -150, -50, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	CreateTextureSP("�ԙC��", 18100, 0, -293, "cg/st/3d������K_�T��_ͨ��.png");
	Zoom("�ԙC��", 0, 500, 500, Dxl2, true);
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	Rotate("���C��", 0, @0, @0, -90, null, true);

	CreateTextureEX("������", 18100, 0, 0, "cg/bg/bg109_������g.jpg");
	CreateTextureEX("���C��", 19100, 0, 0, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	Rotate("���C��", 0, @0, @0, -180, Dxl1, false);

	CreateTextureEX("���ե����ȣ�", 18100, 0, 0, "cg/ef/ef010_����б��܉��.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	//��������
	MoveSSP1("@�ԙC��",100000,0,2,0,2,600,null);
	MoveSSP2("@���C��",100000,0,2,0,2,600,null);

	Move("�ԙC��", 1000, -170, -293, Dxl1, false);
	Move("�ԙC��", 2000, @-100, @50, Dxl1, false);

	CreateSCR1("@������","@������",1000,0,@0);
	Fade("������", 0, 0, null, true);
	Fade("ɫ��", 1000, 0, null, false);

	Wait(2000);

	Move("�ԙC��", 300, @-50, @50, Axl1, true);

	SetVolume("������ɣ�", 500, 0, NULL);
	Fade("ɫ��", 0, 1000, null, true);
	OnSE("se���L_����_�����02",1000);
	Fade("���ե����ȣ�", 0, 1000, null, true);
		Fade("������", 0, 1000, null, true);
		Fade("�ԙC��", 0, 0, null, true);
		//Zoom("���C��", 0, 1000, 1000, Dxl1, false);
		Move("���C��", 0, -113, -354, Dxl1, false);
		MoveSSP1stop();
		MoveSSP2stop();
		SCR1stop();
		OnSE("se���L_����_��ͻ�M01",1000);

		CreateColorEXadd("ɫ��", 20000, "#FFFFFF");
		CreateColorEXadd("ɫ��", 20000, "#FFFFFF");
		Request("ɫ��", Erase);
		CreateTextureEXadd("���ե����ȣ�", 18100, 0, 0, "cg/ef/ef021_������x�k��a.jpg");
		CreateTextureEX("���ե����ȣ�", 18100, 0, 0, "cg/ef/ef021_������x�k��b.jpg");
		CreateTextureEX("���ե����ȣ�", 18100, 0, 0, "cg/ef/ef021_������x�k��b.jpg");
		Request("���ե����ȣ�", Erase);
	Rotate("���ե�����*", 0, @0, @180, @0, null,true);

	Fade("ɫ��", 300, 0, null, false);
	Zoom("���ե����ȣ�", 300, 1000, 1000, Dxl1, false);
	Fade("���ե����ȣ�", 300, 0, null, false);
	Move("������", 500, -1000, @0, Dxl1, false);
	Move("���C��", 500, @0, @200, Dxl1, false);
	Rotate("���C��", 500, @0, @0, 360, Dxl1, true);

	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Move("������", 500, @-100, @0, Axl1, false);
	BezierMove("���C��", 500, (@0,@0){@300,@200}{@600,@200}(@900,@-400), Axl1, true);
	Fade("���C��", 0, 0, null, true);

	Fade("������", 300, 1000, null, true);

//ͽ�i����������Ƥ��Ȥ�
	OnSE("se����_�z_���ͥ륮�`���01",1000);

	Fade("���C��", 0, 1000, null, true);
	Move("������", 500, -188, -215, Dxl1, false);
	Rotate("���C��", 500, @0, @0, 0, Dxl2, false);
	Move("���C��", 500, -113, -354, Dxl1, true);

	Fade("ɫ��", 300, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Fade("���ե����ȣ�", 500, 1000, null, false);
	DrawTransition("���ե����ȣ�", 500, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	CreatePlainEXadd("������", 19100);

	//��������
	MoveSSP1("@������",100000,0,2,0,2,500,null);
	MoveFRP1("@������",5000,10,10);
	CreateZZP1("@������",500,1050,1100,Dxl1,Axl1,700,0);
	MoveSSP2("@���ե����ȣ�",100000,0,2,0,2,500,null);
	CreateAFB1("@���ե����ȣ�","@���ե����ȣ�",300,500,400,2);
	CreateAFB2("@ɫ��","@ɫ��",600,300,1100,2);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0190a14">
���װ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("ɫ��", 20000, "#FFFFFF");
	Fade("ɫ��", 300, 1000, null, true);

//���y�Ǻš����ͥ륮�`����
	OnSE("se���L_�y�Ǻ�_�֥쥤���󥰥��ȥ�`��",1000);

	CreateTextureEX("���٥�ȣ�", 18100, 0, 150, "cg/ev/ev936_�y�Ǻť֥쥤���󥰥��ȥ�`��.jpg");
	CreateTextureEXadd("���٥�ȣ�", 18100, 0, 150, "cg/ev/ev936_�y�Ǻť֥쥤���󥰥��ȥ�`��.jpg");
	Zoom("���٥�ȣ�", 0, 1200, 1200, null, false);
	Zoom("���٥�ȣ�", 0, 1200, 1200, null, false);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Request("���٥��*", Smoothing);


	Delete("���ե�����*");
	Delete("�ԙC*");
	Delete("���C*");
	Delete("����*");

	MoveSSP1stop();
	MoveSSP2stop();
	MoveFRP1stop();
	ZZP1stop();

	Fade("ɫ*", 300, 0, null, true);

	Move("���٥�ȣ�", 5000, @0, @50, null, false);
	Zoom("���٥�ȣ�", 5000, 1300, 1300, null, false);
	Shake("���٥�ȣ�", 1000000, 2, 0, 0, 0, 1000, null, false);
	Fade("���٥�ȣ�", 1500, 500, null, true);

	SetVolume("OnSE*", 1000, 700, null);


	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0200a14">
�����ȼ��ߡ�������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("OnSE*", 1000, 1000, null);

//���֥쥤���󥰥��ȥ�`�ࡣ�����ө`��ʡ�
	OnSE("se���L_�Х���_�ܩ`�������01",1000);
	OnSE("se���L_��_����ӥƥ��֥饹��_�k��",1000);
	Move("���٥��*", 500, @0, @-1260, Axl2, false);
	Zoom("���٥��*", 500, 1500, 1500, Axl2, true);

	SetFwR("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0210a01">
����������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������ϱ�չ�_
//�������`���������μ�ͻ
//�����K��äơ��������y�ǺŤޤ����š�һ����
	SetVolume("@mbgm*", 1000, 0, NULL);

	OnSE("se���L_��x_����չ�_",1000);
	Fade("ɫ��", 500, 1000, null, true);

	OnSE("se���L_��x_��������",1000);
	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev903_�����ŚݥХꥢ�`չ�__b.jpg");
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 100, 0, null, true);

	Wait(500);
	Fade("ɫ��", 100, 1000, null, true);


	OnSE("se���L_�n��_�nͻ01",1000);
	Wait(3000);

	SetVolume("�������*", 3000, 0, NULL);
	SetVolume("OnSE*", 3000, 0, NULL);

	AFB1stop();
	AFB2stop();

	Delete("���٥�ȣ�");
	Delete("���٥�ȣ�");
	Delete("���٥�ȣ�");
	Delete("ɫ��");
	Delete("ɫ��");
	Delete("ɫ��");

	CreateTextureSP("������", 16100, Center, Middle, "cg/bg/bg109_������g.jpg");
	CreateTextureSP("���C��", 16100, -488, -259, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Zoom("���C��", 0, 50, 50, Dxl2, true);
	CreateTextureSP("�ԙC��", 16100, 180, -100, "cg/st/3d������K_�T��_ͨ��.png");
	Zoom("�ԙC��", 0, 50, 50, Dxl2, true);

	Rotate("�ԙC��", 0, @0, @0, @80, null, true);
	Fade("ɫ��", 1000, 0, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0220a14">
������������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0230a01">
������������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0240a14">
����֡�����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0250a14">
���޷���⡣
����ôҲ���޷���⡣��

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0260a14">
��ȷʵ�ǳ��þ�����
����δ�й�������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0270a14">
�������ƥ�е������ͼ�����
��ֻ��˵���ʡ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0280a14">
������������ˡ�����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0290a14">
��Ϊ�Σ��޸о���
��Ϊ�Σ���δԾ������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0300a14">
���������ѵ����Ǻ����

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0310a14">
�����뾰��ս�����ˡ�
������������߰�������ɡ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0320a14">
��Ϊ��������˿��飿
�������ǡ����Ϳ���֮��Ļ�Ź������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0330a01">
������������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0340a15">
��������������
������������������������񡣡�

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0350a15">
����֮�뷨�����а��ġ���

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0360a14">
��������������

//�����ߣ������Ϥ碌����
//���ʤ���֤Ϥ������ˤ���̡�
{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0370a15">
����֮�ֳ����ڴ˴�����

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0380a14">
��ʲô����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0390a14">
�����������ܡ�
������ǰһ��������Ů��Ʋ��������
�ٰ�������  �����ܡ�����

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0400a15">
������ʱ��ͬ��
�������Ǻ϶�Ϊһ����ʿ����

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0410a15">
������������һ�룬
��Ҳ���ļ�һ���𡭡���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0420a14">
����ô����?!��

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0430a15">
������˵���ڣ��ն��������ı���������ʳ��
��˼�뱻���ɣ����屻֧�䡣��

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0440a15">
������������������

{	SoundPlay("@mbgm01",0,1000,true);
	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0450a14">
��������������������

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0460a14">
��ʲ����ʲô��������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0470a15">
��Ҫ�Ͽ�����Ӣ��֮����
�������ڽ���֧���£����޵ؼ���˼���ͷ�Ӧ��
�˷������µĽ���𡣡�

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0480a14">
���������ԣ�������������
����������������������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0490a14">
�����������������ش��ң�
���㣬Ī�ǣ�����˽��еĿ�����?!��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0500a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���յ�ǿ�ҵ��źš�<k>
��
��ȷ��û�л�Ӧ��Ҫ��

������״̬������������
��ս��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ͻ�ġ����
//��ֱ�ġ������w���y�Ǻ�

	CreateTextureEX("���٥�ȣ�", 19000, 0, 0, "cg/ev/ev935_����ϥ���_a.jpg");

	OnSE("se���L_����_�z_���02",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, true);
	Delete("�ԙC*");
	Delete("���C*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������ر�ʧ�ܡ�
����ȷ˵����δ��ȡ�رܡ�

�����ҵ�ǿ��һ�����У�������Զ֮����
�������Ʋ����ܵ��൱�̶ȵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 18000, 0, 0, "cg/bg/bg204_�����ر���_04.jpg");
	StL(18100, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStL(0,true);

	FadeDelete("���٥�ȣ�", 500, true);

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0510a15">
����������

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0520a14">
������������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0530a14">
���С������ܲ�������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0540a14">
���������������ġ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0550a14">
����Ĳ������𡣡�

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0560a14">
��������ġ�����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0570a14">
�����ҵľ�����������!!
��֩�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ӥ�Ӥꡣ�n���ߤ�
	OnSE("se����_������_�衩���n�Ĳ�",700);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_�����Ƅ�.jpg", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��ǿ�ҡ�������ǿ�ҵķ�ŭ�źš�
��
��û�б�Ҫ��Ӧ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0580a14">
��������
�������ϡ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0590a14">
���㾹Ȼ�����Ѿ���!!��

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0600a15">
��������Ů���ܶ��Ծ��ϵġ�
�������Ǿ����ٿ���ͬ�⡭������
Ī�������������ָʾ������

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0610a14">
�����졣��

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0620a15">
��������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0630a14">
����Ų����ܡ�
���������������ý��ж�ȡ�Լ���һ�С�����

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0640a14">
���ң���ǰ��˵����
���Ὣ������һ�С������ߡ���

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0650a14">
���һ���ߵġ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0660a14">
�����������ߣ���Ϊ����֮��ģ����ң���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0670a14">
��ֻ�й�ӵ�е�Ȩ��!!��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0680a01">
������������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0690a14">
�������ҡ���֩�룡
��������ʲô�����۷���ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��û�б�Ҫ��Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ͻ�M��ӭ���Ĥ��y�Ǻ�
//������

	DeleteStA(300,true);

	OnSE("se���L_����_�z_���04",1000);
	CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev251_����VS�y�ǺśQ��ڶ���.jpg");
	EffectZoomadd(18100, 1000,300, "cg/ev/ev251_����VS�y�ǺśQ��ڶ���.jpg", false);
	Fade("���٥�ȣ�", 500, 1000, null, true);
	Wait(500);

	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0700a14">
���ɺޡ���

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0710a01">
������������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0720a14">
���ɺް���
����������ר�еľ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�Ĥ�һ�ġ����e
//�����x��ȡ���y�Ǻ�

	Fade("ɫ��", 0, 1000, null, true);

	OnSE("se���L_�Ɖ�_�z04",1000);
	Delete("���٥�ȣ�");

	StL(18000, -300, -340,"cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 2000, 2000, null, true);

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg204_�����ر���_04.jpg");
	FadeStL(0,true);
	CP_AllDelete();

	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("@StL*", 1000, 800, 800, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

	SetFwR("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0730a14">
�����絶�ʡ���
��ŭ�����⡣��

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0740a14">
���������߲����������쳣��������
�޷����ܡ���

{	SetVolume("@mbgm*", 3000, 0, NULL);
	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0750a14">
�����ˡ���

//������Ĥ֤�
{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0760a14">
����Ҫ�������顣
������һ�����顣��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0770a14">
����Ϊ�������ڻ��ںڰ�֮���а�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš����ͥ륮�`�ϕN
//���r�����_ʼ

	CreateSE("������ɣ�","se���L_�y�Ǻ�_�|�I���ħ����_�ʂ�");
	SoundPlay("������ɣ�",2000,1000,true);

	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev923_�y�Ǻų��݅���.jpg");
	Zoom("���٥�ȣ�", 0, 2000, 2000, null, true);
	SetBlur("���٥�ȣ�", true, 1, 500, 200, false);

	Fade("���٥�ȣ�", 1000, 1000, null, false);
	Zoom("���٥�ȣ�", 1500, 1000, 1000, Dxl1, true);

	DeleteStA(0,true);
	Delete("ɫ*");
	Delete("����`����");
	Wait(500);

	SetFwR("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0780a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�������Σ�ա�

�����𶯡�
���Ⲩ����
��
��������˵�ţ�����Σ�ռ������١�

��̽�ֶԲߡ�

�������˱ܡ����ϲ��ϡ�
���ȷ����ˡ����ϵ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ͻ�M

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0790a15">
�����ɿ��١���

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0800a15">
������ִ�С���

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0810a15">
�����޷��֡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`��������
	SetVolume("������ɣ�", 3000, 0, NULL);
	Wait(1000);
	CreateSE("������ɣ�","se����_������_���݅���_L");
	SoundPlay("@������ɣ�",2000,300,true);


/*
	StC(18000, @0, @0,"cg/st/3d�y�Ǻ�_����_��x.png");
	FadeStC(0,true);
*/

	CreateColorEXadd("�}ɫ���ե�����", 2000, "#FF00FF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	CreateTextureSPover("�}����200", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 2000, 2000, null, true);
	Fade("�}����200", 0, 500, null, true);

	CreateTextureEXsub("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("�Υ���", 0, 2000, 2000, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 50, 60, null);
	Fade("�Υ���", 0, 100, null, true);

	$Warp�ȥ�� = @�}ɫ���ե�����;
	$Warp�ȥ���ٶ� = 3000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;

	$��`�Ʃ`�ȥʥå����� = @�}����200;
	$��`�Ʃ`���ٶȣ� = 10000;
	$��`�Ʃ`�ȽǶȣ� = @360;


	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	SetVolume("SE01", 4000, 500, null);

//	FadeDelete("�\Ļ*", 2000, true);
	Fade("���٥�ȣ�", 1000, 0, null, true);


	SetFwR("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="��������" src="voice/md05/024vs0820a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����������

���޷�����ֹ��
�����뽩�֡�

����������������ʼ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev924_�y�Ǻ��|�I���ħ����.jpg");
	Zoom("���٥�ȣ�", 0, 2000, 2000, null, true);
	SetBlur("���٥�ȣ�", true, 1, 500, 200, false);

	Fade("���٥�ȣ�", 500, 1000, null, false);
	Zoom("���٥�ȣ�", 800, 1000, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0830a14">
��������ա�����ħ����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�I��ա��k��
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");
	CreateColorEXadd("�Ϸ��", 21000, "WHITE");

	SetVolume("������ɣ�", 1000, 1000, null);
	Fade("�Ϸ��", 1000, 1000, Axl1, true);

	MovieSESet(20000,"mvħ����","se���L_�y�Ǻ�_�|�I���ħ����_�k��");
	Fade("�}ɫ100", 200, 1000, null, false);
	Fade("�Ϸ��", 300, 0, Axl3, false);
	MovieSEStart(1000);


	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�}����*");
	Delete("���٥�ȣ�");
	Delete("�Ϸ��");


	CreateTextureEX("�}��������", 3500, Center, Middle, "cg/st/3d������K_�T��_���L3.png");
	Rotate("�}��������", 0, @0, @0, @-50, null,true);
	Move("�}��������", 0, @-100, @20, null, true);

	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1000, 1000, null, true);
//	Shake("�}��������", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("�}��������", true, 1, 400, 70, false);


$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 2500;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");


	CreateTextureEXsub("�}����������", 3000, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
//	SetVertex("�}����������", 512, 270);
	$�����ʥå��� = @�}����������;

	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");



	CreateTextureSPover("�}����100", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	CreateTextureSPover("�}����200", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 4000, 4000, null, true);
	Fade("�}����200", 0, 700, null, true);
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Fade("�}����100", 0, 700, null, true);


	CreateTextureEX("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�Υ���", Smoothing);
	Zoom("�Υ���", 0, 1500, 1500, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 20, 30, null);
	Fade("�Υ���", 0, 1000, null, true);


	$��`�Ʃ`�ȥʥå����� = @�}����100;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$��`�Ʃ`�ȥʥå����� = @�}����200;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$���`��ʥå����� = @�}����100;
	$���`��ʥå����� = @�}����200;


	CreateProcess("�ץ�����", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);


	Rotate("�}��������", 3000, @0, @0, @50, Dxl1,false);
	Zoom("�}��������", 3000, 400, 400, Dxl1, false);
	Fade("�}��������", 1000, 1000, null, false);

	SetVolume("������ɣ�", 3000, 500, null);
	FadeDelete("�}ɫ100", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���Ⱥڰ��������ĺڰ���

����ɫ���С�

���ڰ��������У���̥ͬ������֣�
����ͬӤ����������ʼ��ޡ�

���޷�Ŀռ���������ں�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//	CreateTextureEX("���ե����ȣ�", 18100, 0, 0, "cg/ef/ef037_�|�I���ħ����b.jpg");
//	Fade("���ե����ȣ�", 500, 1000, null, true);

	OnSE("se���L_�y�Ǻ�_�|�I���ħ����_�k��",1000);
	$Warp�ȥ�� = @�}ɫ���ե�����;
	$Warp�ȥ���ٶ� = 1000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;
	Fade("�}ɫ���ե�����", 1000, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�������ڳɳ���

  ������ʲô��
������ʳʲô��

�����޵����ͣ����͡�

�����������С�
���ڰ��Ǻڰ���

���ޱ����ɱ䣬ֻ�й�ģ����

������ʳʲô�ء�
�����������
  ����˵�Լ���

  ���������С�
���ڰ��Ǻڰ��� 

��������ʳ���������һ�ж����������

���ޡ�

��ֻ���������͡�

����ʳһ�У�
��һ�����Ϊ�ڰ�������

����������ա�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Fade("���ե����ȣ�", 500, 0, null, true);

//�����������m�����ݳ�
	SetVolume("������ɣ�", 2000, 1000, null);
	Fade("�Υ���", 2000, 300, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�������ж�ɥʧ�����ɡ�

���˴��Ѿ��ǳ��������Ч����Χ�ڡ�
���ڶ�����֮���������֣����ͷ��

�����С���<k>���ɡ�

���ҵ��������������ڴ������»�����Ч��
�������ݵ���ĳ�����ѹ�ơ�

��������������<k>
��
��
����������������

��Ϊ���ġޡ�
���޷��������޷�������

����ǿ��ǣ�������Ҳ�׽���롣
��Ψ������ʵ���Զ��׼���

���ڽӽ���
�����������ġ�

�������Ŀ�֮Դ��

�����з�����<k>
��
������ֱ���ִ������ģ��Ҽ����޷�ά����̬��

������֮ǰ����Ȼ��ӭ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 3000, 500, null);

//���|�I��ա��y�Ǻ�
//	Fade("���ե����ȣ�", 500, 1000, null, true);
	CreateTextureEX("�}�����y", 18001, Center, Middle, "cg/st/3d�y�Ǻ�_����_��x.png");
	Request("�}�����y", Smoothing);
	Zoom("�}�����y", 0, 1000, 1000, null, true);
	Fade("�}�����y", 1000, 500, null, true);

	SetFwR("cg/fw/fw��_�_�.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0840a14">
��������

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0850a14">
��ȫ�����룬����ҧ�顣��

//���⡿
<voice name="��" class="��" src="voice/md05/024vs0860a14">
���Ȼҳ���ϸ΢��������ǡ�����

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0870a14">
��Ȼ����;����ֿ���
��ֻ����Ĳ�����������

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/024vs0880a14">
����ͬ�³�������һ�㣡��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������m�����ݳ�
	SetVolume("������ɣ�", 2000, 1000, null);
	Fade("�Υ���", 1000, 1000, null, false);
	FadeDelete("�}�����y", 1000, false);
//	Fade("���ե����ȣ�", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����������״���������ƻ���

�������޷����ܵ��¡�
�������޷�����ҵĴ���Ŀ�ġ�

�����˴���ҵĴ���Ŀ�ģ������������κν����

�����ۡ�
��Ӧǧ���ټƣ�������״��

��̽���ֶΡ�<k>
��
���������л����У��ܶԿ��˳������󡰼�����ա���
����������

�����������С�

��ֻ��һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ұ̫��
	SetVolume("������ɣ�", 1000, 200, null);
	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Fade("���٥�ȣ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��Ұ̫���ĵ�Űε���
����һ����������

��������ʹ��̫���ĵ�Űε������ڼ��������ǰʧ�ܡ�
�����������⡰��������Űε�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("������ɣ�", 2000, 1000, null);
	FadeDelete("���٥�ȣ�", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
���о��������ڡ�<k>
��
����һ�㡣
�����ڳ���Ӱ��Ļ������ơ�

���������޷����ɻ�����޷���ʹ��Űε���
���Զ��׼���

������Ҫ�ָ����ɣ������ϣ�˲�����С�
���������Խһ���ѹء�

�����ػ����ɵ�һ˲�䣬��������������
���ܴ�ǿ�������Ȧ���������
��������˵������һ�������ϱ�׽��һ���Ĵ��Ӵ�һ��
ʹ�õ�Űε�Ҳ�����ܡ�

������Ҳ�����޷��쵽����Ϊ������û��ȫ���ӡ�
�������������塣

�������У����ѳ����ء�

�������ɡ�
��ֱ��ʹ����Űε���ʽ���ܱ����Ҳ����Ǹ���ɫ����
ǣ�Ƶĳ�����ɡ�

��������˵��������ǿ��������塣
��Ϊ�˶Կ����������ĳ�����
��ӵ����ǿά��������ĳ�������

���˵ȴ���֮���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, NULL);
	SetVolume("OnSE*", 2000, 0, NULL);
	SetVolume("�������*", 2000, 0, NULL);

//���¤ζˣ���Ӱ��
//�����ݳ������ߤ�bg001b�ޤ���ev238�Ȥ����زĤ����ɡ�
//��ʹ�ä��뤳�ȡ�Ҫ���ϡ�һĿ���¤Ȥ狼��褦�ˤ�
//�����ʤ���

	CreateTextureEX("���ե����ȣ�", 19100, 0, 0, "cg/bg/bg001_��c_03.jpg");
	Fade("���ե����ȣ�", 500, 1000, null, true);

	Wait(1500);
	CreateTextureEX("���ե����ȣ�", 19100, 0, 0, "cg/bg/bg110_����a.jpg");
	Fade("���ե����ȣ�", 1000, 1000, null, true);
	Delete("���ե����ȣ�");
	Wait(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
�������������ڡ�

����ʹ���Ǹ���
�����ú��ʡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SoundPlay("@mbgm13",0,1000,true);

//	CreateEffect("���ե����ȣ�", 19000, 0, 0, 1024, 576, Monochrome);
//	SetAlias("���ե����ȣ�", "���ե����ȣ�");

	Fade("���ե����ȣ�", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���ƻ�������

������������Ȧ��
�����Ǹ������ƶ���
��ʹ�õ�Űε������Ƽ�����ա�

�����ȣ�
��
������������һ�׶Ρ�

�����������������⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ͥ륮�`�ϕN
	CreatePlainEX("�}��д", 18000);
	SetVertex("�}��д", 410, 260);
	SetBlur("�}��д", true, 2, 500, 60, false);

	CreateSE("SE01","se����_��x_������01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	Fade("�}��д", 0, 750, null, true);
	Zoom("�}��д", 600, 1400, 1400, Dxl2, false);
	Fade("�}��д", 550, 0, null, true);

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0890a15">
��������������

{	FwR("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0900a01">
������������

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0910a15">
��Ҫ��ս�𣬲�Ф���е�Ů�ˡ���

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0920a15">
���������͡���
���⿪��ײ㷽�󡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
�������ƺ�������ҷ���ͼ��
����Ȼ�����ǶԷ����س���

���ǵġ�����ײ㷽��
  ��׽ס�ҵ�������ʱ������Ч����Ϊ��ץסʤ����
�������ӱܵĵ�·��

������һ����ѧ���⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0930a15">
���ɹ��Ļ������ܴӡ��������������롣
�����ǣ��������𡭡�����

//������������
<voice name="��������" class="��������" src="voice/md05/024vs0940a15">
��ֱ�����н�����飬ʱ����ʣ�޼���
������˶��ݵ�ʱ���ڣ����ҳ�������һ��
��ʮ���������𣿡�

{	FwR("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/024vs0950a01">
������������

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/024vs0960a15">
���Ǻǡ���Ȥ��
�������԰ɣ�����������ξ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//SetVolume("@mbgm*", 3000, 0, NULL);

	ClearFadeAll(2000, true);

	//�������ԥåȣ�������
	CP_AllDelete();

..//������ָ��
//�Υե����롡"md05_025.nss"

}


//�����å���
scene md05_024vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�\", 100, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("������ײ㷽��","��������ײ㷽��");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//���A�ӷ�ꇤ򥹥��åפ���
			$GameName = "md05_025end.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���A�ӷ�ꇤ򥹥��åפ��ʤ�
			$GameName = "md05_025.nss";
		}
	}
}


function RotetoLoop1()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}