//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_032.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_033vs.nss";

}

scene mc04_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_031.nss"


//�������ȥХ���


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg092_ɭ�ε�a_01.jpg");
	Delete("�ϱ���");
	SoundPlay("@mbgm09",0,1000,true);
	FadeDelete("�\Ļ��",1500,true);

	StC(1000, @0,@0,"cg/st/3d�Х���_����_ͨ��.png");
	FadeStC(500,true);



	Wait(500);
	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc04/0320010a00">
����������һ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ�����ݵ���̬�������ң������۰���â��
���帩�����ҡ�
  �������ҡ������������ҡ�

��ֻΪ�������Ӷ�����������
��Ҳ����˵��Ϊ�������Ե���Ȥ������
��
��˿��û���ڸ���˰��������⣬�������ҡ�

��������ʶ�ض�����������������ǰ��
����������Ҳ���������õ���

��ɱ����������ʿ!!

������֮����������ӿ���ڡ�
���嶯����Ѫ֮������ȫ��ӿ��������Ҫ���
ȥ������ֻʣһ��Ŀ�ġ�

�����ﻹ�в����ȥ�����ɡ�
��������������Ҳ����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������å������`

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����01", 5000, Center, -50, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);
	Delete("�}����*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/0320020a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������Խ��е�һ����˲ʱ��ȴ������
��Ī�ǡ��������ʿҲ�ǣ�<RUBY text="����">�Ǹ�</RUBY>��ͬ�飿

�����Դն������������������񡭡�
��
��������ˣ����Ҿ�û�����������ʿ���ʸ�

�����ǣ��Ҹ��ԵĲ���δ��ͬ������Ʋ⡣

�������Ǹ����������ǰ����ʿ���ܾ��ò���ܴ�

����Ȼ���������Ŷ�����ɱ���������ͬ�ģ�������
���ǹ���Ķ���ɱ����Ϊ��������Ľ������ԭ��
�������밮����ת���ɵĲ��

����������������ʿ�����ڻ���������˵��Ϊ<RUBY text="����">����</RUBY>��
����û��Ť��Ҳû�з��ӲҪ˵�Ļ��Ӹ�����ʼ��
�Ѿ�Ť����񡣲����Ǵ���Ľ����������ȷ��״̬����
���Ŷ�����ɱ�⡭��

������������Ϊ��
�����ǣ�û���κθ��ݡ�

��
  Ҳ�п�����������ɱ�ĳ���ɱ�����˫�ۡ�
��
��







   �����б�Ҫȷ��һ�¡�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/0320030a00">
��������ʿ��
����Ȼ�����Ѿ�������ԣ�������������
����һ�䡣��


{	FwL("cg/fw/fw�Х���_ͨ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0320040a03">
��������


{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320050a00">
����������Ҫ��ն���������֮����
���Ǳ���ɱ�����ף�
����Թ����ȡ������֮���𣿡�


{	FwL("cg/fw/fw�Х���_ͨ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0320060a03">
������������


{	FwL("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320070a00">
��������ˣ�����������¾׼����
����ͬ��Ե�ɣ�����һ�˼������ҽ��вþ���
������������̸������


{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320080a00">
����Σ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	DeleteStC(500, false);

	WaitKey(1500);
//��С��������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ش��ǣ�<k>
��
��������Ҳ��м�����ĳ�Ц��

��û�������ǵ�����Ҳ�������ڿ���֮�£�
����ʿ�������������ճ�����Ц���ҡ�

  ��������ʲô������Ȥ͸������
��
����������˵����档

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/0320090a00">
������һ��
����Ȼ����


{	FwL("cg/fw/fw�Х���_ͨ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0320100a03">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	StC(1000, @0,@0,"cg/st/3d�Х���_����_���L.png");
	FadeStC(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ʿ������ʯ��һָ��
�����Ƕ����ҡ���

������
��ɽׯ���ڵķ���

����Ĭ������˼�����Ҳ�����ˡ�
��
�����������<RUBY text="��������">����ĥ��</RUBY>�Ļ������Ȱ��Ǳ�
����ʰ����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/0320110a00">
����Ȼ����Ϊɱ�����ξ������׷���𣡡�


{	FwL("cg/fw/fw�Х���_ͨ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0320120a03">
��������


{	FwL("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320130a00">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ɲ�Ǽ䣬ƽ���ȴ��������ľ���ʧ����Ӱ���١�
��ȡ����֮�ģ��Ƿ��ڵļ�����о�������С�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/0320140a00">
��������
�����һ�Ρ����������Ұɡ���


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320150a00">
�����һ�������ò����������ˡ���


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0320160a01">
����������


{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0320170a00">
�������ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������ɱ�������ξ��

��Ҳ����������������ˣ�<RUBY text="����">����</RUBY>ɱ����

���������ʿս����

�����������
��ɱ����������ʿ��

��ս��!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ���_ʼ
	SetVolume("@mbgm*", 500, 0, null);
	SoundPlay("@mbgm10",0,1000,true);


	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("�ե�", 300, 1000, null, true);

	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�ե�", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg092_ɭ�ε�a_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	Delete("�ϱ���");
	FadeDelete("�ե�*", 1600, true);


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/bg022_ɽ��a_01.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//	DrawEffect("�}�ݷ���/�}�ݱ���", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -220, "cg/st/resize/st����_װ��_˽��aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}��ܞ", 500, true);

	Wait(300);

	Move("�}�ݷ���/�}�ݱ���", 600, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @-200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	SetFwL("cg/fw/fw����_���L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc04/0320180a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -140, -220, "cg/st/resize/st����_װ��_˽��bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 3, 500, 70, false);

	OnSE("se���L_����_�z_���02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�}�ݷ���/�}���}", 200, 0, null, false);
	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("�}��д", 20000);
	Delete("�}�ݷ�*");
	Delete("�}ɫ*");
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	Zoom("�}��д", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}��д", 300, true);

	SetFwL("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc04/0320190a00">
������֮�������ڴˣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ס������`��


//	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

/*
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Fade("�ե�", 300, 1000, null, true);


	DeleteStA(0,true);

	StR(1000, @0,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	StL(1000, @0,@0,"cg/st/3d�Х���_����_ͨ��.png");
	FadeStL(0,true);
	FadeStR(0,true);

*/

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/st/resize/3d�����˜�_����_ͨ��l.png");
	Move("�}����100", 0, -563, -569, null, true);

	Move("�}����100", 2000, -563, -539, null, false);
	Fade("�}�ե�", 500, 0, null, true);

	WaitKey(1000);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}����100");
	Delete("�}����100");

	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureSP("�}�ݷ���/�}����", 4100, -235, -152, "cg/bg/bg092_ɭ�ε�a_01.jpg");
	Zoom("�}�ݷ���/�}����", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}����", HEAVY);
	CreateTextureSP("�}�ݷ���/�}����100", 4200, Center, Middle, "cg/st/resize/3d�����˜�_����_ͨ��m.png");
	Move("�}�ݷ���/�}����100", 0, -35, -354, null, true);

	CreateTextureSP("�}����200", 3100, Center, Middle, "cg/st/resize/3d�Х���_����_ͨ��l.png");
	Move("�}����200", 0, -1069, -917, null, true);
	CreateTextureSP("�}����", 3000, -385, -300, "cg/bg/bg092_ɭ�ε�a_01.jpg");
	Zoom("�}����", 0, 2000, 2000, null, true);
	SetShade("�}����", HEAVY);


	Move("�}����200", 3000, -1069, -867, Dxl2, false);
	Move("�}�ݷ���/�}����100", 3000, -35, -404, Dxl2, false);
	Move("�}�ݷ���/�}����", 3000, @0, @60, Dxl2, false);
	Move("�}����", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d�����˜�_����_ͨ��.png");
//	FadeStR(0,true);

	OnSE("se���L_����_������02",1000);
	OnSE("se���L_����_������03",1000);

	FadeDelete("�}�ե�", 1000, true);

	Wait(300);

//	FadeDelete("�ե�", 2000, true);
	WaitKey(500);

//�������ϕN
//���Х����ϕN

	CreateSE("SE03","se���L_����_���ϕN01");
	OnSE("se���L_����_��ͻ�M02", 1000);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorSP("��Ļ��", 30000, "WHITE");
	DrawTransition("��Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

/*

	DrawDelete("@StR*", 150, 100, "slide_02_01_0", false);
	DrawDelete("@StL*", 150, 100, "slide_02_01_0", false);

	CreateColorSP("�}�\", 1, "#CC0000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/beam_04_00_1.png", true);
	CreateTextureSP("tobu", 1000, 0, -500, "cg/ef/resize/ef020_����ͻ؞02tl.jpg");
	Request("tobu", Smoothing);
	SetBlur("tobu", true, 3, 500, 50, false);
	Zoom("tobu", 0, 2000, 2000, null, true);
	DrawDelete("�}�\", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("tobu", 600, @0, -1200, DxlAuto, false);
	Zoom("tobu", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("tobu", 4000, @0, -580, DxlAuto, true);



*/

//	ClearWaitAll(1000, 500);



}

..//������ָ��
//�Υե����롡"mc04_033vs.nss"