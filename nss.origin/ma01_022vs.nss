//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_022vs.nss_MAIN
{

//���å��ԥå��ãӣ��
	CP_AllSet("���");

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
	#bg002_��a_02=true;
	#bg001_��a_02=true;
	#bg201_�����ݳ������нֵ�_02=true;

	#ev942_�����֣����=true;
	#ev107_˫݆�҇��_a=true;
	#ev107_˫݆�҇��_b=true;
	#ev107_˫݆�҇��_c=true;
	#ev107_˫݆�҇��_d=true;
	#ev108_̫������_a=true;
	#ev108_̫������_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���=true;

	$PreGameName = $GameName;

	$GameName = "ma01_023vs.nss";

}

scene ma01_022vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"ma01_021.nss"

//���ݳ�ָʾ�Ϥۤܥ���`�ǣϣˡ����뤬�Ť��Τǡ�08/09/04
//���w�������Хҥ�`��
//����˥��`չ�_�����äȤ�����ϵ�Υե饤�ȥ���ߥ�`�����������L����󥸡����g�L��
//��ֱ�M��΢�٥��`�।��Ǳ�F����

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}�ե�", 10000, "#FFFFFF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Delete("�ϱ���");

	CreateColorSP("�\Ļ��", 1500, "Black");

	FadeDelete("�}�ե�", 2000, true);

