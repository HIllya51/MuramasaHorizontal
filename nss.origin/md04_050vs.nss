//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_050vs.nss_MAIN
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
	#bg001_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_051.nss";

}

scene md04_050vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_049vs.nss"


//��ͬ��؞�F���

/*
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	OnBG(100, "bg002_��a_02.jpg");
	Request("OnBG", Smoothing);
	SoundPlay("@mbgm12", 0, 1000, true);
	FadeBG(0, false);
	Delete("�ϱ���");

	DrawTransition("�\Ļ��", 100, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("�}�ӣԣ�100", 1500, Center, @-300, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}�ӣԣ�100", Smoothing);

	Zoom("�}�ӣԣ�100", 0, 100, 100, null, false);
	SetBlur("�}�ӣԣ�100", true, 2, 500, 50, false);
	Zoom("@OnBG*", 500, 1000, 1000, null, false);
	Zoom("�}�ӣԣ�100", 500, 3000, 3000, null, false);
	Fade("�}�ӣԣ�100", 250, 1000, null, true);
	FadeDelete("�}�ӣԣ�100",250,false);

*/


	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm12",0,1000,true);
	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M02");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE10","se���L_����_��ͻ�M05");
	CreateSE("SE11","se���L_����_��ͻ�M05");


	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
//	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
//	Request("�}�ݥХ���", Smoothing);
//	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Rotate("�}�ݴ���*", 0, @0, @0, @20, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);
//	Zoom("�}�ݥХ���", 0, 5, 5, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
//	SetBlur("�}�ݥХ���", true, 1, 300, 70, false);

