+//<continuation number="1380">

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

scene ma02_009vs.nss_MAIN
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
	#bg201_�����ݳ������нֵ�_02=true;
	#bg001_��a_02=true;
	#bg002_��a_02=true;

	#ev504_����ͻ�M=true;
	#ev943_�����֣���ɽ=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�ũ�ʽ�o�T��=true;

	$PreGameName = $GameName;

	$GameName = "ma02_010.nss";

	CP_AllDelete();

}

scene ma02_009vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_008vs.nss"

//	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���ե饤�ȥ�˥��`չ�_
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 500, Center, -500, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateColorSP("�}ɫ100", 1500, "Black");

	FadeDelete("�ϱ���", 500, true);

	Cockpit_AllFade(300,641,200);


	DrawTransition("�}ɫ100", 300, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(300);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("�}����1", 1200, Center, Middle, "cg/st/resize/3d�����˜�_�T��_ͨ��3a_ex.png");
	CreateTextureEX("�}����2", 1200, Center, Middle, "cg/st/resize/3d�����˜�_�T��_ͨ��3b_ex.png");
	Move("�}����1", 0, @-100, @+50, null, true);

	DrawDelete("�\Ļ��", 200, 100, "slide_04_01_0", true);

	Move("�}����1", 300, @+100, @-50, Dxl1, false);
	Fade("�}����1", 300, 1000, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_��ͻ�M03",1000);

	Fade("�ե�å����",0,1000,null,true);
	Fade("�}����1", 0, 0, null, true);
	Fade("�}����2", 0, 1000, null, true);
	Shake("�}����2", 10000, 1, 2, 0, 0, 500, null, false);
	FadeDelete("�ե�å����",1500,false);

	Wait(1500);

//	Move("�}����2", 400, @+700, @-200, Dxl1, false);

	CreateColorSP("�\Ļ��", 17000, "Black");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}����*");


	CP_SpeedChange(0,300,null,true);
	CP_HighChange(0,200,Dxl1,true);
	CP_PowerChange(0,500,null,true);

	Cockpit_AllFade2();
	MyLife_Count(0,720);
	MyTr_Count(0,513);
	CP_AziChange(0,10,null,false);
	CP_SpeedChange(2000,412,null,false);
	CP_HighChange(10000,1013,Dxl1,false);
	CP_AltChange2(1000,30,null,false);
	FrameShake();

	CreateColorSP("��Ļ", 11000, "White");
	Zoom("�}����100", 0, 1500, 1500, Dxl1, true);


	OnSE("se���L_����_���ϕN01",1000);

	Move("�}����100", 10000, @0, @+350, Dxl1, false);
	Zoom("�}����100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("��Ļ", 500,false);
	DrawDelete("�\Ļ��", 300, 100, "circle_01_00_1", true);

//�룺�ǥХå���
//	CP_StateDebug();

	SoundPlay("@mbgm08",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
��˺����գ�ֱ����ʰ����У��ҴӲ���Ϊ
���ָо��������������ʹ����������ð��Ƥ���
�������׵���Ԩ���޾����սᣬ���޵����򡪡�δ֪��
һ�뵽�Լ��������������Ŀ־�ʹ�ʹ���衣

�������ƽ�����������ƽ���������Ҳ�δ����
�����еĸ߶ȡ���ƽʱ��ȣ�<RUBY text="����������">��պܶ���</RUBY>��
����Ȼ���������㡣���ǣ�
Ӧ�û���������������ӵĶ��ְ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_AltChange2(3000,0,null,false);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0010a01">
��������Ȼû����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0020a00">
����ô�ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0030a01">
�����Ǽ����尡��������
����<RUBY text="ĸ��">���Ǻ�</RUBY>��ͬ����Ϣ����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0040a00">
��������ȷ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0050a01">
��֮ǰҲ˵������ֻ����Լ��Ѱ��
������ζ������һ�����ۼ���������ȷ����
���Ǹ��������ɱ�ֲ���ˡ��ѡ���
��ط���һ�������������ﰡ����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0060a00">
���ų���󡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ֵ�ø��˵��¡�
����������Ӧ�ø��˰ɡ��Ͼ�����һ��ֱ��
�ⲻ�ɱ���������ˡ�

��Ȼ�����жϵ����߾ʹ����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��ɽ", 2000, Center, Middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Zoom("�}��ɽ", 0, 20, 20, null, true);
	Move("�}��ɽ", 0, @-100, @-250, null, true);

	CockPit_LockSet(@-100,@-250);

	Move("�}����100", 1000, @0, @50, Dxl2, false);
	CP_LockOnMove("@�}��ɽ",1000,@0,@100,Dxl2,false);
	Fade("�}��ɽ", 200, 1000, null, false);
	CP_LockOnFade(300,"off",true);

//�룺��ɽ life412/Tr524
	CP_EnemyFade(300,10,412,524);


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0070a00">
����������Ķ��ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -144, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, -185, -250, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Move("�}�ݷ���", 0, @0, @-288, null, true);
	SetBlur("�}�ݷ���/�}���}", true, 1, 300, 100, false);


	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}�ݷ���", 300, @0, @432, Dxl2, false);

//	BGMoveAuto("@�}�ݷ���/�}�ݱ���",1);
	Move("�}�ݷ���/�}�ݱ���", 200000, @-800, @0, null, false);
	BGMoveAuto("@�}�ݷ���/�}���}",1);

	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	Wait(300);


	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0080b35">
���Ǻǣ���������������գ�
���㲻��ô��Ϊ�𣬴ն���������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0090a00">
���ش��ҡ�������ʶ���ǺŰ�!?��

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0100b35">
�����Ϸ������������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0110a00">
������������
��������Ż�֪����������

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0120b35">
���������������ǵ�Ȼ��
���Ϸ����λ�����Ĺ���������˵���㣡��

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0130b35">
���������еذ����Ϸ�
Ҫ�Ϸ�ú��۰��㣡��

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0140a00">
�������
�����Ǻ��������

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0150b35">
���Ϸ�ɲ�֪������
���Ͼ�����˷���š����ƶ�ȥ��
������ĺ��Ѵ�����������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0160a00">
����������

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0170b35">
���ҽ�����ȥ������Ӱ�������ң�
����Ů�Ĺ���һ�������Ǹ����ɡ���
�ǺǺǣ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0180a00">
�����ܱ���ϷŪ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ٶȥ�`���`���ϕN���졩��΢�ٻ����䤬�Ƶ���

	OnSE("se���L_����_��ͻ�M02",1000);

	Zoom("@�}�ݷ���*", 200, 2000, 2000, null, false);
	FadeDelete("@�}�ݷ���*", 200, true);

	BGMoveDelete();


	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");


	CP_LockOnMove("@�}��ɽ",1000,@+100,@+100,AxlDxl,false);
	Move("�}����100", 1000, @+100, @+100, AxlDxl, false);
	Zoom("�}����100", 1000, 1100, 1100, AxlDxl, true);
	Zoom("@�}��ɽ", 1000, 100, 100, AxlDxl, false);
	CP_SpeedChange(1000,512,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("@�}��ɽ", 2000, 10, 10, AxlDxl, false);
	Move("�}����100", 2000, @-100, @-100, AxlDxl, false);
	Zoom("�}����100", 3000, 1000, 1000, AxlDxl, false);
	CP_SpeedChange(10000,285,DxlAxl,false);

	Wait(500);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0190a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ٶȡ����������ˡ�
���������ж��ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0200a01">
�����������ˣ���

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0210a00">
���˽⡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Ť��������ת����
����ʼ׼����ս����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå����åפ���չ�_
//���ʤ��餫���½����ٶȻ؏�


	BGMoveDelete();

	OnSE("se���L_����_�ռ�����01",1000);

	Zoom("�}����100", 1000, 900, 900, AxlDxl, false);
	Shake("�}����100", 6000, 1, 3, 0, 0, 1000, null, false);
	CP_LockOnMove("@�}��ɽ",3000,@0,-2100,Axl2,false);
	CP_AltChange(3000,-70,Dxl1,false);
	Move("�}����100", 3000, @0, -2100, AxlDxl, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("�}����100", 1200, 1300, 1300, Dxl1, false);
	Move("�}����100", 1200, @0, -1800, Dxl1, false);

	Wait(600);
	Shake("�}����50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se���L_����_���ϕN01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("�}����100", 2000, 2000, 2000, Axl1, false);
	Move("�}����100", 2000, @0, 1200, Axl1, false);

	Wait(1700);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("�}����50");
	Delete("�}��ɽ");
	CP_LockOnDelete();

	CreateTextureSP("�}����100", 500, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}St100", 1000, 0, -500, "cg/st/resize/3d�����˜�_�T��_���Lbm.png");
	Fade("�}St100", 0, 1000, null, true);

	Shake("�}����100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@�}St100",1);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0220b35">
���ǡ���ô����ô����ô����
��û�뵽����ôû�á��������Ǹ���
�޷��ִ������ģ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0230a00">
���ϻ̳Ͽָ�л����һ�ٵĹ��ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϕN��
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}St100");
	Cloud_MoveDelete();
	Shake_LoopDelete();
	CloudZoomDelete(0,true);

	Cockpit_AllFade0();

	CreateColorSP("�}ɫ100", 1500, "Black");

	CreateWindow("��", 15000, 0, 100, 1024, 376, true);
	SetAlias("��","��");

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	CreateTextureEX("��/�}����", 2000, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	Fade("��/�}����", 0, 1000, null, false);
	DrawTransition("��/�}����", 300, 0, 2100, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

//�룺��ɽ�����ϣ��
	CreateTextureSP("��/�}��ɽ", 2200, -1024, 576, "cg/st/3d��ɽ_�T��_���Ld.png");
	SetBlur("��/�}��ɽ", true, 2, 300, 50, false);
	Request("��/�}��ɽ", Smoothing);
	Zoom("��/�}��ɽ", 0, 2500, 2500, null, true);

	CreateTextureSP("��/�}��ɽ2", 2200, 400, -500, "cg/st/3d��ɽ_�T��_���La.png");
	Rotate("��/�}��ɽ2", 0, @0, @180, @0, null,true);
	SetBlur("��/�}��ɽ2", true, 3, 500, 50, false);
	Zoom("��/�}��ɽ2", 0, 0, 0, null, true);

	CreateSE("SE01","se���L_����_��ͻ�M08");
	CreateSE("SE02","se���L_����_��ͻ�M04");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("��/�}��ɽ", 500, -565, -449, AxlDxl, true);

	Move("��/�}��ɽ", 1500, @+800, @-50, AxlDxl, false);
	Zoom("��/�}��ɽ", 1500, 10, 10, AxlDxl, true);

	Move("��/�}��ɽ", 500, @+100, @0, AxlDxl, false);
	Zoom("��/�}��ɽ", 500, 1, 1, AxlDxl, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("��/�}��ɽ2", 1000, 2500, 2500,AxlDxl, false);
	BezierMove("��/�}��ɽ2", 1000, (@0,@0){@+500,@0}{@+500,@0}(@-2500,@-200), AxlDxl, true);


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("�}ɫ100");

	CreateTextureSP("�}����100", 1000, Center, InBottom, "cg/bg/resize/bg001_��a_02.jpg");

	Delete("��/*");
	Delete("��");

	CP_AltChange(0,0,null,true);
	Cockpit_AllFade2();

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0240a01">
�����ﷴת������Ϊ�½����ơ�
��ӭ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϕN��

	CreateTextureEX("�}��ɽ", 2200, Center, Middle, "cg/st/3d��ɽ_�T��_���La.png");
	Move("�}��ɽ", 0, @0, @-100, AxlDxl, true);
	SetBlur("�}��ɽ", true, 3, 500, 50, false);
	Zoom("�}��ɽ", 0, 10, 10, null, true);
	CockPit_LockSet(@0,@-100);

	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1500,null,false);
	CP_AltChange(2000,40,null,false);
	Move("�}����100", 2000, @0, 0, AxlDxl, true);

	Fade("�}��ɽ", 200,1000,null,false);
	CP_LockOnFade(200,"off",true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0084]
���յ�����������������ͷ����
���������Ӱӳ��������

�������ڸ߶���ռ�����ƣ�
����ѹ���ԵĲ���ս�ƽ���̫��ӭս����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ӽ�
//����Ӱ��å�����
//���ãɣ������T���϶�
//���ãɣ���ɽ�T���¶�

	OnSE("se����_���å��ԥå�_��å�����",1000);


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateWindow("������ɥ���", 15001, 0, -288, 1024, 576, true);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, true);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureEX("������ɥ���/�}����01", 3600, -300, -100, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("������ɥ���/�}ga01", 3600, Center, -100, "cg/st/3d��ɽ_�T��_���La.png");

	Move("������ɥ���/�}����01", 0, @-200, @0, null, true);

	CreateTextureEX("������ɥ���/�}����01", 3600, -512, 0, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("������ɥ���/�}mura01", 3600, 100, -450, "cg/st/3d�����˜�_�T��_���La.png");

	Move("������ɥ���/�}����01", 0, @+200, @0, null, true);
	Move("������ɥ���/�}mura01", 0, @-300, @0, null, true);

	Fade("������ɥ���/�}����01", 0, 1000, null, false);
	Fade("������ɥ���/�}����01", 0, 1000, null, true);

	Fade("������ɥ���/�}mura01", 0, 1000, Dxl1, false);
	Fade("������ɥ���/�}ga01", 0, 1000, Dxl1, true);

	Move("������ɥ���/�}����01", 1500, @+200, @0, null, false);
	Move("������ɥ���/�}����01", 1500, @-200, @0, null, false);

	Move("������ɥ���/�}ga01", 1500, @-300, @0, Dxl1, false);
	Move("������ɥ���/�}mura01", 1500, @+300, @0, Dxl1, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_04_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0085]
�������������£�
����ô��Ӧ�û�������｣�Ͽ���

�����Ҿٵ��������ӵ������·���ȥ��
���ǵ���ͼһ���ˡ�
����˱�ֻ������һ��ʤ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ���ɽ�T���¶Ρ�����
	CreateTextureEX("������ɥ���/�}ga02", 3600, Center, -100, "cg/st/3d��ɽ_�T��_���Lb.png");
	SetBlur("������ɥ���/�}ga02", true, 3, 300, 50, false);
	Move("������ɥ���/�}ga02", 0, @-300, @0, Dxl1, true);

	Move("������ɥ���", 500, @0, @+288, Dxl1, false);
	Move("������ɥ���", 500, @0, @+288, Dxl1, false);
	Move("������ɥ���/*", 500, @+250, @+88, Dxl1, true);

	OnSE("se���L_����_������02",1000);

	Fade("������ɥ���/�}ga02",300,1000,Dxl1,false);
	Fade("������ɥ���/�}ga01",300,0,Axl1,true);

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("������ɥ���/�}ga02", 500, @+2000, @+800, Dxl1, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0250a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ����đҤ�
//���ãɣ���ͻ
//�����㤭��`��

	CreateColorEX("�}ɫ100", 20000, "Black");

	Fade("�}ɫ100", 300, 1000, null,true);

	SL_centerin2(21000,@0, @0,1000);

	OnSE("se���L_����_�����01",1000);
	SL_centerinfade2(10);

	CreateColorEXadd("�ե�å����", 21000, "WHITE");

	OnSE("se���L_�Ɖ�_�z03",1000);
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ɫ100");

	Delete("�}��ɽ");

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");

	Delete("������ɥ���");
	Delete("������ɥ���");

	Cockpit_AllFade2();

	CreateColorEXmul("�ե�å����", 20000, "RED");
	Fade("�ե�å����",0,500,null,true);

	CreateTextureEX("�}����50", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);
	Move("�}����50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@�}����50",0,15,null,true);

	Shake("@CP_Frame", 1000, 24, 47, 0, 0, 500, Dxl1, false);

	CP_RollBarMove("@�}����50",1000,0,null,false);

	CP_AltChange(500,0,null,false);


	FadeDelete("�ե�å����",1000,false);
	Fade("�ե�å����",300,0,null,true);

	Wait(700);

	FrameShake();

	Delete("�ե�å����");



	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0260a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������֮�ࡪ�����ӵ������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0270a00">
�������������ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0280a01">
�����������Ҳู��
��������΢����Ӱ�����ս������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0290a00">
���һ���Ϊ���ӻᱻ�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0300a01">
����Ȼ�ղź�Σ�ա����������׼�ø���ȷһЩ��
�Ǵ�ͻ�������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������ƺ�������µ����˵����
����������ܵ��������뷨���ǿ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0310a00">
���������డ�������õļ�����ϡ�档��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	WindowXSet(18000, 100);
	WindowXSetBG(18000, @+0, @+0,"cg/bg/bg002_��a_02.jpg");
	WindowXSetSt(18000, @0, @0,"cg/st/3d��ɽ_�T��_���Lb.png");

	OnSE("se���L_����_��ͻ�M02",1000);
	WindowFadeBG(1,500,0,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0320b35">
���Ǻǣ��������˴�־�ս̫�����ˣ�
�Ϸ�ָ��һ����ʤ���ء�
�������������鲻����ô��ѽ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ݲ��ȵ�װ��ͨ�Ŵ�����С�
���������෴������������û��˿�����ʡ�

��������ָ������һ��ٵ���ʹ��������ƽ�С�
�����������ͻ�̣����ּ��������ߵ�ս���в���������
��Ϊ��Ҫ��׼���̴����ٷ��������ߣ�
��Ҫ����������������졣

��Ȼ����
��ֻҪ�˷����������ѣ�ֻҪ���Ⲷ׽�����ˣ�
���ߵĽ�������ͻᱻ������һ�㣬��Ȼ�Ǹ���
Ц���ڵ���װ�ף�Ҳ����ֽһ�㱻�̴���

������û���κ�һλ�����ܳ���������ͻ�̰ɡ�
����ˣ�����һ�����ھ��洦������֮ʱ��
Ϊ����������ʹ�õġ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M03",1000);
	Window_StMove(300, @+1000, @-500, Dxl1, false);
	Window_WipeDelete(300,"slide_05_00_1",true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0330a00">
���������Ƶĵ�λ�Ͼ�ʹ�����С���
������Ŀ�����˵��з�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0340a01">
���������ƺ���̫�ϵ�������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0350a00">
����Űɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ����

	OnSE("se���L_����_��ͻ�M02",1000);

	CreateSE("SE01","se���L_����_�ռ�����01");
	CreateSE("SE02","se���L_����_���ϕN01");

	CreateTextureEX("�}����100", 500, Center, -5000, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

//	OnSE("se���L_����_�ռ�����01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@�}����50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@�}����50",1500,180,Dxl1,true);
	Delete("@�}����50");

	MyTr_Count(500,450);
	Move("�}����100", 3000, @0, 0, AxlDxl, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(1500);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	MusicStart("SE02",0,1000,0,1000,null,false);
//	OnSE("se���L_����_���ϕN01",1000);
//	Move("�}����100", 2000, @0, 800, Dxl1, false);
//	Zoom("�}����100", 2000, 1500, 1500, Dxl1, false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("�}����100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("�}����50", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);


	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	BGMoveDelete();

	CreateTextureEX("�}������", 2000, 0, -188, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureEX("�}������", 2100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureEX("�}������", 2000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	SetBlur("�}������", true, 3, 500, 50, false);


	Fade("�}������", 0, 1000, null, true);
	Move("�}������", 500, @-1024, @0, Axl1, false);

	OnSE("se���L_����_��ͻ�M03",1000);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(100);


	Shake("�}������", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("�}������", 500, 1000, null, false);
	Fade("�}������", 500, 1000, null, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0360a00">
������������
����������<RUBY text="��">����</RUBY>�޹ء���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0370a01">
���ǰ���
��<RUBY text="��">����</RUBY>�������ں�����¡���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0380a00">
��������ô��
�������������ɡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0390a01">
����ʼ�ɣ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå����åס��ϕN
//����Ӱ��å����󡣽ӽ�

//���ãɣ���ɽ�T���϶�
//���ãɣ������T���¶�
//���ãɣ��Ą�

	SetVolume("SE*", 300, 0, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����*");

	CreateTexture("�}����100", 100, -512, -288, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTexture("�}St100", 100, -120, -352, "cg/st/3d��ɽ_�T��_���Lb.png");
	Rotate("�}St100", 0, @0, @0, @+30, null,true);
	Request("�}St100",Smoothing);
	Move("�}St100", 0, @-1000, @-1000, null, true);
	SetBlur("�}St100", true, 3, 500, 30, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	OnSE("se���L_����_���ϕN01",1000);

	Move("�}St100", 500, @+1800, @+1800, Dxl1, true);

	CreateTextureEX("�}����200", 2000, -180, -250, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	CreateTextureEX("�}St100", 2100, 88, -120, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}St100",Smoothing);
	Rotate("�}St100", 0, @0, @0, @+35, null,true);
	Move("�}St100", 0, @+800, @+300, Dxl1, true);
	SetBlur("�}St100", true, 3, 500, 30, false);

	Fade("�}����200", 0, 1000, null, false);
	DrawTransition("�}����200", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se���L_����_���ϕN01",1000);
	Fade("�}St100", 300, 1000, null, false);
	Move("�}St100", 300, @-1000, @-500, Dxl1, true);
	Move("�}St100", 300, @-2000, @-1000, Dxl1, true);


	CreateTextureEX("�}EF100", 15000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Rotate("�}EF100", 0, @0, @180, @0, null,true);
	CreateTextureEX("�}EF50", 14000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Rotate("�}EF50", 0, @0, @180, @0, null,true);
	CreateTextureEX("�}EF200", 16000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Rotate("�}EF200", 0, @0, @180, @0, null,true);

	CreateColorEXadd("��Ļ", 16000, "White");

	OnSE("se���L_�n��_�nͻ01",1000);
	Fade("�}EF200", 0, 1000, null, true);
	Fade("�}EF100", 0, 1000, null, false);
	Fade("�}EF50", 0, 1000, null, false);
	Zoom("�}EF200", 300, 2000, 2000, null, false);
	Shake("�}EF50", 1000, 25, 50, 0, 0, 500, Dxl1, false);
	Shake("�}EF200", 500, 25, 50, 0, 0, 500, Dxl1, false);
	FadeDelete("�}EF200", 300, false);

	Wait(200);

	Fade("��Ļ", 200, 1000, null, true);

	Delete("�}EF*");
	Delete("�}����100");
	Delete("�}����200");
	Delete("�}St100");

	CreateTexture("�}����100", 100, -512, -288, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTexture("�}St100", 100, -390, -191, "cg/st/3d�����˜�_�T��_���Lb.png");
	Rotate("�}St100", 0, @0, @0, @+30, null,true);
	Request("�}St100",Smoothing);

	CreateMask("�ޥ�����", 2000, 0, 0, "cg/mask/ci����å���_01_00.png", false);
//	Rotate("�ޥ�����", 0, @180, @0, @0, null,true);

	CreateTexture("�ޥ�����/�}����100", 2000, -180, -250, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	CreateTexture("�ޥ�����/�}St100", 2100, 160, -412, "cg/st/3d��ɽ_�T��_���Lb.png");
	Request("�ޥ�����/�}St100",Smoothing);
	Rotate("�ޥ�����/�}����100", 0, @0, @0, @+35, null,true);
	Rotate("�ޥ�����/�}St100", 0, @0, @0, @+20, null,true);

	Move("�ޥ�����/�}St100", 0, @-500, @-500, null, true);
	Move("�}St100", 0, @+500, @+500, null, true);

	Move("�ޥ�����/�}St100", 500, @+500, @+500, Dxl2, false);
	Move("�}St100", 500, @-500, @-500, Dxl2, false);


	FadeDelete("��Ļ", 1000, true);


	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0400b35">
���Ǻǣ�����������˳Ծ���
���и��ϲ�����Ҫ������Զ��Ĵ���
����������

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0410b35">
����ѽ���Ϸ�Ҳ����û�õķ��ﰡ��
������˵�����ǵ�������ʵ����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0420a01">
�����ǵ�����������������أ���ɽ��
���������װ�����˸��ܵ������۷����Ϣ����
������һ�����ʡ���

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0430b35">
��ʲô���⣬֩�빫�����ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0440a01">
��������ɽ��ұ�Ŀ�ɽ����
Ӧ��ƽ������ĩ�ڵĹ����衣
��Ȼ�����ǽ��зǳ��ǳ��Ĺ��ϣ�
�����û����Ļ���Ӧ�ñȹ�������硣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0450a01">
����������������ƽ��ǰ������ġ�
�������𣿡�

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0460b35">
���Ǻǣ����治���ǳư����µĴ�����
�����������죬�Ϸ����ɽ�����������ġ�
�������֮�����ɽ��
�ڼ�����������ͬ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0470a01">
��������Ȼ����
����ô��Ϊ���Գ���ɽ����

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0480b35">
���Ϸ�����������꣬�������ɽ����ļ���
���������λ֮���ʱ����������ġ�
������Ϊ��ɽ����λ����

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0490b35">
��֮�����������Ź���������������
����ɽ���Ƴ�����ɽ�����ɽʱ�������������ϣ�
�����ֱ��ʹ͸����̷�Ź����Ϸ��
ңԶ�����ȣ���ĸ��ʯ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0500a01">
��������������
���ֲ���������취��
����Ũ�ҵİ�����ݶ�ұ����ɫ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ݶ�ұ��������ֳ����ڽ�����ʷ������ʱ����
���Ǹ�����������һϵͳ����ô
���������ִ潣���н���������ϵ�һ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0510a01">
����ݶ�ұ�˵���װ�׵������ߣ�
�ڴ������ϣ����ǻ�ʱ���Եġ�
�����ǳ��������װ�����¹���
��������������һ�뷨�����һ��ɹ��ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0520a01">
���ղ���չʾ���ҵĳ�ɫ�ٶȡ�
������˵ʵ���������˵���ǣ�
��ֻ�ܷ����п���̾Ϣ����

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0530b35">
���ǺǺǡ���������һζ̧���Ϸ�
����Щ���Ĳ�����
���Ͼ������ڱ���Ҫ������ǣ�
�ܾ��ú��ھ�ѽ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0540a01">
��û��ϵ�������⡣��������Ҫ����
<RUBY text="����">���</RUBY>�ء�
����������ע�⵽���ٶȵ���Ҫ�ԡ�
����Ҳ�͵���Ϊֹ�ˡ���

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0550b35">
���������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ�½�

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����50");
	Delete("�}����100");
	Delete("�}St100");
	Delete("�ޥ�����/*");
	Delete("�ޥ�����");

	Cockpit_AllFade2();
	CP_SpeedChange2(0,400,null,false);
	CP_HighChange2(0,2000,null,false);
	CP_RollBarMove2(0,180,null,true);

	CreateTextureSP("�}����50", 1000, Center, InBottom, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");


	OnSE("se���L_����_���ϕN01",1000);
	CP_SpeedChange2(1500,712,DxlAxl,false);
	CP_HighChange2(1500,1210,DxlAxl,false);
	CP_AltChange(1600,83,DxlAxl,false);
	Move("�}����50", 1600, @0, -3000, DxlAxl, false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(1200);

	CP_RollBarMove2(0,0,Dxl1,false);
	CP_AziChange(500,180,Dxl1,false);
	CP_SpeedChange(2000,530,Dxl1,false);
	CP_HighChange(2000,1820,Dxl1,false);
	CP_AltChange(2000,0,Dxl1,false);
	Move("�}����50", 2000, @0, 470, Dxl1, false);

	Zoom("�}����50", 500, 1500, 1500, Dxl1, true);

	Wait(1500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0560a01">
����ս��������ϵ����ʼ��
����֮���һ��ʱ������
����ʱ�����ǻ�û����ȷ�˽⵽
��ת���ܵ���Ҫ����

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0570b35">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ϕN
//����Ӱ��å����󡣸߶Ȳ�ۤܟo��

	CreateTextureEX("�}��ɽ", 2000, Center, Middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Zoom("�}��ɽ", 0, 0, 0, null, true);
	Move("�}��ɽ", 0, @0, @-50, null, true);

	CockPit_LockSet(@0,@-50);

	OnSE("se����_���å��ԥå�_��å�����",1000);

	Zoom("�}��ɽ", 300, 50, 50, null, false);
	Fade("�}��ɽ", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0219]
�������ε����潻ս��
���߶ȵ����ӡ����Ѿ��������ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0580a00">
���ٶ�Ҫ����ǰ����תҪ���ء���
���ڽ���������������ˣ�һ��������仰�ɡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0590a01">
������һ������Ũ���ض�ұȺ���ϵͳ��
����������ת���ĸ�ս�У�
�ǲ��Ჽ���˺󳾵ģ���

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0600b35">
���Ϸ�����ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
//���ãɣ������T���϶�
//���ãɣ���ɽ�T���¶�
//���ãɣ��Ą�

	CreateTextureEX("�}����010", 21000, -1024, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}mura", 700, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Move("�}mura", 0, @+1000, @0, null, true);
	SetBlur("�}mura", true, 3, 500, 10, false);

	CreateTextureEX("�}����002", 1000, 0, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}gassa", 1200, Center, Middle, "cg/st/3d��ɽ_�T��_���La.png");
	Move("�}gassa", 0, @-1000, @0, null, true);
	SetBlur("�}gassa", true, 3, 500, 50, false);


	Fade("�}����010", 300, 1000, null, true);
	CreateTextureSP("�}����001", 600, -1024, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("�}����50");
	Delete("�}��ɽ");

	Delete("�}����010");

	OnSE("se���L_����_��ͻ�M01",1000);

	Fade("�}mura", 300, 1000, Dxl1, false);
	Move("�}mura", 350, @-2500, @0, Dxl1, true);

	Fade("�}����002", 100, 1000, Dxl1, true);

	OnSE("se���L_����_��ͻ�M02",1000);

	Fade("�}gassa", 300, 1000, Dxl1, false);
	Move("�}gassa", 400, @+2000, @0, Dxl1, false);

	Wait(300);

	CreateTextureEX("�}ef001", 6000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");


	OnSE("se���L_�n��_�nͻ01",1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�}ef001",200,1000,null,true);

	Fade("�ե�å����",200,1000,null,true);

	Delete("�}gassa");
	Delete("�}mura");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	CreateColorSPadd("�\Ļ��", 16000, "White");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	Delete("�}ef001");
	Delete("�}����001");
	Delete("�}����002");

	CreateTextureSP("�}����100", 1000, Center, -800, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Zoom("�}����100", 0, 950, 950, null, true);

	Cockpit_AllFade2();

	Shake("�}����100", 600, 2, 5, 0, 0, 500, Dxl1, false);
	Zoom("�}����100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("�\Ļ��", 500, false);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0610a00">
������������


{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0620b35">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϕN
//����ܞ�½�
//����Ӱ��å����󡣤���·�
	OnSE("se���L_����_��ͻ�M03",1000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("�}����100", 500, Center, Middle, "cg/bg/bg001_��a_02.jpg");

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_0", true);

	CreateTextureSP("�}mura01", 700, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	CreateTextureEX("�}mura02", 800, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	Rotate("�}mura01", 0, @0, @0, @-45, null,true);
	Request("�}mura01", Smooting);
	Rotate("�}mura02", 0, @0, @0, @-45, null,true);
	Request("�}mura02", Smooting);


	Move("�}mura01", 0, @-2000, @+1000, null, true);
	Zoom("�}mura01", 0, 2000, 2000, null, true);

	Move("�}mura01", 300, @+2000, @-1000, Dxl1, false);
	Zoom("�}mura01", 300, 1000, 1000, Dxl1, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	Fade("�}mura02", 0, 1000, Dxl1, true);

	Fade("�}mura02", 0, 1000, Dxl1, false);
	Fade("�}mura01", 0, 0, Axl1, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("�}mura02", 500, @+1500, @-1500, Dxl1, false);
	Fade("�ե�å����",300,0,null,true);

	Fade("�}mura02", 300, 0, Dxl1, false);
	Delete("�ե�å����");

	Wait(200);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("�}mura01");
	Delete("�}mura02");

	CreateTextureEX("�}����100", 1000, Center, -300, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	Cockpit_AllFade2();

	Zoom("�}����100", 1000, 1250, 1250, Dxl1, false);
	Move("�}����100", 500, @0, @-300, Dxl1, false);

	CreateTextureEX("�}��ɽ", 2000, Center, Middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Zoom("�}��ɽ", 0, 0, 0, null, true);
	Move("�}��ɽ", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se����_���å��ԥå�_��å�����",1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_0", true);

	Zoom("�}��ɽ", 300, 10, 10, null, false);
	Fade("�}��ɽ", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0630b35">
�����ء���!?��


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0640a00">
�������Ϸ�����ˣ��������ơ�
��֮���ʱ����������ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ������T���϶�
//���ãɣ���ɽ�T���϶�
//���ãɣ��Ą�

	CreateColorEX("�}ɫ100", 21000, "Black");
	SL_leftdown2(22000,@0, @0,1500);

	CP_LockOnChangeW(300);
	Zoom("�}��ɽ", 500, 2000, 2000, Dxl1, false);

	Wait(300);

	Fade("�}ɫ100", 100, 1000, null, true);

	OnSE("se���L_����_�����03",1000);
	SL_leftdownfade2(12);

	Wait(100);
	CP_LockOnDelete();
	Move("�}����100", 0, @0, -400, null, true);


	CreateColorEX("�ե�å����", 21000, "WHITE");
	Fade("�ե�å����",300,1000,null,true);

	Move("�}��ɽ", 0, @0, @+300, Dxl1, true);
	Delete("�}ɫ100");

	CP_EHPChange(500,7,null,false);
	OnSE("se���L_�Ɖ�_�z03",1000);
	Move("�}����100", 2000, @0, @100, Dxl2, false);
	Move("�}��ɽ", 600, @0, @+2000, Dxl1, false);
	Shake("@CP_Frame", 500, 5, 10, 0, 0, 500, null, false);
	Fade("�ե�å����",500,0,null,true);
	FadeDelete("�}��ɽ", 300,false);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0650b35">
����Ŷ!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0660a01">
�������粿�е����ж��˺�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0670a00">
�����ң�û����ս��ʱ
����Ϸ�����¡�
����һ�غϾͻ�׹�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������㹻�����ġ�
���ٴ��ý�����ͬһ�ص�Ļ���
һ���ܰ�װ�׺���������һͬ������

�����ң���û���ɲ���ô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϕN
//����ܞ����

	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("�}mura01", 1700, -36, -647, "cg/st/resize/3d�����˜�_�T��_���Lam.png");
	Move("�}mura01", 0, @+2000, @-500, Dxl1, true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@+100,Dxl2,true);
	Fade("�}mura01", 300, 1000, null, false);
	Move("�}mura01", 300, @-2000, @+500, Dxl1, true);

	BGMoveAuto("@�}mura01",1);


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0680a00">
�������ˡ���

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0690b35">
������������������
����ѽ��������ȷ�����̫��������
�Ϸ������Զԡ���

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0700b35">
����ѽ��ѽ�����۳������꣬
���Զ�������İ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T��å�����

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	BGMoveDelete();
	Cloud_MoveDelete();
	CloudZoomDelete(0,true);

	Delete("�}mura01");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg001_��a_02.jpg");

	Cockpit_AllFade2();

	CreateTextureEX("�}��ɽ", 2000, Center, Middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Zoom("�}��ɽ", 0, 0, 0, null, true);
	Move("�}��ɽ", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se����_���å��ԥå�_��å�����",1000);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Zoom("�}��ɽ", 300, 10, 10, null, false);
	Fade("�}��ɽ", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0710a00">
������������

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0720b35">
������������������
�����ʱ��Ҳ����Ϊֹ�ˡ�
���������ٴ����Ϸ������ɡ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0730a00">
����������������Ը����

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0740b35">
�����Կ��ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
//���ãɣ������T���϶�
	Zoom("�}��ɽ", 300, 30, 30, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0286]
��������ϣ�
���Է��н���Ϊ���������Ҿٵ���������ͼһ�����ϡ�

������ң��Է���̫�������´��ţ�û���κμ��ơ�
����������ʲô��ͼ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����1000", 17000, Center, -200, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����1000", 300, 1000, null, true);

	CreateTextureEX("�}��ɽ01", 18000, Center, InBottom, "cg/st/3d��ɽ_����_ͨ��.png");
	CreateTextureEX("�}��ɽ02", 17700, Center, InBottom, "cg/st/3d��ɽ_����_��x.png");
	CreateTextureEX("�}��ɽ03", 17200, Center, InBottom, "cg/st/3d��ɽ_����_��x.png");
	CreateStencil("sten",1000,center,InBottom,128,"cg/st/3d��ɽ_����_��x.png",false);
	SetAlias("sten","sten");
	CreateMask("sten/�ޥ�����", 17500, Center, Middle, "cg/st/3d��ɽ_����_��x.png", false);
	SetAlias("sten/�ޥ�����","sten/�ޥ�����");
	CreateTextureEX("sten/�ޥ�����/�}����", 17500, Center, -500, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Move("sten/�ޥ�����/�}����", 0, @0, @+10, null, true);
	Zoom("sten/�ޥ�����/�}����", 0, 1050, 1200, null, true);

	Fade("�}��ɽ01", 300,1000,null,true);

	Wait(500);

	OnSE("se���L_����_������03",1000);
	EffectZoomadd(18000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Fade("�}��ɽ02", 300,1000,Dxl1,false);
	Fade("�}��ɽ01", 300,0,Axl1,true);

	Wait(300);

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

	SetBacklog("��������������ڡ������囷������������ڡ������囷������", "voice/ma02/009vs0750b35", С̫��);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���i�ߤϡ����`�󤭤��󤲤�ä��󤷤礦���礦��
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0750b35">
��
����������������ڡ������徻����
����������������ڡ������徻������

</PRE>
	SetTextEXR();
	Request("@text0290", NoLog);
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//����Ӱ������ä������Ƥ�������å����������ԥá�
	Fade("�}��ɽ03", 0,1000,Dxl1,true);
	Fade("sten/�ޥ�����/�}����", 0,1000,Dxl1,true);

	Fade("�}��ɽ02", 1500,0,Dxl1,false);
	DrawTransition("�}��ɽ2", 2000, 1000, 0, 200, Dxl1, "cg/data/wave_01_00_0.png", true);

	Wait(1000);

	FadeDelete("�}��ɽ0*",500,true);
	FadeDelete("sten/�ޥ�����/*", 1000, false);
	FadeDelete("sten/*", 1000, false);
	FadeDelete("sten", 1000, true);

	CreateColorSP("�\Ļ��", 30000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����1000");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");


	Cockpit_AllFade2();

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	OnSE("se����_�z_�����01",1000);
	CP_LockOnFadeT(300,false);
	FadeDelete("�}��ɽ", 500,true);
	CP_LockOnDelete();

	Wait(1000);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0760a00">
������ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0770a01">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����ʧ�������������ˣ�

����ô����!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ء��܇�_�J

//�룺��λӋ�{�����
	Move("�}����100", 500, @+200, @-100, Dxl1, true);
	Move("�}����100", 500, @-300, @-100, Dxl1, true);
	Move("�}����100", 500, @-100, @+100, Dxl1, true);
	Move("�}����100", 500, @+500, @+200, Dxl1, true);
	Move("�}����100", 500, @-300, @-100, Dxl1, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0780a00">
��û�С���!?
���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0790a01">
���ȵȣ�
�������ھ�̽����Χ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ä�����
	Wait(300);
	OnSE("se����_���å��ԥå�_��å�����",1000);
	Wait(300);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0800a01">
�������ҵ��ˣ�
��������һ����ʮ���·��������İ٣���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0810a00">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä���


	Zoom("�}����100", 500, 1500, 1500, Dxl1, false);
	Move("�}����100", 500, @-300, @0, Dxl1, false);
	Wait(200);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se���L_����_��ͻ�M02",1000);

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Move("�}����100", 0, @+300, @0, null, true);


	CP_AziChange(500,351,Dxl1,false);
	Move("�}����100", 500, @-300, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0820a00">
��������
��������!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0830a01">
��������!?
����ô�ᡭ����ȷ�з�Ӧ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓���
//���n�ġ��ɤ��`��

	CreateSE("SE01","se���L_����_�z_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);

	Wait(800);

	OnSE("se���L_����_�z��������02",1000);

	CreateColorEXadd("�ե�å����", 21000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	CreateColorEXmul("�ե�å����", 20000, "RED");
	Fade("�ե�å����",0,500,null,true);

//�룺����`���ݥ���ȼ���
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 10, 30, 0, 0, 500, null, false);
	Shake("�}����100", 1000, 20, 30, 0, 0, 500, null, false);
	Fade("�ե�å����",800,0,null,false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0840a00">
������!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0850a01">
������������!?
�������﷢���ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ء��ʤ�⤤�ޤ���ͥϥ���

//�룺��λӋ�{�����
	Move("�}����100", 500, @+250, @-150, Dxl1, true);
	Move("�}����100", 500, @-300, @+100, Dxl1, true);
	Move("�}����100", 500, @+150, @-150, Dxl1, true);
	Move("�}����100", 500, @-300, @+300, Dxl1, true);
	Move("�}����100", 500, @+200, @-100, Dxl1, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0860a01">
���⡪�����ǡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0870a01">
����ô���£�
�������ҵĶ�����!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0880a00">
��������ɽ�����塭���𣿡�

{	SoundPlay("@mbgm13",0,1000,true);
	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0890b35">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ء����ͩ`��


//�룺��ev���ز��Ŵε��{��
	CreateTextureEX("�}EV100", 18000, Center, Middle, "cg/ev/ev943_�����֣���ɽ.jpg");
	SetBlur("�}EV100", true, 2, 300, 100, false);

	Zoom("�}EV100", 0, 2000, 2000, null, true);


	Zoom("�}EV100", 1200, 1000, 1000, Dxl3, false);
	Fade("�}EV100", 1000, 1000, Axl3, true);
	Cockpit_AllFade0();

	Wait(500);

/*
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");

	CreateTextureSP("�}����", 3000, Center, Middle, "cg/st/3d�����˜�_�T��_���Le.png");
	Move("�}����", 0, @+800, @0, null, true);

	Move("�}����", 350, @-800, @+100, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_04_01_0", true);

*/

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0900a00">
���ղŵķ���Դ���ģ���


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0910a01">
���ߡ���ʮ����Ϸ�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä��򤯡����ͩ`��
/*
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("�}����");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	Move("�}����100", 0, @-200, @0, null, true);

	Cockpit_AllFade2();

	CP_AziChange(500,351,Dxl1,false);
	Move("�}����100", 500, @+200, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);
*/


	FwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0920a00">
����������


{	FwL("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs0930b35">
����ô�������Ϸ�������֮����
������������ζ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̽�������ʤ����ɡ�
//�룺��λӋ�{�����
/*
	Move("�}����100", 500, @+200, @-100, Dxl1, true);
	Move("�}����100", 500, @-300, @-100, Dxl1, true);
	Move("�}����100", 500, @-100, @+100, Dxl1, true);
	Move("�}����100", 500, @+500, @+200, Dxl1, true);
	Move("�}����100", 500, @-300, @-100, Dxl1, true);
*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0382]
����������֮����
���ѵ������Լ���ȫ���������ˣ�

��������������<RUBY text="�״�">̽�����</RUBY>����ƭ��ȥ�ˣ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0940a00">
������ôǿ����������!?��


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0950a01">
���ҵ�һ����˵������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�������Ľ��д��������ڰ�����
������Ҳ�޿ɺ�ǡ�

�����ߵ����������ص���ʽ�����춯��֮��
������������������������˺����ա�
�����ص������Ҵ�ǰҲ��������������
Ҳ��ʹ�ñ�һ�����߳�Ϊħ����־岻�ѵ�������

��Ȼ����
�����<RUBY text="����">����</RUBY>�������һ�������δ�š�

�����ۿ��������ˣ�̽�����Ҳ�������ã�
�����������޴Ӿ�����
�����ǻ������ף�����������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma02/009vs0960a00">
������˵��
��Ӣ������ʿ�����о���������װ�ס�����


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0970a01">
��������ݶ�ұ���Ƚ���
����һǧ��Ҳ�����˰ɣ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��û��
����������װ�����ּ�����Ϊ�˶Ը��״�ģ�
����Ŀ�껹ֻ�ǡ�ʹ��<RUBY text="����">����</RUBY>��̽�鵽�����̶ֳȣ�
�����˽���ʵ�û���üĿ��

�������Ǽ������Ӿ��������ι��ܣ�
�ֿ��Ը��з�̽����ܴ����������ĳ���������
���٣�����֪���鱨�ﲻ�������ġ�
����ô���ǹ�Ȼ�����塭��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs0980a01">
������������رܣ���

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs0990a00">
��!?��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`��
//�����ĆФ餦��������`��

	Cockpit_AllFade2();

	FadeDelete("�}EV100", 500, true);

	OnSE("se���L_����_��ͻ�M03",1000);

	BGMoveDelete();
	CP_RollBarMove("@�}����100",500,90,Dxl1,false);

	Wait(300);

	CP_AltChange2(500,45,null,false);
	Zoom("�}����100", 1300, 1500, 1500, Axl1, false);
	Move("�}����100", 1800, @+200, @+550, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
	CP_AziChange(1300,92,Axl1,false);
	Wait(500);
	CP_SpeedChange(1500,512,null,false);
	CP_HighChange(1500,600,null,false);

	Wait(300);

	CreateSE("SE01","se���L_����_�z_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);
	Wait(800);
	OnSE("se���L_����_�z��������02",1000);

	CreateColorEXadd("�ե�å����", 21000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}����100");

	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Move("�}����50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@�}����50", 0, -20, null, true);

//�룺����`���ݥ���ȼ���
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 2, 5, 0, 0, 500, null, false);
	Shake("�}����50", 1000, 3, 4, 0, 0, 500, null, false);
	CP_RollBarMove("@�}����50", 600, 0, Axl1, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1000a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1010a01">
������Ĺ����ӹ����ײ��棡
��ǧ��һ���������ٕ�һ˲�䣬
������Դ����¾������������˶��ˡ���

//��������
<voice name="����" class="��������" src="voice/ma02/009vs1020a01">
��������û�°ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1030a00">
������û�¡�
����˵�������ղ�����β���������ģ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1040a01">
���Ұ�̽����ܴ�<RUBY text="����">�ź�̽��</RUBY>��
������<RUBY text="����">��Դ̽��</RUBY>��
��������Ԥ�ϵĲ���
�������ⷽ��������ƺ���������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1050a00">
������������
���Է�Ҳ�������ܵİ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�����������������ֹ����
�ӹ��Ӿ���ͨ��̽�顣
����ô���з�����ѭ����

����Ҳ��˵��
����Ȼ�޷�Ťת��ѹ���Ե����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1060a00">
����������Դ̽��������ս���𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1070a01">
���������С�
����Ч��Χ̫խ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��ԭ����ˡ�
����Դ̽�鱾��������½ս�õĸ������ܣ�
�ڿ��е�ʹ�ò�ûδ������Ԥ���С�
��������ֻ������ս���ȿ���ս����С��½��ս��

��������½սΪ���Ľ��У�
��ʱҲ��װ������ͨ���и��������Դ̽�顭���ⷽ�棬
�����Ĺ������ͳ��
����ս������գ���˲�������Դ̽�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1080a01">
��������ֻ�ܶ�����������ɡ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1090a00">
����ʤ���ޡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����ⲻ�����ƽ���ν������֮����
������ҪЩ������ĳЩ��Ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���m�����w��



	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1100a00">
��������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1110a01">
��ʲô����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1120a00">
���Ǽһ��Ѿ���ʧ�೤ʱ���ˣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1130a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������û�лش𣬲����������̾�
��������û˵���ڵĻ���
����Ϊ���ܵ���������һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1140a00">
����������Ĵ����Ǵ�����������
��Խ��ǿ��������������Խ���ҡ���

//��������
<voice name="����" class="����" src="voice/ma02/009vs1150a00">
����ͣά�����������ֻ��Ƶ�������
����ͬʱ��Ҫ��������ս������
������Ҫ�����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1160a01">
������Ӧ���Ǹ����˵����֡�
����ͨ��������͸�ȱ��������׹�䣬
������������������ˡ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1170a00">
����ͬ�⡣
�����������Գ�ʶ�ж�������ְ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
����Ҳ�����Ǳ�ֲ��ġ��ѡ���Ч����
���Ǹ���ġ����崨�Ҳʹ����ǿ������壬
����δ�ܱ�������Ƿȱ��׹���ˡ�

���⵽����ʲô״���أ�
������ȫ����͸���о��Լ������������������֮�С�

������֮�������������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1180a01">
��������ô�죿��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1190a00">
���Ǽһ�ġ��ѡ��ж��Σ���ԣ�
��Ŀ���Ƿ��Ҫ�����ˣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1200a01">
������������
��ȷ���鱨��Ҳ���˽⣬
��������������첻���������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1210a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��״���ڴ�ʹ����һ��������

��״����

������������ϵ�������
���ҷ��ĵ��ҡ�

������û��ʤ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1220a00">
���ⳡս�������䡣
���뿪ս������ս�ҵ��պ󡣡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1230a01">
�������˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�������Ļش���͸���˲����ġ�

��������������顣
������Ҳ�޿��κΡ�

����<RUBY text="����">����</RUBY>��˵��ֻ�д��Ŀ����һ��������Ҫ�ġ�
�����б�Ҫ����Ҳ��ѡ��������ַ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ

	OnSE("se���L_����_��ͻ�M01",1000);

	CreateTextureEX("�}����100", 500, Center, -5000, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	Move("@�}����50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@�}����50",2000,180,Dxl1,true);
	Delete("@�}����50");

	MyTr_Count(500,450);
	Move("�}����100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);

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


	CreateTextureSP("�}St100", 1000, Center, Middle, "cg/st/resize/3d�����˜�_�T��_���Lbm.png");

	Move("�}St100", 0, @+300, @0, Dxl1, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1224,@-100,Dxl2,true);

	Move("�}St100", 400, @-200, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@�}St100",1);
	Shake_Loop("@�}St100","shake01");

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs1240b35">
����ѽ��ѽ��
��������������Ȼ��ʼ�ŵ�Ĩ������
���������֣���

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs1250b35">
���Ѳ��ɣ���˵�еĴ�����Ȼ�����
�Ϸ������ͷ�Ӻ���ɽ!?
������������ô���ܣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1260a01">
����������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1270a00">
�����ź������������ԡ�
�����ж����������ս��ȥ�����ɽ��ܱ���
��������Ҫ�����ˡ���

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/009vs1280b35">
�����ޣ���û�ã���λ����������
��֪����˵Щʲô�أ���֪�����ᷢ��
�����ĸ�̾����һ��������˵�ɡ���������
ƾ������У�����׷�����𣡡�

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1290a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
��������
����Ҫ������ֻ��һ���������Ŀ�ģ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CloudZoomDelete(0,true);
	Cloud_MoveDelete();
	BGMoveDelete();
	Shake_LoopDelete();

	Delete("�ե�å����");
	Delete("�}St100");

	Cockpit_AllFade2();

	FrameShake();


	CreateTextureSP("�}����50", 1000, Center, 0, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Request("�}����50", Smoothing);

	BGMoveAuto("@�}����50",1);


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/ma02/009vs1300a00">
�����������½�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1310a01">
���˽⡭������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	BGMoveDelete();
	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}����50", 1500, @0, @-1000, AxlDxl, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0602]
��ͷ���£������ٶȡ�
��������<RUBY text="��������">���Ӳ��</RUBY>��

�������������ٶȵĵ���װ�ס�
�����º���˦����������ֻ��һ���ˡ�

���Ӻ���׷��Ҳ���Ѹ�������һ����
�����ߵ�װ�׼�Ӳ�ޱȣ�
�����ͻ�����ĳ�������п���ն�ơ�

�����ҽӽ��ر������͸���Σ���ˡ�
����Ȼ���Դӵ����Ϸ����¹�����
������ܿ��ܾʹ�ֱ��ײ�ϵ��档

���ұ���Ҫ������׼�����ᰤ��һ���ι�����
����ֻҪ���ڻ���֮��ʧ�֣��Ͳ����ܵ����ȵ��𺦣�
��Űɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1320a01">
����������!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1330a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ӱ���ٽӽ�����å�����
	CreateTextureEX("�}90", 14000, Center, Middle, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
	Request("�}90",Smoothing);
	Zoom("�}90", 0, 0, 0, null, true);
	Fade("�}90", 0, 0, null, true);
	Move("�}90", 0, @0, @+100, null, true);
	SetBlur("�}90", true, 2, 300, 100, false);

	CockPit_LockSet(@0,@100);

	OnSE("se���L_����_��ͻ�M01",1000);

	Fade("�}90", 100, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	Zoom("�}90", 300, 200, 200, Dxl2, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0612]
��ʲ��������
���µĵ���!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ٽӽ�

	OnSE("se���L_����_��ͻ�M02",1000);
	CP_LockOnChangeW(300);
	CP_LockOnMove("@�}90",500,@0,@-100,Dxl2,false);
	Zoom("�}90", 500, 500, 500, Dxl3, true);

	SetFwR("cg/fw/fw�ũ�ʽ_ͨ��.png");

	SetBacklog("��������������������������", "voice/ma02/009vs1340a12", ѩ܇�);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/009vs1340a12">
��
��������������������������

</PRE>
	SetTextEXR();
	Request("@text0620", NoLog);
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W�����С��ɤ��`�󡣤Ҥǩ`�n��
//�������w�Ф��졣���뤰�롣
//����˥��`���य�ʤ룿�����������ФȤ��ΥΥ�
	OnSE("se���L_����_��ͻ�M03",1000);
	CP_LockOnMove("@�}90",500,@0,@-40,null,false);
	Zoom("�}90", 500, 1000, 1000, Axl3, false);

	Wait(380);

	CreateColorEX("�}ɫ100", 20000, "Black");
	Fade("�}ɫ100", 100, 1000, null, true);

	SL_rightup2(20010,@0, @0,1500);
	CreateSE("SE01c","se���L_����_���04");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_rightupfade2(15);

	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01b","se���L_����_�z��������03");

	CreateColorEXadd("�ե�å����", 22000, "WHITE");
	MusicStart("SE01a",0,750,0,750,null,false);
	MusicStart("SE01b",0,750,0,1000,null,false);
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}ɫ100");

	CreateColorEXmul("redmask", 17000, "RED");
	Fade("redmask", 0, 500, null, true);

	Delete("�}90");
	CP_LockOnDelete();

	CreateTextureSP("�}����50", 10100, Center, -576, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	SetBlur("�}����50", true, 3, 300, 100, false);
	CreateSurfaceEX("�}��������", 10000,2000,"@�}����50");
	Fade("�}��������", 0, 1000, null, true);

	CP_RollBarMove2(7500,680,DxlAxl,false);
	Rotate("�}��������", 7500, @0, @0, @-680, DxlAxl,false);
	Move("�}����50", 7500, @0, @-2304, DxlAxl, false);

	CP_PowerChange(300,200,null,false);
	CP_SpeedChange(10000,50,null,false);
	CP_AltChange(10000,-85,null,false);
	MyLife_Count(500,121);
	CP_IHPChange(500,1,null,false);
	Shake_Loop("@�}����50","shake01");

	CreateSE("SE00","se���L_����_�ռ�����01");
	MusicStart("SE00",2000,1000,0,350,null,false);

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��������
<voice name="����" class="��������" src="voice/ma02/009vs1350a01">
���⡭����̫�����ˣ�
����Ϊ�ж���<RUBY text="����">ͨ��̽��</RUBY>��������©���ˡ�������

{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma02/009vs1360a00">
������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFrequency("SE00", 3000, 1000, null);
	CP_RollBarMove("@�}����50", 1000, @+45, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
�����ơ����ٿأ�
�����١�����������½��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����餰�餷�ʤ��齵�¡����椬������
//�����ɩ`��
	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("�}ɫ100", 20000, "Black");
	SetBlur("�}����50", true, 3, 500, 50, false);

	Move("�}����50", 2000, @0, @-500, null, false);
	Zoom("�}����50", 1000, 2000, 2000, Dxl1, false);

	Fade("�}ɫ100", 1000, 1000, Dxl1, true);

	WaitAction("SE01", null);

	Cockpit_AllFade0();

	Delete("�}����*");
	Delete("redmask");
	Delete("�}����50");

//����
//���ũ�ʽ�o�T��
	#av_�ũ�ʽ�o�T��=true;

	PrintGO("�ϱ���", 30000);

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	CreateTextureSP("�}st100", 1200, -420, -432, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");
	Request("�}st100", Smoothing);
	Rotate("�}st100", 0, @0, @0, @-15, null,true);

	BGMoveAuto("@�}st100",2);

	FadeDelete("�ϱ���", 1000, true);

	SetFwR("cg/fw/fw�ũ�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/009vs1370a12">
����������������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/009vs1380a12">
��������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//���\

	Wait(2000);
	ClearWaitAll(2000, 2000);
	BGMoveDelete();

..//������ָ��
//�Υե����롡"ma02_010.nss"

}