//�룺��ĥ��Ʃ`����780��������450�̶Ȥ��붨
	Cockpit_AllFade(300,780,0);

	CreateColorSPadd("�}ɫ100", 1000, "White");
	Fade("�}ɫ100", 0, 800, null, true);


	Wait(300);

	OnSE("se����_���å��ԥå�_������04",1000);
	Fade("�}ɫ100", 1000, 0, Dxl1, false);
	DrawTransition("�\Ļ��", 800, 1000, 0, 300, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");

	Delete("�}����100");

	SoundPlay("@mbgm36",0,1000,true);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("shin01", 1200, Center, -800, "cg/st/resize/3d���_�T��_ͨ��.png");

	Move("shin01", 0, @-500, @0, null, true);

	Request("�}����100", Smoothing);
	Request("shin01", Smoothing);

	Zoom("�}����100", 0, 550, 550, null, true);
	Zoom("shin01", 0, 500, 500, null, true);

	Fade("�}����100", 0, 1000, null, true);

	CreateSE("SE01","se���L_����_���д��C_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("shin01", 500, @+500, @0, Dxl1, false);
	Fade("shin01", 500, 1000, null, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", true);

	Wait(500);

	Move("�}����100", 1500, @-200, @-150, null, false);
	Move("shin01", 1500, @-180, @-100, null, false);
	Zoom("�}����100", 1000, 1000, 1000, Dxl1, false);
	Shake("shin01", 100000, 1, 1, 0, 0, 500, null, false);
	Zoom("shin01", 1000, 1000, 1000, Dxl1, true);

	Wait(1500);

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("shin01", 500, @+2000, @-600, Dxl1, true);

	SetVolume("SE01", 500, 0, null);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Cockpit_AllFade2();
	MyTr_Count(0,350);
	CP_SpeedChange(0,600,null,true);
	CP_HighChange(0,890,null,true);

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",300,1000,0,1000,null,true);
	FrameShake();
	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@�}����100",1);

	CP_AziChange(10000,14,AxlDxl,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����С�������

���������ƽ����ٽ���ת��ȷ��������޶�
ʱ���ڲ�������ƶ��������������
�������衣���ֱ�ܳ�֮Ϊ��ı�Ľ������٣�
��ĵ�װ��ȴ��ɫ����ˡ�

���˷��˿��н����Σ����
װ�״��ư���ɫ����ջ���һ��������
��
��ȷ�ϳ�������Ұ����Ǳ�

���ٶȴﵽ���ٺ��ߡ�
���߶���С�ھŰ١���<k>���͵ĵͿշ���ʮ��Σ�ա�

�����������ţ��ָ������ȶ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 500, null);


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();

	Delete("shin01");

	CreateTextureSP("�}Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureSP("�}Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_��a_02.jpg");

	CreateTextureSP("�}���", 1600, Center, Middle, "cg/st/3d���_�T��_ͨ��.png");

	SetVertex("�}Rollbg*", 0, Middle);
	Zoom("�}Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@�}���",2);

	CreateSCR1("@�}Rollbg001","@�}Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("�}����100", 500, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureEX("�}St100", 1000, Center, -325, "cg/st/3d���_�T��_ͨ��.png");
	Fade("�}St100", 0, 1000, null, true);

	Shake("�}����100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@�}St100",1);
	Cloud_Move(1000);
*/


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ٶȲ�δ����������������ʵ�����ķ����ҡ�
����ǰ���ں����ĵ���ʹ�������һ�η������ܡ�
��ʱ������������
�Ҽǵ���ʱװ���ٶ�ԶԶ���ڴ˿̡�


��Ϊ�ν���ʹﲻ����
����ʲôԭ����

�������µ�����Ҳ��뵽��Ӧ�ö�װ������
�ٶ������һЩ��Ȼ��ͬʱ��Ҳ����
��û�Ǹ���Ҫ����<k>��Ϊ��ȫ
û�����������������̬�����֡���

��<RUBY text="����������������">����ͬ������֮��</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 1000, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	Cockpit_AllFade2();

	BGMoveDelete();
	Delete("�}StRollbg*");
	Delete("�}���");

	SCR1stop();
	CloudZoomDelete(0,true);

	Delete("�}St100");
	Delete("�}����100");

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ҽ��겻���أ�һζ��ǰ���С�
�������ӵ�����źá���������������ȥ��Ҫ
Խ���ض�����Ȧ�ˡ����ֽ��������⡣


�������޵�<RUBY text="�״�">������</RUBY>��Ȼ�������Է���Ȧ�ڲ����ע�⣬
����Խ�����ӽ��߾�������ȴ��׼ȷ����ز�׽��
����δ����������ʶ���źŵ�����˵���Ǳ���ζ�ţ�������

��������ζ�Ҫ����֮ǰ˦�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

	#voice_on_���=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0010b38">
�����<RUBY text="�Ϸ���δ">�Ϸ���������</RUBY>���������婖��
����Ϯ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0020b57">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ϯ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0030a00">
��<RUBY text="�ģ�������">β��׷��</RUBY>������֮�ܡ�
��Ψ��<RUBY text="�£���������">ӭͷ�ͻ�</RUBY>��Ϊ������ҫ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0040b57">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ͷ���ڲ��������˵�������
���漴���ู�ڲ���Χ����ë�������

�����ָд��ǡ�
���������д���ʱ���ܸ�֪���ģ����֡�

����Ƥ�������
����ë������
���������������ⲿ��������Ϯ���ĺ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


/*

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0050b57">
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//����أ����ȥ�`�롣�ԥå����å�
//�����������r���߶�Ӌ���ٶ�Ӌ��Ϥ碌�Ɖ��

	CreateSE("SE10","se����_��_��Ġ����02");
	CreateSE("SE11","se����_��_��Ġ����02");

	CreateColorEXmul("�ե�å����", 15000, "RED");
	Fade("�ե�å����",100,500,null,true);
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE11",0,500,0,1000,null,false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	OnSE("se���L_����_��ͻ�M03",1000);

	BGMoveDelete();
	CP_RollBarMove("@�}����50",2000,90,Dxl1,false);

	Wait(900);

	CP_AltChange2(1000,45,null,false);
	Zoom("�}����50", 2500, 1500, 1500, Axl1, false);
	Move("�}����50", 3500, @+250, @+550, Dxl1, false);
	MyTr_Count(2000,545);
	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1200,null,false);
	CP_AziChange(2500,92,Axl1,false);
	Wait(1000);
	CP_SpeedChange(3000,512,null,false);
	CP_HighChange(3000,600,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 1, null);


	CreateColorEXadd("�ե�å����", 19000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	MovieSESet(20000,"mv��ļ���","se����_mv��_��ļ���");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 700, null);
	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);
	CreateTextureSP("Rollbg001", 1500, -1024, -576, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureSP("Rollbg002", 1500, -1024, -576, "cg/bg/resize/bg001_��a_02.jpg");
	SetVertex("Rollbg*", 1024, Middle);
	Zoom("Rollbg*", 0, 1000, 5000, null, true);
	CreateSCR1("@Rollbg001","@Rollbg002",1000,0, @0);

	FadeDelete("�ե�å����",500,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��<RUBY text="�ң���">���</RUBY>��
����ת����ı䷽���ӱ��ӱ��ӱܡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓ĥ��åȥ���
//�����`����ӡ���˥��`�������e���
	CreateColorEX("�}ɫ100", 20000, "Black");
	CreateColorEX("�ե�å����", 21000, "WHITE");
	SL_leftup2(20001, @0, @0, 1500);

	Fade("�}ɫ100", 300, 1000, null, true);

	BGMoveDelete();
	Delete("�}Rollbg*");
	Delete("Rollbg*");

	SCR1stop();
	CloudZoomDelete(0,true);

	FrameShakeDelete();

	Wait(50);

	OnSE("se���L_����_Ұ̫�����01",1000);

	SL_leftupfade2(6);

	Wait(100);

	Fade("�ե�å����",0,1000,null,true);
	Delete("�}ɫ100");
	CP_AllChange("@�}����50",0, 500, 900, 512, 350);
	CP_RollBarMove("@�}����50",0,-5,null,true);
	Move("�}����50", 0, -512, -338, null, true);
	Move("�}����50", 500, -512, -288, null, false);
	CP_RollBarMove("@�}����50",0,10,null,true);
	Shake("@CP_Frame", 500, 30, 0, 0, 0, 500, null, false);
	OnSE("se���L_�Ɖ�_�z04",1000);
//Azi = 25
	CP_AziChange(0,25,null,true);

	CP_RollBarMove("@�}����50",500,0,Axl1,false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	OnSE("se���L_�Ɖ�_���k01",1000);
	FrameShakeOnly(1500,6,10,600,Dxl1,false);
	CP_RollBarMove("@�}����50",500,5,Axl1,true);
	CP_RollBarMove("@�}����50",500,-5,Axl1,true);
	CP_RollBarMove("@�}����50",500,0,Axl1,true);
	CP_IHPChange(500,9,null,false);
..//Power_900
	CP_PowerChange(500,900,null,false);
	MyLife_Count(500,702);
	MyTr_Count(500,424);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0060b57">
���Ȱ�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveAuto("@�}����50");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ู�ܵ����ҳ����
����һֱ�������ڣ�����������������

�����з·��������ڹ���һ�㡣
���е�θҺ��ӿ��

��ƾ����־������ס�о����������ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0070b57">
���������𡪡���ģ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0080b38">
��װ�������ܵ��������ˡ�
���Է��м�ս������Ӱ�졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ƺ�û�б����ˡ�
������ȷ�ϱ�Ϯ֮�����޴󰭣��������ʵ�е����ĵ�
ͬʱȴ���ɵ�����һ�������ĺ���֡�
��Ļش��е�һ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0090b57">
������ս������

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0100b38">
�������ٶ����ҷ�֮�ϡ�
������ս���������ѡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0110b57">
��������ٶȲ������ˣ�
���㱾�͸û��ܷɵø����!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0120b38">
��û��������Ҫʱ�䡣
�������ڵĸ߶ȣ�Ѹ������ٶȺ��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������߶ȣ�
��ԭ����ˡ���Ϊ�Ϳտ�������ǿ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0130b57">
���Ͳ������취��!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0140b38">
������˦������׷�٣�
�����ٶ���ʹ������Ϊ���ɡ�
��Ȼ��������ȷ�������ٶȳ��Ϊǰ�ᡣ
��״����ƥ�䡣��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0150b57">
����������

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0160b38">
���ж���ս��Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���뽣������ĳ����޻������ߡ�
����ʹ����Ҳû�ðɡ���ô��ֻ��ҧ�����ء�

����ս��
���ѵ�����ս���𡭡�������֮�䡣������֮�䣡

��ƾ�轣��֮��ɱ������ϰ�ߡ�
�����Ǻ����ߣ����������Լ����ಮ��֮�˵�ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0170a00">
���崨��������޷���ͬ��
������ı��������߾�ֹ��ơ���

//��������
<voice name="����" class="����" src="voice/ma01/022vs0180a00">
������̫����
���ҷ�������������һ��ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CPMove_Auto001("@�}����50",1500,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����������У�����������ٶ������Ľ��д�������
װ��ͨ�š�
���Ǵ��ݲ��ȵ����������˸е��쳣�־塣

����һ��ֱ����
��
�������Ǹ����˾��Բ��������ӵ���
��׷�١����񡢳��������ݡ�

���һᱻɱ����

���ᱻɱ���ġ�
���ս���Щ����֮��������ª�ĵ�ƽ��֮�ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0190b57">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���ǵġ�û��
���ҵ������������֮�¡�

���ҵ�ѧ���ǡ�
��������ֱ������ν���������ǡ�

����������֮����������ء�

������һ��ᱻ��ʴ��
���������������������ؽ��������ۡ�

����������Ϊ���ı�Ȼ��
��
���Ƿݱ�Ȼ����Ȼ������ȴ�ܾ�������

����������Ҫ����˫�����ȡ�
���������ǵ�������

��������֮�����������֮��ӭ���սᡣ
����������縺�����Ρ�
��
����һ�л�����û�н�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CPMove_AutoR001("@�}����50",3000,false);
	SetVolume("@mbgm*", 4000, 0, null);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0200b57">
��������ġ�
���Ǽһﱨ�ϵ���ʲô���֣���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0210b38">
��������������ǧ�Ӷ��죬������ξ������
����ν�������׵����ס�
�ϱ���ʱ�����𲢵����µ�һ֮����
���������´��Ҷ�����������������������

//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0220b38">
��������Ϊ����û����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����󸽼ӵ���һ�仰��������������
������Ӧ�е�������
�����������������á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0230b57">
�����״����������ϱ�����ս�ұ�Ϊ������
Ԫ���𡣴�����Ψ����Ѫ������ֹ�������䣬
��Ϊ���������������������
�������Ķ������赲���𡣡�

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0240b38">
�������ǵ�ʱ���������������Ұ̫��ӦΪ������
��Ŀǰ������
��������Ϊ��̫ͨ����������թ�ƵĿ����ԡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0250b57">
���������ã�
�������������Ҳ���������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0260b57">
���һ�����Ҫ������
����ģ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0270b38">
�����ס���ʼս����
������λ�ã�<RUBY text="�Ϸ�����">�Ϸ������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ��T����
//���ҥ�`�롢�ԥå����åף�����
//���˄�ֱ����ֱ�M

	SoundPlay("@mbgm08",0,1000,true);

	OnSE("se���L_����_��ͻ�M03",1000);

	BGMoveDelete();
	CP_RollBarMove("@�}����50",1000,-45,Dxl1,false);

	Wait(500);

	CP_AltChange(500,15,null,false);
	Zoom("�}����50", 1200, 1500, 1500, Axl1, false);
	Move("�}����50", 2000, @-250, @+500, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
//Azi = 57
	CP_AziChange(1000,-47,Axl1,false);
	Wait(1000);
	MyTr_Count(600,350);
	CP_SpeedChange(1000,700,null,false);
	CP_HighChange(1000,800,null,false);
	CP_RollBarMove("@�}����50",1000,0,Dxl1,true);

	SetVolume("SE01", 300, 0, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	StC(1000, @-60,@+380,"cg/st/3d���_�T��_ͨ��.png");

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("@StC*", 500, @+60, @-60, Dxl2, false);
	FadeStC(500,false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Wait(400);

	StC(1000, @0,@+320,"cg/st/3d���_�T��_���L.png");
	OnSE("se���L_����_������02",1000);
	FadeStC(200,true);

	Wait(300);

	OnSE("se���L_����_��ͻ�M03",800);
	DeleteStC(400,false);
	SetBlur("@StC*", true, 3, 500, 50, false);
	Move("@StC*", 300, @+1000, @-1000, Dxl1, true);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();
	CP_AltChange2(0,47,null,false);
	CP_IHPChange(0,9,null,false);
	CP_HighChange(15000,2000,Dxl1,false);
	CP_SpeedChangeA();
	FrameShake();

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	SetVertex("�}����", 512, 288);
	Move("�}����", 0, @-100, @-200, null, true);
	Zoom("�}����", 0, 10, 10, null, true);
	Fade("�}����", 0, 1000, null, true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	EnTr_Count(1000,680);

	OnSE("se����_���å��ԥå�_������02",1000);
	CP_EnemyLockFade(500,800,500,@-100,@-200);
	CP_LockOnMove("@�}����",15000,@+100,@+50,AxlDxl,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����巴�������
������֪��ʱ�ٴ�ռ���Ͽյĵ�Ӱ������Ұ������ֱ�롣

��<RUBY text="�Է�">����</RUBY>Ҳ����ͷ���ƶ����½���
���γ����潻��ļ�ս���ơ�

�����߶����ߡ�
����ǿս������ǿս����
����ʷ�����������ظ����ݵĿ��о�ս��

����������ֳ����ڣ����ֵĿ��С�
����ս��һ�������Լ�������
������Ҫ�������������ֻ��һЦ��֮�ɡ�

��Ȼ���������ڽ����ӵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ө`�äȥ�ƥ����뤬�Ӥ�����å�����

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	Fade("�}����", 0, 0, null, true);

	CreateTextureSP("�}����100", 18000, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureSP("�}EF100", 18500, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Rotate("�}EF100", 0, @180, @0, @0, null,true);
	Zoom("�}EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("�}St100", 19000, -888, -942, "cg/st/resize/3d���_�T��_���L.png");
	SetBlur("�}St100", true, 3, 500, 50, false);

	Shake("�}EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("�}St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("�}EF100", 0, 500, null, true);

	OnSE("se����_����_���S03",1000);

	Move("�}St100", 400, @+300, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se���L_����_��ͻ�M03",1000);
	Move("�}St100", 400, @+2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����100");
	Delete("�}St100");
	Delete("�}EF100");

	Cockpit_AllFade2();
	Fade("�}����", 0, 1000, null, true);

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CloudZoomSet(10000);
	CloudZoomStart(700,600,600,500,600);


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��׼ȷ�����˶�����С�ĵ�Ӱ��

����ע����������ŭ��
���������ȫ����ģ�������ԥ�����

�����޳��ɡ�
������ű���֮�µ��ң�������ǰ���ּ�����ֹ�ĵ��ˣ�
���˷�ŭ����֮�⻹����Ρ�

������־塣�����ƾ����С�
��������ô������ȡ��ʤ�����һ�Ӯ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ӱ���󡣤���ä��ƄӤ��ʤ���
	Zoom("�}����", 3000, 50, 50, null, false);
	CP_LockOnMove("@�}����",10000,@0,@-50,AxlDxl,false);

	Wait(3000);

	SetFwR("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0280b38">
�������婖������ţ�Ρ���

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0290b57">
��������ն����
������������������ħ������������㣡��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������ֱ�롣��̫���߾ٹ�ͷ����
����ͬ��������յ��⸱����һ�뿳ȥ��

������֮�ϵ��˼��٣��������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 400, Dxl3);
	SetVolume("SE01", 5000, 0, null);

//����Ӥʤ��ٶ�Ӌ���ĩ`��������Ƥ���
	Zoom("�}����", 2000, 70, 70, null, false);
	MyTr_Count(2000,600);
	CP_SpeedChange(5000,560,null,false);
	CP_HighChange(5000,2500,null,false);


	Wait(2000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����������������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}����", 5000, 100, 100, null, false);
	CP_LockOnMove("@�}����",10000,@0,@+20,AxlDxl,false);
	CP_LockOnChangeW(2000);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0300a00">
����������һ��ʤ������Ӧ������˵����
�����߶ȶ��޷�ȷ����ͻ����
������Ҳ���и��޶ȡ�������
����˵�����������޴���Ϊ����

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0310b57">
��!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M01",700);

	CloudZoomDelete(1500,false);
	Zoom("�}����", 2000, 1000, 1000, Axl1, false);
	CP_LockOnMove("@�}����",600,@+600, @+100, Axl1, true);
	CP_LockOnMove("@�}����",600,@-600, @+100, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����Ұ�
����ɫ��������

�������ÿ�!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����åȥ��󣺴����T���϶�
//�������϶ΔؓĚ��á��ʤ󤫔ؤäƤ롣�𻨤Ȥ�ɢ�äƤ�
//���������Ĥĥɥ��`�����

	CreateColorEX("�}ɫ100", 20000, "Black");
	CreateColorEXadd("�}ɫ200", 19999, "White");
	SL_rightdown2(21000, @0, @0,1500);

	SetBlur("�}����", true, 4, 500, 50, false);

	Zoom("�}����50", 300, 1500, 1500, null, true);
	Zoom("�}����", 300, 2000, 2000, Dxl1, false);
	Wait(50);
	Fade("�}ɫ100", 200, 1000, null, true);

	FrameShakeDelete();

	CP_LockOnDelete();

	Wait(100);

	OnSE("se���L_����_Ұ̫�����01",1000);

	SL_rightdownfade2(15);

	Wait(100);
	CP_AllChange("@�}����50",0, 300, 600, 512, 678);

	Delete("�}����");
	CP_LockOnFadeT(0,true);
	CP_AziChange(0,10,null,true);

	CreateTextureEX("�}����50", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);
	CP_RollBar_ADelete();
	CP_RollBarMove("@�}����50",0,15,null,true);

	Shake("@CP_Frame", 500, 40, 30, 0, 0, 500, null, false);

	OnSE("se���L_����_�z_���02",1000);
	CP_RollBarMove("@�}����50",1000,0,null,false);
	Fade("�}ɫ200",500,0,null,false);
	Fade("�}ɫ100",200,0,null,true);
	Delete("�}ɫ100");

	CP_IHPChange(700,6,null,false);
	MyLife_Count(500,651);
	MyTr_Count(500,250);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0320b57">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������ȫ��ĳ����
�����������������ڽ��漲�ۡ�

�����Ƶĳ�����������Ϻ���
����ʹ�����������أ�����ų��ܴ��֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 1000, 500, null);

	Move("�}����50", 5000, @0, @-200, AxlDxl, false);
	MyTr_Count(2000,123);
	CP_SpeedChange(2000,155,null,false);
	CP_AltChange(3000,-20,null,false);
	CP_HighChange(5000,289,null,false);


	FrameShakeSt(4000);

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0330b38">
��װ���Ҽ粿λ�������ء�
���ڲ������ܵ��������ˡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0340b57">
����������쵰����

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0350b38">
���ٶ��½������棺��ʧ��Σ�ա���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0360b57">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_AltChange(2000,0,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��ʧ�٣�
��
�������Ժ���˼��������ζ��ʲô��

��ʧ�١���<RUBY text="�ӣ�����">ʧ��</RUBY>��
�����������ٶ��½���ʧȥ������

��ʧ�ٵķ�������ʧȥ���ƣ��������������¿�ʼ׹�䡭��

��׹��!?
�����ܿ���!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0370b38">
���½����Իָ��ٶȡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0380b57">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������`�롣��������ܞ��
//���ԥå����åס��ա���ƽ��������
//�������󡣣�������ܞ�ؤ����˄ݻ؏�
//���ٶ�Ӌ�ϕN

	CreateTextureEX("�}����100", 500, Center, -5000, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	SetBlur("@�}����50", true, 4, 500, 100, false);
	SetBlur("�}����100", true, 4, 500, 100, false);


	OnSE("se���L_����_��ͻ�M01",1000);

	Move("@�}����50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@�}����50",3000,180,Dxl1,true);
	Delete("@�}����50");

	Move("�}����100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);
	MyTr_Count(500,450);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	OnSE("se���L_����_���ϕN01",1000);
	Move("�}����100", 2000, @0, 800, Dxl1, false);
	Zoom("�}����100", 2000, 1500, 1500, Dxl1, true);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("�}����100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("�}����50", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);


	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


	CreateTextureSP("�}St100", 1000, -888, -802, "cg/st/resize/3d���_�T��_ͨ��.png");

	Move("�}St100", 400, @+300, @0, Dxl1, false);

	Cloud_Move2(1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@�}St100",1);
	Shake_Loop("@�}St100","shake01");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��ͷ�������ֱ������
�������ǵжԵ�������Ϊ���ã�����ʾ����
���½�������һת����ʼ������

����ʹ���Ҳ����ر�ܽ���
���ܷ��ó�ֵ��ٶȡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0390b38">
���л���<RUBY text="�Ϸ�����">�Ϸ����婖��</RUBY>����Ϯ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0400b57">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 0, null);


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("�}St100");
	Cloud_MoveDelete();

	CreateTextureEX("�}����50", 100, Center, 0, "cg/bg/resize/bg001_��a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AllChange("@�}����50", 0, 263, 456);
	CP_AziChange(0,185,null,true);
	CP_IHPChange(0,5,null,false);
//Power_800
	CP_PowerChange(0,800,null,true);

	MyTr_Count(500,320);
	CP_SpeedChange(500,298,null,false);
	CP_HighChange(1000,780,null,false);

	Move("�}����50", 500, @0, @-288, Dxl1, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����æ̧ͷ��

������̻¶ֻ�ᵥ�����⵽նɱ�������޷����㡣
���ܶ���֮�Զ���֮��������Ե�������ζ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M01",1000);

//�����ء��ԥå����å�
//����ƥ������Ƅӡ���å�����
	CP_RollBarMove("@�}����50",700,45,Dxl1,false);

	Wait(300);

	CP_AltChange(400,15,null,false);
	Move("�}����50", 2000, @+125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,191,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,450,null,false);
	CP_HighChange(600,920,null,false);
	FrameShake();
	CP_RollBarMove("@�}����50",600,0,Dxl1,true);

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}����", 0, 0, 0, null, true);
	Request("�}����", Smoothing);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}����",0,@-20,@-50,null,true);

	OnSE("se����_���å��ԥå�_��å�����",1000);

	CP_LockOnMove("@�}����",1000,@-50,@-50,null,false);
	Zoom("�}����", 300, 100, 100, Dxl1, false);
	Fade("�}����", 300, 1000, Dxl1, false);
	Wait(100);
	CP_LockOnFade(100,"on",true);


	SetFwR("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0410b38">
���������������

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0420b57">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
���ý������ÿ죡
��������������ȥ�����ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEX("�}ɫ100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 50, 1024, 476, false);
	SetAlias("CutIn","CutIn");

//�����åȥ��󣺴����T���϶�
	CreateTextureEX("CutIn/�}back", 21001, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEX("CutIn/�}Mura0", 21001, Center, -200, "cg/st/3d�����˜�_�T��_ͨ��.png");
	Request("CutIn/�}Mura0", Smoothing);
	CreateTextureEX("CutIn/�}Mura1", 21001, Center, -200, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Request("CutIn/�}Mura1", Smoothing);
	SetVertex("CutIn/�}Mura0", 512, 288);
	Zoom("CutIn/�}Mura0", 0, 1500, 1500, null, true);
	SetVertex("CutIn/�}Mura1", 512, 288);
	Zoom("CutIn/�}Mura1", 0, 1500, 1500, null, true);
	Move("CutIn/�}Mura0", 0, @+50, @-10, null, true);

	Fade("�}ɫ100", 100, 1000, null, true);
	Zoom("�}����", 0, 100, 100, null, false);
	CP_LockOnMove("@�}����",0,@0,@-50,null,true);

	OnSE("se���L_����_��ͻ�M01",500);
	Move("CutIn/�}Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/�}back", 0, 1000, null, false);
	Fade("CutIn/�}Mura0", 0, 1000, null, false);

	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	OnSE("se���L_����_������01",1000);
	Fade("CutIn/�}Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/�}Mura0", 300, 0, Axl1, true);

	Wait(300);

	OnSE("se���L_����_��ͻ�M03",1000);
	Move("CutIn/�}Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	FrameShakeDelete();

	Delete("CutIn*");
	Fade("�}ɫ100", 100, 0, null, true);
	Delete("�}ɫ100");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��ȷ�ϵ������ơ�
����֮ǰһ�غ�һ�����ǽ�̫�����ڼ��ϵĶ�ս���ơ�

���ǰ�̫���ĳ��ȡ�
��ֻҪ�������뿪�ҵ���̣�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02",800);
	Move("�}����50", 1000, @0, @+50, Dxl1, false);
	Zoom("�}����", 1500, 250, 250, Axl1, false);
	CP_SpeedChange(1500,354,null,false);
	CP_HighChange(1500,1215,null,false);
	CP_AltChange(1500,24,Dxl1,false);
	CP_LockOnMove("@�}����",1000,@0,@+200,Dxl1,true);
	CP_LockOnMove("@�}����",600,@+50,@-100,Axl1,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
��̧��<RUBY text="�ݾ�">ͷ��</RUBY>��
��������������׼�ģ���������������ƫ�¡�

��ȡ��̫���޷��������ľ��룬����ɹ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0430a00">
������϶�֮�ƣ���<RUBY text="��">��</RUBY>����������أ���

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0440b57">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����åȥ��󣺴����϶Δؓ�
//�����`�����
	CreateColorEX("�}ɫ100", 20000, "Black");
	CreateColorEX("�ե�å����", 21000, "WHITE");
	SL_rightdown2(20001, @0, @0, 1500);

	OnSE("se���L_����_��ͻ�M01",1000);

	Move("�}����", 500, @0, @-100, null, false);
	Zoom("�}����", 500, 1000, 1000, Dxl1, false);
	FrameShakeDelete();
	Fade("�}ɫ100", 300, 1000, null, true);
	Delete("�}����");
	CP_LockOnFadeT(0,true);
	Wait(50);

	OnSE("se���L_����_Ұ̫�����02",500);
	SL_rightdownfade2(10);

	Wait(300);

	Fade("�ե�å����",0,1000,null,true);
	Delete("�}ɫ100");
	CP_AltChange(0,15,null,true);
	CP_AllChange("@�}����50",0, 354, 908);
	CreateTextureEX("�}����100", 500, Center, -200, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	Shake("�}����100", 500, 10, 2, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 0, 0, 0, 500, null, false);
	OnSE("se���L_�Ɖ�_�z01",1000);
	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");
	CP_IHPChange(500,5,null,false);
..//Power_700
	CP_PowerChange(500,700,null,false);
	CP_AziChange(0,10,null,true);

	CP_AltChange(1000,0,null,false);
	MyLife_Count(500,612);

	CP_SpeedChangeA();
	CP_HighChangeA();

	Move("�}����100", 3000, @0, -300, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
������һ����
��ͬ�ڼ粿��

��Ȼ������������ͼ���õĻ���������
�����ã����˲������ء�
����������֮ǰ�˿��ϻ����ų���ĳ̶ȡ�

��������Ρ�������Ҫ������޶���ô��
��ս��һֱ����һ�ߵ������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0450b57">
����������ģ�
�����������������Ǽһ��Ѫ��!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0460b38">
���񶨡�
����������屻���б�������͸���������
֮�¶�����Ϊ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ֱ���ء����¡��ϕN
	OnSE("se���L_����_���ϕN01",800);
	Move("�}����100", 4000, @0, -5000, Dxl1, false);
	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,300,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);
	MyTr_Count(500,320);

	Wait(1200);
	CP_RollBarMove2(0,180,null,false);

	CP_AziChange(1500,96,null,false);
	Move("�}����100", 5000, @0, -5000, Dxl1, false);
	CP_AltChange(1500,10,null,false);
	CP_SpeedChange(1500,400,Dxl1,false);
	CP_HighChange(1500,800,Dxl1,false);

	Wait(500);

	Move("�}����100", 500, @0, -5100, Dxl1, true);
	CP_AltChange(400,-5,Dxl1,false);
	Move("�}����110", 500, @0, -4950, Dxl1, true);
	CP_AltChange(400,0,Dxl1,false);
	Move("�}����100", 500, @0, -5000, Dxl1, true);
	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Rotate("�}����200", 0, @0, @0, 180, null,true);
	Fade("�}����200", 0, 1000, null, true);

	OnSE("se���L_����_��ͻ�M02",500);
	CP_RollBarMove("@�}����200",1000,0,Dxl1,false);

	Wait(800);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0470b57">
��������
���ǣ�����ʲô�����취�𣡡�����ʲô����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0480a00">
���������ѿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`����ԥå����åס���`�����
//����å�����

//�룺ev942_�����֣����

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("�}ev100", 1000, Center, Middle, "cg/ev/ev942_�����֣����.jpg");

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);


//	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
//	Zoom("�}����", 0, 10, 10, null, true);
//	Request("�}����", Smoothing);
//	CP_LockOnMove("@�}����",0,@+300,@-300,null,true);

//	CP_LockOnMove("@�}����",1000,@-310,@+100,null,false);
//	Fade("�}����", 200, 1000, null, false);
//	Wait(100);
//	CP_AltChangeA();
//	CP_LockOnFade(100,"off",true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
���·�������ȫ�����һ�㣬���Ľ��д���ʱ��
ǡ���ô��ش�����
������Դ����ǰѹ���Եؼ��ٻ����������¶��
���Ͽ�Ծ�����ȴ��ٴ�ͻ����ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0490a00">
��ȫȻ��֪̫������֮����ʵ�������������
�����ʡ��㣬���ǵ�һ��ʹ��˫������
 ������̫����ָ����
����ֻ�����已̥�𣿡�

//��������
<voice name="����" class="����" src="voice/ma01/022vs0500a00">
����Ľ�ֻ�����������޸���֮�������𣿡�

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0510b57">
����˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}st100", 1100, -1024, -576, "cg/ev/resize/ev942_����VS���_l.jpg");
	SetBlur("�}st100", true, 3, 500, 50, false);

	Fade("�}st100", 300, 1000, null, false);
	Move("�}st100", 500, @+100, -150, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
����װ��ͨ�ŵ�ָ�����Ӱ�غϣ��ҷ���������
����û�����ɱ�ָ�𡣾����ͷ��ҵ�ŭ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0520b57">
��̹Ȼ��ʻ�����˲�֪������֮������ʲô
���ԣ�����ı��ԣ�Ϊ�˻������
��ϧ��������ĳ�ª���ģ����Ѿ�����
��͸���ˣ���������!?����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}st200", 1200, Center, -576, "cg/ev/resize/ev942_����VS���_l.jpg");

	SetBlur("�}st200", true, 3, 500, 50, false);

	Fade("�}st200", 300, 1000, null, false);
	Move("�}st200", 500, @+500, 0, Dxl1, true);

	Delete("�}st100");

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0661]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0530a00">
��˵���Ǳ��Ǿ��������
����Ȫ�ع��ꡣ�˳ƴ������ڣ�
����ʱ�����ڵ���������
�����볯͢��һ�����ڹ���ļ�Ʒ����

//��������
<voice name="����" class="����" src="voice/ma01/022vs0540a00">
��������˽��л�����̬��
��ʵ�����˷ѽ⡣�㲢���������ų����𣿡�

//��������
<voice name="����" class="����" src="voice/ma01/022vs0550a00">
���͵��������ԣ����Ϊһ���ʦ��
�����������ɻ�������������Ѫͳ����
�������������ǲ����·����ж��ƺ�
Ҳ����ˡ���

//��������
<voice name="����" class="����" src="voice/ma01/022vs0560a00">
���³�������Ϊ�γ��н��У�
�������������ֺ����ģ������ĺô��𣿡�

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0570b57">
������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("�}st*");
	Delete("�}ev*");

	Cockpit_AllFade2();

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}����", 0, 10, 10, null, true);
	Request("�}����", Smoothing);
	CP_LockOnMove("@�}����",0,@+300,@-300,null,true);

	CP_LockOnMove("@�}����",0,@-310,@+100,null,false);
	Fade("�}����", 0, 1000, null, false);
	CP_AltChangeA();
	CP_LockOnFade(0,"off",true);

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
�����������䲢���������
�������ݱ�����㹻���֡�

����Ϣ������
����Ȼ������������֪���Լ�������תΪ�԰ס�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0580b57">
�������ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
����Ȼ˵�������ҡ�
���������ޣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0590b57">
����ʲô��Ц������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_���ϕN01",1000);

	CP_SpeedChange(1500,600,Dxl1,false);
	CP_HighChange(1500,1200,Dxl1,false);
	CP_AltChange(1500,30,null,false);
	MyTr_Count(1000,523);
//���ӽ�
	Zoom("�}����100", 3000, 1500, 1500, null, false);

	Zoom("�}����", 2500, 1000, 1000, null, false);
	CP_LockOnMove("@�}����",2000,@+10,@+150,Dxl1,false);
	Wait(500);
	CP_SpeedChange(1500,570,Dxl1,false);
	CP_LockOnChange(100,true); 

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
������������ǰ��
��̫��������Ϯ����ɲ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}EF100", 19000, Center, Middle, "cg/ef/ef021_������x�k��a.jpg");
	SetVertex("�}EF100", 512, 288);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	CreateTextureEX("�}EF200", 19001, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	SetBlur("�}EF200", true, 5, 500, 50, false);

	SL_centerdam(@0, @0,1000);



	OnSE("se����_��x_�k��01",1000);
	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 500, 1000, Dxl1, true);
	Delete("�}����200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0751]
��ȫ�������Ž��У���������װ�׵ĽӴ���
�����ܡ����ܡ����ܡ�ͨ���߶ȼ��е�ע��������
���񻯵��������ۺδ����д����

���Ӵ�����Ϊ��ϡ�
����װ����Ϊ����Ѫ��ʶ��
��Ѫ�������񾭻�ͨ�����ޡ�

��������װ�׺϶�Ϊһ��
����̤����ʵʩ�ںϣ������֪��������
���д���ӿ��������֮����

��ӽ��<RUBY text="ָ��">����</RUBY>ʹ֮��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��x_�k��03",1000);
	Fade("�}EF200", 500, 1000, Dxl1, true);
	Delete("�}EF100");

	CreateColorEXadd("�}ɫ100", 17000, "White");
	Fade("�}ɫ100", 0, 1000, null, true);

	Fade("�}ɫ100", 1000, 0, Dxl1, false);
	Fade("�}EF200", 700, 0, Dxl1, false);
	Zoom("�}EF200", 700, 2000, 2000, Dxl1, true);

//	OnSE("se����_Ѫ_Ѫ���֤�02",1000);

//	SL_centerdamfade2(10);

	CP_PowerChange(300,600,null,false);


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0600b57">
�������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
������֮���������֮Ѫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����åɥޥ�����


	CreateColorEXadd("�ե�å����", 20000, "White");
	Fade("�ե�å����",0,1000,null,true);
	CreateColorEXmul("�}ɫ100", 14000, "RED");

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 1000, 0, 1000, 200, Dxl1, "cg/data/zoom_01_00_0.png", false);


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0610a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����åȥ��󣺄���
//���L�����Τ�
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	OnSE("se���L_����_�����01",1000);
	Fade("�}����100", 0, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
�����Ҽ�ͷ<RUBY text="����">�ɽ�</RUBY>������Ѫ���ĭ�������棬����
�������Ƶ�<RUBY text="ƽ��">����</RUBY>�ܵ����ҡ�̫�������������
�����Ǽ�϶��Ǳ�����С�����

���غϽ������ҵ�װ�ײ�δ����������������롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������x��
	Delete("�}����");

	CreateTextureEX("�}����50", 100, Center, -950, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Zoom("�}����50", 0, 750, 750, null, true);
	Fade("�}����50", 0, 1000, null, true);

	Delete("�}EF200");
	Delete("�}ɫ100");

	CP_LockOnFadeT(0,true);
	CP_SpeedChange(500,248,Dxl1,false);
	CP_HighChange(500,600,Dxl1,false);

	Move("�}����50", 500, @0, @-50, null, false);
	CP_AltChange(500,0,null,false);
	OnSE("se���L_����_��ͻ�M01",1000);
	FadeDelete("�}����100", 300, null, true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0620b57">
���ǣ������ʵ����ס�
�������м��������ҵ�Ѫ�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
���³������Ե����
���Ҷ���й��Щ�ߡ�

��Ȼ����״����δ��ת��
��ʾ������ʾ����Ȼ��ʾ���ٽ�ʧ�١��������
�½����壬�ָ��ٶȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_�ռ�����01",1000);

	Zoom("�}����50", 1000, 900, 900, Dxl1, false);
	Shake("�}����50", 6000, 1, 3, 0, 0, 1000, null, false);
	Move("�}����50", 3000, @0, -2100, Dxl1, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("�}����50", 1200, 1300, 1300, Axl1, false);
	Move("�}����50", 1200, @0, -1800, Axl1, false);

	Wait(600);
	Shake("�}����50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se���L_����_���ϕN01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("�}����50", 2000, 2000, 2000, Dxl1, false);
	Move("�}����50", 2000, @0, 1200, Dxl1, false);

	Wait(1700);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("�}����50");

	CreateTextureSP("�}Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureSP("�}Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_��a_02.jpg");

	CreateTextureSP("�}���", 1600, Center, Middle, "cg/st/3d���_�T��_ͨ��.png");

	SetVertex("�}Rollbg*", 0, Middle);
	Zoom("�}Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@�}���",2);

	CreateSCR1("@�}Rollbg001","@�}Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("�}����100", 500, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}St100", 1000, Center, -325, "cg/st/3d���_�T��_ͨ��.png");
	Move("�}St100", 0, @+50, @0, null, true);
	Fade("�}St100", 0, 1000, null, true);

	Shake("�}����100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@�}St100",1);
	Cloud_Move(1000);
*/

	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811]