//	Move("�}�ݴ���", 0, -500, -200, null, true);
//	Move("�}�ݥХ���", 0, 77,-413, null, true);
	Move("�}�ݴ���", 0, 177,-213, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("�ץ�����", Start);

	Move("�}����100", 3000, @0, @-200, Axl1, false);
	FadeDelete("�ϱ���", 1000, true);

	SetVolume("SE10", 800, 1000, null);
//	Shake("�}�ݥХ���", 2000, 0, 1, 0, 0, 1000, Axl2, false);
//	Rotate("�}�ݥХ���", 1100, @0, @0, @-90, Axl2,false);
//	Zoom("�}�ݥХ���", 1100, 6500, 6500, Axl3, false);
//	BezierMove("�}�ݥХ���", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
//	Fade("�}�ݥХ���", 300, 1000, null, false);


//	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
//	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("�}�ݴ���", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("�}�ݴ���", 1100, @0, @0, @-30, Axl3,false);
	Zoom("�}�ݴ���", 1100, 5000, 5000, Axl3, false);
	BezierMove("�}�ݴ���", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

//	SetVolume("SE11", 800, 1000, null);
//	Shake("�}����100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

//	Fade("�}�ݥХ���", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("�}�ݴ���", 100, 0, null, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);
	Delete("�ץ�����");
	Delete("�}����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");


	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);
	DrawTransition("�}ɫ200", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Wait(500);

	OnSE("se����_�z_װ��04",1000);


	CreateWindow("����", 5500, 0, 0, 276, 576, true);
	SetAlias("����","����");
	Fade("����", 0, 0, null, true);
	Move("����", 0, @658, @0, null, true);
	CreateTextureSP("����/�µ�", 5500, @0, 0, "cg/bg/bg002_��a_02.jpg");
	Fade("����", 0, 1000, null, true);
	CreateTextureSP("����/�}�ңӣ�", 5510, @-278, @-457, "cg/st/3dͬ��؞_����_ͨ��.png");
	Move("����/�}�ңӣ�", 600, @0, @-30, DxlAuto, false);

	CreateColorEX("�}�\Ļ", 1000, "BLACK");
	Fade("�}�\Ļ", 300, 500, null, false);
	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0010a09">
��ƶɮ�������޹źӹ�����
������������н����ε�����ͯ�ġ�
�����Ű���֮���ǳ��֣�
�㲻�������Ѹ�ð��ǰ���ʺ򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("����", 5500, 80, 0, 276, 576, true);
	SetAlias("����","����");
	CreateTextureEX("����/�µ�", 4500, @0, @0, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEX("����/�}��ӣ�", 4510, @-300, @0, "cg/st/3d�y�Ǻ�_����_���L.png");
	Fade("����*", 0, 1000, null, false);
	Move("����/�}��ӣ�", 600, @-60, @0, Dxl3, false);
	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);


	SetFwC("cg/fw/fw��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0020a14">
��ԭ���������Ĺź��н����ˣ�
������ʧ���Ҿ�һʱ�������ϳ����ˡ���

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0030a09">
��Ŷ�����ƶɮ����Ϊ˭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0040a14">
����������Щ��ͣ�����ȴ�����ݡ�
������Ϊ�����ǻ��Ҳ��������

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0050a09">
������������
�����ҵ����ҵ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0060a09">
��û�뵽���ǺŴ������̧��ƶɮ����

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0070a14">
���Ҳ�ϲ��ά�ˡ�
����˵Ϊ�˹���Բ�����˼ʹ�ϵ���ķ����
ʱ�Ǳ�Ҫ�ģ������ղſɲ���Ŷ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0080a09">
����Ǹ��Ǹ��
��ƶɮ�⻨���в�ϰ�߱��˰����������������
�������ˡ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0090a14">
����Ȼ����ұ㲻�ٶ�˵�ˡ�
����ô���ʹź��н�������ʲô���𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0100a09">
������
��ƶɮ������һ�����⡣��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0110a09">
������Ϊ�������ѣ�Ҳȷʵ����������ֻ���
���ǺŴ��ˡ�
������������Ϊ�Σ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0120a14">
���������Ĵ𰸺ܼ򵥡���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0130a14">
�����²���!!��

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0140a09">
��Ŷ����
������ϣ��ƾ��������������֮���𣿡�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0150a14">
�����ǡ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0160a14">
������ȷ�����֮�������´��
�����մ˷��������˶��䣬�Ӷ��ﵽ����
���ҵ�Ը������

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0170a09">
����ȷ�����֮��ָ���ǣ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0180a14">
��ɱ����
��������
���׷���
��ף������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0190a14">
��Ѱ����֡�ս������ʤ��ɱ����
��Ѱ����֡�ս������ܡ���ɱ����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0200a14">
��Ȼ����ʤ����������ǿ��һ�ˣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0210a09">
���������š���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0220a09">
��������

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0230a09">
����ȫ��ƶɮ�۷���
����������˷�������������������ʿ��
������ʵ��ͳ�����أ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0240a09">
���������Ϊ����ɱ�����ڣ�<RUBY text="����">���</RUBY>��������ɱ��
��Ҫ׼ȷ�����׷�������������ѭ����Ӷ�
����������֮�������������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0250a14">
��ȷʵ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0260a09">
�����������ȷ���ڣ��������������������
���������������ƽ����Ӧ�����ȫ�����𡣡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0270a09">
��ѽ���ǳ�������
������α�ƽ��λ������ۣ�ʲô��û�У���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0280a09">
��ͯ�ĺ��������óϷ�����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0290a14">
����ô�����Ǹ���Σ�
���ź��н����ˡ���

//���⡿
<voice name="��" class="��" src="voice/md04/050vs0300a14">
�����ڴ˴���������<RUBY text="����">����</RUBY>���������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0310a09">
����
���������Ψ���������ȷ֮���ˡ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0320a14">
�������������������������Ц��
��ԭ����������˴���İɡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0330a09">
���Ǻǡ�����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/050vs0340a14">
�����ɣ�
����������������һ��ʤ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�
	CreateColorSP("�\Ļ��", 20000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 1000, null, "cg/data/slide_01_02_0.png", true);
	FadeDelete("��*", 0, false);
	FadeDelete("�}*", 0, false);
	CreateTextureSP("�}�ݿ����}", 1200, Center,-380, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�ݿ����}", Smoothing);
	Zoom("�}�ݿ����}", 0, 600, 600, null, true);

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, false);

	OnSE("se���L_����_������03",1000);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�\Ļ��");

	Wait(500);

	SetFwR("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0350a09">
����ô��

{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0360a09">
��������λ��������������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0370a09">
����´�ʦͯ�ĺ����ң�Ҳ���ڵ��˻��˵�ʱ��
�ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͬ��؞
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	CreateTextureSP("�}�ݿ����}", 1200, Center, @0, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, false);

	Move("�}�ݿ����}", 10000, @0, @-200, Dxl3, false);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);


	SetFwL("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0380a09">
�����ǣ���

{	FwL("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/050vs0390a09">
��Ƿ�˲������ŷ���ƶɮ�������֮����
�����붯���ˣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���y�Ǻţ֣�ͬ��؞
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	OnSE("se���L_����_��ͻ�M01",1000);

	Zoom("�}�ݿ����}", 500, 2000, 2000, Axl2, false);
	Fade("�}ɫ100", 500, 1000, null, true);
	Delete("�}�ݿ����}");
	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/resize/3d�y�Ǻ�_�T��_ͨ��2ex.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Rotate("�}�ݴ���*", 0, @0, @0, @20, null,true);
	Zoom("�}�ݴ���*", 0, 1500, 1500, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 100, false);
	SetBlur("�}�ݥХ���", true, 2, 300, 70, false);

	Move("�}�ݥХ���", 0, @300, @-60, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	$�����ʥå����� = @�}�ݴ���;
	$�����ʥå����� = @�}�ݥХ���;
	CreateProcess("�ץ�����", 150, 0, 0, "RotateLoop");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@300,@0,null,false);


	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",1000,1000,0,1200,null,true);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);



	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�}ɫ100", 500, false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Move("�}����100", 3000, @0, @-300, Axl2, false);
	Shake("�}����100", 3000, 5, 2, 0, 0, 800, null, false);
	Move("�}�ݥХ���", 3000, -100, @0, Axl3, false);
	BezierMove("�}�ݴ���*", 3000, (-2500,-200){-2260,-300}{-2340,-400}(-2260,-320){-2350,-300}{-2400,-600}(-2200,-300){-2220,-200}{-2320,-310}(-2000,-250), null, false);
	Zoom("�}�ݥХ���", 3000, 300, 300, Axl3, false);
	Zoom("�}�ݴ���*", 3000, 600, 600, Axl2, 2700);


	Fade("�}�ݴ�����", 200, 0, null, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SetVolume("SE10", 0, 500, null);
	SetFrequency("SE10", 0, 200, null);
	Delete("�ץ�����");
	Delete("�ץ�����");
	CloudZoomDelete(0,true);
	Delete("�}����������");

	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/resize/3d�y�Ǻ�_�T��_ͨ��2ex.png");
	Move("�}�ݴ���", 0, -2000,-250, null, true);
	Zoom("�}�ݴ���", 0, 600, 600, null, true);


	Rotate("$�����ʥå�����", 0, @0, @0, 5, AxlDxl,false);
	Rotate("$�����ʥå�����", 00, @0, @0, 0, AxlDxl,false);
	Fade("�}�����ݤ�", 300, 1000, null, false);
	Fade("�}ɫ200", 300, 300, null, false);
	Move("�}����100", 10000, @0, @-100, Dxl2, false);
	Rotate("$�����ʥå�����", 8000, @0, @0, 10, null,false);
	Rotate("$�����ʥå�����", 8000, @0, @0, -10, null,false);
	Zoom("�}�����ݤ�", 10000, 2000, 2000, Dxl2, false);
	Move("�}�ݥХ���", 10000, @-30, @0, Dxl2, false);
	Zoom("�}�ݥХ���", 10000, 350, 350, Dxl2, false);
	Move("�}�ݴ���", 10000, @30, @0, Dxl2, false);
	Zoom("�}�ݴ���", 10000, 550, 550, Dxl2, false);

	Wait(500);

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md04_051.nss"