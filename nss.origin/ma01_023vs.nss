//<continuation number="1050">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//�룺�ǥХå���
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma01_023vs.nss_MAIN
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
	#bg002_��a_02=true;

	#ev109_��x���A����=true;
	#ev506_����VS���_���Б�=true;
	#ev303_����VS���=true;
	#ev903_�����ŚݥХꥢ�`չ�__a=true;
	#ev902_����늴Œi����`�륬��_b=true;
	#ev902_����늴Œi����`�륬��_c=true;
	#ev902_����늴Œi����`�륬��_a=true;
	#ev902_����늴Œi����`�륬��_d=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_����=true;

	$PreGameName = $GameName;

	$GameName = "ma01_024.nss";

	CP_AllDelete();

}

scene ma01_023vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


	if($GameDebugSelect==1){CP_AllSet("���");}


..//������ָ��
//ǰ�ե����롡"ma01_022vs.nss"

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 19000, "#000000");
	FadeDelete("�ϱ���", 100, true);


	SetFwC("cg/fw/fw���w_ŭ��a.png");

	SetTone("@FwC*", Sepia);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/023vs0010b56">
����������˾�����ľ����У�
�����ǲ�û��ô��С!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade2();

//�룺���ڻ����������Ԥ����뤿�ᣬ��Τ����������ٶ��x
	CP_PowerChange(1,500,null,false);
	CP_SpeedChange(0,350,null,false);
	CP_HighChange(0,900,null,false);
	CP_AziChange(0,10,null,false);

	MyLife_Count(0,523);
	MyTr_Count(0,210);
	CP_IHPChange(0,4,null,false);
	CP_RollBarMoveA();
	CP_AltChangeA();

	CP_EnemyFade(0,10,512,300);


	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);



	Fade("��ܞ", 300, 0, null, true);
	Delete("��ܞ");
//��͎�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ˣ�
��������ȷ�ģ���������ȷ�ģ�
���Ҳ�����ȷ�ģ��������������þ���

��������
������������
������ɱ��������������
�������ܹ�ɱ���Ǹ����������뽫��ɱ���Ļ��ʵ�������

��������˭Ҳ�ã�
������������������Ҳ�ã�

����������������������ֻҪ�ܰ����ң�
��Ϊ�����������������������ң�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå�
//���y�Ǻť��륨�å�

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("�ե�å����", 16000, "WHITE");