�����һ��״���޷����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0630a00">
������ѪҺ�����Ǳ�����ĵ������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
�������������ȶ�ҡ����������������ɶ�����

�����塣
����ʹ���ڹŷ�������������ҲΨ�м����ϵ�
��Ʒ���ܲ��ݵģ���Խ��������ǿ��������֮����

�������Ĳ²�����
����һ�����ǣ�������߱�������չ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0640a00">
����Ȼ�����嶼�ܲ��ݣ������������Ƿ�����Ʒ��
���Ǹ����к��������������ľ�����ġ���

//��������
<voice name="����" class="����" src="voice/ma01/022vs0650a00">
������һ���ʦ��������λ���У���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0660b57">
���ߡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	BGMoveDelete();
	Delete("�}Rollbg*");
	Delete("Rollbg*");
	Delete("�}���");

	SCR1stop();
	CloudZoomDelete(0,true);

	BGMoveDelete();
	Cloud_MoveDelete();
	Delete("�}St100");
	Delete("�}����100");

	Cockpit_AllFade2();

	CreateTextureSP("�}����50", 500, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");


	CP_SpeedChange(500,413,null,false);

	CP_HighChangeA();

	CP_AltChangeA();

	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
����û�лش�ı�Ҫ��ȴ�лش�����塣
��������Ҫʱ�䡣ֻҪ�л����Ӧ����ȡ��

������������Ͼ�Ҫɱ���Ķ���Ҳ���Ƿ���������֮�¡�
��
��������Ц�󣬻ش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CPMove_Auto001("@�}����50",3000,false);


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0670b57">
��ʥ�����˵������
����ô˵��ɻ�Ц����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0680a00">
��ʲô��������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0690b57">
����ϧ����ʮ���¶�ʮ���հ���
�������Ǹ�������ѧУ��<RUBY text="����">����</RUBY>�ڶ���ѧ����
�ڶ��졭�����ͱ������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0700b57">
�������ڶ���˵�뾡��ʹ��һ������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0710a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
����Ĭ�ĸ��͡��ƺ��޷������������٣�
�����Ƿ�Ӧ�����޹ء��Ҽ��������Ž��д�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0720b57">
����������������ҵ��˳����˰ɡ�
����ʹ�������Ҳ�޹ؽ�Ҫ�����ۺ��˳��ں���
��ͼ�����Ҷ����⸱���м��Ƕ��ݡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0730b57">
�������ĸ����������ܹ�Զ����ǰ���򵥡�
����������������������ء���
���İ�������ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CPMove_AutoR001("@�}����50",1000,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
��̧��ͷ�����Ϸ�������
����ɫ�ĵ��ˡ��������ڵľ��뿴ֻ�Ǹ��ڵ㡪��
������Ұ��

�����ԣ��е�Զ��
��������Ϊ��ȡ�öԻ��ռ������뾶����������

����Ȼ�ҵ���ͼ����ʵ�֣�
���Ǹ����ݲ��ȵ�����Ҳ��ʵ���˻��
������̫����˫�ֳ�����������
�ٶ����ڻָ��������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0740b57">
��Ҫ���ˡ�������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0750a00">
������ԭ����ˡ�
����ʵ��Ϊ�������<RUBY text="����">żȻ</RUBY>�õ��˽��ж����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}����", 0, 10, 10, null, true);
	Request("�}����", Smoothing);
	CP_LockOnMove("@�}����",0,@+300,@-300,null,true);

	OnSE("se���L_����_������02",600);
	Move("�}����50", 1000, @0, @+200, null, false);
	CP_LockOnMove("@�}����",1000,@-310,@+100,null,false);
	CP_AltChange(2000,31,null,false);
	Fade("�}����", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);

	Zoom("�}����", 5000, 100, 100, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
��<RUBY text="�ݾ�">ͷ��</RUBY>���ͣ���Ӱ���������

���������������ٵ�����Ծ���
���ٶ�֮�죬���зֱ�����֮�ƣ�������������<k>��ƾ�˵�˫���������Ҳ�ﵽ���˵�·�̣�
����ȴ˲����Ծ��

��׼���еĵ㻯�������������ֻ�Ϊͼ�Σ�
ͼ�����ձ�Ϊ��Ӱ��<RUBY text="��ʾ��">��Ұ</RUBY>��
���֡�̫��������ʱ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M01",800);

	CP_HighChange(2000,1640,null,false);
	CP_SpeedChange(1500,548,null,false);
	Zoom("�}����", 1000, 500, 500, null, false);
	CP_LockOnMove("@�}����", 1000,@0,@+200,null,false);
	CP_LockOnChange(500,true);
	CP_SpeedChange(1500,427,null,false);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0760a00">
���������ˡ������޴����ж�����

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0770b57">
������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ������϶�
//���ãɣ�����϶�
//���ãɣ����Ľ���
//���ãɣ������϶Δؓĥҥåȡ��ɥ��`��

	OnSE("se���L_����_��ͻ�M02",800);
	Zoom("�}����", 1000, 800, 800, null, false);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("�}����");
	CP_LockOnFadeT(0,true);

	CreateTextureSP("�}shin001", 21001, -500, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}shin010", 21001, Center, Middle, "cg/st/3d���_�T��_���L.png");
	SetBlur("�}shin010", true, 3, 300, 50, false);

	SL_rightup2(20000,@0, @0,1500);

	Move("�}shin010", 0, @-200, @+576, null, true);

	OnSE("se���L_����_��ͻ�M01",600);
	Move("�}shin001", 550, @-100, @+100, Axl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_04_01_1", true);

	BezierMove("�}shin010", 400, (@0,@0){212,0}{212,0}(+312,-1500), Dxl1, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("�}ɫ100");
	Delete("�}shin*");

	CreateTextureSP("�}mura001", 21001, -512, -400, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}mura010", 21001, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	SetBlur("�}mura010", true, 3, 500, 50, false);

	SL_leftdown2(20000,@0, @0,1500);

	Move("�}mura010", 0, @+1024, @-576, null, true);

	OnSE("se���L_����_��ͻ�M01",600);
	Move("�}mura001", 550, @+100, @-100, Axl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_04_01_1", true);

	Move("�}mura010", 400, -1536, 760, Dxl1, true);

	CreateColorEX("�}ɫ100", 22000, "Black");
	Fade("�}ɫ100", 100,1000,null,true);
	Delete("�}mura*");
	CreateColorEX("�}ɫ200", 16000, "Black");
	Fade("�}ɫ200", 0,1000,null,true);
	Delete("�}ɫ100");
	CreateColorEX("�}ɫ100", 22000, "White");
	Wait(100);
//	OnSE("se���L_����_�����01",1000);
	OnSE("se���L_����_Ұ̫�����01",1000);
	SL_rightupfade2(15);

//	OnSE("se���L_����_�����02",1000);
	OnSE("se���L_����_Ұ̫�����02",1000);
	SL_leftdownfade2(15);

	Fade("�}ɫ100", 200,1000,null,true);
	Fade("�}ɫ200", 0,500,null,true);


	Move("�}����50", 0, -512, -288, null, true);


	MyTr_Count(500,235);

	CP_IHPChange(500,3,null,false);
	CP_SpeedChange(500,345,null,false);
	CP_AltChange(1000,0,null,false);


	OnSE("se���L_�n��_�nͻ01",1000);

	Shake("�}����50", 500, 20, 30, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 5, 0, 0, 500, null, false);

	CreateColorSPmul("�}ɫ200", 16000, "RED");
	Fade("�}ɫ200", 2000,0,null,false);
	Fade("�}ɫ100", 1000,0,null,true);

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0780b38">
�����ϱ۱�Ϯ���ض����ˡ�
���ұ��������ܵ�Ϯ������Σ�ա���

//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0790b38">
�����棺��׼ȷ�ʻ���ֹͣ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0800b57">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
���о��ٶۡ���
�������޷����������ж����ұۣ�
�������޴���й�ķ���

��Ϊʲô��
��Ϊʲô����!?

�����ŵ�һ˲��
���˴�̫���Ӵ������̱���ӡ���

������ĵ�̫�������㱻������
��������<RUBY text="��">��</RUBY>���������ʩ����һ��
�ݺݴ����ϱۡ�

���γ������<RUBY text="��">��</RUBY>������֮�Ƶ���ʩ�����¿���
ȴֻ�ǲ������������ǵ���ס�������װ�׶�����
�����£�����һ���������ˡ�

����ܡ�
��
��Ϊʲô�����֮��Ĳ�࡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0810a00">
�����Ǽ�̵�װ�ס������������֮����
����ϧ��ֻ�ǣ�û����������Ĳٿ��ߡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0820b57">
��������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0830a00">
����������������
�����߶����ƶ��޷����֮��
��Ȼ���д˵ȱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
��������
���߶����ƣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣���⡤˫݆��


	CreateTextureEX("�}EV100", 19000, Center, Middle, "cg/ev/ev107_˫݆�҇��_a.jpg");
	CreateTextureEX("�}EV200", 19000, Center, Middle, "cg/ev/ev107_˫݆�҇��_b.jpg");
	CreateTextureEX("�}EV300", 19000, Center, Middle, "cg/ev/ev107_˫݆�҇��_c.jpg");
	CreateTextureEX("�}EV400", 19000, Center, Middle, "cg/ev/ev107_˫݆�҇��_d.jpg");
	Fade("�}EV100", 200, 1000, null, true);


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0840a00">
�����ţ�����ӡ�
�����ߵĸ�ս��������ռ����λ�ÿ�ʼ��
�߶ȼ�Ϊ�����������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}EV200", 300, 1000, null, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0850a00">
��ռ�ݱȵ��˸���λ�õ�һ���ܹ��ڸ���
ʱ׷�ӹ���������ٶȣ�
�Լ�����ٶ�ת����������������

//��������
<voice name="����" class="����" src="voice/ma01/022vs0860a00">
����Ȼ�������Ƶ�λ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0870b57">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}EV300", 300, 1000, null, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0880a00">
�������ԣ�����λ�ýϵ͵�һ��
һ��Ҫ�˷��������ȼ��٣�
һ�߻����ò����Ϲ�����
�����Գе��Ų������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}EV400", 300, 1000, null, true);
	Delete("�}EV100");
	Delete("�}EV200");
	Delete("�}EV300");

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0890a00">
������״���ڵڶ��غ�֮��Ҳ����ı䡣
��ռ�ݸ���λ�õ�һ�����û�õ��ٶȿ���
������������λ�ýϵ͵�һ��Ϊ�˻ָ��ٶ�
ֻ�ܽ�һ���½�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0900b57">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0910a00">
���ʴˣ������߸�λ��һ����һ�غϽ����
Ӧ��Ѹ�ٻ������壬�ڵ��˵���״̬֮ǰ
����ͻϮ��תս�֡�Ҳ����ʱ����ս������
����״̬�پ�ʤ������

//��������
<voice name="����" class="����" src="voice/ma01/022vs0920a00">
�������л������ܳ�ɫ��ѡ��ǰ�ߣ���������
��Խ��ѡ����ߡ���������ƾ�轣��
���ƽ��֡�������һ����Ϊ������
�������������ڳ�����սʵ���޴�͸������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}EV400",500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
������˿������ɫ�ʣ������³������Ե����
����Ȼ�뷴����ȴ�Ҳ���һ�䷴���Ļ���

�����⺺�̶ȵĺ�����ѧ֪ʶ�����е�����Щ��
����ʱ��������������ӡ֤�˵��˵����ۡ�

�����������������е�������Ϊ���ܺͶ��ܡ�
�������������͸߶ȣ��������������ٶȾ�����
��ˣ��ڸ߿ո��ٷ��еķ������������кܴ�
�������������㡣

��Ҳ����˵�����ȵ��˸���λ��ȴ������Ϊ��
��Ϊս���ƾ����е��Ҿ��Ǹ�������
����ʹ�����Ҳû����ס��Ĭ��������ȵ��ľ���
����������ķ��ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0930b57">
����ġ����Ǽһ�˵�ö��𣿡�

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs0940b38">
����������ս���Ļ�����ʶ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0950b57">
����ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
���������Ұ���
��
������û�а����仰˵���ڣ�����Ϊ֪��˵��Ҳû�á�

�����е���ʶ��������֧������⻯�ϣӡ�
������ǰ����ѧ�������������˲��������Լ���
�ڴ����ֶ�����������һ���չ����˲��Ǵ���ش�

������<RUBY text="��������">�������</RUBY>���С�
��������<RUBY text="����������">�����в���</RUBY>��

����Ϊ��ʶ����֪����㡣
��Ȼ����ȴ����������仰�ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
//��������
<voice name="����" class="����" src="voice/ma01/022vs0960a00">
���崨�������Ǹ����������޷���Ԧ�����
�ĺ��ӡ����⺢�Ӷ�ȥ�������������վ��޷���
�أ������̬ȴҲ���˸е�������
�����ٶ����һ��ɡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs0970b57">
����������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs0980a00">
����֪������ΪʲôҪ�������漤ս�𣿡�
��ȻҲ�������������������ɲ����ڴˡ�
������Ϊ��ն�ƽ��е�װ�ס���

//��������
<voice name="����" class="����" src="voice/ma01/022vs0990a00">
����ʹ�Ӻ�׷ն���ߵ����ߣ���͸���ڻ�
Ҳ�ܵ�����װ���༫���ѡ�
��Ȼ�������������ֱ�彻�棬��ɻ�û�
��װ�׵���������

//��������
<voice name="����" class="����" src="voice/ma01/022vs1000a00">
�������������һ�㡭��
����Ҳ������<RUBY text="��������������������������">������Ϸ�����ͬʱʩ���¿�</RUBY>
����Ϊ�ж��޴��˰ɣ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1010b57">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1250]
���������أ��Ƿ���ʹĳЩ�龰�����������֡�
����ǰ�ļ��غϽ��档��ͬ��̫��֮�ƣ�
���������룬�����¸��壬
ն���佻����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣���⡤̫����
	CreateTextureEX("�}EV100", 19000, Center, Middle, "cg/ev/ev108_̫������_a.jpg");
	CreateTextureEX("�}EV200", 19000, Center, Middle, "cg/ev/ev108_̫������_b.jpg");
	Fade("�}EV100", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1251]
��<RUBY text="��">���</RUBY>̫֮��������<RUBY text="����">׷��</RUBY>�ܿ���<RUBY text="����">����</RUBY>��
��������̫����ȴ��<RUBY text="����">ӭ��</RUBY>��������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}EV200", 500, 1000, null, true);
	Delete("�}EV100");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1260]
