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

scene md05_031a.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_031a.nss","TurboBlur3",true);
	

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

	$GameName = "md05_032vs.nss";

}

scene md05_031a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_031.nss"

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}�޴��", 1000, Center, Middle, "cg/ev/ev253_�|�I��դ��ڂ�.jpg");

	Delete("�ϱ���");

//�����

	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0010a14">
������Ϊ�Ρ�������

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/031a0020a14">
��Ϊ�Σ���׷��⣿
��Ϊ�Ρ���׷����ֻ֩�룿��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/031a0030a14">
��Ϊ�Σ�����?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������

���Ҿܾ��㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0040a14">
��Ϊ�Ρ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Һ��㣬�ǹ�ͬ��������۵����ˡ�

����������أ�������һ���İɡ�

����������ˣ���Ҳ���㲻ͬ��
������ס��ͬһ���硣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0050a14">
��Ϊʲô!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ǣ��Ρ�

����Ϊ���Σ�������ȫ�϶��Լ���

������ɱ¾��������ԸΪĿ��ǰ�е�����
���������κ����ʡ�

������ͬ���������ܡ�
��
��
�����Ҳ�ͬ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0060a14">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ҷ��Լ���

�����޷�����һ���������Լ�����ȷ�ġ�

����Ϊ������ʵ��
���޷�����Ϊ�ε���������ֻעĿ��ǰ��

�����ҵ�ս�������˻�ȣ���ʹ�����վ����ǰ
��ϲ���ѣ�
����Ҳ�޷�����������Щ��������Χ��������
��ʬ�塣

��ֻ����ô������׼һ��·ǰ����
��������ˣ���Ҳ���Բ��Ͽ��Լ��ĵ�·��

���Ҳ���Ϊ������ȷ�ġ�

��<RUBY text="��������">���㲻ͬ</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0070a14">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������Ρ�������ʵ��
���κ���ʵ�޷����ӡ�

����Ҫ��ѡ��ͬǰ���ߣ��Ǳ�ͬ������ʵ��

������һ�𣬲���ȾѪ֮·��
������һ��������ԭ���Լ���

�����ԡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md05/031a0080a00">
�����ԡ���

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/031a0090a00">
���Һ����㡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������֮�￪ʼ�㼯��
���ۼ������ӣ����֡�

���Լ������Լ�����
������֮�ϣ���ԭ������֮������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md05/031a0100a00">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��֩�����
//�������`��װ��

	CreateColorEX("��", 5000, "WHITE");
	Fade("��", 1000, 1000, null, false);

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DrawEffect("�}�޴��", 1600, "HardSplit", 30, 30, null);


	FadeDelete("�}�޴��", 1000, true);



	CreateTextureEX("֩���", 15100, @-400, @-300, "cg/st/resize/3d����֩��_����m.png");
	Zoom("֩���", 0, 1200, 1200, null, true);

	Zoom("֩���", 5000, 1000, 1000, null, false);
	Fade("֩���", 300, 300, null, true);




	FadeDelete("֩���", 1000, true);


//	Fade("��",1000,0,null,true);
//	Delete("��");


	SetFwC("cg/fw/fw��_�Ȼ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md05/031a0110a14">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);


//������������ѳ�

	OnSE("se����_냇��_������", 1000);
	CreateSEEX("SE01","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

//	CreateColorSPadd("��", 2500, "WHITE");


	CreateTextureSP("˲�g�Ƅ�", 1000, @0, @0, "cg/ef/ef034_����AȾ.jpg");

	CreateColorEXadd("�}ɫ100", 2000, "WHITE");
	Fade("�}ɫ100", 0, 500, null, true);

	$Warp�ȥ�� = @�}ɫ100;
	$Warp�ȥ���ٶ� = 500;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;



	CreateTextureEXadd("�}����������", 1500, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
//	SetVertex("�}����������", 800, 420);
	$�����ʥå��� = @�}����������;


	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);
	Fade("��", 1000, 0, null, true);


	Wait(3500);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	Fade("��", 1500, 1000, null, true);

	Wait(3000);

//	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md05_032vs.nss"



function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}