//<continuation number="1950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_013vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb01_013vs.nss","Shoushiken",true);
	
//���å��ԥå��ãӣ��
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
	#bg022_ɽ��a_01=true;
	#ev915_劸���Ϥ�����������=true;
	#bg025_ɽ�}��ɭa_01=true;
	#ev916_�����w����ڡ������a=true;
	#bg022_ɽ��b_01=true;
	#ev902_����늴Œi����`�륬��_c=true;
	#ev112_һ���򤪊������ä��������=true;
	#ev115_һ�����˴���뾰��_a=true;
	#ev917_���ږV���Ƅ�=true;
	#ev141_���ڣ֣Ӵ�������_a=true;
	#ev141_���ڣ֣Ӵ�������_b=true;
	#bg018_���L�̄���_01=true;
	#ev158_һ��������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb01_014.nss";

}

scene mb01_013vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_012.nss"



//�����L�_ʼ
	PrintBG("�ϱ���", 30000);

	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 3000, 3000, null, true);
	Fade("�}������", 0, 200, null, true);

	CreateTextureSP("�}��������̫��", 7500, Center, Middle, "cg/st/resize/3d����_�T��_���Lal_ex.png");
	CreateTextureSP("�}����100", 7000, Center, Middle, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	SetShade("�}����100", HEAVY);
//	Move("�}��������̫��", 0, -1541, -19, null, true);
	Move("�}��������̫��", 0, -1641, -539, null, true);

	CreateSE("SE01","se����_����_���S03");

	OnSE("se���L_����_�z_���01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}��������̫��", 200, -2041, -219, Dxl2, false);
	Move("�}����100", 200, @-20, @-10, Dxl2, false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_0", true);
	Wait(50);

	Move("�}��������̫��", 950, -1341, 19, Axl2, false);
	Move("�}����100", 950, @-100, @-50, Axl2, false);

	WaitKey(800);

	CreateColorSP("�}��ܞ", 18000, "#000000");
	DrawTransition("�}��ܞ", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se���L_����_������01",1000);

	Delete("�}��������̫��");
	Delete("�}����100");
//�����ߣ����å��ԥåȄ������x========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,352);
	MyLife_Count(0,720);

	CP_SpeedChange(0,0,null,true);
	CP_HighChange(0,0,null,true);
	CP_AziChange(0,160,null,false);


//�����ߣ����å��ԥåȄ������x========================

	Fade("�}������", 0, 300, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	OnBG(100,"bg022_ɽ��a_01.jpg");
//	StC(1000, @0,@0,"cg/st/3d����_����_ͨ��.png");
	StC(1000, @0,@0,"cg/st/3d����_����_���La.png");
	FadeBG(0,true);
	FadeStC(0,true);



	DrawDelete("�}��ܞ", 150, 100, "slide_03_01_0", true);
	SoundPlay("@mbgm08",0,1000,true);


	//FadeStC(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ���������ڰγ�̫����
���ó���

���䲻�����Ѷ�ʧ�Ĵ���Ұ̫����
�����߱��ɳ�֮Ϊն�����г����п�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0010a00">
������ĩ�ڵĵ��ʹ�������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0020a01">
��û��
����ʼ��̫������ʱ�ڵĲ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -144, "cg/bg/bg022_ɽ��a_01.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -455, -500, "cg/st/resize/3d����_�T��_���Lal_ex.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);
	Move("�}�ݷ���/�}���}", 0, -1441, 69, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}���}", Smoothing);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);


	Move("�}�ݷ���/�}���}", 30000, -2041, -219, null, false);
	Move("�}�ݷ���/�}�ݱ���", 30000, @-100, @-50, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ʱ��ĩ�������Ƕ�̫����ϲ�������ڳ���
�����ַ糱һֱ��������һ��ʱ����
������ս��ʱ�ڣ�������ʹ�ó�ǹ����ǹ�ļ���ս����
�������ͷ���٣�����Ȼʢ��������֮�С�

����˵�̷���ϵĺ������ʮ�������ŵ���ʹ�õľ�
�ǳ����߳�����Ĵ�̫����
���������ַ糱��������������˵��硡����޶��ۡ�

����һ��˵���ƣ���ԭ������Ԫ��ս����
����˵�������ڶ��ɹ����߼�̼��������޲ߵĴ����
�ߣ������ܽ�����ܵ�ǿ����

�������߱�������������������ִ�̫����ֻ��������
��֮����ˡ�
  �ο�������Χ���������ơ�

�����ʺ��ڵ����ϡ��ر����ϰ���϶�֮��ʹ�á�
�������ճ���������һ��ӦתΪ����״̬��������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ100", 300, 0, null, false);
	Fade("�}�ݷ���*", 300, 0, null, true);
	Delete("�}�ݷ���*");
	Delete("�}ɫ100");

	Wait(500);

//���W����
//��ľ������Ƥ��롣�����`��
	CreateSE("SE01","se���L_����_�z_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateMovie("�}�ӻ������", 18000, Center, Middle, false, false, "dx/mv���_���㥭�`����㥭���`��.ngs");

	$�Еr�g=RemainTime("�}�ӻ������");
	WaitKey($�Еr�g);

	CreateSE("SE01b","se���L_����_�z��������03");
	CreateSE("SE01c","se��Ȼ_ɭ_ľ�������01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5100, "#FFFFFF");
	Delete("�}�ӻ������");
	DeleteStA(0,true);
	Wait(100);
	CreateTextureEX("�}����", 2000, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	Fade("�}����", 0, 600, null, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("�}����", 5000, 0, 0, 0, 20, 1000, Axl1, false);
	FadeDelete("�}ɫ��", 800, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0030a00">
������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0040a01">
������ľ����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_�n��_�nͻ01");
	CreateSE("SE03","se���L_�n��_�nͻ01");
	MusicStart("SE02",0,800,0,1200,null,false);
	Shake("�}����", 300, 30, 14, 0, 0, 1000, Dxl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ����ѡ������ҵ����ϡ�
������������̫������һ�Ρ������Ρ������Ρ�

{	MusicStart("SE03",0,800,0,800,null,false);
	Shake("�}����", 600, 30, 30, 0, 0, 1000, Dxl1, false);}
���Ӽ�ϥ֮�������ϵ���ľ�׷׵��¡�
������վ���ķ������������Ȿ����ҹ������κ���
в��

����������������ͼ��
������Ʈ�����Ҷ���Ǽ佫����ɫ�ĵ����ڸǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0050a00">
����һ����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ѭ�����������ľ��ӣ����뿪�����
��ֱ�ɶ��¡�����<RUBY text="����">��</RUBY>���������
�Դ�����Ұ������ȶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����");
//����ͻ
//�􏎤������`��
	CreateTextureSP("�}������", 100, Center, Middle, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	Request("�}������", Smoothing);
	Zoom("�}������", 0, 500, 500, null, true);
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef016_��������܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("�}����300", 11000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}����*", Smoothing);
	SetBlur("�}����300", true, 3, 100, 100, false);
	Zoom("�}����300", 0, 700, 700, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateSE("SE01","se���L_����_�z_���03");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_ɽ��a_01.jpg", false);
	Zoom("�}����300", 400, 2000, 2000, Axl3, false);
	Zoom("�}������", 400, 700, 700, Axl3, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(200);

	Fade("�}����300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 1300, 1300, Axl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);
	Zoom("�}����200", 300, 1100, 1100, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef013_����б��܉��.jpg", true);
	Delete("�}����100");
	Delete("�}����300");
	FadeDelete("�}����200", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���γ�̫�������¶��ϳ��𣬽����ɡ�
����ʱ���ѿ�����

��ɫ�����޵��������ڡ�
���������ħ��һ�㣬��Ȼ<RUBY text="����">�ƶ�</RUBY>
���ҵ���ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0060a01">
��ʲô�����ѵ�������!?��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0070a00">
������
����<RUBY text="����">����</RUBY>��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0080a01">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�z_�ŵ�02",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ų������н�ƫ�����������ǰ����
������ֱ����ǰ�粽���ӳ�һ����

�����Ҽ�����б����ն��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//�������`��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	CreateTextureEX("�}����300", 11000, 100, Middle, "cg/st/3d����_����_���La.png");
	Request("�}����*", Smoothing);
	SetBlur("�}����300", true, 3, 200, 200, false);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateSE("SE01","se���L_����_��ꪏ���01");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_ɽ��a_01.jpg", false);
	Move("�}����300", 400, @100, @50, Axl2, false);
	Zoom("�}����300", 400, 1100, 1100, Axl3, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(200);

	Fade("�}����300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);
	Zoom("�}����200", 1000, 1500, 1500, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_����б��܉��.jpg", true);
	Delete("�}����100");
	Delete("�}����300");
	FadeDelete("�}����200", 500, false);
	CP_AziChange(800,185,Dxl1,false);
	Move("�}������", 800, @100, @0, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����֪�Ƿ��Ѿ��ϵ���һ����̫��ӭ����
�����ס���ҵĽ��ơ�����һ���Ľ��౻������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����300", 11000, 100, Middle, "cg/st/3d����_����_���La.png");
	SetBlur("�}����300", true, 3, 150, 150, false);

	OnSE("se���L_����_�z_���02",1000);
	Fade("�}����300", 100, 1000, null, false);
	Move("�}����300", 200, @-200, @0, Dxl2, false);
	CP_AziChange(200,175,Dxl2,false);
	Move("�}������", 200, @-50, @0, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
���������Ľ�����
��<RUBY text="��������">��������</RUBY>��

��һ��һ�ѽ���ͷ���ϻ�����̫��ˤ����

���������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
//�������`��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Request("�}����*", Smoothing);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateSE("SE01","se���L_����_��ꪏ���03");

	Move("�}������", 400, @-100, @0, Axl2, false);
	Move("�}����300", 400, @200, @0, Axl2, false);
	Zoom("�}����300", 400, 1500, 1500, Axl2, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(200);

	Fade("�}����300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);
	Zoom("�}����200", 1000, 1500, 1500, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_����б��܉��.jpg", true);
	Delete("�}����100");
	Delete("�}����300");
	FadeDelete("�}����200", 500, false);
	CP_AziChange(600,110,Dxl1,false);
	Move("�}������", 600, @-100, @0, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����Ƿ��Ź��еĽ�ɫ������
��һ�����룬���ҽ��С�

�����ţ�����������õ�������ͷ����ն����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//�������`��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Request("�}����*", Smoothing);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateSE("SE01","se���L_����_�z_���03");

	Wait(200);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);
	Zoom("�}����200", 1000, 1500, 1500, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef010_����б��܉��.jpg", true);
	Delete("�}����100");
	FadeDelete("�}����200", 500, false);
	CP_AziChange(600,165,Dxl1,false);
	Move("�}������", 600, @100, @0, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ͬ���Ŀ�����
��ͬ�����мܡ�

�������˴��Թ�ս����ػ��ɻ󲻽�ɡ�
�����롪����������ϰ��
��
��������뼫Ϊ�ӽ����ࡣ

��ʹ����ͬ�����ĵ��ҶԾ���ʵ����������ϰһ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateColorEX("�}ɫ100", 100, "BLACK");
	Fade("�}ɫ100", 0, 500, null, true);

	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, middle, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, -400, "cg/st/3d����_����_���La.png");
	Request("�}�ף�*", Smoothing);

	Move("�}�ף�/�}������100", 0, @312, @0, null, true);
//	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @230, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureEX("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	CreateTextureEX("�}�ף�/�}�ӣԣ�", 500, Center, -400, "cg/st/3d�����˜�_����_���L.png");
	Request("�}�ף�*", Smoothing);

	Move("�}�ף�/�}������100", 0, @-212, @144, null, true);
//	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);

	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);



	Move("�}�ף�/�}������100", 500, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @-190, @0, Dxl2, false);



	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(300);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0090a02">
��������
���㣬Ī�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����˫����ʽ���һ�ޣ�����Щ�����һ����ͷ����
�૵�������а�����Щ���ȡ�
���ҵ�����Ҳһ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}�ף�*", 300, 1000, null, false);
	Move("�}�ף�/�}������100", 500, @380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @190, @0, Dxl2, true);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0100a00">
����Ȼ�Ǽ�Ұ�����𡣡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0110a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0120a00">
���ʼ���µ�Ȧ���Ǽ�Ұ������Գ����
���������ļ���̤������ͨ��<RUBY text="����">��ϥ</RUBY>
ʵ�ֵļ�Ұ�����ش�֮���ط�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0130a00">
������ػ��ĶԴ򣬼��Ǽ���Ҳ��
��ϰ������ľ��򡭡���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0140a02">
����������
����Ҳ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0150a00">
����Ұ������ս�񷨡�
����δ���洫�������ش�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0160a02">
����Ұ���������񷨡�
���洫���ش��Ҷ���֪�������������׼���
��ϰ�ꡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����������񷨡�
���Ҷ����������ӡ����ϵ�����Ǽ�Ұ������ս��
Դ�������ɡ�

��˫����ʽ��˿��ƣ������ú�����ʵ���ݡ�
����������ʲô������ϵ��

���������������Ϊֹһ��Ҳ������չʾ��������ѧ��
Ϊ���Ƶ��������
����ʱ���ҽ�����Ϊ����żȻ���ɺϡ�

��û�뵽��Ȼ��ͬϵ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0170a00">
���ѹ������ݽ��١���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0180a02">
��������ζ�����Ǳ˴˶��ܿ����Է�����ͼ��
�������¡�����


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0190a02">
����������ν����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("�}�ף�*");
	Delete("�}�ף�*");
	Delete("�}ɫ100");

//��ͻ�M
	CreateTextureSP("�}������", 100, Center, Middle, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	Request("�}������", Smoothing);
	Zoom("�}������", 0, 500, 500, null, true);
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef009_��������܉��.jpg");
	CreateTextureEX("�}����300", 11000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}����*", Smoothing);
	SetBlur("�}����300", true, 3, 100, 100, false);
	Zoom("�}����300", 0, 500, 500, null, true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	OnSE("se���L_����_��ͻ�M01",1000);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_ɽ��a_01.jpg", false);
	Zoom("�}������", 400, 600, 600, Axl3, false);
	Zoom("�}����300", 400, 2000, 2000, Axl3, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(200);

	Fade("�}����300", 100, 0, null, false);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��һ���ٴ������ط��Ƚ���
�����һ��б��롪��̫����������<RUBY text="��������">����һ��</RUBY>��

��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������һ�W
	CreateSE("SE01","se���L_����_�z_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);

	Zoom("�}������", 800, 500, 500, Dxl1, false);
	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef009_��������܉��.jpg", true);
	Delete("�}����100");
	Delete("�}����300");
	FadeDelete("�}����200", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������˱�����������
������

�����Ϸ�һԾ��
�����ܱܿ��ӿ��º�Х������̫�����硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����S
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se����_����_�z�i��03",1000);
	Delete("�}������");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg025_ɽ�}��ɭa_01.jpg");
	Move("�}����50", 0, -512, -576, null, true);

//�����ߣ����å��ԥåȄ������x========================
	CP_HighChange(5000,412,Dxl3,false);
	CP_SpeedChange(5000,315,Dxl2,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@�}����50",1);

//�����ߣ����å��ԥåȄ������x�����ޤ�========================
	Move("�}����50", 5000, @0, -288, Dxl3, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����㲻�������ƽ���������̶ֳȵķ�ԾҲ������
�⡣
�������ּ��϶��Բ����һ�������۵ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0200a01">
��ֱ��תΪ�ﺽսҲ��һ��Ŷ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0210a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����û��ͬ�⽣�ٵ��᰸������������̫����
������֮�ܾ��ڿ��С��������������˵������������
�ǶԵġ�

�������������졣
��̽�鹦�ܴ������ơ�

������������½��з���ս���Ѿ����ܳ�֮Ϊս���ˡ�
�����ǶĲ������һ������������ֳ��ǰѴ�̫��
��ͬʱ������װ������ɡ�

�����ң�Ҳ�޷�������Ͷ��������ȥ���ս����
��
��������������飬����Ҳ���С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0220a00">
��û�Ǹ�ʱ�䡣��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0230a01">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������w��
//��һ�W
//��������`��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}����300", 11000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Rotate("�}����300", 0, @0, @0, @50, null,true);
	CreateTextureEX("�}����400", 18000, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	Zoom("�}����400", 0, 2000, 2000, null, true);
	SetBlur("�}����400", true, 3, 300, 80, false);


	Move("�}����300", 0, @0, @300, null, true);


	Request("�}����*", Smoothing);
	SetBlur("�}����300", true, 3, 100, 100, false);
	Zoom("�}����300", 0, 500, 500, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateSE("SE01","se���L_����_��ꪏ���02");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg025_ɽ�}��ɭa_01.jpg", false);
	Rotate("�}����300", 800, @0, @0, @-50, Axl1,false);
	Move("�}����300", 800, @0, @-300, Dxl1, false);
	Zoom("�}����300", 800, 2000, 2000, Axl3, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(400);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 300, 2000, 2000, Dxl2, false);
	Fade("�}����100", 0, 1000, null, true);

	Wait(150);
	Zoom("�}����200", 300, 1100, 1100, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 200000, 2, 3, 0, 0, 1000, null, false);
	Shake("@�}����300", 200000, 2, 1, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef003_�����Ƅ�.jpg", true);
	Delete("�}����100");
	Zoom("�}����50", 0, 2000, 2000, null, true);

	Zoom("�}����400", 500, 1000, 1000, Dxl2, false);
	Fade("�}����400", 500, 1000, null, true);

	FadeDelete("�}����200", 500, true);
	Wait(300);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���൱�ڸ����ڵ�һ���ڵ���
������Ϊ׷���Ҷ�Ծ���һ����

��û�г�������ڿ��оͲ���������
���޷��رܣ�ֻ�����浲ס��

�������ĸ�����ǿ��ס������һ����
�����ҽ��档��û�������İ�գ���������ػ�Ϯ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0240a00">
���������Ƶ��ڿգ�����������������һ����
��������ͳ��������ϡ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0250a02">
��������ô˵����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�z_̤���z��01",1000);

	FadeDelete("�}����400", 300, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("�}����300", 200, @0, @100, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���˴˵����嶼�ܵ�����������ǣ�ơ�
�����ڵ�һֻ�����ҵĽŴ��ڲ����һ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");

	CreateSE("SE01","se����_�z_�l����01");
	CreateSE("SE02","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_RollBarMove("@�}����50", 1000, @-180, AxlDxl, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("�}����300", 300, @0, @100, Dxl2, true);
//	Fade("�}����100", 400, 1000, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}����300", 400, @0, @-200, AxlDxl, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0275]
�����Ƽ��롣
����ǯס�Ľ�Ϊ�ᣬת�����ơ�

���������ϡ��������¡�
�������̫������׼�ҵ��ʺ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0281]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0260a00">
����������óѣ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����Ұ����Ϊ���������䡱֮����
����Ч����ר����������ɽ�Ϲ��䣬ȴ����ҧ�ŶԷ���
���ŵĶ����Ĺ��¡�����ս������˫�������������
Ҫռ���Ϸ�λ�á�

����غ󣬽��з�ѹ����漷ѹ������
���˼��������򵥣�Ȼ��һ�������ˡ�

���ɼ�Ϊ��ʦ�����ڡ�
����������Ҳ�ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�z_���01",1000);


	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@�}����50", 1000, @-180, AxlDxl, false);
//	Rotate("�}����100", 600, @0, @0, @180, null,false);
//	Fade("�}����100", 400, 0, null, true);

	Wait(500);

//��������ܞ
	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0270a02">
������!?���⡪����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0280a00">
������<RUBY text="����">�ؾ�</RUBY>��
��֪���𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//�����ߣ����å��ԥåȄ������x========================
	CP_HighChange2(500,0,null,false);
	CP_SpeedChange2(500,0,null,false);

	MyLife_Count(0,264);

	CP_AltChange2(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_RollBarMove2(0,0,null,true);

//	CP_AltChangeA();
//	CP_RollBarMoveA();
	BGMoveDelete();

//�����ߣ����å��ԥåȄ������x�����ޤ�========================

	Cockpit_AllFade0();
	Delete("�}����*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����ģ��һ�����������Բ��ƵĽ�Ϊ�ᷴת��
����������ͬ��һ����������ת�����Ǻ���

������λ����ת��
���������ϡ��������¡�

���������ҡ�
����һ���ķ�ӦҲ��Ѹ�١�

�������̷�ת���ƣ��ٴξ���λ��

��������һ�η�ת����ռ���ơ�

���������α仯��
����ص�˲���ķ���ʤ���޴�֪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE01","se���L_�n��_�zܞ��02");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	CreateTextureSP("�}����150", 100, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");

	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_0", true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}����150", 1000, 0, 20, 0, 0, 500, null, false);

	Wait(700);

//����
	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0290a02">
����!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0300a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��˫����û�ܵóѡ�
����һ�������������

������������½�ļ��ٹ��ɰ�����ƽ��е����ң���
������ҪѸ��վ���˫�㡣
���ָ����Ʋ����ں���֮�䡪��ȴ�·�ǧ���������

��������ɫ�ĵ���ͬ����Ҫ����������˲�䡣
���·����˰�ͬʱվ�𡢶��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_ɽ��a_01.jpg", true);

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0310a02">
��ѽ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����׼ʱ�����������������������<RUBY text="��������">ĥĥ���</RUBY>��˼����
��λ��Ů��Ե��
���ŷ���˿��������������������Ϯ�������ٵľ�ͷ����
�ڵ���

����ֱ���ָ�ֱ��ֱ��ͻ����
�����ٶȹ�����ܹ��ɾ޴���в����һ�������ڵĽ�����
���������ٶȵ���ɡ�

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0320a00">
��̫����ֱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_����_���S01");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���Կɳ�֮ΪѸ�׵ļ���ͻ����߾��룬һ������̫����
������һ������

{	MusicStart("SE02",0,1000,0,1000,null,false);}
���ڴ�֮ǰ��
�����ڽ���������ͬʱ̤���벽������̽��Է����С�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 16200, Center, 0, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/bg022_ɽ��a_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16300, -550, -500, "cg/st/3d����_�T��_���La.png");
	CreateTextureEX("�}�ݷ���/�}���}��", 16300, 200, -200, "cg/st/3d�����˜�_�T��_ͨ��.png");

//	Rotate("�}�ݷ���/�}���}", 0, @0, @0, @180, null,true);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	Move("�}�ݷ���", 0, @0, @-338, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);


	Move("�}�ݷ���", 300, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);
	Move("�}�ݷ���/�}���}", 300, @200, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}��", 300, @-200, @0, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, false);
	Fade("�}�ݷ���/�}���}��", 300, 1000, null, true);


	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0330a02">
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0340a00">
��<RUBY text="��������">����һ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}�ݷ�*", 300, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�����Լ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}�ݷ�*");
	CreateSE("SE01","se����_�z_װ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoom(10000, 300, 100, "cg/bg/bg022_ɽ��a_01.jpg", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0391]
�����ִӵ��������룬����������
����������ɨ�ҽš�

��ɨ����ע�������һ����ʽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 16200, Center, 0, 1024, 288, true);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/bg022_ɽ��a_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16300, -135, -950, "cg/st/3d����_�Tͻ_���L.png");

	Rotate("�}�ݷ���/�}���}", 0, @0, @0, @180, null,true);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	Move("�}�ݷ���", 0, @0, @-288, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);


	Move("�}�ݷ���", 300, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, false);

	Move("�}�ݷ���/�}���}", 300, @-200, @1000, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	SetFwC("cg/fw/fwһ��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0350a02">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	Move("�}�ݷ���/�}���}", 200, @0, @400, Axl2, false);
	DrawTransition("�}�ݷ���*", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", false);
	FadeDelete("�}�ݷ���*", 300, true);
	FadeDelete("�}����200", 300, true);

	Wait(300);
	OnSE("se���L_�n��_�zܞ��03",1000);

	Shake("�}����150", 1000, 0, 10, 0, 0, 500, null, false);

	Wait(1000);
	Delete("�}����150");
//��Ͷ����������
//���ɤ󤬤餴����



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
�������Լ��������ˤ����ƾ��޲�������д��̿���
��������������ʤ����
��ת��һȦ�󱳲��ŵأ�һ���������������Ʋ�ͣ�ش�
��������

����ʰ��̫����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0360a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�������������ߴ����ҡ�
������˵��Ҳ֪����

�������Ǿ���ʱ����

����ʤ�Ļ��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0370a00">
��������

//��������
<voice name="����" class="����" src="voice/mb01/013vs0380a00">
�������ѵõľ�������һ����
�����ڽ������и�����յ�������˵��<RUBY text="������">��ˤ��</RUBY>
�Ļ���ʮ�ֺ�������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0390a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0400a00">
����Ȼ�㼼����ɫ��ѵ�����أ�������������
������ս����ʩչ��Χ�ͻ�������ơ�
����Ҫ�����㣬���й��䲻����һ�֡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0410a00">
������˵���ŵġ���
����������������������ˣ�������ȷ����ʹ
�õ�ʱ�����ͻ��ɷǳ���Ч�����������߼�
��������ֻ�м׃ٽ�������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0420a02">
���������˲�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������03",1000);
	StC(1000, @0,@100,"cg/st/3d����_����_�i��.png");

	Move("@StC*", 500, @0, @-100, Dxl2, false);
	FadeStC(500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��һ��վ��������
������������������ִ�δ�ſ���̫����

�������ŭ��Ŀ�⿴���ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0430a02">
��û�г�ʤ׷�����ǽ�˵��ʽ��
����Ӹղ����һζ�ط�������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0440a01">
��������


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0450a02">
�����������డ����
�����䲻���𡣰������������ϲ����һ��
�Ļ��Ҿ������ʶ��ʶ������


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0460a02">
�����ڣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������01",1000);

	StC(1000, @50,@0,"cg/st/3d����_����_���Lb.png");
	FadeStC(300,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����ɫ�������һֻ�ֱۡ�
������ǹһ��������ʲôҲû�á�

�����󲿷��ǡ���Ͳ�����ߡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0470a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�������ڿڣ�
�����ᣬ��ô���ܡ�

������ʱ���Ľ��ٲ�����������װ����
����һ��ȴ����һ����ע��ս�����³��̶�һ���ʡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0480a02">
���̡���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0490b40">
�����ס���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);


//��⟰夬��������������Ѥ���
	CreateSE("SE01","se���L_����_⟳h�ʂ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0500a02">
����������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0510a01">
������!?��


{	FwR("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0520a02">
��������ѽ����!!��


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0530a00">
��ʲ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�������ڸ�ʲô��

������<RUBY text="����">����</RUBY>����������
����ʲô����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0540a02">
������������,��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

	SetVolume("SE*", 1000, 0, null);
	DeleteStC(300,false);
	Fade("�}������", 300, 0, null, false);


//������ڡ����
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 3, 300, 200, false);

	CreateSE("SE01","se���L_����_⟳h�k��01");

	EffectZoomDXadd(10000, 500, 500, "#FFFFFF", "cg/ev/ev916_�����w����ڡ������a.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 1000, 1000, 1000, Dxl2, false);
	Fade("�}����100", 100, 1000, null, true);
	Wait(1500);
	Delete("�}������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����Ͳ����

����������ڵ���
���ǵ�ȷ���ڡ������ܴ��ڵ��ڡ�

������

���������ԡ�
��Ҫ˵���ڵ���ȴ�����ٶȡ�Ҳ��������

����ֱ�����Ϸ��������һ�㡣
����˵�����ڵ���δ��̫��и����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//���i�ߡ�������������
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0550b40">
���ģ��������������������ɣɣɣɡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����Ǽ���������ڻ����������й��϶�ܵ���ԣ��
����΢΢Ť����˱��㹻��

���ڵ�������ļ����ӽ���ȴδ���С�
��ʧȥĿ����ڵ�����Զȥ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev916_�����w����ڡ������a.jpg", false);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//���i�ߡ����餡�`�`�`�`!!��
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0560b40">
���ģ������ң����������ȣȣȣȣȣȣȣ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	Zoom("�}����100", 100, 2000, 2000, Axl2, false);

	Fade("�}ɫ100", 100, 1000, Axl2, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��
��������������ʱ��Ϳռ䶼��ʧ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ڡ����Z��
//�����ߣ��زĶ��x
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 2, 200, 70, false);

	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");
	CreateSE("SE01","se���L_�Ɖ�_���k07");


//�����ߣ����k����
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);

	FadeDelete("�\Ļ��", 100, false);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);


	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	Delete("���ߥ��`2");

	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_���ñ���.jpg", false);
	FadeDelete("�}ɫ100", 2000, true);



	Wait(2000);

	PrintGO("�ϱ���", 20000);

	CreateColorSP("�}ɫ100", 19000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	FadeDelete("�ϱ���", 3000, true);

	Wait(2000);

	CreateSE("SE10","se��Ȼ_ˮ_����02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);


//���x��һ��դ��w�Ф��ޤ����äƸФ����Ɖ����^����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�����ҡ�

�����롣

��������ʹ��
����������һ���������ٵĵ��������¹��������ģ���
�ᴩȫ�����ʹ��

���������о����ı��䡣
��������ʶ���������¡�

���������潽�������
����������ɥʧ��ʶ��ɲ�ǣ������˵��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 500, null);


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0570a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MyLife_Count(0,243);
	CP_IHPChange(0,4,null,false);


	Cockpit_AllFade2();

	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg022_ɽ��b_01.jpg");
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg022_ɽ��b_01.jpg");
	CreateTextureSP("�}����300", 100, Center, InBottom, "cg/st/3d����_����_�i��.png");
	CreateTextureSP("�}����400", 100, Center, InBottom, "cg/st/3d����_����_�i��.png");
	Zoom("�}����200", 0, 1100, 1100, null, true);
	FadeF4("�}����200", 0, 300, 10000, 0, 0, Dxl3, false);
	FadeF4("�}����400", 0, 300, 10000, 0, 0, Dxl3, false);

	OnSE("se����_�z_�l����02",1000);
	SetVolume("SE10", 6000, 0, null);
	SoundPlay("@mbgm13",0,1000,true);


	FadeDelete("�}ɫ100", 1000, true);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
���͵������ϰ���
����ʾ�Ŷദ���ˡ��˿����񾭡�

������������ǰ����
��ɢ���Ż谵��â�����忴��ȥ���������ҡ�Ρ��ƺ�
����Ұ���ȶ����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_���å��ԥå�_������04");



	Fade("�}����200", 300, 0, null, false);
	Fade("�}����300", 300, 0, null, false);
	Fade("�}����400", 300, 0, null, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0580a00">
���ղ����ǡ�������
����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0590a00">
����������


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0600a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����200");
	Delete("�}����300");
	Delete("�}����400");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
����֪���ǲ��ǳ��ʹ������ʱ��ֹ�ˡ�
�����ٵķ�Ӧ�ӳ������롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0610a01">
������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0620a00">
�������������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0630a01">
��������������ͷ����
����ֱ�����⬡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0640a01">
�������ط���ս���ж�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0650a00">
����ͷ����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0660a01">
����С��Ƭ��
������ȫ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
����������Ҳ����˵��
���ղŵ��ڵ������񵯵�һ����

����Ŀ�Ĳ��ǻ���Ŀ�꣬������ըҩ���ѵ�ͬʱʹ����
��Ƭ��ɢ�����ɱ�˵��ˡ�
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/mb01/013vs0670a00">
��Ϊ�Ρ�������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0680a01">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0690a00">
��Ϊ����ʽ���ٻ�������װ��������


//���i�ߤϡ��ƤĤۤ�������
{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0700a01">
��������ǹ����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0710a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��������ǹ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0,@0,"cg/st/3d����_����_�i��.png");
	FadeStC(300,true);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0720b40">
������������;��Ҳ��ǿ�������ʦ��
�������겢δ������ȥ��ѧ����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0730a01">
�������������
����Ȼ�������š���


//���ܥ����ϡ��ƤĤۤ���
{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0740b40">
����Ȼ�����ˡ���ǹ������
�������߻���֮һ����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0750b40">
����������ȥ�ɹ����ù�����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0760a00">
������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��ԭ����ˡ�
�����������鼾�������Ԫ��ս������

�����������ĹŹֱ�������ǹ������
��������Ϊ�����׵�����������

������������������ڻ�֪��Ҳ�Ͳ�����ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0770a01">
���������ֶ�����
����Ȼ������������ˡ���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0780a00">
�������ǽ����ߵ�����ת��Ϊһ������ըҩ��
�Դ��泣��ըҩ����Ƭ���������Ǹ��˼���
������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
����ȷ������ƽ�����롣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0790a01">
���š�
�����ǣ�������ô����Ӵ����������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0800a00">
����������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0810a01">
���Ǹ�������ԭ�ϵ�ȷ�Ǽ�����
���������������<RUBY text="������">һ�廯</RUBY>�ļ�������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0820a01">
��<RUBY text="����">˺��</RUBY>�Լ���������ɱ�У�
��������ֹ����ֶο��ܴ����𣿡�


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0830a00">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
�������¿��˿�һ����

���������������ҡ�
�������ƺ����²��ȵ����ӡ�

���ղ���������ҡ�Σ������Ǵ����
��һ����ʹ�ࡣ

��������ͬ���Լ���������ѡ�������˵Ĺ�������
���ѹ�����������

�����ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0840a01">
��ȱ�����صı�������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0850b40">
��������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0860a01">
������̽϶��෴��������Χ��<RUBY text="����">����</RUBY>��
���������Լ�Ҳ�����˰ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
�����������˵
�������ԣ����ŵı�ըʹ����Ҳ�ܵ������ˡ�

����Ȼ��ֱ�����ܹ��������ҷ���������������̫��
����
��һ��ȫ��Ҳ���Ŷ�����������롣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0870b40">
���ǺǺǡ���
������������������������!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0880b40">
��<RUBY text="����">����</RUBY>��Σ�
��а��֮������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0890a01">
��������˵ʲô����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0900b40">
��Ī���衣
����֮�������֮�����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0910b40">
������<RUBY text="����������">���᳹����</RUBY>��
�������ص㡣��������¡���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0920b40">
���ķѼ�֮�������˷�������Ч��
���������꼰�������������㡣��


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0930a02">
��û������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0940b40">
������а��֮��ǿ��
�������д˱��㹻���������󣡡�


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs0950a02">
���ԡ�
��û�����ڡ���


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs0960a00">
��������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs0970a01">
������̫�����ˡ���


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_������03");
	CreateTextureEX("�}����300", 100, Center, InBottom, "cg/st/3d����_����_���La.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStC(160,true);
	Fade("�}����300", 240, 1000, null, true);


	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0761]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0980b40">
���������𣬴�������
��Ȼ����������֪���в�֪�����������֮ʿ��
�������ӡ���


//���i�ߡ�������������������!!��
{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs0990b40">
������ͻ�������!!
���ģ������ɣɣ����������ȣȣȣȣ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����400", 100, Center, -200, "cg/st/3d����_�Tͻ_���L.png");
	CreateTextureEX("�}����150", 100, -512, -288, "cg/bg/resize/bg022_ɽ��b_01.jpg");
	Zoom("�}����150", 0, 600, 600, null, false);
	CreateSE("SE01","se���L_����_�z_���03");



	OnSE("se���L_����_��ͻ�M01",1000);

	FadeDelete("�}����300", 200, false);
	Fade("�}����150", 350, 1000, null, false);
	Zoom("�}����150", 350, 1000, 1000, Axl2, false);
	Zoom("�}����400", 350, 2000, 2000, Axl2, false);
	Fade("�}����400", 150, 1000, null, true);

	Wait(100);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	FadeDelete("�}����400", 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/bg/bg022_ɽ��b_01.jpg", true);


//�����ڡ�ͻ�M
//��һ�ġ������`��


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/mb01/013vs1000a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
��һ�����˻������ˣ�ֱ�������
��һ����

�����ҷ���Ӧ����Գٻ���
�������޲ߣ�ֻ�ܳ�����һ�����

���񶯴���ȫ�����ף�����ͷ������ˡ�
���ڴˣ���һ�򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���⤦һ��
//�����`��
	CreateTextureEX("�}����300", 100, Center, InBottom, "cg/st/3d����_����_���La.png");

	OnSE("se���L_����_�z_���02",1000);
	Fade("�}����300", 200, 1000, null, true);


	CreateTextureEX("�}����500", 18000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Request("�}����*", Smoothing);

	CreateSE("SE01","se���L_����_�z_���03");

	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}����150", 200, @300, @0, Axl2, false);
	Move("�}����300", 400, @200, @0, Axl2, false);
	Zoom("�}����300", 400, 1500, 1500, Axl2, false);
	Fade("�}����300", 100, 1000, null, true);

	Wait(200);

	Fade("�}����300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����500", 300, 1100, 1100, Dxl2, false);
	Fade("�}����500", 0, 1000, null, true);

	Wait(150);
	CP_AziChange(1000,205,Dxl1,false);
	Move("�}����150", 1000, @-200, @0, Dxl2, false);
	Zoom("�}����200", 1000, 1000, 1000, Dxl2, false);
	Zoom("�}����200", 1000, 1500, 1500, Dxl2, false);
	Fade("�}����200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_����б��܉��.jpg", true);
	Delete("�}����500");
	Delete("�}����300");
	FadeDelete("�}����200", 500, true);


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��������
<voice name="����" class="����" src="voice/mb01/013vs1010a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1020a01">
����������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1030a00">
��û�д󰭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
�����Ų����ȵ�������ߡ�����װ���ˣ�ת��һȦ��
�ӵ�������ӿ���
���������ܵ��������Ӱ��ֻ������ʹ������С���С�
��Ȼ�����������δ��ȫ�ָ���

��һ˲��ʧĿ���һ�����ٴ�׽���ң���զ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1040a02">
������������̡���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1050b40">
����������֮������
�����˶��ġ�����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1060a02">
�����ǣ���û��ʲô�˲��𡣡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1070b40">
����Ȼ��
�����޷�ն��������<RUBY text="����">����</RUBY>���ǡ���


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1080a02">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������M��

	CreateTextureEX("�}����300", 100, Center, InBottom, "cg/st/3d����_����_���La.png");
	Move("�}����300", 0, @100, @0, null, true);
	SetBlur("�}����300", true, 2, 500, 100, false);


	OnSE("se����_����_���S02",1000);
	EffectZoomDX(18000, 300, 100, "#FFFFFF", "cg/ef/ef003_�����Ƅ�.jpg", false);
	CP_AziChange(200,165,Dxl2,false);
	Move("�}����150", 200, @-200, @0, Dxl2, false);
	Move("�}����300", 200, @-100, @0, Dxl2, false);
	FadeDelete("�}����150", 200, false);
	Fade("�}����300", 200, 1000, null, true);

	Wait(200);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1090a01">
������˵��Ҳ������ڵ¡�
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1100a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1110a01">
�����ǽ��Ǽһ���顣
��û����ɣ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1120a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���������
	CreateColorEXadd("�}ɫ100", 1500, "BLUE");

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 150, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
���һ�Ӧ������Ҫ���������
���ͷ�������

�������ƽ���һ����էһ����³ç��ð����
���������ƽϵͣ�����Ҳ���¡�

���������ȡ���ϴεĽ�ѵ��
���ܺá�������Ȼ����̫���ˡ�

���������ҷ���<RUBY text="����">�յ�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1130a01">
����װ������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1140a00">
�������������١���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
//���໥���ġ������`��
	Move("�}����300", 300, @100, @50, Axl2, false);
	Zoom("�}����300", 300, 1200, 1200, Axl2, false);
	FadeDelete("�}����300", 300, false);

	Wait(200);
	OnSE("se���L_����_�z_���03",1000);
	EffectZoomDX(18000, 500, 0, "#FFFFFF", "cg/ef/ef011_����б��܉��.jpg", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
���������ڵĵ����ԳƵ�һ��ӭ�С�
���������˴˵��ضԷ��Ĺ�����ȴ��ֱ��ת����һ��
�Ĺ�����

����Ұ����,ľ���
����˫���ô��ж�ս���ͻ���ղŵ�ʵ֤��ʾ�����
��ͬ��ϰ��

����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����W

	OnSE("se����_늓�_���02",1000);
	EffectZoomadd(10000, 150, 100, "cg/ef/ef003_�����Ƅ�.jpg", true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1150a02">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
�������Ϊ��ϰ��
�����������������죬�Ͳ�������ϰ�ˡ�

�����ü���������ʴ�Ż�����������������˷ѡ�
����ͬ��ȴ�ؽڴ��ڰ���ӯ��

��̫���绢������趯��
��
��������Ұ������ľ���֮�����档

�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
//���Ф���`��

	CreateTextureEX("�}����200", 100, Center, Middle, "cg/ef/ef009_��������܉��.jpg");

	CP_PowerChange(300,400,null,false);

	OnSE("se���L_����_��ꪏ���02",1000);
	OnSE("se���L_����_�z��������02",1000);
	Fade("�}����200", 100, 1000, null, false);
	EffectZoomadd(10000, 200, 200, "cg/ef/ef003_�����Ƅ�.jpg", true);
	FadeDelete("�}����200", 1000, true);


	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1160a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�z_�����w��01",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
��û����ʽ�ܶԸ�����<RUBY text="����������">������ַ�</RUBY>��
����������ǰ�������ܸо��������ĵ��˴�ɢ��

����ɢ����
��û�����Ǳ�ն�����ǵ���������

�����˵ļ�Ӳ֮�С�
����������ļ����ƥ�С�

��Ҫն����˼�Ӳ�ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1170a01">
�������������ʱ�䣡
���������ڣ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1180a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
������һ�¡�
�������ջ����С�

������ô˻����һʤ����

�������������ߡ�
���ٴΡ�ȴ�޿ɱ����������

��Ŀ��ֻ��һ����
����������̫֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1190a02">
���쵰����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1200b40">
����������վ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @-50,@80,"cg/st/3d����_����_�i��.png");

	OnSE("se����_����_�z�i��03",1000);

	Move("@StC*", 500, @50, @-50, Dxl2, false);
	FadeStC(500,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
����˵�����������ף����Ͼ���������һ̫������һ
���Ļָ��ٶ�ȴ���������Ѹ�١�
������ֱ��ϥ�ǣ������ս���

�����ҡ���
��
������ʲô��

��̫����Χ�������ף����Ե��궼��������ɢ����
��������������̫����ע��������

����㲻��Ҳ�ͷ��ŵĲ�ǹһ���������������Դ���װ
����
�������Ҳ����������ҫ���ܵĻ��ᡣ

���ҵĶ����ȽϿ죡
������������Ϊʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);

	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	Zoom("�}����200", 0, 2000, 2000, null, true);

	CreateSE("SE01","se����_��x_��`�륬��_�ʂ�");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����200", 500, 1000, 1000, Dxl2, false);
	Fade("�}����200", 500, 1000, null, true);

	Delete("�}������");

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//��������
<voice name="����" class="����" src="voice/mb01/013vs1210a00">
����Űε���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����夤�`�󡣥��ͥ륮�`����
//�����ͥ륮�`��š��ɤ��`��
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se����_늓�_���01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ100", 1000, 1000, null, true);
	Delete("�}����200");
	Delete("�}����300");

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	Wait(500);

//�������ظ���z�߻���
//��Ц�һ������Υ���`���������ȸ椲��һ����
	CreateTextureEX("�}����400", 17500, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	CreateTextureEX("�}����500", 17500, Center, Middle, "cg/ev/ev115_һ�����˴���뾰��_a.jpg");

	Fade("�}����400", 0, 1000, null, true);
	Fade("�}ɫ100", 500, 200, null, true);

	Wait(500);
	Fade("�}ɫ100", 200, 1000, null, true);
	Fade("�}����500", 0, 1000, null, true);
	Fade("�}ɫ100", 200, 200, null, true);

	Wait(500);
	Fade("�}ɫ100", 200, 1000, null, true);
	Delete("�}����400");
	Delete("�}����500");

//����`�륬��
//�������
	CreateSE("SE03","se����_��x_��`�륬��_�k��");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(2500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//��������
<voice name="����" class="��������" src="voice/mb01/013vs1220a01">
����������!?��


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1230a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade0();
	FadeDelete("�}ɫ100", 2000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
�������򡪡�ƫ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1240a02">
����������


{	FwC("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1250a02">
���á�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڤ�̫�����Ɵᡣ�����󤴤ȡ�
//���ҩ`�ȥ��`�٥�
	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	CreateColorEXadd("�}ɫ�·�", 120, "WHITE");

//	CreateTextureEX("�}����200", 200, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
//	Zoom("�}����200", 0, 2000, 2000, null, true);
//	SetBlur("�}����200", true, 3, 300, 200, false);

	CreateSE("SE02","se���L_����_�V���Ƅ�");
	CreateProcess("�ץ�����", 12000, 0, 0, "Shoushiken");

	Fade("�}ɫ100", 200, 1000, null, true);
	Fade("�}ɫ�·�", 0, 1000, null, true);
	MovieSESet(150,"mv���Ƅ�","se���L_����_�V���Ƅ�");

	Fade("�}ɫ100", 300, 0, Axl2, false);
	MovieSEStart(0);
	Request("�ץ�����",Start);

	Fade("�}ɫ100", 200, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
//	Fade("�}����200", 0, 1000, null, false);




	CreateSE("SE01","se���L_����_�V���Ƅ�");
	CreateSE("SE02","se���L_����_���׷���");
	MusicStart("SE01",0,1000,0,1000,null,false);
//�����ڥҩ`�ȥ��`��
	CreateTextureEX("�}�����ݳ���", 100, Center, Middle, "cg/ev/resize/ev917_���ږV���Ƅ�l.jpg");
	CreateTextureEXadd("�}������", 100, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	CreateTextureEX("�}���ڣ�", 100, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	SetBlur("�}�����ݳ���", true, 2, 500, 70, false);
	SetBlur("�}������", true, 2, 500, 200, false);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Rotate("�}������", 0, @0, @0, @-30, null,true);

	DrawEffect("�}������", 50, "LowWave ", 0, 100, null);

	Delete("�}ɫ�·�");

	Fade("�}������", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 300, false);
	Fade("�}�����ݳ���", 200, 1000, null, false);
	Move("�}�����ݳ���", 500, -1024, 0, Dxl2, true);

	Delete("�}����");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}������", 1000, false);
	Zoom("�}�����ݳ���", 800, 500, 500, Axl3, false);
	Move("�}�����ݳ���", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ev/ev917_���ږV���Ƅ�.jpg", false);
	Fade("�}���ڣ�", 200, 1000, null, true);
	Delete("�}����������");
	Delete("�}����");


//	Zoom("�}����200", 1500, 1000, 1000, Dxl3, true);
	Wait(1000);
	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1260a02">
������������!!��


//���i�ߡ�����������`�`�`!!��
{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1270b40">
���ģ����ɣţģ��ң��������������ȣȣ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ҩ`�ȥ��`��һ�W
//�����Щ`��
//���ؤ��ޤ�����

	CreateTextureEX("�}����300", 100, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	Request("�}����300", AddRender);
	SetBlur("�}����300", true, 3, 300, 200, false);

	CreateColorEXadd("�}ɫ100", 18000, "WHITE");

	CreateSE("SE01","se���L_����_��ꪏ���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se���L_����_�z_�����w��02",1000);


	Fade("�}����300", 1000, 1000, null, false);
	Zoom("�}����300", 2000, 2000, 2000, Axl3, false);
	Fade("�}ɫ100", 2000, 1000, Axl3, true);

	Delete("�}����*");

	CreateSE("SE03","se���L_����_�z��������");
	CreateSE("SE04","se���L_����_�z_�����w��02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(1000);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(2500);

	SetVolume("SE*", 3000, 0, null);


	Delete("�}����200");
	Delete("�}����300");

	Request("�ץ�����", Stop);
	Request("�ץ�����", Disused);
	Delete("�ץ�����");


	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}ɫ100", 15000, "BLACK");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg022_ɽ��b_01.jpg");
	FadeDelete("�ϱ���", 3000, true);

	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);

	Wait(2000);

	FadeDelete("�}ɫ100", 1500, true);

	Wait(500);

//������ҕ��

	CreateSE("SE10","se��Ȼ_ˮ_����02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1280b40">
��ѽ����������������!!
����Ρ����ɶ����ˣ����ף���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/013vs1290b40">
�����ж񱨣�
�������ս�ʤ����
�����������ڴ���֤����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 3000, 0, null);

	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/ev/ev141_���ڣ֣Ӵ�������_a.jpg");
	Fade("�}����200", 1000, 1000, null, true);

	Delete("�}������");
	Delete("�}����100");

	SoundPlay("@mbgm31",0,1000,true);
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
���ն������������ϡ�

�������ԣ�����ʧȥվ���������
���������ն�����϶��������á�

���˿�<RUBY text="����">����</RUBY>���졣

���·���ȼ��һ�㡣
����δ��ȴ�����档

����֮���Ƶ�������Ҳ���Լ����ұ۴�����
������̫�����ָе����ȡ�

��û��ʹ�С�
����ţ����Ѿ����ն��˰ɡ�

���ֱ���̫����ճ��һ������һ�����ӡ�
������Ȼ���Ի��

�����ڣ�ֻҪ���߿���ս�����ͻ������������

���߽����ɫ��������ǰ��
�����˿���㣬ȼ����̵ĵ��������������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1300a02">
����Ҫ����ɱ���㡭����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1310a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
��û�лش�
�����۾���֪���������š�ȴû���κη�Ӧ��

�����������ԣ���Ŀ�ⶼ�����С�
������û���ɵػ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1320a02">
����Ϊ���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
���Ǵ����
���ܾ����ǵڶ���˵�⻰��

����������ˣ���Ϊ����˾������ظ���仰�ء�
���������ǵ����������Ϲ���

��ͷ���ۡ�
��Ȼ����ĳЩԶԶ����ͷ�۵�ʹ�࣬
���������ӿ���ϡ�

�����С�

���������С�
�������˲��Ǻ��ˡ�

��Ӧ�ý�����һ�С�
���������˵��׼��ɡ�

���������Ǹ�ɱ�˷���
��ɱ�˺ü����������޺����Ǻź��޹ϸ��޹����ˡ�
���Լ�Ҳ�����ˡ�

���Ҳ���ԭ�������ˡ�
����Ȼ���ѵõ����ڵ����������������˾����ҵ�
���Ρ�

������Ļ����������ڡ�
�����ԣ�������֧�����塣

����Ϊӵ�зǷ����������ߣ�ȴ����������ɱ�����ߡ�
���ּһ��Ҫ��������
����������Ϊ�Σ�������ˡ��

��������ԭ�¡�
�����������̻��ҡ�

����������������������������˭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1330a02">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
������ͣ��һ�ġ�
������ͣ�ͣ����������

����㶯�ְɡ�
����Ȼ�޷���ˡ���Ǿ�ɱ����á�

���ܿ���ܽ�����
��һ�����¾ͽ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1340a02">
��Ϊʲô��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1350a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1360a02">
��Ϊʲô����
��һ�仰����˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
����˭�ڹ�ִ�������Ŵն�������
���������Ѿ�������ԭ�����ˡ�

���淳����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1370a02">
��˵������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1380a00">
��������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1390a02">
���п��Եİ�!?
���޿��κζ԰�!?��


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1400a02">
����ֻ����������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 12000, Center, Middle, "cg/bg/bg018_���L�̄���_01.jpg");
	Delete("�}������");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw���L_���a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1410a11">
�����������䡣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1420a02">
�����䡭������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1430a11">
����������Ϊ���׵�Ե�ɣ�����
�������ƶ���ֵ����򡣾����Ǹ��丿����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1440a11">
�����ɱ��һ�����ˣ�
���͵���ɱһ�����ˡ���

//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1450a11">
�����ܾ����Լ�����־���ơ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1460a02">
������ʲô������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1470a11">
����Ϊ���䣬��һ��ɱ�������Լ�����ĸ��
���Ǽһ�����ɱ�����ˣ�����������ϧ��
�ˡ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1480a11">
�����������޷�������
��������ʱ��ʼ�ģ�Ϊ���ս�һ�е�
����ս��֮·����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1490a02">
��������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1500a11">
������������ˣ�������Ӧ����ֹ����
����š����ܰɡ�һ���������ɡ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1510a11">
�����������þ�������ս����
�����������仹������ȥ�����Ҷ��������


//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1520a11">
����Ϊ��û�б����ѡ��
���ܹ������Ǻ�ս�����ƻ����Ǻŵġ��ѡ���
��ֹ�ֶ���ɢ�����ߡ�����


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/013vs1530a11">
�����ܵ�ָ����ˣ����ҡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1540a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	EfRecoOut1(300);
	Delete("�}����*");

/*
	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);
*/

	EfRecoOut2(600,true);


	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//��������
<voice name="����" class="����" src="voice/mb01/013vs1550a00">
��������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1560a02">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1570a00">
������������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1580a02">
���㡭����쵰!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һͻ��
//�������`��
	CreateTextureEX("�}����300", 10000, Center, Middle, "cg/ev/ev141_���ڣ֣Ӵ�������_b.jpg");

	OnSE("se���L_����_���̤���02",1000);
	OnSE("se����_����_�᤺����01",1000);

	CreateColorSPadd("�}ɫ100", 1500, "RED");

	OnSE("se���L_����_�z�ܤ�����",1000);

	EffectZoomadd(11000, 1000, 1000, "cg/ev/ev141_���ڣ֣Ӵ�������_b.jpg", false);
	Fade("�}����300", 100, 1000, null, true);

	FadeDelete("�}ɫ100", 1000, true);
	Delete("�}����200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
����������̫����������֮�����¡�
��������ƻ��Ը��µĵ��⣬��ͬ�̴���ϡ��ᴩ�˼�
����

���ⱻ�ս���
�����ڵ�����Ҳȼ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
//��������
<voice name="����" class="����" src="voice/mb01/013vs1590a00">
����������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1600a02">
����Ρ�����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1610a00">
����������
���ط����ԡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1620a02">
������ʲô����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1630a00">
�����㱻�������ֵط�����
������Ҳ�������ġ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1640a02">
������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
���ն�����˵��û��
�����⽫���ڲ����ϵĵ����룬ת���̽����š���
����������Ρ�

��ֱ�Ӵ���ȥ���ͺ��ˡ�
���������������������ɡ�

�����̡�
��ɱ���ⲻ����ˡ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1650a02">
�����аɡ�����


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1660a02">
�����л�Ҫ˵�ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1670a00">
��������

//��������
<voice name="����" class="����" src="voice/mb01/013vs1680a00">
��Ҳ���ǡ���û�С���

//��������
<voice name="����" class="����" src="voice/mb01/013vs1690a00">
����Ȼû�С�����˵���ڵ����ɡ�����

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1700a02">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1710a00">
���������Ǻž͡����������ˡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1720a02">
����������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1730a02">
��ʲô����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1740a00">
����������ڵĻ�����������
���ܹ���ֹ������

//��������
<voice name="����" class="����" src="voice/mb01/013vs1750a00">
�������ˡ�����


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1760a02">
�����԰�!!
���Ҳ�������Щ!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1770a00">
����������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1780a02">
���㲢���Ƕ��ˣ�
�����ԣ�û���ɱ�ɱ�ɣ���

//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1790a02">
��������������ɣ�
�������Ұ�����������Ĵ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1800a00">
����������������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1810a02">
�������Ļ�����
�����������ҵĻ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1820a00">
�����ǡ����޹ء���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1830a02">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1840a00">
����������
���񡭡����Ƕ񡣡�

//��������
<voice name="����" class="����" src="voice/mb01/013vs1850a00">
����Ҫ�Ʋ���Щ���㡭���ǶԵġ�
�������ɡ����޹ء�����

//��������
<voice name="����" class="����" src="voice/mb01/013vs1860a00">
���񡭡���

//��������
<voice name="����" class="����" src="voice/mb01/013vs1870a00">
���������

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1880a02">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1890a00">
���ǲ�����ˡ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե�å���Хå�
//���и�����һ����
//	SetVolume("@mbgm*", 1000, 0, null);
//	SetVolume("SE*", 1000, 0, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev158_һ��������.jpg");
//	Delete("�}������");
	Delete("�}����*");
	EfRecoIn2(300);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
��
��������������������ֹ��

��
������������������ԭ����

��
��������������������������

��
���������������������������µ���

��
���������������������ҵĶ���

��
�����������������������ް�
����������������������ŭ��

//����������

��
����������������������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("�}����*");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg022_ɽ��b_01.jpg");
	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);

	EfRecoOut2(600,true);

	Wait(500);

//������ҕ��
	Wait(500);

	SetFwC("cg/fw/fwһ��_��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1900a02">
��������Ҫ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1910a00">
��һ��������


{	FwC("cg/fw/fwһ��_��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1920a02">
����Ҫ�������ס���
�����Ѿ�����ˡ�����

//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1930a02">
����Ҫ��������

//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/013vs1940a02">
���������ס���
���������ն�������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/013vs1950a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
���ҡ���
��ֻ�ܿ��ű����ҡ��޸���ͣ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(2000, 2000);

	Delete("�}������");

}

..//������ָ��
//�Υե����롡"mb01_014.nss"



function Shoushiken()
{

	CreateColor("�٤����", 1400, 0, 0, 1024, 576, "RED");
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