�����������Ȼ�������Բ�࡭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}EV200", 300, false);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1270]
//��������
<voice name="����" class="����" src="voice/ma01/022vs1020a00">
���������
����ô�����ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1280]
�������������ӵ�һ����
���Լ�ֱ�Ƽ�����ѹ�ȸС�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1290]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs1030b38">
�����ˣ���<RUBY text="�Ϸ���λ">�Ϸ�������</RUBY>��Ϯ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1040b57">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_���ϕN01",1000);


	CP_RollBarMove("@�}����50",700,-45,Dxl1,false);

	Wait(200);

	CP_AltChange(400,15,null,false);
	Move("�}����50", 2000, @-125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,-60,Axl1,false);
	CP_AltChange(500,0,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,310,null,false);
	CP_HighChange(600,550,null,false);
	CP_RollBarMove("@�}����50",600,0,Dxl1,true);

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}����", 0, 10, 10, null, true);
	CP_LockOnMove("@�}����",0,@+500,@-300,null,true);
	Request("�}����", Smoothing);
	CP_LockOnMove("@�}����",1000,@-400,@+100,null,false);

	Fade("�}����", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1310]
�������ˡ�
������Ѻ������򦼱�ٻ�����

�����濴�ź���������ʾ�������Լ��γ������Աȵ�
����ӯ��ĵ�Ӱ���ұ�������Ψ��һζͻ����
��������ȥֻ��һ���١��ٶ����ص����ޡ�

�����˵�̫��֮�Ʋ�δ�仯����Ϊ�����Ҽ�֮�Ρ�
��������ˡ�
��
�����͸߶Ȳ���Զ���ʮ�ֲ�������Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1320]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1050b57">
������Ǳ���Ǽһ��·���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����åȥ�������϶�

	OnSE("se���L_����_��ͻ�M01",1000);

	CP_HighChange(2000,1564,null,false);
	CP_SpeedChange(2000,512,null,false);
	CP_AltChange(2500,45,Axl1,false);
	Zoom("�}����", 2000, 500, 500, Axl1, false);
	CP_LockOnMove("@�}����",1200,@+10, @+250, Dxl1, true);
	CP_SpeedChange(2000,491,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1330]
���ӽ���������ӡ�
�������ͼ��ȡ���·��Ĵ��������������·���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02",1000);
//���ӽ����ԥå������󡣔�Ӱ���Ϥ�
	CP_AltChange(2500,32,Axl1,false);
	Zoom("�}����", 2000, 750, 750, Axl1, false);
	CP_LockOnChange(500,false);
	Move("�}����50", 700, @-110, @-200, Dxl1, false);
	CP_LockOnMove("@�}����",600,@-110, @-300, Dxl1, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1340]
�������ɹ��ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1350]
//��������
<voice name="����" class="����" src="voice/ma01/022vs1060a00">
����Ұ������ս�񷨼�֮һ��
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 0, 1024, 576, false);
	SetAlias("CutIn","CutIn");