//��SE���ե�å���Хå��ãӣŤ��`���Щ`�����
	OnSE("se�M��_�ե�å���Хå�01",1000);


	Fade("�ե�å����",0,1000,null,true);
	CreateColorSP("�}�����\", 1000, "Black");

	Cockpit_AllFade0();

	CreateTextureEX("�}Gin", 1050, Center, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	CreateStencil("�ޥ�����",1200,center,InBottom,128,"cg/st/3d�y�Ǻ�_����_ͨ��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");

	CreateColorSP("�ޥ�����/ɫ��", 1200, "White");
	Fade("�ޥ�����/ɫ��", 0, 500, null, true);

	SetShade("�ޥ�����", NOMORE);


	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");

	SetNwR("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����£�ʤ�
//���⡿
<voice name="��" class="��" src="voice/ma01/023vs0020a14">
�������ֵúܻ��ء���

//���⡿
<voice name="��" class="��" src="voice/ma01/023vs0030a14">
���Ǹ�<RUBY text="������">������</RUBY>ʵ�����˷�Ц��
����Ϊ���ͷѣ����������ɡ��������ó�Ŷ����
����Ӧ��˵�����������
���㲻��ԸҲ����������ó�����

//���⡿
<voice name="��" class="��" src="voice/ma01/023vs0040a14">
�������ţ�����������ʲô�ˣ�
����ʲô�ˣ������Ǹ���µ��ʷ��ء���������˭
��ͬ��ֻ�����ָ����㻹�����Իش����⡣��

//���⡿
<voice name="��" class="��" src="voice/ma01/023vs0050a14">
��������ѯ���ҵ�<RUBY text="����">����</RUBY>��
���Ǿ����������ش�ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�
	Fade("�ޥ�����/ɫ��", 1000, 0, null, false);
	Fade("�}Gin", 1500, 1000, null, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/ma01/023vs0060a14">
�������������²��䡣
������Ϊ����֮�ǵ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��͎�
	CreateColorEXadd("�ե�å����", 17000, "WHITE");

	OnSE("se�M��_�ե�å���Хå�01",500);
	Fade("�ե�å����",500,1000,null,true);

	Delete("�ޥ�����");
	Delete("�ޥ�����/ɫ��");
	Delete("�}Gin");
	Delete("�}GinS");
	Delete("�}�����\");

	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();


	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����𡭡�����Ҳ����ν��
�������ɱ¾�ߣ���ֻҪ��Ӧ���ҵ�����
��������˭��û��ϵ��

��������
��������
����������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���

	CreateColorEXadd("�ե�å����", 16000, "WHITE");

	OnSE("se����_��x_�k��04",1000);
	Fade("�ե�å����",50,1000,null,true);
	Fade("�ե�å����",100,0,null,true);
	Fade("�ե�å����",50,1000,null,true);
	Fade("�ե�å����",100,0,null,true);
	Fade("�ե�å����",50,1000,null,true);
	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0070b57">
����������������������������!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0080a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXmul("�}ɫ100", 18000, #990000);

	CreateSE("SE01","se����_��_��Ġ����01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	Fade("�}ɫ100", 4000,500,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������С�������Ĥ֮�¡���ĳ���ױ��������䶯�š�

������ĳ������ľ��ѡ�ĳ������Ķ�����
�������죬<RUBY text="������������">��ֲ�������</RUBY>ĳ�����

��������ӵ�в������ڵ�<RUBY text="����">�ӌm</RUBY>�Ĵ����
�������������������ڵ�<RUBY text="����">̥��</RUBY>����֪��

����̥����Ի���
����Ű���������ҧ���ػ������ĸ�塣��ʹ��
��ʵ�ڵĹ����÷�ʵ�ڵ�צ�����µĻ�ʹ��
��ǻ��˺�ѡ������ǻþ���ֻ��ʹ������ʵ�ġ�

�����崨�������ǲ������ڵ��ӹ��е�������
����ʵ�Ĺ��û���κ��˵������ܹ�������
��Ҳû���κ��˵����ܴ�������ȫ�����롣����ʵ��

�����ǣ�Ȼ����
��ֻ������ӿ�����������������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 0, null);
	SoundPlay("@mbgm13",0,1000,true);

	OnSE("se����_��x_�k��03",1000);
	DrawTransition("�}ɫ100", 600, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	CreateColorSP("�}ɫ1000", 20000, "Black");

	CreateWindow("������ɥ���", 16000, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 16000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateColorSP("������ɥ���/�}ɫ100", 16000, "Black");
	CreateColorSP("������ɥ���/�}ɫ100", 16000, "Black");
	Delete("�}ɫ1000");

	CreateColorSP("�}ɫ1000", 15300, "Black");
	CreateColorSP("�}ɫ100", 15400, #990000);
	Fade("�}ɫ100", 0, 500, null, true);
	CreateTextureEX("shin", 15500, Center, -400, "cg/st/resize/3d���_����_�i��.png");
	CreateTextureEX("shin2", 15500, Center, -400, "cg/st/resize/3d���_����_��x.png");
	Move("shin", 0, @+200, @0, null, true);

	Fade("shin", 0, 1000, null, true);
	Move("shin", 700, @-200, @0, Dxl1, false);
	Move("������ɥ���", 500, @0, @-150, null, false);
	Move("������ɥ���", 500, @0, @+150, null, true);

	Wait(200);

	CreateColorEXadd("�ե�å���aka", 15600, #990000);
	Fade("�ե�å���aka",100,1000,null,true);

	OnSE("se����_�z_װ��01",1000);

	Fade("shin2", 0, 1000, null, false);
	Fade("shin", 0, 0, null, true);

	FadeDelete("�ե�å���aka",500,true);

	CreateColorEX("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("������ɥ�*");
	Delete("shin");
	Delete("shin*");
	Delete("�}ɫ100");
	Delete("�}ɫ100");
	Delete("�}ɫ1000");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw���_ͨ��.png");


	SetBacklog("������������Χ�ǲ��Χ�ɲ㡡
                                ��Ҷ��������С�", "voice/ma01/023vs0090b57", ⏴�);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0090b57">
��
������������Χ�ǲ��Χ�ɲ㡡
            ��Ҷ��������С�

</PRE>
	SetTextEXC();
	Request("@text0080", NoLog);
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ʵ�С�

�����ڵ�����������ָ���ԡ�
����������������������Ӳ�ȡ��������ٶȡ�
�������â��
�����������ƻ���һ�С�

��֮�󡪡�
��ֻ��ȫ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

	SetBacklog("�������������׻��õ��ӻ��ޣ���", "voice/ma01/023vs0100b57", ⏴�);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0100b57">
��
�������������׻��õ��ӻ��ޣ���

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����x�����A���������Ϥ��释���Ϥ���ˮ�θo�����ᥤ�륹�ȥ�`��

//�룺������_��x_���A����������趨
	OnSE("se��Ȼ_ˮ_������01",1000);
	CreateTextureEX("�}EV100", 16000, Center, Middle, "cg/ev/ev109_��x���A����.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 3, 500, 50, false);
	Move("�}EV100", 0, @-512, @-288, null, true);
	Shake("�}EV100", 50000, 2, 1, 0, 0, 500, null, false);
	BezierMove("�}EV100", 1500, (@0,@0){@+200,@0}{@-200,@+88}{@+300,@50}{@-100,@+50}(@+512,@+288), AxlDxl, false);
	Fade("�}EV100", 500, 1000, null, true);

	Wait(1000);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("�}EV100");

	Cockpit_AllFade0();

	CreateTextureSP("�}����1000", 980, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}mura", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Move("�}mura", 0, @+500, @-100, null, true);

	CreateTextureEX("�}EV100", 16000, Center, Middle, "cg/ev/ev109_��x���A����.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 3, 500, 50, false);

	Move("�}mura", 400, @-500, @+100, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0110a00">
��������װ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��ֱ�ġ��ݳ��m���ˡ�

	CreateTextureEX("�}mura01", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��x.png");

	OnSE("se���L_����_������01",1000);

	FadeDelete("�}mura", 200, false);
	Fade("�}mura01", 200, 1000, null, true);

	Wait(200);


	Zoom("�}EV100", 1000, 1000, 1000, null, false);
	Fade("�}EV100",1000, 1000, null, true);
	CreateTextureSP("�}EV200", 15999, Center, Middle, "cg/ev/ev109_��x���A����.jpg");
	Shake("�}EV100", 10000, 1, 2, 0, 0, 500, Dxl1, false);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0120a00">
������!?��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0130b57">
��������ɡ�����������ѪҺ��
����ĵ�������Բٿ�<RUBY text="��������">һ��Һ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɩ`�󡣴����w�Ф����ݳ��m���ˡ�
	OnSE("se��Ȼ_ˮ_������01",1000);
	Zoom("�}EV100", 500, 2000, 2000, null, false);
	Wait(300);
	CreateColorEXadd("�ե�å����", 17000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);
	Delete("�}����1000");
	Delete("�}mura");
	Delete("�}mura01");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureEX("�}����100", 1000, Center, 0, "cg/bg/resize/bg002_��a_02.jpg");
	Zoom("�}����100", 0, 1500, 1500, Dxl1, false);
	Fade("�}����100", 0, 1000, null, true);
	Request("�}����100", Smoothing);


	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();

	CP_EnemyFade0();

	CP_PowerChange(1000,200,null,false);

	Shake("�}����100", 1500, 10, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("�ե�å����", 1000, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ӵ��ϺӴ�������ԭ������ӿ���ϵ�ˮ��
���ɣ�����<RUBY text="��������">��ת׹��</RUBY>��
��ŭ�α䱾������׷Ϯ����ͨ���ˮ�����
�Եù�����С�����߱�һ�����ɡ�

�������Ǻεȵ�����Ҳ�޷�֧��˲Ϣ��
������˾޴������Ϯ�������ܰ�Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0140b57">
��������������������
����������������������Σ��������𡭡�
�����������ĵ��������ҵ���������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0150b57">
��Ϊ���������������ڵģ����ҵ����壡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���޷�������ӿ�����ĳ嶯��������Ц�����������Լ�Ҳ
����Ϊ�ոշ��������龪�Ȳ��ѡ�
��û�뵽��Ȼ��ǿ������ز�������

�����������˶���ˮ����
��ټ���ˮ���Ѿ���ɢ��к�����ϡ���ǰ�·���Կ���
���ϵ��˶�ͻ�������ĺ�����һ���ľ���

����������Ӱ��ʧ���١���Ҳ�޷��ҵ���
��֩��仯���ɵ��Ǹ��������ˣ��Ѿ���������
�������ʧ��һ�ɶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0160b57">
������׹������
����Ҳ����Ӧ�е�ĩ·�ɡ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0170b38">
����������
����λһ�ߩ����·���������ĩ�����
����Ӱȷ�ϡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0180b57">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_AziChange(3000,-128,null,false);
	CP_AltChange(500,-52,null,false);

	CP_RollBarMove("@�}����100",800,-90,null,false);
	Zoom("�}����100", 1200, 1700, 1700, Dxl1, false);
	Move("�}����100", 1000, @+100, @+100, Dxl1, false);

	Wait(980);

	Move("�}����100", 1600, @-200,@+400, AxlDxl, false);

	Wait(1000);

	Move("�}����100", 800, @-200,@-100, AxlDxl, false);

	CP_RollBarMove("@�}����100",1000,0,null,false);

	Wait(500);

	Move("�}����100", 2000, @-300, @0, AxlDxl, false);

	CreateWindow("������ɥ���", 15000, 0, 120, 1024, 336, false);
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureEX("������ɥ���/�}����01", 16000, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureEX("������ɥ���/�}mura01", 16000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��.png");
	CreateStencil("������ɥ���/�ޥ�����",16100,center,Middle,128,"cg/st/3d�����˜�_�T��_ͨ��.png",false);
	CreateColor("������ɥ���/�ޥ�����/ɫ��", 16100, 0, 0, 1024, 576, "Black");
	Fade("������ɥ���/�ޥ�����/ɫ��", 0, 0, null, true);

	BezierMove("������ɥ���/�}mura01", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	BezierMove("������ɥ���/�ޥ�����", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	Fade("������ɥ���/*", 0, 1000, null, false);
	Fade("������ɥ���/�ޥ�����/ɫ��", 0, 500, null, false);
	DrawTransition("������ɥ���/*", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("������ɥ���/�ޥ�����/ɫ��", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������������ŵı��棬˫ĿԲ����ָʾ�ķ�λ��ȥ��
���Ǹ���Ӱ��ȷʵ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",true);
	CreateTextureSP("�}mura001", 14000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}mura001", 0, 10, 10, null, true);
	CP_LockOnMove("@�}mura001",0,@+300,@+100,null,true);

	DrawTransition("������ɥ���/*", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("������ɥ���/�ޥ�����/ɫ��", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", true);
	Delete("������ɥ���");
	Delete("������ɥ���/*");
	Delete("������ɥ���/�ޥ�����");
	Delete("������ɥ���/�ޥ�����/*");


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0190b57">
�������Ǹ���Ȼ����Ȼ�����!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0200b38">
���������ܵ��ҷ��׻��õ�ֱ��ǰ˲��չ�����ڡ�
���ƺ����Ч���ܿ��������˺�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0210b57">
����˵���ڣ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0220b38">
���������ſ�����֮�ڣ�
��ˮ���Ż��������ų�����
��������������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0230b57">
����������
��Ҳ����˵�����������Ǵ����������𡣡�

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0240b38">
������ƶ�������׵��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������Ĺ��
����Ȼ����һ����ĭ����ͷ�ϸ��ǵ�ͷ�������޷�������
װ���Ͻ��к�ż��Ҳ����������������СС���㡣

�����ǹ�����Ҳ�����Ի�����һ���
��ƾ����ѵ��޷��������!?
��
���������ˡ�

�����۵ļһ
���Ǹ��谭�ҵ�·�����ˡ�����ҲҪ��������ǰ��
��Ĩ��졣

���������

����ô���ܽ����޷�������Ľ����
�����������ȷ�ģ���Ȼ������ȷ�ģ��������޷�
������ļһ�����

���������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_���å��ԥå�_������02",1000);
	CP_EnemyFade(300,3,382,240);

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0250b38">
������״̬ȷ�ϡ�
���ز��������Ĵ����������ˡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0260b57">
���ţ���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0270b38">
�����Ʋ�������ȫ���ܴ���½�״̬��
���Ƚϴ˿̵����ܣ���Ĵ����Ϸ硣��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0280b57">
�����ˡ����������𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������������Ǽһ�Ҳ�����ܺ������ˡ�
������Ҳ�Ǽ�Ϊ��Ȼ�Ľ����

�������ڼ���׷���Ļ�����Ӯ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0290b38">
��ȷ�ϵ��������ָ����ܡ�
����Ҫʱ�䲻������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0300b57">
���������ʱ��ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Delete("�}mura001");
	Delete("�}����100");

	CreateTextureEX("�}����50", 1000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);

	CreateTextureSP("�}shin", 1200, Center, Middle, "cg/st/3d���_�T��_���L.png");
	Move("�}shin", 0, @-1024, @-576, null, true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	OnSE("se���L_����_��ͻ�M03",1000);


	Move("�}shin", 300, @+1024, @+576, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��ѹ�ͺ��ǿ�ʼ�½���
�������·����ط��еĴ����ƺ�Ҳ�������ҷ�����
���þ���̧ͷӭ����

����֮ǰ��ȫ�෴�ľ��档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}shin");

	CreateTextureEX("�}����50", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	Fade("�}����50", 0, 1000, null, true);

	CreateTextureEX("�}����100", 200, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Fade("�}����100", 0, 400, null, true);

	CreateTextureSP("�}St100", 1200, -380, -450, "cg/st/3d���_�T��_���L.png");
	Request("�}St100", Smoothing);
	Rotate("�}St200", 0, @0, @0, 45, null,true);
	Zoom("�}St100", 0, 500, 500, null, true);
	SetBlur("�}St100", true, 3, 400, 50, false);

	CreateTextureSP("�}St200", 1000, 309, -34, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}St200", Smoothing);
	Rotate("�}St200", 0, @0, @0, 35, null,true);
	Zoom("�}St200", 0, 500, 500, null, true);
	SetBlur("�}St200", true, 3, 400, 50, false);



	OnSE("se���L_����_�ռ�����01",1000);

	Zoom("�}����100", 500, 1200, 1200, null, false);
	Move("�}St200", 400, @-100, @-50, Dxl1, false);
	Move("�}St100", 400, @+100, @+50, Dxl1, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0310b57">
������!!!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0320a00">
��������ġ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0330b57">
�����߼�ĸ��д��ڸ�λ��һ����Ϊ��������
�԰�!?
�����׻׻�̻壬��������ѧ���ðɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02",700);

	WaitAction("�}St100",null);
	WaitAction("�}St200",null);

	Move("�}St200", 300, @+10, @-100, Dxl1, false);
	Move("�}St100", 300, @-10, @+70, Dxl1, false);
	Zoom("�}St200", 300, 750, 750, Dxl1, false);
	Zoom("�}St100", 300, 750, 750, Dxl1, true);





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ͻ����������
���߾�̫���������˴��·��ӹ�ʱ�������£�

������Ҳ�����¶�̬�ƣ�׼���ӵ��Ͽ���
�����ǡ�������һĿ��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ�����϶Ρ������¶�
//���϶΄��ġ��¶΄���
//�������`�󡣥��Щ`�󡣴�����̫�������������Ĥι��Ĥ��ҥåȡ�

	CreateColorEX("�}ɫ100", 15000, "Black");

	Move("�}St200", 1000, @-50, @-20, Dxl1, false);
	Move("�}St100", 1000, @+50, @+20, Dxl1, false);
	Zoom("�}St200", 1000, 1000, 1000, Dxl1, false);
	Zoom("�}St100", 1000, 1000, 1000, Dxl1, false);

	Wait(500);

	Fade("�}ɫ100", 200, 1000, null, true);
	Delete("�}St100");
	Delete("�}St200");

	OnSE("se���L_����_Ұ̫�����01",1000);
	SL_down2(15001,@0, @0,1000);

	SL_downfade2(10);

	CreateColorEX("�ե�å����", 15000, "WHITE");



	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSP("�}ev100", 1000, Center, 0, "cg/ev/ev506_����VS���_���Б�.jpg");
	SetBlur("�}ev100", true, 3, 500, 50, false);
	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("�}ɫ100");

	CreateTextureEX("�}ev200", 1200, Center, -100, "cg/ev/resize/ev506_����VS���_���Б�_m.jpg");

	Move("�}ev100", 700, 0, -600, Dxl1, false);
	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0340b57">
���Ȱ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	Fade("�}ev200", 0, 1000, null, true);

	OnSE("se���L_����_�z_���02",1000);

	Shake("�}ev200", 500, 2, 4, 0, 0, 1000, null, false);
	Fade("�ե�å����",400,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0351]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0350a00">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ev200", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������������̫�������������
����Ӳ�Ĵ���У�������Ĺ�ͷҲһ���飬��������
��ݸо��������ұ��г��졣

���������ָ����Ǽһ�һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEX("�}����200", 1000, 0, -288, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����200", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AltChange(0,0,null,true);


	Move("�}����200", 1500, @0, @+100, Dxl1, false);
	Shake("@CP_Frame", 2000, 0, 1, 0, 0, 500, null, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	EnLife_Count(600,312);
	CP_SpeedChange(500,541,null,false);
	CP_HighChange(500,812,null,false);

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0360b38">
���У���粿�������ˡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0370b57">
������
����ô������������������ת��������仨��ˮ
��������Σ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0380b57">
���϶�����һ����ζ��!?��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0390a00">
������������ͬ��
��������ζ���������������ҡ���

//��������
<voice name="����" class="����" src="voice/ma01/023vs0400a00">
������ϰ�������������������
��������ʹ��ĸо��������ʵÿɺޡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����ܴ��������Ļش𣬿�������Ȼһ˿���ҡ�
������Ҳֻ���������ưɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0410a00">
�����������ղ�<RUBY text="����">�Ǹ�</RUBY>����ʲô��
����������Ǻε�����Ҳ�ã�
Ҫ˵ӵ�����̶ֳȵ�������
ʵ���������š���

//��������
<voice name="����" class="����" src="voice/ma01/023vs0420a00">
���Ǹ�������<RUBY text="����">�쳣</RUBY>����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0430b57">
���ߡ�
����ɫ���ƻ�֮�񣬸���������������
����������˵�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�������ⲻ�˰ɡ�
�����������Ҳ���������š�

�������������Ļش�ȴ�������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0440a00">
����һ��ʼ��֪�����㱻���Ǻ�ֲ����<RUBY text="��">��</RUBY>����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0450b57">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���ѡ���ȷʵ�������������뵽�ѵ���״��
����ô���������Ī��֪��Щʲô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0460a00">
����Ϊ��������׷Ѱ�ǹ���Ϣ������
�����������Ǳ�Ӧֻ��<RUBY text="��������">��ʱը��</RUBY>�Ŷԡ���

//��������
<voice name="����" class="����" src="voice/ma01/023vs0470a00">
�����㷽��չ�ֵ��쳣������
û���κι�ϵ������

{	NwC("cg/fw/nw������.png");}
//�룺���������ͩ`��ץ�`��
//��������
<voice name="����" class="��������" src="voice/ma01/023vs0480a01">
�������й�ϵ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��ͻȻ��
��һ����������������Ի���

���·���ָ���ᵯ�˱�����һ������졣
������Ī�ǣ��������<RUBY text="����">����</RUBY>��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

	#voice_on_����=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="��������" src="voice/ma01/023vs0490a01">
����Σ����Ǻ�ɢ�����߸��ѣ����ں��ҵ�
Ұ̫����������ġ�
���ǿ������̺����ҵ���������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0500a00">
����ô�����ǡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/023vs0510a01">
�����ƾ��Ǹղ��ǳ�����ʶ�������ԭ��
�����м��������׵�Ӳ�ȡ���

//��������
<voice name="����" class="��������" src="voice/ma01/023vs0520a01">
����Σ����Ϻ�Ȫ�أ�����Ȼ�ܲ��ɣ�
�Ҷ�<RUBY text="����">����</RUBY>֮���˽ⲻ�
���������Ҳ�������ţ���ƾ����ұ
������ɴ˵ȳ̶ȵ����ܡ���

//��������
<voice name="����" class="��������" src="voice/ma01/023vs0530a01">
�������������۹��ͣ�
���ѵ�˵�ǲ�������ʮ��Ҷ�յ�
���е��������죿��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0540b38">
��������������֮��һ���Ѫ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�����˾��ȵ��ǣ���ľ����ܶԷ������ʣ�������Ӧ��
�������������𡪡��������������Ǵ����������
���д����У������������ھ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0550b38">
���ҷ�������<RUBY text="����">��ʴ</RUBY>�ҷ�����������ߡ�
��Ȼ�޷���ϸ����������������Ī��
������������<RUBY text="��">��</RUBY>�������𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/023vs0560a01">
�������ƺ���������������ء���

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0570b38">
����������ǡ��������Ժ�����ʽ��
�ܽӴ�����֮ҵʵ�ڻ�ϲ��������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0580b57">
������Ϊֹ�ɣ���ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
�����Ž�������ս�����в���ʱ�˵���Ī���ͻ���
���ս�̸���������͵ز���һ�䡣�Ի�������
�������Ĳ��֣�����һ����ʵ���Զ�
�׼��ģ��Ǿ������ֶԻ��������塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0590b57">
���ੲ��ݵ�˵Щ��Ȥ�Ļ�������
��������ʱ���𣬴�������������
���������߾͸�������������ʹ����㣡��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0600a00">
��˵��Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
���������������ڲഫ����������
���ǱȽ��и����еı�����������������һ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0610a00">
������֮�Ա�����ȫͬ�⡣
����ô������������һ��ʹ�����ɣ�
�崨�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0620b57">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Move("�}����200", 300, @0, @-300, null, true);
	CockPit_LockSet(@0,@0);
	CreateTextureEX("�}mura001", 14000, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	SetBlur("�}mura001", true, 3, 500, 50, false);
	Zoom("�}mura001", 0, 20, 20, null, true);
	CP_LockOnMove("@�}mura001",0,@-200,@+50,null,true);
	Fade("�}mura001", 300, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	CP_LockOnMove("@�}mura001",1000,@+200,@+150,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
��˵��һ�䣬�����ĺ�Ӱ��ͷ������
�����ҷ��������������Ӽ�Ϊ�������·���

����������ʲô���Ǹ����ˡ�
���ѵ���ûŪ��״����

���߶ȴ������Ƶ����Ǽһ���˳̶ȸ����Ҳ���Ǽһ
������������һ���������Ѿ�һĿ��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0630b57">
�������������������������˲�ˬ��
���⻹�ǵ�һ�η��֡�
��Ҳ�ã���ġ�������ȥ���ΰɡ�
���������������������У���֮���ᡣ��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0640b38">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå�������ͻ��

	CP_SpeedChange(500,610,null,false);
	CP_AltChange(500,-45,null,false);
	EnTr_Count(1000,300);

	CP_PowerChange(2000,0,null,false);



	CP_LockOnMove("@�}mura001",1500,@0,@-50,null,false);

	Zoom("�}����200", 2000, 1500, 1500, null, false);
	Zoom("�}mura001", 2000, 100, 100, null, false);

	Wait(100);

	CP_LockOnFade(300,"on",false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
�����ߣ�
��û����������������ߡ�˵������һ������׳�
�ɵ����Ҳֻ���������Ų�����������벻�ţ�

�����ǿ�����ȥ��

����ª��
��������ݳ�ª����Ŀɱ�ĩ·�ϣ�
����׹��ɡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɣ�����϶Ρ�����

	CreateTextureEX("�}EF100", 16000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	SetBlur("�}EF100", true, 3, 500, 50, false);
	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	OnSE("se���L_����_Ұ̫�����02",1000);
	Fade("�}EF100", 500, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0650a00">
����װ������������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/023vs0660a01">
����������������ת������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�ե�å����", 16100, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	CP_LockOnDelete();
	Delete("�}EF100");
	Delete("�}mura001");

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");

/*
	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0670b57">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//���ãɣ�������װչ��
//�������äȥХꥢ�����Ĥ�����äݤ��ӣš��ե�å���
//�����C������


	CreateColorEXadd("�ե�å����", 17000, "WHITE");
	Fade("�ե�å����",10,1000,null,true);

	CreateTextureEX("�}mura100", 16000, Center, Middle, "cg/ev/ev903_�����ŚݥХꥢ�`չ�__a.jpg");
	Zoom("�}mura100", 0, 2000, 2000, null, true);
	SetBlur("�}mura100", true, 4, 500, 50, false);
	Fade("�}mura100", 0, 1000, null, true);

	OnSE("se���L_��x_����չ�_",1000);

	Fade("�}mura100", 500, 1000, Dxl1, false);
	Zoom("�}mura100", 500, 1000, 1000, Dxl1, false);
	Fade("�ե�å����",600,0,null,true);

	SetFwL("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0680b57">
������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Wait(200);

	OnSE("se���L_��x_��������",1000);
	Fade("�ե�å����",100,1000,null,true);
	Delete("�}mura100");
	Delete("�}����100");
	Delete("�}����200");

	CreateTextureEX("�}����100", 1200, Center, -200, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 5, 2, 0, 0, 500, Dxl1, false);

	Move("�}����100", 500, @0, @+100, Dxl1, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0690b57">
���ղ��ǡ�������

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0700b38">
���з������ϱڷ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
�������������ˡ�
�����Ǳ�������ǿ�ȵ��������������Ӳ������
һ�㡣���в�����һ������ĸо���

���������ôż������ķ�����
���ղ�Ҳ��ʹ���������ס��ŭ�ΰ��ˮ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0710b57">
�����ˡ��������翹����

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0720b38">
������ʹ������Բٿ��߸����޴�
����������������ͻ�Ƹ�Ϊ�׵�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
��˭��Ը�������ôĥ����ȥ��
���Ǹ�������Ż�Ĵ���˭��Ը���ٿ���ȥ��

����Ȼ�Ǹ�����ܹ�������������ôʹ���޷�
��ȫ�����Ĺ����ͺá�
������һ������һ�������

���׻��õ���

����������֮����
�������ڵ�ˮ����������£������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0730b57">
��Χ�ǲ�㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//�����`�á�Ѫ�Κݤ����������ۥ磻�ȥ�����
//���ۥ磻�ȥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXover("�}ɫ400", 16000, "White");
	Fade("�}ɫ400", 500, 700, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0771]
�����������ף�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ä���Ȼ��椬���\�������쥤������
	CreateEffect("���ե����ȣ�", 16000, 0, 0, 1024, 576, "Monochrome");
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("���ե����ȣ�", 5000, 600, null, false);

	CP_SpeedChange2(6000,147,null,false);
	CP_HighChange2(6000,154,null,false);

	Move("�}����100", 6000, @0, @-500, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0772]
����ô�ˣ����ǣ�
����Ұ����ʧȥ����ɫ��

��������ˡ�
�ٶȡ������½���ƽ�⡪���ڱ��������塪��
<RUBY text="����">����</RUBY>��

�����䡪����
����ʲô����ɴ������ӿ������������!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0740b57">
����ģ�������ʲô��!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0750b38">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
��û�лش𡣲������ڻش���
��ֻ��΢΢���������Ÿ��ŵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0760a00">
���������������ء���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0770b57">
��������
������ʲô����������ʲô��˼��
���㾿������ʲô����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0780a00">
����ʲôҲû����
����ֻ����Ĳ��������µ����󡭡�
�������ѷ�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0790b57">
�����������ѷ�!?��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0800a00">
�����ߵĻ���������������ҵļ��ٶȣ�
ʹ��ѪҺ��ӿ�����������ϰ���
��������ֻ��ͨ��״�����������ʲô���⡣
��Ϊ���еķ�������������

//��������
<voice name="����" class="����" src="voice/ma01/023vs0810a00">
����������������ԭ��ʹ�ý��з���������
�Ǿͻ�ͻȻ��Ϊ������ǰ��Σ�ա�
��<RUBY text="����">ԭ��</RUBY>�����ڣ����ⲻ����
�����������ϰ����ѡ���

//��������
<voice name="����" class="����" src="voice/ma01/023vs0820a00">
�������ѷ���
��Ϊ�˷��ӽ�������������ʱ��
���Ĳٿ��ߵ�������
ʹ��ǿ������ʱ���ķѸ��Ǿ޴󡣡�

//��������
<voice name="����" class="����" src="voice/ma01/023vs0830a00">
������������������ĳ��ܼ���
����û���ͻ������ڵ�����������

//��������
<voice name="����" class="����" src="voice/ma01/023vs0840a00">
�����������������ǰ�Ĵ��ģ�����Ѿ�
���ļ��ס��ڴ�֮�ϻ�Ҫ��ǿʹ�ã�
������ǡ������л��ܼ���
��ȫֹͣ�������𣿡�

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0850b57">
����������ô�ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ400", 5000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
����ô��������
���������飬�Ҹ�����֪����
��������֪����

���пᡣ
��Ϊʲô����Ϊʲôû���κ��˸����ҡ�
��ΪʲôҪ�����ֵز���֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0860a00">
��������߶���������ʶҲ�㲻�ϵĻ������
��Ȼ������ֻ������֮��Ϊ���֣�
��δ��������޵�������޴�֪������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0870b57">
���ء�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/023vs0880a00">
���崨��������������֮�֣�
�����Լ�������������еı�Ӧ��
����ܿ�ͻ�׹�䡭����

//��������
<voice name="����" class="����" src="voice/ma01/023vs0890a00">
��������ƾ�������ǿ����ز���������
<RUBY text="����">֮��</RUBY>�Ҳ������������档
����ˣ��һ�����������·����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0900b57">
����������Ҫ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���ե����ȣ�", 5000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
����������
���Ҳ�������

����������
�����������ֽţ�������������ģ�
��Ϊʲô��������Ϊʲô��ô��ľ����Ϊʲô��ͣ׹��!?

�����Ҷ�����!!!!
���һ���������
��Ϊ�����������

���ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0910a00">
�������ˣ��崨���
��ִ��������֮�������ߡ���

//��������
<voice name="����" class="����" src="voice/ma01/023vs0920a00">
����������ö���һ���ʾ������е��ˡ�
����<RUBY text="��������">����֮��</RUBY>Ѱ��ģ�
��������һ��Ĵ�������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0930b57">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
���Ѿ�ģ���������Ұ���
��������߽�̫���������ʡ�

���Ӻϣ��ε����ļ��ơ�
��һ����ɱ֮��ľ��ֻ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������_ʼ
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
	CP_AllDelete();


	Delete("�}M");
	Delete("�}����50");
	Delete("�}EV100");
	Delete("�}EV200");
	Delete("�}shin");
	Delete("�}ɫ400");
	Delete("���ե����ȣ�");

	CreateWindow("������ɥ���", 15000, 0, 0,1024, 288, false);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateWindow("������ɥ��k", 15000, 512, 0,400, 576, false);
	SetAlias("������ɥ��k","������ɥ��k");
	CreateTextureEX("������ɥ��k/�}EV100", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("������ɥ��k/�}EV100", Smoothing);
	Zoom("������ɥ��k/�}EV100", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV100", 0, @-300, @0, null, false);
	CreateTextureEX("������ɥ��k/�}EV200", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("������ɥ��k/�}EV200", Smoothing);
	Zoom("������ɥ��k/�}EV200", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV200", 0, @-300, @0, null, false);


	CreateColorSP("������ɥ���/�}ɫ100", 15000, "Black");
	CreateColorSP("������ɥ���/�}ɫ100", 15000, "Black");

	Delete("�\Ļ��");

	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}EV100", Smoothing);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	Move("�}EV100", 0, @+400, @+288, null, false);
	Request("�}EV200", Smoothing);
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Move("�}EV200", 0, @0, @+288, null, false);

	Move("�}EV100", 500, @-400, @0, Dxl1, false);
	Move("������ɥ���", 300, @0, @-200, null, false);
	Move("������ɥ���", 300, @0, @+200, null, true);

	WaitAction("�}EV100", null);
	CreateColorEXadd("�}ɫ100", 14001, "White");

	OnSE("se����_�z_װ��01",1000);

	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,true);


	CreateColorEX("�}ɫ100", 14005, "Black");
	Fade("�}ɫ100", 0, 700, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("������ɥ��k/�}EV100", 0, 1000, null, false);
	DrawTransition("������ɥ��k/�}EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("�}ɫ100", 10, "White");

	Wait(300);

	Fade("������ɥ��k/�}EV200", 0, 1000, null, false);
	Shake("������ɥ��k/�}EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se����_늓�_���01",700);

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("������ɥ��k/�}200", 20000, #99CCFF);
	Fade("������ɥ��k/�}200", 10, 600, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 500, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 700, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 500, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 800, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);
	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ��k/*");

	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("������ɥ��k");

	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0940b57">
���桭����ġ���!?��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0950b38">
�������Ĵ�����
�����������������ã�
�ںϵ��Ӻ�֮�����𡭡���

//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0960b38">
�����Ǻεȿ��µļ��ա���Ԧ��˾���
���ָ�ѹ�������������ǶԲٿ��߻���
�Խ��ж��ԣ����ǽ����������춨��
ð����Ϊ�������⾹Ȼʵ���ˡ�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs0970b57">
�����!!��

{	FwC("cg/fw/fw��İ���_ͨ��.png");}
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs0980b38">
�������ҵĲٿ���Ӵ��
��������֮������޷����ѵ����ˣ�
���������֮ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
�����㲻ͣ����������Ҳû�ж�����
���������Գ��������

���������١�
������һ�нӽ�֮���������ǿ֮�������е����ף�
�������������ľ���̬֮��
�������޿ɱ������֮���ˡ�������

�������ˡ�����ˡ�
����ĵļ���������Ӧ��˫�޵еķ��ڡ���
Ҳ���޿��ܷ�ס����������<RUBY text="����">����</RUBY>��

��������ʶ����
������֮���������׵�ԭ��
�������������������𡣴����޹��ģ�<RUBY text="��">��</RUBY>��

������ǣ�档
�����ɽӽ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��������
<voice name="����" class="����" src="voice/ma01/023vs0990a00">
�������Ƕ�ô��̵ĳ�������
������֮����ǰ���Ǵ���֮���

//��������
<voice name="����" class="����" src="voice/ma01/023vs1000a00">
��������װ�������ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/023vs1010a01">
���˽⡣
�����������ٰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������饢�˥᣿
//��ͻ�Ĥ���������ʤ���늡���늡�


	CreateTextureEX("�}EV300", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	SetVolume("SE01", 500, 800, null);

	Shake_LoopB("@�}EV300","shake02");
	Fade("�}EV300", 700, 1000, null, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//��������
<voice name="����" class="����" src="voice/ma01/023vs1020a00">
����Ұ������ս�񷨣���Ѹ�ס�֮���ѡ�����

//���ʤ��֤򤫤������������ݳ�
//��������
<voice name="����" class="����" src="voice/ma01/023vs1030a00">
����Űε�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@SE*", 300, 0, null);

//���i������`���`�֥�`�ɤäݤ��Ф�����
//��������`�ɥЩ`�Ȥޤ������֤ˡ�ֱ�ġ������`�󡣥ۥ磻�ȥ�����

//�룺��`�ө`��z���趨��090305��

	CreateColorEXadd("�}ɫ100", 15000, "White");

	Fade("�}ɫ100", 300, 1000, null, true);

	RG_FlashDelete();
	Delete("@shake01");
	Delete("@shake02");
	Delete("�}EV100");
	Delete("�}EV200");
	Delete("�}EV300");
	Delete("�}EV400");
	Delete("@CP_SpeedAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_HighAuto");

	MovieSESet(16000,"mv늴Œi��_��","se����_mv��_늴Œi��_��");

	MovieSEStart(1500);

//	if(#SYSTEM_break_play_movie){
//		MoviePlay("dx/mv늴Œi��_��.ngs", true);
//	}else{
//		MoviePlay("dx/mv늴Œi��_��.ngs", false);
//	}
//	Wait(1000);

	SetVolume("@mbgm*", 5000, 0, null);

	SetFwC("cg/fw/fw��İ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
//����ġ�
<voice name="���" class="���" src="voice/ma01/023vs1040b38">
��Ը�á������ġ������������¡�����

{	FwC("cg/fw/fw⏴�_��o.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/023vs1050b57">
����ӳ������ҹ�����ԡ���;�����ˡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����10", 9999, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEX("�}����200", 12000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	Fade("�}����100", 0, 1000, null, true);
	SetBlur("�}����100", true, 3, 500, 100, false);

	Shake("�}����100", 20000, 2, 3, 0, 0, 500, null, false);

	CreateTextureEXadd("�}ef100", 13000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}ef100", 0, 1000, null, true);
	Fade("�}����200", 0, 800, null, true);

	SetBlur("�}ef100", true, 3, 500, 200, false);
	Zoom("�}ef100", 5000, 5000, 5000, Dxl1, false);

//����ɢ���ܩ`��
	CreateSE("SE01","se���L_�Ɖ�_�z02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	FadeDelete("�}ɫ100", 1500, false);

	Wait(750);

	Zoom("�}����200", 1000, 2000, 2000, Dxl1, false);
	Fade("�}����200", 1000, 0, Dxl1, false);
	Fade("�}ef100", 1000, 0, null, true);

	Zoom("�}����200", 0, 1000, 1000, Dxl1, true);

	Zoom("�}����200", 500, 3000, 3000, Dxl1, false);
	Fade("�}����200", 300, 500, Dxl1, true);

	Fade("�}����200", 300, 0, Dxl1, true);

	Wait(1000);

	ClearWaitAll(1000, 3000);


..//������ָ��
//�Υե����롡"ma01_024.nss"

}
