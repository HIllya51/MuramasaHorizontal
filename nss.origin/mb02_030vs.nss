//<continuation number="1200">


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

scene mb02_030vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb02_030vs.nss","Lastfire",true);
	Conquest("nss/mb02_030vs.nss","EffextDamage",true);
	

//���å��ԥå��ãӣ��
	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev158_һ��������=true;
	#ev921_ͬ��؞�����ΑB=true;
	#bg201_�����ݳ������нֵ�_03=true;
	#ev919_�����L��������צ_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb02_031vs.nss";

}

scene mb02_030vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb02_029vs.nss"

	if($GameDebugSelect==1){CP_AllSet("����");}

//�����ڣ֣�ͯ������
//���ܤä���ܤä���ܤä��󡣱��k�B�i
//���������ޤäƤ椯
	PrintBG("�ϱ���", 30000);
//	CreateColorSP("�}��ܞ", 18000, "#000000");

	CreateTextureSP("�}����50", 100, -512, -288, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}����150", 17010, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");

//�����ߣ����å��ԥåȄ������x========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,220);
	MyLife_Count(500,100);
	CP_IHPChange(500,2,null,false);
	CP_LockOnDelete();

	CP_EnemyFade0();

	CP_SpeedChange(500,500,null,false);
	CP_HighChange(500,734,null,true);
	CP_AltChange(500,40,null,false);
	CP_AziChange(0,35,null,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	CP_PowerChange(0,100,null,false);

	BGMoveAuto("@�}����50",1);

//�����ߣ����å��ԥåȶ��x========================

	CreateColorEXadd("�}ɫ100", 18000, "WHITE");

	CreateSE("SE01","se���L_�Ɖ�_���k07");
	CreateSE("SE10","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CloudZoomSet(1600);
	CloudZoomStart(1000,500,500,600,600);
	CloudZoomVertex(500,@0,@0,null,false);


//�����ߣ����å��ԥåȄ���========================
	Zoom("�}����150", 5000, 1100, 1100, Dxl1, false);
	FadeF4("�}����150", 500, 800, 5000, 0, 0, Dxl3, false);
	Fade("�}ɫ100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 15, 20, 0, 0, 800, null, false);
	CP_SpeedChange(800,380,AxlDxl,false);

	Fade("�}����200", 0, 1000, null, true);
	EffectZoomadd(18000, 5000, 4000, "cg/ef/ef026_���ñ���.jpg", false);


	FadeDelete("�ϱ���", 500, true);

	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 1000, true);


	FrameShake();


	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 2000, 600, null);

	SetFwL("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0010a02">
����Ρ���!?��


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0020b40">
������������������������!!
����һ��������֮ŭ����������֮̾��
����������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0030b40">
���������Ǳȷ�ص׸���ķ��򻹰���ĳ�Ѫ
ȥ����!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ڡ���������ը���ǿ������ú��ˡ�
����á�

��ע���Ż���֮����ɢȥ�Ļ��ס�
�������Ǽһ�<RUBY text="����">ԭ״</RUBY>�д��ڻ���֮�У�
Ҳ�����ܰ�Ȼ����

������ǣ����ж񱨡�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DrawDelete("�}����200", 2000, 400, "effect_01_00_0", false);
	FadeDelete("�}����150", 2000, false);
	FadeDelete("�}����200", 2000, false);

	Wait(500);
	SoundPlay("@mbgm09",0,1000,true);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0040b40">
��������������������������
��˵���޹ؽ�Ҫ���£��ղű�ը���˵��ನ��
��ը�����ҽš���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0050a02">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ѹ־�������ϥ������<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0060b40">
���ٶȳٶ����޷����⡣
�����ǵ��д����������⣬�ɷ��о�����ܲ�
������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0070a02">
��Ҳ����˵�����������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������ȥ�����ܻᵼ���������ֳ���������½��
���������ǣ�����֮ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0080a02">
������ȷ�ϴն������İ�ȫ��
����ô����������Ҳ�Ѿ��ӳ����𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0090b40">
����֪������


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0100a02">
����̽�⡣��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0110b40">
�������أ��кθ�ϵ����


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0120a02">
���������С���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0130b40">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0140a02">
���������ǵ�ͬ�顣��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0150b40">
���ǵ��˰ɡ�ֻ���������ֶ��ѡ�
���������ڵ����ϱ�����������ٺò�����
��ʡ���ƺ󡣡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0160b40">
�����������ԣ��������˶���
������˵�����������ǣ��԰ɣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0170a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0180b40">
������Ī�ǣ���ô��
���Ѿ���ˡ����������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����˵����ʦ�ڽ�����Ϊ����֮ʱ�������������壬
�����Ҳ��ת��Ϊ������
������������˵������꣬��Ҳ�Ǽ�Ϊ�䵭��û��
��в�������Ӧ����������һ����˵��

��������ȫ��ͬ����ӵ��������һ��������˵��ʤ����
�ĸ��ԡ�
��Ȼ������һ�̡��������������罣�еı�����Ӳ�Ľ�
��֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0190a02">
��������û����ˡ��
��ֻ�ǡ���ϣ�����ܹ��������������ѡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0200b40">
������֮�����޴�̸�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�����и����åȡ�һ˲
//���˺Ϥ碌�ƣӣš���Ġ�ιĄӡ�
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm09", 300, 1, null);

//�����ߣ�����
	EfRecoIn1(18000,200);
	CreateTextureSP("�}����100", 17000, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	OnSE("se����_��_��Ġ����02",1000);
	EfRecoIn2(300);

	Wait(500);
//�����ߣ�����K��
	EfRecoOut1(200);
	Delete("�}����100");	
	EfRecoOut2(600,true);

	SetVolume("SE10", 3000, 1000, null);
	SetVolume("@mbgm09", 3000, 1000, null);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0210a02">
���ǡ����Ǹ��������ס�
��������Ҫ�Ǹ��ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0220a02">
��Ҫ����Ļ��ս������ƾ��һ��֮�����в���
�������������㲻ͬ���ҵ��뷨��
�����Լ��Ĳ���֮�����Լ����������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0230a02">
�����������һ�����Ͳ�����ɱ������֮��
������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0240b40">
��������
�����á���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0250b40">
��<RUBY text="��������">�����Ƕ�</RUBY>��
��<RUBY text="������������">������Ƕ��</RUBY>����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0260b40">
���������ҵ��ղ����ݡ�
���Ǹ���������ᱳ����������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0270a02">
�����������£����ᷢ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������Ⲣ���Ͽ����������ŵ����塣û����ֹһ��
���������Ǳ�׾�Ĵ�ǡ�
������һֱ������ߵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0280b40">
�����ⱳ�ѣ�����Ǻã���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0290a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0300b40">
����������������������������Ǻã���


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0310a02">
����ʱ�Ҳ�����ˡ����
��<RUBY text="������������">����ȡ������</RUBY>����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0320b40">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0330a02">
������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0340b40">
������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0350a02">
�������㻹��ʲô�����𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0360b40">
��������
����ν��������̶��������ݡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0370b40">
���ǲ�����������ġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0380a02">
�����۶�ô��̡�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 200, 0, null);
	SetVolume("SE*", 200, 0, null);
	Wait(500);
	FwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0390b40">
������!!��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0400a02">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();

//	CreateTextureEX("�}����100", 100, Center, Middle, "cg/st/3dͬ��؞�w_����.png");
//	Rotate("�}����100", 0, @0, @180, @0, null,true);
//	Zoom("�}����100", 0, 200, 200, null, true);

	CreateColorEX("�}ɫ100", 17500, "WHITE");
	CreateColorEX("�}ɫ200", 17000, "BLACK");

	CreateSE("SE01","se���L_����_��ͻ�M03");
	CreateSE("SE10","se���L_����_������02_L");
	CreateSE("SE11","se���L_����_��ͻ�M05");

	Fade("�}ɫ200", 100, 1000, null, true);

	MovieSESet(17300,"mvͬ��؞_a","se����_mv��_ͬ��؞_a");
	OnSE("se���L_����_��ͻ�M08",1000);
	MusicStart("SE11",2000,400,0,1000,null,true);
	MovieSEStart(0);
	SetVolume("SE11", 1000, 0, null);


//���ʤ��w��Ǥ��롣���Ҥ�`��
	MusicStart("SE10",2000,1000,0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_����AȾ.jpg", false);
	FadeDelete("�}ɫ200", 300, false);
//	Fade("�}����100", 100, 1000, null, false);
//	Move("�}����100", 300, @1000, @0, Axl3, false);
//	Zoom("�}����100", 300, 2000, 2000, Axl3, false);
	Wait(250);

	CP_SpeedChange(1000,553,null,false);
	CP_HighChange(1000,684,Dxl2,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	CP_RollBarMove("@�}����50", 0, -20, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	CP_AziChange(1000,65,Dxl2,false);
	Shake("�}����50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Move("�}����50", 1000, @350, @-150, Dxl3, false);
	CP_RollBarMove("@�}����50", 1000, 0, Dxl2, false);
//	Delete("�}����100");
	FadeDelete("�}ɫ100", 300, true);

	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 1000, 1000, null);


	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0410a02">
��ʲ����
���쵰!!��


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0420a09">
��������������������!!
����ѽ����ѽ������ƶɮ�ˣ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0430a09">
������Ҫ����ǰ�����־����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ͬ��؞�����������ΑB
//��Ҫ���פ�����������z�᤿��
	SoundPlay("@mbgm12",0,1000,true);


	CreateTextureEX("�}����150", 17000, Center, Middle, "cg/ev/ev921_ͬ��؞�����ΑB.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ev/ev921_ͬ��؞�����ΑB.jpg");
	Zoom("�}����200", 0, 1500, 1500, null, true);
	SetBlur("�}����200", true, 3, 300, 200, false);
	CreateSE("SE01","se���L_����_��ͻ�M06");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}����200", 100, 1000, null, false);
	Zoom("�}����200", 700, 1000, 1000, Dxl2, true);

	Fade("�}����150", 0, 1000, null, true);
	Delete("�}����200");

	Wait(1000);
	SetFwR("cg/fw/fwһ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0440a02">
���ꡭ����!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0450b40">
���ǹꡭ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ô����!?
��ι������ʲô���찡!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0460b40">
����������װ����ƵĶ���ʦ����
��ֹ��һ�˰���
����˹�˼���ᶼ�����뵽����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ݩ`�󤹤ݩ`������㤬�����Ƥ���
	CreateColorEX("�}ɫ200", 18000, "BLACK");
	MovieSESet(18100,"mvͬ��؞_b","se����_mv��_ͬ��؞_b");

	CreateSE("SE01","se���L_����_��ͻ�M05");
//	CreateSE("SE02","se����_�z_װ��02");
//	CreateSE("SE03","se����_�z_װ��02");

	Fade("�}ɫ200", 100, 1000, null, true);
	OnSE("se����_�z_װ��02",1000);
	OnSE("se����_�z_װ��05",1000);
	MusicStart("SE01",1000,300,0,600,null,true);
//	MusicStart("SE03",1000,1000,0,350,null,false);
	SetFrequency("SE01", 7000, 1000, Axl1);
	MovieSEStart(500);

	Delete("�}����150");
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 500, 500, null, true);
	Move("�}��", 0, @0, @100, null, true);

	SetVolume("SE01", 1500, 0, null);


	OnSE("se����_�z_װ��04",1000);
	FadeDelete("�}ɫ200", 300, false);
	Shake("�}��", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("�}��", 300, 1000, null, false);
	Move("�}��", 500, @0, @-100, Dxl3, true);


	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0470a09">
�����!!��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0480a02">
��������Ȼ��Ȼ����
������������һ�ţ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0490b40">
������Է��Ƕ��ڼ׿�֮�еĹ꣬
�����ڼ�ͷҲ�޷��ᴩ����


//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0500b40">
����
��ŭҲŭ������Ҳ�������п�Ҳ
�п����ˣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0510b40">
������ֻ��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����Ե���ͬ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������˥��`�ǥ�å�����
	CreateSE("SE��å�����","se����_���å��ԥå�_������02");


//�����ߣ���å�����
	CockPit_LockSet(@0,@0);
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
//	CP_LockOnMove("@�}��",1600,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,9,615,495);


	SetFwR("cg/fw/fwһ��_ŭ��c.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0520a02">
������쵰������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0530a09">
��ŶӴ��ûʱ�������Ϸ�����ˡ�
�����ɥ����ƶɮ���ǳ��������ˡ�����


{	FwR("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0540a09">
�������һ�����ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ͻ�M
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_����AȾ.jpg", false);
	Fade("�}����100", 100, 1000, null, false);
	Zoom("�}����100", 500, 2000, 2000, Axl3, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Shake("�}��", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("�}��", 300, 1000, null, false);
	Zoom("@�}��", 500, 600, 600, Dxl2, false);
	CP_LockOnMove("@�}��",500,@0,@-50,Dxl2,false);


	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0550a02">
�����ڣ�
�����÷ų�������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ֻҪ��׼��������ʱ�����ڽ���֮�д�����ڡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0560b40">
���������С�
������������װ�ף����޷����С���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0570a02">
���ɶ񡭡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ֻ����̫���Կ��ˡ�
����ƾһֻ���֡���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0580a09">
���ơ���!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��؞����ͻ
//�����ڄ���
//�������`�󡣴����w�Ф��������
	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateColorEX("�}ɫ100", 17500, "WHITE");
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Zoom("�}����300", 0, 2000, 2000, null, true);
	SetBlur("�}����300", true, 3, 300, 200, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se���L_����_Ź���B��02_L");
	CreateSE("SE03","se���L_����_��ͻ�M03");
	CreateSE("SE04","se���L_����_Ź���B��02_L");

//�����ߣ�����
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����50", 300, 1100, 1100, Axl3, false);
	Zoom("@�}��", 300, 1500, 1500, Axl3, true);

	SetFrequency("SE10", 2000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("�}����100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("�}����100", 0, 1000, null, true);

	Fade("�}ɫ100", 0, 1000, null, true);
	DrawTransition("�}ɫ100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);
	Delete("�}ɫ100");

	Move("�}����100", 0, 0, 0, null, true);
	Wait(150);
	Move("�}����100", 0, -312, -100, null, true);
	Wait(150);
	Move("�}����100", 0, -350, -150, null, true);
	Wait(150);
	Move("�}����100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("�}����300", 200, 1000, null, false);
	Zoom("�}����300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("�}����200", 0, 1000, null, true);
	Delete("�}����100");
	Delete("�}����300");

	CreateColorEX("�}ɫ100", 17500, "WHITE");
	Fade("�}ɫ100", 100, 1000, null, true);

	Move("�}����50", 0, -512, 188, null, true);
	CP_RollBarMove("@�}����50", 0, -20, null, true);
	Delete("�}����100");
	Delete("�}����200");
	Delete("�}��");
	CP_LockOnDelete();

	MyLife_Count(1000,50);
	CP_IHPChange(1000,1,null,false);
	MyTr_Count(1500,80);

	CP_AziChange(1000,72,Dxl2,false);
	OnSE("se���L_�Ɖ�_�z03",1000);
	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	Shake("�}����50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Zoom("�}����50", 1000, 1500, 1500, Dxl2, false);
	Move("�}����50", 1000, @-100, @-200, Dxl3, false);
	CP_RollBarMove("@�}����50", 1000, 0, Dxl2, false);

	FadeDelete("�}ɫ100", 300, true);
	Wait(500);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 700, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������
�����Կ��⣡

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0590a02">
������!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0600b40">
�����ˣ�����������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0610a02">
������!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0620b40">
������װ�������!!
����������׹�䣡��


{	FwR("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0630a02">
��!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Х�󥹱����
//������Ƥ������ޤä������ޡ��ǤϤʤ�����
	SetFrequency("SE10", 2000, 500, null);
	SetVolume("SE10", 1000, 700, null);

	CreateSE("SE01","se���L_����_��ͻ�M04");

	CreateTextureEX("�}����100", 1500, Middle, -300, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");


	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_SpeedChange(2500,236,AxlDxl,false);
	CP_HighChange(20000,524,AxlDxl,false);

	Move("�}����100", 20000, @0, @-2400, Dxl1, false);
//	CP_RollBarMove("@�}����50", 15000, 160, AxlDxl, false);

	CloudZoomVertex(1000,@0,500,AxlDxl,false);
	Shake("�}����100", 1000000, 1, 0, 0, 0, 1000, null, false);
	Fade("�}����100", 1000, 1000, null, false);
	Fade("�}Suf", 1000, 1000, null, true);

	CloudZoomVertex(2000,@0,-500,AxlDxl,false);
	CP_RollBarMove("@�}����50", 10500, -160, AxlDxl, false);
	Rotate("�}Suf", 10500, @0, @0, @160, AxlDxl,false);
	Wait(2000);
	CloudZoomVertex(18000,@0,0,AxlDxl,false);

//	FadeF4("�}����50", 0, 1000, 15000, 0, 0, AxlDxl, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ס����������һ�롣
����⣡

��������״̬�£��Ѿ��޷����������ˡ�
��Ͷ���������졭��<k>������������

�����������ǿά����ƽ�⡣�䲻����׹�����������
��ȴֻ�ܱ���õĵ�����ĥ������

���ܷ��е������벻�ܷ��е����ߣ�����ս������һ��
��������һ���塣��������˵��һ��ʮ��
���վ��޷����⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0640a02">
��������ˡ����ɶ�
������·���ˣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0650b40">
��<RUBY text="����">��Ȼ</RUBY>��˼�ǣ�����������ס�������ٿ��ǰɡ�
����������


{	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0660a02">
��ʲô������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0670b40">
���������Ϸ����ٶ�ʮ��</RUBY>��
�������乥�ƣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ͻ�M

//�����ߣ����x
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}Suf");
	Delete("�}����100");
	CreateTextureSP("�}����50", 100, -512, -288, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);
	Zoom("�}����50", 0, 2000, 2000, null, true);

	CloudZoomSet(1600);
	CloudZoomStartB(1000,500,500,600,600);
	CloudZoomVertex(0,@0,@0,null,false);

	CP_SpeedChange(0,250,null,true);
	CP_HighChange(0,520,null,true);
	CP_RollBarMove("@�}����50", 0, 180, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, 180, null,true);
	Zoom("�}��", 0, 300, 300, null, true);
	Move("�}��", 0, @0, @-100, null, true);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");
	CreateSE("SE̽��","se����_���å��ԥå�_̽��02");
	CockPit_LockSet(@0,@0);

//�����ߣ�����
	MusicStart("SE̽��",0,1000,0,1000,null,false);
	CP_SpeedChange(40000,436,Dxl1,false);
	CP_HighChange(40000,155,Dxl1,false);
	Zoom("�}����50", 40000, 600, 600, Dxl1, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", true);

	OnSE("se���L_����_��ͻ�M02",1000);

	Shake("�}��", 1000000, 1, 0, 0, 0, 1000, null, false);
	Zoom("�}��", 100000, 400, 400, null, false);
	Fade("�}��", 300, 1000, null, false);
	Move("�}��", 400, @0, @100, Dxl3, true);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
//	CP_LockOnMove("@�}��",1600,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 200, null);

	SetFwR("cg/fw/fwһ��_��ʹ.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0680a02">
��������
��������½ǰ�����������𣡡�


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0690a09">
���������ʱ���ˡ���
�������˵������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����������ð�����ľ����������ȷ��
����ȷ��׹������е��ҷ��Ǻ��޷����ģ�

�����������ٶ���ǿ���ƴ�ͷ���Ϸ������ĵ����
������Ϊ����
��
���������������Ϊ����!?�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0700a02">
�����ڣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0710b40">
���ǣ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0720a02">
�����ǵ���Ϊֹ���𣿡�


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0730b40">
����Ȼ���ǣ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0740a02">
�����ܴ�����!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0750b40">
����������ʹ���������޵е�!!��


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0760a02">
���Ǹ���ô��!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0770b40">
�������ᣡ��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0780a02">
��<RUBY text="����">�ϰ�</RUBY>!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0790b40">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���������������Ĝʂ�
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("�}����50", 500, 1100, 1100, Dxl2, false);
	Zoom("�}��", 500, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0800a09">
������������


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0810a02">
�������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02",1000);
	Rotate("�}��", 700, @0, @0, 0, AxlDxl,false);
	CP_RollBarMove("@�}����50", 700, 0, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����ˡ�
��ɲ�Ǽ䣬�Һ�ת���С�

��������Ӿ��ӭ�ӵ��ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0820a09">
����!?��


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0830a02">
�������߻�����Ϊһ�塣��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���ե��`��
	CreateColorEX("�}ɫ100", 17600, "BLACK");
	Fade("�}ɫ100", 500, 1000, null, true);

	CP_LockOnDelete();


	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��
//���i�ߡ����󤱤󡤤�äݤ󤳤ä�����
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0840b40">
������������������������צ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���L����������צ
//���߹Ǥ������`�ä��w�ӳ����Ɣ��򥬥åĥ����
	CreateTextureEX("�}����100", 17500, Center, Middle, "cg/ev/ev919_�����L��������צ_b.jpg");
	CreateTextureEX("�}����200", 17500, Center, Middle, "cg/ev/ev919_�����L��������צ_b.jpg");
	CreateTextureEX("�}����300", 19500, Center, Middle, "cg/ef/ef043_צ����.jpg");
	CreateTextureEXadd("�}����400", 19500, Center, Middle, "cg/ef/ef043_צ����.jpg");
	Rotate("�}����400", 0, @0, @0, @180, null,true);

	SetBlur("�}����200", true, 2, 500, 200, false);
	SetBlur("�}����300", true, 2, 300, 70, false);
	Request("�}����200", Smoothing);


	OnSE("se����_�z_װ��04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef043_צ����.jpg", false);
	Fade("�}����300", 50, 1000, null, true);
	Zoom("�}����300", 600, 1100, 1100, Dxl2, false);

	OnSE("se���L_����_�L��������צ01",1000);
	Wait(200);
	Fade("�}����400", 50, 1000, null, true);
	Zoom("�}����400", 600, 1100, 1100, Dxl2, false);

	Wait(200);
	Fade("�}����100", 0, 1000, null, true);

	Zoom("�}����300", 300, 2000, 2000, Axl3, false);
	Zoom("�}����400", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}����300", 300, false);
	FadeDelete("�}����400", 300, false);
	FadeDelete("�}ɫ100", 300, false);
	Zoom("�}����200", 500, 1500, 1500, Axl2, false);
	Fade("�}����200", 200, 1000, null, true);
	FadeDelete("�}����200", 500, true);

	Wait(1000);

	SoundPlay("@mbgm08",0,1000,true);


	SetFwL("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0850a02">
�����������¡�����˻����


{	FwL("cg/fw/fwͯ��_ŭ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0860a09">
��ʲ����
������ʲô!?��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������ͷ��
���������������Ĺ�ͷ�������ҵ����ţ�
����צ�Ӱ����죬<RUBY text="��������">����ҧס</RUBY>���

�����ͷ���������ǹ�ͷ���ѡ�
������װ�׸��ǡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�Ϸ�", 17500, Center, Middle, "cg/ev/ev919_�����L��������צ_b.jpg");
	SetFwL("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0870b40">
����ô���ܻ��������ڹ����µ����ǣ�
�������ϵ��������������޴�����֮ʱ������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0880b40">
��������Ϊ������߹�!!
���ǹ���������������������!!��


{
	OnSE("se���L_����_�L��������צ02",1000);
	Shake("�Ϸ�", 1000, 3, 5, 0, 0, 500, null, false);
	FwL("cg/fw/fwͯ��_ŭ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0890a09">
��������ŶŶ!?��


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0900b40">
��û�õ�û�õ�û�õģ�
����������צ��<RUBY text="����">����</RUBY>��ʤ���������ܡ���


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0910b40">
����ô�����������ӣ�
���������������ڣ���


{	FwL("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0920a02">
���¡��ۡ�������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0930b40">
����ѪҲ�޷����������
��������ͬ�����ˣ���


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs0940b40">
��ֻҪ���ֽ�ҧ�����赣��׹�䡣
��������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�Ϸ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��������û��
���������ǡ�������<k>���ѻ��ᣡ

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0950a02">
����������


{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0960a02">
�����С�����!!��


{	FwL("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs0970a09">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ؓ�
//���������w�ΑB
//�������`��
	CreateTextureEX("�}��", 17000, Center, middle, "cg/ev/resize/ev921_ͬ��؞�����ΑBl.jpg");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 1000, 1000, null, true);
//	Move("�}��", 0, @0, @100, null, true);

	OnSE("se����_�z_װ��05",1000);
	Wait(150);
	OnSE("se����_�z_װ��05",1000);
	Wait(150);
	OnSE("se����_�z_װ��06",1000);
	FadeDelete("�}����100", 500, false);

	Shake("�}��", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("�}��", 300, 1000, null, false);

	Wait(500);
	Shake("�}��", 100000, 0, 1, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0980a02">
�������⡭������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��Ƭ�̼�����ָֻ��������̬��
��Ӳ�ǽ������ͷ�����أ���ͼ���ѱ���ס�����ơ�

�����ִ����һ������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs0990a02">
�����Ҵ�����������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1000b40">
����ô��
��������<RUBY text="����">�ս�</RUBY>������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���ԡ�
����ӽ���������������ע��̫����

�����������߻�����Ϊһ�塣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1010a02">
���ʡ���


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1020b40">
������ʬ��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���V�����Ƅ������ڥҩ`�ȥ��`��
//��⟰���ͤ������褦�ʣӣţ�

	CreateColorEXadd("�}ɫ300��", 18200, "WHITE");

	Fade("�}ɫ300��", 200, 1000, null, true);
	CreateColorSPadd("�}ɫ300", 18000, "WHITE");


	OnSE("se���L_����_�V���Ƅ�",1000);

	CreateMovie("��`�ө`��", 18100, 0, 0, false, false, "dx/mv���Ƅ�.ngs");
	Request("��`�ө`��", Smoothing);
	SetAlias("��`�ө`��", "��`�ө`��");
	Zoom("��`�ө`��", 0, 2000, 2000, null, true);
	Move("��`�ө`��", 0, @0, @287, null, true);
	Request("��`�ө`��", Stop);

	Fade("�}ɫ300��", 200, 0, Axl2, false);
	Request("��`�ө`��", Play);
	WaitAction("��`�ө`��", null);
	Fade("�}ɫ300��", 100, 1000, null, true);

	Delete("��`�ө`��");

//	MovieSESet(18100,"mv���Ƅ�","se���L_����_�V���Ƅ�");
//	MovieSEStart(0);

	Wait(200);

//	CreateSE("SE01","se���L_����_�V���Ƅ�");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ100", 17100, "RED");
	CreateColorEXadd("�}ɫ200", 17500, "#FFAA00");
	Fade("�}ɫ100", 0, 500, null, true);
	FadeDelete("�}ɫ300*", 1000, false);
	Fade("�}ɫ200", 1000, 700, null, false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�����������ڵ���
�������ƿ����յ����֡��ս������ۻ�Ѫ���˿�������

��������������̿������������ǰ�˽�һ�С�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1030a02">
�����ڡ�
�����е�����������⻹�С�����


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1040b40">
������һ������


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1050a02">
���Ǹ�������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1060b40">
��û����


{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1070a02">
����ô�����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����ת��������
���̳���

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE05","se���L_����_�����N_��");
	CreateSE("SE06","se���L_�Ɖ�_�z04");
	CreateColorSP("�}ɫ300", 17500, "BLACK");
	CreateColorSPadd("�}ɫ200", 17400, "#FFAA00");
	Fade("�}ɫ200", 0, 700, null, true);
	CreateTextureEXadd("�}����100", 17300, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}����100", 0, 1100, 1100, null, true);


	SL_centerout2(20000,@0, @0,1000);
	MusicStart("SE06",0,1000,0,1000,null,false);
	SL_centeroutfade2(10);

	FadeDelete("�}ɫ300", 1000, false);

//����򟆤���
	MusicStart("SE05",0,1000,0,1000,null,false);

	Zoom("�}����100", 15000, 1200, 1200, Dxl2, false);
	FadeF4("�}����100", 1000, 500, 15000, 0, 0, AxlDxl, false);

	CP_EHPChange(0,3,null,true);


	Wait(500);

	SetFwL("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1080a09">
���桪����

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������һ�еĵ������ɴ���
������ߵ�<RUBY text="����">���</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1090a02">
����˵����!?
��������ŵ�ʱ�������������غ�衭����


{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1100a02">
�����ȴ���������֮�￪ʼ��
������Լ������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����򟆤�������
	CreateSE("SE01","se���L_����_�����N_��");
	CreateColorSPadd("�}ɫ100", 7500, "WHITE");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 1000, 0, null, true);

	SetFwL("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1110a09">
�����¸¸¸¸¸¸¸¸¸�!?��


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1120b40">
����������������������������!!
����������ɱʱ�ļ�а�!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
����һ������̫����
������������ڶ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Shake("�}��", 500, 5, 0, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1130a09">
���¸¸¡���


{	Shake("�}��", 500, 8, 0, 0, 0, 1000, Dxl2, false);}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1140a09">
���¡���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�}����ȼ", 10000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateColorEXadd("�}ɫ500", 400, "#FFAA00");


	CreateTextureEX("�}�ꣲ", 100, Center, middle, "cg/st/3dͬ��؞_����_ͨ��.png");
	Request("�}�ꣲ", Smoothing);
	Zoom("�}�ꣲ", 0, 2000, 2000, null, true);
	Move("�}�ꣲ", 0, @0, @130, null, true);

	OnSE("se����_�z_װ��05",1000);
	Wait(150);
	OnSE("se����_�z_װ��05",1000);
	Wait(150);
	OnSE("se����_�z_װ��06",1000);
//	FadeDelete("�}����100", 500, false);

	Fade("�}ɫ500", 0, 700, null, true);
	Fade("�}����ȼ", 0, 200, null, true);
	Zoom("�}����ȼ", 15000, 1200, 1200, Dxl1, false);

	FadeDelete("�}ɫ200", 200, false);
	FadeDelete("�}����100", 200, false);
	FadeDelete("�}��", 200, true);

	Shake("�}�ꣲ", 500, 5, 10, 0, 0, 1000, Dxl2, false);
	Fade("�}�ꣲ", 300, 1000, null, false);
	Move("�}�ꣲ", 300, @0, @-130, Dxl2, true);


	SetFwL("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0541]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1150a09">
��������


{	FwL("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1160a02">
�����Һõ�!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��Ҳ������ʹ���ͣ����˵��Դ����ڴӼ׿��е�����
����һ�Ѱγ����ڵ��˹ɼ��̫����

������Ŀ�ꡣ
����ζ�Ҫһ�����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1170a02">
�������ɡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	CreateTextureEX("�}�ꣳ", 100, Center, middle, "cg/st/3dͬ��؞_����_��x.png");
	Request("�}�ꣳ", Smoothing);
	Zoom("�}�ꣳ", 0, 2000, 2000, null, true);
	Move("�}�ꣳ", 0, @0, @0, null, true);

	Fade("�}�ꣳ", 300, 1000, null, true);
	FadeDelete("�}�ꣲ", 200, false);

	OnSE("se����_��x_�k��04",1000);
	EffectZoomDXadd(10000, 1500, 200, "RED", "cg/ef/ef034_����AȾ.jpg", true);

	CreateColorEX("�}ɫ100", 17500, "BLACK");
	Fade("�}ɫ100", 200, 1000, null, true);
	Delete("�}�ꣳ");
	Delete("�}����ȼ");


	SetFwC("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0561]
//���i�ߡ����`�饹�`�ȥ项
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/030vs1180a09">
���ˣ��̣��ӣգԣң�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���������׷���
	CreateTextureEX("�}����100", 17500, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	CreateTextureEXadd("�}����200", 17500, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	CreateTextureEXover("�}����300", 17500, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);
	Zoom("�}����100", 0, 1200, 1200, null, true);
	Zoom("�}����200", 0, 2000, 2000, null, true);
	Zoom("�}����300", 0, 1200, 1200, null, true);
	Move("�}����100", 0, @100, @0, null, true);
	SetBlur("�}����100", true, 1, 300, 200, false);
	SetBlur("�}����200", true, 1, 300, 200, false);

	CreateSE("SE01","se���L_����_���׷���");
	CreateSE("SE04","se���L_����_�����N_��");


	DrawEffect("�}����300", 50, "LowWave ", 100, 150, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("�}����300", 1000, 1000, null, false);
	Fade("�}����100", 1000, 1000, null, false);
	FadeF4("�}����200", 1000, 1000, 3000, 0, 0, AxlDxl, false);
	Wait(2000);
	FadeDelete("�}����200", 1000, false);
	Move("�}����100", 700, @-100, @0, Dxl2, false);
	Zoom("�}����100", 1000, 1000, 1000, Dxl2, true);

	Fade("�}����100", 0, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
������!?

������ˡ�������!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/030vs1190a02">
������������


{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/030vs1200b40">
�����ã�
���������ˡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_����_�V���Ƅ�");
	CreateSE("SE03","se���L_����_������02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ100", 20000, "WHITE");

	Zoom("�}����100", 1000, 2000, 2000, Axl2, false);
	Move("�}����100", 1000, @-512, @-188, Axl2, false);
	Fade("�}ɫ100", 1000, 1000, null, true);

	Wait(2500);
	CP_AllDelete();

	SetVolume("SE*", 2000, 0, null);
	ClearFadeAll(3000, true);

	Wait(2000);

//���������ѳ�
//�����ڡ������
//�����Ǥ��Ϥ����¡����ɩ`��




}

..//������ָ��
//�Υե����롡"mb02_031vs.nss"



function Lastfire()
{

	CreateColor("�٤����", 15000, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("�٤����","�٤����");
	Fade("�٤����", 0, 0, null, false);
	DrawTransition("�٤����", 0, 100, 200, 990, null, "cg/data/out_slash_1.png", true);


	begin:

	while(1)
	{
	Fade("�٤����",150,200,null,true);
	Fade("�٤����",200,150,null,true);
	Fade("�٤����",180,230,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,190,null,true);
	Fade("�٤����",200,150,null,true);

	Fade("�٤����",150,230,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,200,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",100,280,null,true);
	Fade("�٤����",350,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",150,120,null,true);
	Fade("�٤����",200,220,null,true);
	Fade("�٤����",170,100,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",140,140,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,130,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,130,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,120,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,90,null,true);
	Fade("�٤����",180,110,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,130,null,true);
	Fade("�٤����",200,90,null,true);

	}


}

function EffextDamage()
{

	CreateColor("function����`��", 15000, 0, 0, 1024, 576, "RED");
	SetAlias("function����`��","function����`��");
	Request("function����`��", MulRender);
	Fade("function����`��", 200, 1000, null, true);




}