//���ãɣ������϶Ρ��¶Ρ��¶Δؓ�
//��̫���򏎤����Ф��z�ࡣ���󡢥����`�����

	CreateTextureEX("CutIn/�}back", 21001, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEX("CutIn/�}Mura0", 21001, Center, -300, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureEX("CutIn/�}Mura1", 21001, Center, -300, "cg/st/3d�����˜�_�T��_���Lb.png");

	SL_up2(21002, @0, @0,1000);

	Move("CutIn/�}Mura0", 0, @+50, @0, null, true);

	Fade("�}ɫ100", 100, 1000, null, true);
	Zoom("�}����", 0, 100, 100, null, false);
	CP_LockOnMove("@�}����",0,@0,@-50,null,true);

	Move("CutIn/�}Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/�}back", 0, 1000, null, false);
	Fade("CutIn/�}Mura0", 0, 1000, null, false);
	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	OnSE("se���L_����_������01",1000);
	Fade("CutIn/�}Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/�}Mura0", 300, 0, Axl1, true);

	Wait(500);

	Move("CutIn/�}Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	Delete("CutIn*");
	CP_LockOnChange(0,true);
	SL_upfade2(10);

	CreateColorEX("�ե�å����", 22000, "WHITE");
	OnSE("se���L_����_���nͻ01",1000);
	Fade("�ե�å����",100,1000,null,true);

	CreateTextureEX("�}����100", 500, Center, -200, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Fade("�}����100", 0, 1000, null, true);
	Request("�}����100", Smoothing);

	Delete("�}ɫ100");
	Delete("�}����");

	CP_AltChange(1000,0,null,false);

	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, Dxl1, false);

	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1360]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1070b57">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1370]
��ʤ����ȷ�š�
������ѿ��һ˲���㱻�������÷��顣


����ʱ�˿̡�
���ۿ���Ҫ���棬������̫��һת�����¶��ϡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1380]
//��������
<voice name="����" class="����" src="voice/ma01/022vs1080a00">
�������е�ս�������ս��ͬ��
����ʹ�����ȡ���Ȼ����ʹ��ˣ�
�跨���ӽ�����������ɴ��ڡ�
����ƾ����һζ�¿����Ǹ�������

//��������
<voice name="����" class="����" src="voice/ma01/022vs1090a00">
�������ö������¶�ܣ�ͬʱʹ����Ϊ̫������
����֮���������϶�����Ҹ�¶�����ӭ����
��ʮ�ֳ����ļ��ɡ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs1100b38">
����粿���ˡ���ת�޹��ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1390]
��������
��Ҳ����˵���ž���ն����˫���ƾ����С���<k>���һ��
֮��ͻ�����ȵĲ��;�����ս��ʤ����

������ϵ�����ֱ���˵�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1420]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1110b57">
���ɶ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����¡����ء�ֱ�M
//�������֣���ĤΌ��å��åȥ���Ȥ��⤢��ȱ������ʩ`��

	OnSE("se���L_����_��ͻ�M01",1000);

	Move("�}����100", 4000, @0, -3344, Dxl1, false);
	Shake("�}����100", 50000, 0, 1, 0, 0, 500, null, false);

	SetVertex("�}����100",768,-3056);

	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,400,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);

	Wait(1300);

	Zoom("�}����100", 2000, 2000, 2000, Axl1, false);

	CP_RollBarMove("@�}����100",1500,180,Axl2,true);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CP_LockOnDelete();

	Cockpit_AllFade0();

	Delete("�}����100");
	CreateTextureEX("�}����100", 500, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

//�룺��3d���_�T��_ͨ��.png���ˉ��
	CreateTextureEX("�}���100", 1000, Center, Middle, "cg/st/3d���_�T��_���L.png");
	CreateTextureEX("�}EF100", 1000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureEX("�}EF200", 2000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	SetBlur("�}EF100", true, 3, 500, 50, false);
	Zoom("�}EF200", 0, 2500, 2500, null, true);
	SetBlur("�}EF200", true, 4, 500, 50, false);
	Fade("�}���100", 0, 1000, null, true);
	Rotate("�}���100", 0, @0, @0, @-45, null,true);
	Move("�}���100", 0, @0, @-1000, null, true);

	Move("�}���100", 700, @-300, @+2000, Dxl2, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	WaitAction("�}���100",null);
	Rotate("�}���100", 0, @0, @0, 0, null,true);
	Move("�}���100", 0, @+1300, @0, Dxl1, true);
	Move("�}���100", 700, @+1000, @-2000, Dxl1, false);
	Wait(500);
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("�}EF100", 300, 1000, 1000, Dxl1, false);
	Fade("�}EF100",300, 1000, null, true);

	Wait(100);

	OnSE("se���L_�n��_�nͻ01",1000);
	Zoom("�}EF200", 600, 1000, 1000, Dxl1, false);
	Fade("�}EF200",600, 1000, null, true);

	CreateColorEX("�ե�å����", 15000, "WHITE");

	Wait(200);

	Fade("�ե�å����",100,1000,null,true);

	CP_RollBarMove2(0,0,null,true);
	CP_AltChange(0,0,null,true);
	Delete("�}EF100");
	Delete("�}EF200");

	CreateWindow("������ɥ���", 15000, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureEX("������ɥ���/�}����01", 600, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureEX("������ɥ���/�}mura01", 600, Center, -400, "cg/st/3d�����˜�_�T��_���La.png");

	Move("������ɥ���/�}����01", 0, @-288, @0, null, true);
	Move("������ɥ���/�}mura01", 0, @+500, @0, null, true);


	CreateTextureEX("������ɥ���/�}����01", 600, Center, -412, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("������ɥ���/�}shin01", 600, Center, -150, "cg/st/3d���_�T��_���L.png");

	Move("������ɥ���/�}����01", 0, @+288, @0, null, true);
	Move("������ɥ���/�}shin01", 0, @-500, @0, null, true);

	Fade("������ɥ���/�}����01", 0, 1000, null, true);
	Fade("������ɥ���/�}����01", 0, 1000, null, true);

	Move("������ɥ���/�}����01", 1000, @+288, @0, Dxl1, false);
	Move("������ɥ���/�}����01", 1000, @-288, @0, Dxl1, false);

	Fade("������ɥ���/�}shin01", 1000, 1000, Dxl1, false);
	Fade("������ɥ���/�}mura01", 1000, 1000, Dxl1, false);

	Move("������ɥ���/�}mura01", 1200, @-500, @0, Dxl1, false);
	Move("������ɥ���/�}shin01", 1200, @+500, @0, Dxl1, false);

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1430]
���������½���������ͻ��ͻ��ͻ����������

������ô������������ּһ
�������֡�����ûһ����ֽ���õľ���֮����

�����õ��ң�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("������ɥ���");
	Delete("������ɥ���");

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");

	Cockpit_AllFade2();
	CP_IHPChange(500,4,null,false);
	CP_EnemyFade(0,650,400);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1440]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1120b57">
��ɱ���㣡����Ҫɱ���㣡
�����ػ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ���Ф���`
//���ãɣ�����϶�
	CreateTextureEX("�}EF100", 16000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Rotate("�}EF100", 0, @0, @180, @0, null,true);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	SetBlur("�}EF100", true, 3, 500, 50, false);

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);

	Zoom("�}EF100", 300, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 300, 1000, Dxl1, true);
	Cockpit_AllFade0();

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);
	CreateTextureEX("�}shin", 1500, Center, Middle, "cg/st/3d���_�T��_���L.png");
	Fade("�}shin", 0, 1000, null, true);
	Move("�}shin", 0, @-1000, @+700, null, true);

	CreateColorEX("�ե�å���", 20000, #990000);
	Fade("�ե�å���",200,1000,null,true);


	Delete("�}EF100");

	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}shin", 600, @+1000, @-700, Dxl1, false);
	Shake_Loop("�}shin","Shake01");

	DrawTransition("�ե�å���", 800, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", true);

	Delete("�ե�å���");


	SetFwC("cg/fw/fw���_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1450]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1130b57">
��������������!!��

{	Move("�}shin", 300, @+1000, @-600, Dxl1, false);
	Fade("�}shin", 300, 0, null, false);
	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs1140a00">
������ͬ���ַ������ܶ�����Ч��
���Ҳ��������ô򽻵�֮�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ӱ��б���¤��Ƅ�
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("Shake01");

	Cockpit_AllFade2();
	CP_LockOnFade(0,"on",true);
	Delete("�}shin");
	Delete("�}����100");

	CreateTextureEX("�}����", 10000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Request("�}����", Smoothing);
	CP_LockOnMove("@�}����",0,@0,@+300,null,true);


	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}����", 200, 1000, null, false);
	Zoom("@�}����", 300, 1500, 1500, null, false);
	CP_AltChange(0,32,null,false);

	CP_HighChangeA();
	CP_SpeedChangeA();



	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Zoom("@�}����", 300, 2000, 2000, null, false);
	CP_LockOnMove("@�}����",300,@-500,@+1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1460]
�������㿪��!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ������϶Ρ������϶Δؓ�
	CreateColorEXadd("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}����");

	OnSE("se���L_�Ɖ�_�z01",1000);
	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, null, false);
	Shake("�}����50", 1000, 5, 5, 0, 0, 500, null, false);
	MyLife_Count(500,564);
	CP_AltChange(1000,0,null,false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1470]
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs1150b38">
���ز�װ�ױ�Ϯ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1160b57">
����������
����ģ����������û�������ס�Ǽһ�
��ͷ����!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs1170b38">
������״�жϲ����ܡ�
����ʹ������ʾ����������������
�ȼ磬������������˻��ۣ����ܵ�
���ӽ������ϰ�����

//����ġ�
<voice name="���" class="���" src="voice/ma01/022vs1180b38">
���ʴ˲����ܡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1190b57">
������������������!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/022vs1200a00">
���������崨���
���������Ľ��ܰɡ���

//��������
<voice name="����" class="����" src="voice/ma01/022vs1210a00">
�����ʹ����ֱ���������������������֮�
��Ʒ��ͬ���Ŀ������������񡣡�

//��������
<voice name="����" class="����" src="voice/ma01/022vs1220a00">
������֮���ؽ���������
�����������ս����Ἲ����
�����б��ж񱨡���<RUBY text="��������">���б���</RUBY>
<RUBY text="����">��</RUBY>!!��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1230b57">
�����졪����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1530]
����ֱ�·����ڶ��Լ�˵��һ�㷴�������ţ�
�һ���˦���Ƿ��˵�������
��������λ��ʢ�����˵�˵�̣������Ĵ�����

������������ж񱨡��������д�δ�й��Ʊ���
����������ܹ����ε�Ψ������֮�Ψ����
���ᱳ�ѡ�ֻҪ��ȥ�޷�ά����Զ��һ�㣡

���ս��������ʵ�޿��κΡ�
�����İɡ�Ψ���������Ҳ����Ϊ�����������϶���������
�������������ɣ�

��Ȼ����ȴ�޷����ܸ��ࡣ
���Ҿ����޷��������ս�ת��Ϊ��ª�����ˣ�

��Ψ�д����Ҿ�������������
��������������㣬���������޼�ֵ��
��
������ô��������

��������Ҫ�ƻ���
�������ƻ���
��������֮����������֮ʱ��

���ҡ�����������!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1540]
//��������
<voice name="����" class="����" src="voice/ma01/022vs1240a00">
���崨�����<RUBY text="��������">�ֵ�����</RUBY>��
�������ڿ������̾�ŷ�ŭ����ɢ����֮�°ɡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/022vs1250b57">
����Ҫ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1560]
�����ԣ�
����û����û�����û�д�

��������ȷ�ģ���û���κδ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm*", 1000, 0, null);



//���֥�å�������


}

..//������ָ��
//�Υե����롡"ma01_023vs.nss"