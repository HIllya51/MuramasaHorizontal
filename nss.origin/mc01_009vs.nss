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

scene mc01_009vs.nss_MAIN
{

	

//������󡸣ãУ������˥��åȡ�
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
	#bg201_�����ݳ������нֵ�_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_GUTSEIDER=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_009vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_008.nss"

//���������Ȥ��T����
	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SEL01a","se���L_����_������02_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InLeft, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureEX("�}�ݴ������}", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	SetBlur("�}�ݴ������}", true, 2, 300, 150, false);
	Move("�}�ݴ������}", 0, @-380, @60, null, true);
	Delete("�ϱ���");
	Move("�}�ݱ���", 650, @-60, @288, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	Wait(200);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("�}�ݴ������}", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("�}�ݴ������}", 2300, @30, @-60, Dxl2, false);
	Fade("�}�ݴ������}", 300, 1000, null, true);

	Move("�}�ݱ���", 180000, -1024, 0, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0010a01">
��������ô���£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0020a00">
���Ժ��ٽ��ͣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020a]
���Һô������ڸ�����û�ȶ�þ͹����ˡ�����һ����
�Ҿ�Ѹ��װ������װ�ס�
���������ƽ���ǿ�Ʒ��������ޣ�������ɫ����������
�ա�

��װ���򲻿��ظ���ȫ�������˸¸µ����졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020b]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0030a01">
��̫Σ���ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0040a00">
�����Ͼͺá���һ�̡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������ٶȵ����������������Խ���̶�����������
����Щ���Գ��ܣ����з����˱�Թ�뾯��Ľ�����
�������ڲ��Ǹ������Щ��ʱ��

������լۡ�������£����еĻ���ȷ����Щ���룬��
���ý��з��У�Ҳ���Ǵ�ü�۵��Ǽ�ľ�����ѡ�
������ת˲���

����������΢��Щ��ǿ�ķ��У����Ҳ�����װ�״���
�����ص����˰ɡ�
���������ƺ�����һ���ۺܲ���ͬ��������������Ŀ��
�ض�δ��֪�ͱ��Ƚ��з��У�Ҳ�ѹ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0050a01">
�����ٽ������ֵͼ���װ�����ֲŻ�������Ϊ�ˣ�
�Ͽ콵���ٶȲ����ϲߣ�
���ҵ����޷����������������˺�̫���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0060a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ҳ�Ĭ�ţ���Щ�Ҷ����ס�
����˵����������û�У�����ֻ����Ϊ����Ҫ���Ÿ�·��

��������ָ������ȷ�ġ�
�����Ѿ����ܵ����������ܳ��������������Ｋ�޵���
�ס�ѪҺ����ͨ�Ѿ����ҡ����һ�����ͻ�����ʧ����
������ԡ�

��������ȥ���ǵȴ��ҵı�ֻ��׹�����ĲҾ��ˡ�
���Ҳ��ò�����������������һ���Ӳ���ֿ�������
Ҫ����ڰ��ĳ嶯��

������������Ҫ�ľ���������������Ϊ��
��Ȼ������ȴ��Ȼ������Ѿ��ɺ��˵������ĵײ���ե
��������������������һ��������ٶȵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0070a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����û��������ȥ��������ĵķϻ���
���������е�����������ȫ��Ͷ���ﺽ��

��Ҫ��Ҫ�ô��������ء��������ͷ�����ҵ��Ժ�����
�����һ���û�в�������취��
�����ڲ����˷�ʱ�䷢�����塣

�����ң������ᦹ�Ҳû�ж�Զ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�á�������
	CreateSE("SE01","se����_���å��ԥå�_����`��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0080a01">
������!!
��<RUBY text="��λ�Ϸ�">�Ϸ���ʮ���</RUBY>!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0090a00">
������<?>
{	Wait(300);
	FwC("cg/fw/fw����_����.png");}
ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ҵķ�Ӧ���ڳٶۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����η������
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}�ݱ���", Smoothing);
	Zoom("�}�ݱ���", 0, 3000, 3000, null, true);
	SetBlur("�}�ݱ���", true, 3, 500, 80, false);
	Move("�}�ݱ���", 650, 2048, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_1", true);

	WaitAction("�}�ݱ���", null);

//�����T�u��
	CreateSE("SE01L","se���L_����_��ͻ�M05");
	MusicStart("SE01L",2000,200,0,800,null,true);

	CreatePlainSP("�}��д", 20000);
	CreateTextureSP("�}�ݺ������}", 17100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	CreateStencil("�}�ݺ������}��",17110,Center,Middle,128,"cg/st/3d���å������`_�Tͻ_���La.png",false);
	SetAlias("�}�ݺ������}��","�}�ݺ������}��");
	CreateColorEX("�}�ݺ������}��/ɫ", 17120, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M02");
	Fade("�}�ݺ������}��/ɫ", 0, 750, null, true);
	Request("�}�ݺ������}*", Smoothing);
	Zoom("�}�ݺ������}*", 0, 100, 100, null, true);
	Move("�}�ݺ������}*", 0, @0, @90, DxlAuto, true);

	Move("�}�ݺ������}*", 300, @0, @-30, DxlAuto, false);
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeDelete("�}��д", 300, true);

	SetNwR("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/009vs0100b33">
������֮��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01",600,1000,0,1000,null,false);
	SetBlur("�}�ݺ������}", true, 2, 500, 80, true);
	Zoom("�}�ݺ������}*", 5000, 200, 200, null, false);
	Move("�}�ݺ������}*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("�}�ݺ������}*", 5000, 280, 280, null, false);

	Wait(800);

	SetVolume("SE01L*", 2000, 0, null);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�ݺ������}*", 200, @0, @40, DxlAuto, false);
	Fade("�}�ݺ������}��/ɫ", 200, 0, Dxl2, false);
	Zoom("�}�ݺ������}*", 200, 1500, 1500, null, false);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 380, 1000, null, true);

	Cockpit_AllFade2();

//������
	CreateSE("SE02","se���L_����_�����01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@150, @150,2000);
	SL_rightdownfade2(10);

//�������`��
	CreateSE("SE03","se���L_����_�z_���02");
	CreateSE("SE03a","se���L_����_�z��������03");
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݿձ���", 100, Center, -1100, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Request("�}�ݿձ���", Smoothing);
	Delete("�ϱ���");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

//������󡸣ãУ����ڂ����x��
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,980,null,false);

	CP_HighChange(0,1824,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,0,null,false);
	//CP_AltChangeA();

//������󡸣ãУ������ݳ��_ʼ��
	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1683,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("�}�ݿձ���", 1500, @0, @60, Dxl2, false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

//������󡸣ãУ����ģͣ�-108��
	MyLife_Count(300,612);
	CP_IHPChange(300,9,null,false);

	CP_RollBarMove("@�}�ݿձ���*", 0, 5, null, true);

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0110a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����˥��`�य�ʤä�

//�����`��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 600, Dxl3);

	MyTr_Count(300,128);
	CP_SpeedChange2(2000,174,Dxl2,false);
	CP_HighChange2(2000,1542,Dxl2,false);
	CP_AltChange(2000,-30,Dxl2,false);
	CP_AziChange(2000,251,null,false);
	Zoom("�}�ݿձ���", 2000, 1050, 1050, Dxl2, false);
	Move("�}�ݿձ���", 2000, @0, @-120, Dxl2, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0120a00">
��������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateSE("SE01a","se���L_����_��ͻ�M08");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetFrequency("SE01a", 1000, 600, Dxl3);

	FrameShake();
	Shake("�}�ݿձ���", 2160000, 0, 8, 0, 0, 1000, Dxl2, false);

	MyTr_Count(300,103);
	CP_SpeedChange(20000,286,Dxl2,false);
	CP_HighChange2(20000,872,Dxl2,false);
	CP_AltChange(2000,-57,Dxl2,false);
	CP_AziChange(2000,254,null,false);
	Zoom("�}�ݿձ���", 20000, 1200, 1200, Dxl2, false);
	Move("�}�ݿձ���", 2000, @0, @-120, Dxl2, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0130a01">
������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����⡣
�������ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0140a00">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ֱ��
//��Σ�����Ȥ��Ƿ�ܞ���ϕN��
	OnSE("se���L_����_�ռ�����01",1000);

//������󡸣ãУ����¤���˵ر�ء�
	CP_SpeedChange(10000,322,Dxl2,false);
	CP_HighChange2(10000,314,Dxl2,false);
	CP_AltChange(2000,-61,Dxl2,false);
	CP_AziChange(2000,257,null,false);
	Zoom("�}�ݿձ���", 10000, 1450, 1450, Dxl2, false);
	Move("�}�ݿձ���", 2000, @0, @-120, Dxl2, false);

	Wait(2000);

//������󡸣ãУ��ٶȤ�ȡ������ϕN��
	OnSE("se���L_����_���ϕN01",1000);

	MyTr_Count(300,470);
	CP_PowerChange(300,930,null,false);
	CP_SpeedChange(2000,512,Axl2,false);
	CP_HighChange(2000,1021,Axl2,false);
	CP_AltChange(2000,10,Axl2,false);
	CP_AziChange(2000,239,null,false);
	CP_RollBarMove("@�}�ݿձ���", 2000, 0, Axl2, false);
	Zoom("�}�ݿձ���", 2000, 1000, 1000, Axl2, false);
	Move("�}�ݿձ���", 2000, @0, 0, Axl2, false);

	Wait(1700);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("�}�ݿձ���*");

	CreateSE("SEL01","se���L_����_������02_L");
	CreateTextureSP("�}����", 500, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	Move("�}����", 0, @30, @0, null, true);
	CreateTextureSP("�}�ݴ�����", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��2.png");
	Move("�}�ݴ�����", 0, @70, @20, null, true);
	Fade("�}�ݴ�����", 0, 1000, null, true);

	Move("�}����", 300000, -60, @0, null, false);


	Shake("�}����", 2160000, 1, 0, 0, 0, 1000, null, false);
	BGMoveAuto("@�}�ݴ�����",1);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-512,@-144,null,false);

	MusicStart("SEL01",1000,1000,0,1000,null,true);
	DrawDelete("�}ɫ�\", 300, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ǿ�����
������Ƚ���ǰ�ĵ���֮�ţ����ٴλص��������Ļ�
���С�

����ͷ����������Ҫ���׹�ݵİ��ĸС�
��
������Ȼ�������ڲ����Ǹó��������������е�ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0150a01">
�����Ǹε��Ժ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0160a00">
�����ֶ����������û�аɡ�
������������㱨һ�����˳̶ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ʵ����ѯ�ʣ�����ľ�ʹ�Ѿ��������ҡ�
��ÿһ�μ��ٵĺ�������������ҵ���ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0170a01">
����װ���ܵ��������𻵡���
�������Һã��������������𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0180a00">
�������еĴ�����
��������ô���ղ��Ǹ��ǵ�Ϯ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����֪���Ǹ��޴������⣬��ȴ�����޴����������

����Ϊֱ����Ϯ��ǰһ�̣��ҵ���ʶ����������������
��֮�У���˶�����һɲ�Ƿ������£���֪����ģ����
���ƺ������˽��д�����������ݼ���Ҳ��Щģ����

��˵���ڵ��Ļ�����ȷ�������ͬ����˵����ʯ�Ļ���
Ҳû�з񶨵����ɡ�ֻ����Ҫ�����⾿�����ĸ����ε�
�ϵ�������ʯͷ�ˡ�
������������ң����еĻش��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0190a01">
���ǵ��ˡ���Ȼ�ǵ����ˡ�
��<RUBY text="��λ�Ϸ�">�Ϸ��������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 600, 0, null);

//�����ä���
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 650, @512, @0, Dxl2, false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_02_1", true);
	CloudZoomDelete(0,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����˳�Ž���˵�ķ���תͷ��ȥ��
���������˺������أ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���׉���T���å������`
//���ǥ����󥤥�`�������å������`��
#av_GUTSEIDER=true;

//��ע���ϥ������`�����\�ǤϤʤ�ħ��Ӣ�ہ��η���

//���ǈ��ݳ�
	CreateColorEX("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureEX("�}�ݺ���", 17100, Center, Middle, "cg/st/resize/3d���å������`_����_ͨ��am.png");

	CreateSE("SE01","se����_냇��_�z�ǈ���01");
	MusicStart("SE01",0,1000,0,500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Fade("�}�ݺ���", 0, 1000, null, true);
	Fade("�}ɫ��", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01b","se����_냇��_�z�ǈ���01");
	MusicStart("SE01b",0,1000,0,500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Move("�}�ݺ���", 0, -460, -510, null, true);
	Fade("�}ɫ��", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01c","se����_냇��_�z�ǈ���01");
	MusicStart("SE01c",0,1000,0,500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Move("�}�ݺ���", 0, -1660, -1920, null, true);
	Fade("�}ɫ��", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01d","se����_냇��_�z�ǈ���01");
	MusicStart("SE01d",0,1000,0,500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Move("�}�ݺ���", 0, -640, -1400, null, true);
	Fade("�}ɫ��", 200, 0, null, true);
	Wait(100);

	CreateSE("SE02","se����_냇��_�z�ǈ���02");
	MusicStart("SE02",0,1000,0,500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_����_ͨ��a.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 350, 350, null, true);
	CreatePlainSPadd("�}��д", 17110);
	Zoom("�}��д", 2000, 1300, 1300, null, false);
	FadeDelete("�}��д", 2000, false);
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����Ƕ�ħ��

�����ߣ����������е����������������˻���
������һ���ޱȱ����ġ�����ġ�������Թ����ƻ���
�ļ����塣

�������δ�Լ�Ǵ�����һ���屶�������ǽ�������
���ų���֮���ľ��ޣ�����������Ϊֹ�����������Ӵ�
�Ĺ��

������������������ƤĤһ���������Ȼ�����ڿ��С�
�⾿����������������µ�ج�ΰ���
����ͻȻ��һ����Ҫץ�����ĳ嶯��

�����û����Ѫ�Ļ�����֪�����Ǹ��Σ������ͺ��ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0200a01">
������ֻ��ͽ���˿ڶ��ѣ���ס�֡�
���ź����ǣ�����ȷ����ʵ���ڵġ���

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0210a00">
����֪������֮�����Ǵξ����Ǳ���ľ��顣
���Է�����ʶ���ź����𣿡�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0220a01">
��û�С���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0230a00">
�����������𡭡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ȻҲ���ǹ����ұ������޷��նӷ��ֵĿ����ԡ���
�����δ����������Ӧ�þͲ����������ˡ�
�����ң���Ҳ��δ��˵����������ʽ������������̬��
�صĽ��С�

����ô��Ϯ�������ɾ����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0240a00">
���ѵ���ֲ���ˡ��ѡ��ļ����塪����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0250a01">
����û�и��ܵ����ѡ�����Ϣ��
���������Ǻ��޹ء���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���Ⲣ��������ʣ���Ǹ����ѡ�������˵����
����ô��

����������������������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0260a00">
��������ʲô�ˣ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0270a01">
��������Ҳ����
�����ֻ�жԷ�����֪���𰸰ɡ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0280a00">
����ȷ��������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0290a01">
��Ҫ���ʿ���
��������֪���ܷ���Է�˳����ͨ��
��Щ΢�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��������ˣ�������֮�����������
�����û�б����������ɣ�����ܿ���ֻ��һ����ᡣ

��������Ȼ����Ϊһ�����Ͳ�㱻����˼�׵��ʵ��
������Щ��ˬ��
������ϳ������������������Ҫ�õöࡣ

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0300a00">
����֪ǰ�������
���ҷ����⹥������

//��������
<voice name="����" class="����" src="voice/mc01/009vs0310a00">
�����ʹ��������η���Ŀ��Ϊ�Σ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������

��û�л�Ӧ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0320a00">
���ʶԷ�����ǰҪ�ȱ����Լ��������������
��˼�𣿡�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0330a01">
��˭֪������
��������ˣ��ǶԷ���������������˭����֪��
������£���ֱ��չ���������𣿡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0340a00">
��Ҳ��Է����������������Ⱥõ��ˡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0350a01">
������û�����ˡ�
����˵�����ּһ�Ͽ����������ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ȼ���ǲ�ͬ������Ľ��飬������һ�γ����źͲ���
���ͨѶ��
����Ȼ���ܲ�����ֱ˵���ҷ���������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0360a00">
���ҷ�����Ϊ��������ͳ�͹������˴�ͽ�פ����
��Ŀǰ����ִ�л�������δ����ʶ���źš���

//���Ĥ�Ϣ
{	FwR("cg/fw/fw���å������`_ͨ��.png");}
//�����塿
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/009vs0370b07">
��������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0380a00">
���ظ����ҷ�����Ϊ��פ����
�����֪����������Ŀ�ġ���

//���Ĥ�Ϣǲ�������`�ϩ`���`�ϩ`��
{	FwR("cg/fw/fw���å������`_ͨ��.png");}
//�����塿
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/009vs0390b07">
������<?>
{	Wait(300);}
����<?>
{	Wait(300);}
����������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0400a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��ʲô��
�����ǡ����Է��Ļ�����

������ո�ȫ�����ܽ���֮����ˡ�����������˵����
�������������˰㣬��̬�����ҵĴ�Ϣ��
��ֻ�����˴�Ϣ��������û���κ����

�������Ⲣ��δ��������־���������
�����ĺ����а�����ĳ����־��

�����ǣ����ҵġ�������<k>���⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0410a01">
�����ˣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0420a00">
����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��Ȼ������ǶԷ��Ļش���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Tͻ�M
	CreateSE("SE00","se���L_����_��ͻ�M01");
	MusicStart("SE00",0,1000,0,750,null,false);
	CreatePlainSP("�}��д", 20000);
	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 500, 500, null, true);

	CreateSE("SE01","se���L_����_��ͻ�M02");

	Zoom("�}�ݺ���", 3000, 1200, 1200, null, false);
	FadeDelete("�}��д", 100, true);

	Wait(100);

	Zoom("�}�ݺ���", 100, 1200, 1200, null, false);

	Wait(50);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);


//��ӭ��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateSE("SE01a","se�M��_냇��_�i��01");
	CreateSE("SEL01","se���L_����_������01_L");

	CreateTextureSP("�}�ݴ���", 17100, 0, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	CreateTextureSP("�}�ݱ���", 17000, InRight, Middle, "cg/bg/bg204_�����ر���c_01.jpg");
	Move("�}�ݴ���", 0, @660, @0, null, true);
	Shake("�}�ݴ���", 2160000, 1, 2, 0, 0, 1000, null, false);

	Move("�}�ݴ���", 650, @-512, @0, Dxl2, false);
	Move("�}�ݱ���", 300000, -100, @0, Dxl3, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����֮���Ȱε���
�����۶Է��Ǻ��ˣ���û�����ɺ��޵ֿ��������׸

����Ҳ��Ҫ������
�������ǣ����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0430a00">
���������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��ͻȻ��Ϯ�������Ұ����ǵ��£�������������
��û�����ڲ��������ֵط���������Ī��ս����ʱ��

��Ҫ����������
��
�������������ѵ�����������ξ��˵��������������Σ
��������й���!?

�������ѵ�������˵�������뷨������Ȼ�ġ�
����������ˡ���<k>�㲻�����ʵ������ˡ����ﶨ���
׷�ҷ������շ���������⽫���������������ڵ��ˡ�

�������Ļ�����˵�Ǿ�Ԯ�ˣ�����������������
������Ҫ����ҲҪ�ڴ�֮ǰ�Ȱ�������ս��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0440a00">
��������ȷ�����롣
�������ﲻ����������һ��֮��Ѹ���뿪����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0450a01">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//����������
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�ݴ���", 150, @-60, @0, null, false);

	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	Fade("�}��ܞ", 150, 1000, null, false);
	DrawTransition("�}��ܞ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 18010, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������ռ���˸߶����ơ�
���������������ϣ�ӭ�����ˡ�����Ȼ���ƶ��ҷ���Ϊ
������

�����˵�����������Ӵ��������׶��ս����
������һ������������������������������ټ�֮��
�������Ļ����Ǻ������ʣ�����ɾ޴����в��

����ô����һ�غϡ�
�������Ӧ���أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ؤ�Ϥ����ҤȤޤ������ˏؤ���

}

..//������ָ��
//���ؤ�Ϥ���"mc01_009vsa.nss"
//���ҤȤޤ������ˏؤ��롡"mc01_009vsb.nss"

//���x�k֫���`��
scene mc01_009vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Move("�}��*", 0, -615, @0, Dxl2, false);
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("ն��","���ҹ᳹����ս��");
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
//���ؤ�Ϥ���"mc01_009vsa.nss"
				$GameName = "mc01_009vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���ҤȤޤ������ˏؤ��롡"mc01_009vsb.nss"
				$GameName = "mc01_009vsb.nss";
		}
	}
}