//<continuation number="1710">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_011.nss_MAIN
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
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�\��ͯ��=true;

	$PreGameName = $GameName;

	$GameName = "mb03_012.nss";

}

scene mb03_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_010.nss"

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	Wait(500);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110010a10">
������׼ȷ������
���𳤡���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110020a11">
�������ǳ��ź����鱨����
������ͨ������;���õ��ġ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110030a11">
����˵С��������������׼�����ģ�ľ�����
������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110040a10">
����Ŀ���ǡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110050a11">
��Ŀǰ��û�й�����
������������״�������ǡ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110060a10">
��ȷ�������ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110070a11">
�����������������ڻ���ʱ����׼����
��������Ϊ�޷������ҷ���ս�����ɡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110080a11">
��������Ͼ��ȡĳЩ�Բߡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110090a10">
��������ˡ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110100a11">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110110a10">
��������
�������Ѿ��˰ɡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110120a11">
��������������������ܡ�
������Է���Ļ����Ҳ������
ðȻ�����ʹ����ذɡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110130a11">
���һᾡ�찲�����뿪���֡�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110140a10">
���ⲻ�װɣ�
���ճء�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110150a11">
�����������¡���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110160a10">
������ʹ������������޶�ɽ����֮�ա�
�����������к����𡭡���


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110170a10">
����ͬ��ʬ���⣬ȴ������͵�����εȱ��ӡ�
����ı����֮�ˣ�����������Ҳ�������𡣡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110180a11">
�����ǡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110190a10">
������֪����Ϊ�߳ܡ�
�������Ҳ������ɡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110200a10">
������ս��֮�ϣ��ҵȲ���ɥʧ�����Ե��ߣ�
�ѵ�������Ϊ�����д���
���԰ɡ�������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110210a11">
�������¡�����


{	SetVolume("@mbgm*", 100, 1, null);
	NwC("cg/fw/nw������.png");}
//������㣯ʮ�ܣ���
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0110220e111">
���þ���
���Ǿ;���ӭ������֮���ɡ�
�������������¡���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110230a11">
��ʲ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110240a10">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������á�����һ�T�ǈ������\��ɫ�`����
//�����ä����������ݳ�������
	SoundPlay("@mbgm09",0,1000,true);
	CreateSE("SE01","se���L_����_ͻ�M01");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}�ݱ���", 3100, InRight, Middle, "cg/bg/resize/bg032_��ᦌm�������b_03al.jpg");
	Move("�}�ݱ���", 0, @0, @-150, null, true);


//��������ݳ�����Ӱ�ˤ��뤫Ӱ�ˤ��뤫�����Фʤ꡹
//	CreateTextureSP("�}�����}", 4000, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��c.png");
	CreateStencil("�ޥ���",4010,center,InBottom,128,"cg/st/3d����ʽ�o�T��_����_ͨ��c.png",false);
	SetAlias("�ޥ���","�ޥ���");
	CreateColorSP("�ޥ���/ɫ�\", 4020, "#000000");
	SetBlur("�}�ݱ���", true, 3, 300, 70, false);
	SetBlur("�ޥ���", true, 3, 300, 70, false);
	Move("�}�����}", 0, @-766, @0, null, true);
	Move("�ޥ���", 0, @-766, @0, null, true);

//�����ߣ����å��ݳ�
	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/resize/bg032_��ᦌm�������b_03al.jpg");
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, -150, -200, "cg/st/resize/3d����ʽ�o�T��_����_ͨ��.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
//	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);


	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_1", false);
	Move("�}�����}", 1000, @612, @0, DxlAuto, false);
	Move("�ޥ���", 1000, @612, @0, DxlAuto, false);
	Move("�}�ݱ���", 1000, @612, @0, DxlAuto, true);


	Wait(1500);

	Fade("�}�ݷ���/�}�ݱ���", 1000, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 1000, 1000, null, true);


	SetNwR("cg/fw/nwС��ʮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ʮ�ܣ���
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0110250e111">
���ǺǺǡ�������С��ʮ��֮һ��
���˳�����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W���Щ`��
	SetVolume("@mbgm09", 100, 0, null);
	CreateSE("SE01","se���L_����_���̤���03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ݔ�", 17000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}�ݔ�", 0, 1100, 1100, null, true);
	Request("�}�ݔ�", Smoothing);
	Shake("�}�ݔ�", 300, 0, 4, 0, 0, 1000, DxlAuto, true);
	Delete("�}�����}");
	Delete("�}�ݱ���");
	Delete("�}�ݷ���*");
	Delete("�ޥ���*");

	StL(1000, @0, @0,"cg/st/3d����ʽ�o�T��_����_ͨ��c.png");
	FadeStA(0,true);

	Wait(200);
	Delete("�}�ݔ�");

	SetNwC("cg/fw/nwС��ʮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯ʮ�ܣ���
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0110260e111">
��ѽ��������������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	CreateTextureEX("�}����", 150, Center, Middle, "cg/bg/bg032_��ᦌm�������b_01.jpg");
	CreateSE("SE01b","se���L_�n��_�zܞ��01");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-10, @60, null, false);
	DeleteStL(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}����", 0, 600, null, true);
	Shake("�}����", 200, 0, 4, 0, 0, 1000, Dxl2, true);
	Delete("�}����");

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110270a02">
��������޷�����
����Ϳ͸������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110280a10">
��һ�������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110290a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ����̫���ջ������ڣ�Ų�����µ�ʬ�壬̤�����ڡ�
����Ҳ��������ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110300a10">
�������������ð�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110310a00">
�����ź�Σ���𣿡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110320a11">
���ǰ���
���Ǹ����ˣ�˵��С�����ˡ�����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110330a11">
�����ǽ��׵����ŵĴ̿͡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110340a00">
��������ô������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110350a11">
��Ҳ���鱨˵�����ж�����׼���С�
��������˵���Ѿ��������ҵȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���Ҳ��ɵô����Դ���

��������̬�ݱ�������������ơ�
���������ˡ�

�����Ѿ����Ķ��Լ���ɵĺ���е����Ρ�
���������ǣ�����ƾ��һ���޷������

���������������⼸���ˣ������ٱ��뱣֤���ǵ�����
��ȫ����
��������������̧����ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb03/0110360a00">
�������������ǾͿ̲��ݻ��ˡ�
�������£�����������������׼�����ɱ���
�������𱣻�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110370a10">
��������ô˵���Һܸ��ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110380a11">
������������
�������´������ڴ˴�����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110390a00">
������Ϊ�Σ���


{	FwC("cg/fw/fw�H��_����.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110400a10">
�����밡�������ô�Ҳ���ǵ���һ��ɣ�
���޷��ڹ�����ǰ������˿ɳ��о�������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110410a10">
������Ҫ��ʼ���ա�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110420a00">
���𳤣���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110430a11">
����ҲȰ���������롣
����������������Ϊ���˾���ζ����ҫ��ɥʧ����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110440a11">
�������ص��µ���˼��
������Ŀ����������ȥ��������ѳְ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110450a00">
������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110460a10">
����Ȼ�����������ǲ��������ҡ�
���𳤣���Ҳ�ǡ������Ѿ�Ϊ�����Ĺ����ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110470a11">
���ǰ������ɵ������Σ�Ч������
������������������֮ʱ���Ҹ�Ҫ���������
�ҡ����������ǲ���Ź��ҵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110480a00">
����Ҳ�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����٣�����������޶ȵ����Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110490a10">
�����а���
���㻹�и������°ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110500a00">
�����������¡���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110510a11">
�����Ǻŵ��°������ˡ�
������ֹ����ֻ���㣬��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110520a00">
���𳤡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ͷ��
�����ص�������ѹ�����Դ�һ����ľ���

���ѵ���ʲôҲ��������

��֮���Իᵼ�´˷���̬���������ʲ����������ҡ�
�������ʱ������ȷ���߾��ܸı������֡�

��Ȼ�����˿̵���ȴʲôҲ��������
��ֻ��������

���ݻ����Ǻţ�Ϊ��������ʹ����
����ȷʵ���ҵ����񣬲�ϧһ�д��۱�����ɵ�ʹ����

�����ǡ���
��������ˣ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110530a02">
�������߰ɣ��ն���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110540a00">
��һ��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110550a02">
��ȥ���ܡ�
��ȥɱ��С���������׵�����


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110560a00">
������!?��


{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110570a10">
����������


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110580a11">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110590a02">
������Ҫ�ȷ����ˡ�
���ڱ�ɱ֮ǰɱ�˶Է�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110600a02">
�������������ⶼ�ܽ���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110610a00">
������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110620a10">
�����䡭����ô˵����
�����ǣ��⡭����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110630a11">
����������˾��ܹ��ɹ�Ҳ�޼����¡�
�������������㴨��ܥԽ������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110640a02">
���ǾͰ�����Ҳɱ�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110650a00">
��һ������


{	SoundPlay("@mbgm17",0,1000,true);
	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110660a02">
������Ҫ���������ޡ�
��<RUBY text="��������������">��Ϊ�����Ƕ���</RUBY>����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110670a02">
��������Ⱥ������������������Ϊ��������
�����ǣ�����������û������ѡ��
������ֻ�Ǳȼƻ���΢��ǰ��һ����ѡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110680a02">
���������ǣ�Ȼ�����½���һ������Ĺ��ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110690a10">
����������
������һ���������������ͻ��ɽ�פ������
��Ŷ����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110700a02">
������û��
����Ⱥ�һ�Ҳ��Ѵ�ͱ������֮��ɡ�����
�Ż����������������Ϊ������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110710a02">
����ô���Ͱ����Ǹϳ�������ҡ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110720a11">
��������


{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110730a10">
�������⡭��
���⣬�ǲ��ǣ���Щ������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110740a02">
�����������ġ�
�����˽��˹źӹ�������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110750a02">
�������϶�û������Ϊ����¿��Գ��档
�������������ˡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110760a02">
�����ԣ��������С�
��<RUBY text="������������������">���������������</RUBY>����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110770a02">
������ǰ�����ն�ݳ�������
���Ѿ��������޿��κΡ��޼ƿ�ʩ��Ϊ���ɷ�
�������ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110780a02">
��ֻҪ���Һ����ڡ������дն�������
���;��Բ�������κ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������������������
����ɱ�����еķ�����

�������Զԡ�
�����л���˵��Ӧ���С���Ϊ��Ů�⼫����ı��������
��˵Щʲô��

����ȴ˵�����ڡ�
���ұ�����������ѹ������������Ҳ��ͬС��ɡ�

������һ�����������յ�����
��Ҳ���������Ǹ���ɱ�˵Ŀ־���������������

����������ֻӵ����־��
��ֻӵ����־��Ҫ�᳹���塣ֻӵ����־������ˡ�ñ�
����̤���ߵĶ��ˡ�

����ֻ����ͯ��ǳ��֮�ΰ��ˡ�
��û���κ���ʵ��������û��ʵ�������ֶΡ�

�������ڲ�ͬ�ˡ�

����ӵ�����š�
�������Լ���������а��

�����Ը��������Լ��ĵ����Ʋ�
����ǿ�﷨�����

�����ɹ��ַ�������ͯ�ġ�
������Ҳ������Խ��ɱ�˵Ŀ־塣

�������Ů���������
����Ϊ<RUBY text="������������">����ִ֮����</RUBY>��

����Ϊ���һ������������̬��
�����ڣ����ߵ�����һ�̡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb03/0110790a00">
������һ��������


{	NwC("cg/fw/nw������.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0110800b28">
�����������ڴ��ˡ�
������һϯ�������Ҳ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se����_����_һ�i",500);

	Wait(1000);
//���@��
	StL(1000, @-30, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mb03/0110810a00">
��ʲ����
������!?��


{	FwC("cg/fw/fwһ��_�@��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0110820a02">
��С��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������Բ��Ź¡�ӣ��С�㣡
����Ӧ�������������ֳ�֮�еġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110830a10">
������ӣ�ӹ��
�����˶��ˣ�����˵��λ�����ˡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110840a10">
����˵���������Ǻ���λ�������ֳ����н���
�˰ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110850a00">
���ǡ�����΢����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110860a10">
��ӣ��С���ţ�����������ҳɹ����Ӷ����ġ�
��֮��Ͷ�����������⽨���¡����Ǳ��ܵġ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110870a11">
����������ΪĻ���Ķ�ҡ������Ҳ���𽥱仯
�����ơ�
�����������Ҳ����һֻ�۱�һֻ���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0110880a00">
����Ȼ����
�����������ܴ���������ɹ����ӳ�������ʵ
���ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��С���ǲ�ϲ����ս�ҵĸ߹���ݡ�
����˵�ǳ������������ɧ�ҵĻ��ᣬ����Ȼ�������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0110890b28">
����������¡���
����û�к͹�������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110900a10">
���ţ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0110910b28">
��ͯ�ӣ����������


{	#voice_on_�\��ͯ��=true;
	NwC("cg/fw/nw������.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0110920b26">
���ǣ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\��ͯ��
//��ȫ���\�����ᡣ���L���`���٥����`
	StCL(900, @30, @0,"cg/st/st�\��_ͨ��_˽��.png");
	Move("@StML*", 0, @60, @0, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw�H��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110930a10">
�������⡢��λ�ǣ���


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0110940b26">
���ü����գ�����֮����
�����¸Բ�����֮�ӣ�
����ͯ����Ҳ����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0110950b28">
������ͬ����ĸ�ĵܵܡ���


{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0110960a10">
��˵ʲô!?
���������ǣ����ٴ��˵����ò��Ǳ�ն��ɱ��
���𡭡�����


{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0110970b26">
����Ϊ��ĸ����ݱ�΢����֮�������˵ļ��ۡ�
�����Ը���û�ж��⹫���ҵĴ��ڡ�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0110980b28">
��ֻ��֪��ͬ���س�����λ�����ŸԲ�Ѫ����
���ӡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0110990a11">
��������������޵�����ɱ¾��������


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111000b26">
��������ˡ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111010b28">
�������������������ʨ�Ӻ�ɱ��֮����λ
�ܼܵ�����ɢ�ڸ��ص��൳��
������һ����ҲǱ���������֡�����


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111020b26">
������ͯ�ı����������Ƿ����ж���������
�žȻ��˽�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������ԭ����ˣ�
���������ϣ���Ȼ���˺ܶ�ʱ������ظ��ӳ���������
������ȴû���⵽��������ŵ��Ա���һ���ɹ����룬
����Ե�ɡ���

��������ǵ������������ܵ�������ͬʱ����֮������
���˲��Ϲ��ƵĻ�����һ�ж���˵��ͨ�ˡ�
�������ڲ�֪�����У����ǻ�������˱˴ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111030b28">
���ҵ��ܹ�ȫ�����ӣ�������Ϊû���ǽƻ�����
����������
�����ڴ��ˣ����Եظ�л������


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111040b26">
���ǳ���л��
����Ȼ�ҵ�û�����ۿ���������˵�����ս����
������������


//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111050b26">
������������޳��ƽ���ɮ����
���ҳ�ֿ���������л�⣬��л��ɱ��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111060a02">
�������ǡ����š���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0111070a00">
�����������£���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111080a10">
���š�����������Щ�ģ����ҡ�
����Ϊ�������������и�����������ߺ���
��ͯ��һ��һ��ɱ������֪��֪����˭����


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111090a10">
��Ȼ���һش�˵�ǲ���һ������������أ�ӣ
��С���˵���ǲ����������ֳ�����Ϊһ�µ�
�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111100b28">
�����ǡ�
����Ϊ���ܾ����ǲ�����������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111110a10">
���Ҿ������ǲ���֪��Щʲô�ء���
���������ȫ�����������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0111120a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������������ǰ�����Ҳȷʵûʲô���ס�

������ϸ���Բ���λ�Ź¡�
��ӣ��С�����ǰ���޶��¡��������ⲻ���ܡ������
�Կ��⵽��������Ʒ���澳֮�����������Լ��߳���
ʹ֮��ļ�ǿ��

������λ����ͯ�ӣ�ȫ���������ڵľ�װ����ò����
�ֱ档
��������Ȼ��ӣ��С��ĵܵܣ����������ᡣ������
�������ƶ�ʮ�����Ұɡ�

����Ҳ�ڹ۲����ǡ�
����֮�����������ò���ҵ����˲��޺øС����ߴ���
ɨ��һ��֮�����ϴ��������ƿ��ˡ�

�����������λü����ֿ����Ů������̬�Ƚ�Ȼ��ͬ��
��һ��ʼ�㱧�о��⡣
�����ܿ���һ������ȫ�������ߵ�С����ģ�����Ϊ��
����ɡ�

����ƾ��СС���塪����¶��������̾�������������⡣
��˫��������һ�������ݵ�ɫ�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111130b28">
�����ڴ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111140b28">
����һ�����󡣡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111150a02">
������ʲô�£���


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111160b28">
���������ҵȸԲ�һ������������١�
���ҵȾ������Ϊ������׸����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111170a02">
������
���������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���ƺ���Ϊ��ȷ�ϣ�һ��������Ͷ���ҡ�
��������������һ����֪��

��������Ϊ��Ҳ�ڿ���ͬһ���¡�
���ǵ�С��Ӧ����һֱ����Լ����ܱ���սʵ������֮
�ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111180b28">
����ȷ��
��ƴ������ֻ������Բ�����������������
����˵������������Ҳ��˿���ı䡣��


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111190b28">
�����ԣ��ҵȲ��ٸԲ�֮�졭��
��ֻ�����������ڴ���ս�����ѡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111200a02">
�����ǡ�����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111210b28">
��������Ȼ���ţ��Ͳ����������Ρ��ҿ�ʼ��
�����ǡ�
��������ò���ԭ�£��Ǿͱ���ս�����ס���


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111220b28">
�������ޱ�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���Աϣ�ӣ��С�����ͫ�С���
�����ֳ��Լ�������Ʒ�������衣

�����ǲ�����ζ�Ž����ڸ��˵ĸ���֮�ġ�
����Ϊ�������������ô��������ͯ�ĵ���Ӧ��������
ʧ���١�

�������۾�͸���Լ������迴���˸���������ء�
��ӳ������Ұ֮�е��Ǵ�͹���֮�ϣ�����Ʒ������ͬ
����������֮�����ġ��������������̬��

�������һ�е���������Ļ����
��եȡ����ѹ��ɱ¾���������Ա�Ķ���������������
��ľ�����Ȩ��

����������ԭ�¡�
����������Ϊ�������ŵ���������֮Ů��������Ϊ�Բ�
ӣ�Ӹ���˵���˷����ۡ�

��Ҳ����˵�������һ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111230a02">
��С�㡭����


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111240b28">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111250a02">
������һ��Ŭ���ɡ�
��������������Ⱥ���ǡ���


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111260b28">
���ǣ���


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111270b26">
����ô�������ͬ����ϭ���١�
���Բ��ҵ��Ҵ�����������С��Ļ��������
�Ͽ����ټ��ܹ�ǧ���ˡ���


//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111280b26">
������Ҳ����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111290a11">
����������������
��³ç���£�ʤ�㲻�󡣡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111300a10">
�������źӹ����Ѿ������ˡ�
�������������С������Ҳ��ɥ��Ȫ������


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111310a10">
�����ܵ�Ļ�����Ӿͻ�Ⱥ����<RUBY text="��">��</RUBY>�ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111320a11">
�������£���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111330a10">
��������֮�й�����Ȩ���ǳ�ǿ�󡭡�
����֮��һ��ʧȥ�����������֯����һ��ɢ
ɳ����


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111340a10">
��ֻҪץס�źӺ�С����̨��ʱ������Ҫƾ��
ǧ�����ϯ���ܰ뵺���ǲ����ܡ�����


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111350b26">
��������νǧ�಻�������µ����֡�
��ֻҪ���·��ܣ�ӵ�������º���ȫ������


//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111360b26">
��˲Ϣ֮�䣬��ɼ�����������ɡ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111370a11">
������������


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111380b28">
����ô���Ͱ���������衭��
������ͯ���ټ�ͬ���������Ǹϸ����֡���


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111390b26">
���빬�����Ƽݷ��ܡ�
����֪��ȡ�׷�����Ĺ�˾�븸�׽������ܡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111400a02">
�������ڼ䡪��
������ն��������ַ�С���������׵�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111410a10">
��Ȼ�󣬹��¾����Ϲ�����Ԯ�ķ��ܰ뵺��
������������Σ����𳤡���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111420a11">
����������
����ƻ�����̫�����ˡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111430a10">
���ǰ���
����������ļƻ����ྶͥ������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111440a11">
�������������������˱���������
���Ѿ����˲����������������ľ����ˡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111450a11">
������������һ�е��������Ǿ�Ψ�л���ս
����ȥ�ˡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111460a10">
�����Բ��١���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111470a11">
�����˿��ǵ��ǽ�פ���Ķ��򡭡�
�����֪������ӵ���������µĻ����˼�����
����ģǣȣѻ��ֱ���Թ����������ǰɡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0111480a11">
���������н������ء���


{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111490a10">
���ܺúܺá�
�������������а�����


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111500b26">
���ǣ�
��һ���ɾʹ��塣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������θ������ݳ���������Ȥ��Ȥ�
//�����������܇줬�h�����롢�Ȥ����Ф���

	CreateSE("SE01","se�ճ�_����_�������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 4000);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, true);

	Wait(200);
	SetTone("�}��д", KitanoBlue);
	SetShade("�}��д", SEMIHEAVY);

	SetVolume("@mbgm*", 2000, 1, null);
	Fade("�}��д", 600, 1000, null, true);
	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������֡�
���ܾ���������֮����

����������ֵ�������
����֪Ϊ�Σ�����<RUBY text="����">����</RUBY>��ңԶ��

�������������һ����־֮�µĿռ��ڣ�ֻ���������š�

�������������������ߣ���Ȼ�䲶׽����Ŀ�ꡣ
����������ֹͣ�˺�������ʼ��Ӳ�Ĵ̿�ʬ�塣

�������ʵ��һ�����ϡ�
��������ԥ��̫��������

��һ���Ѿ�������ԥ�˰ɡ�
��û���������ս����

��ӣ��С�㡢����ͯ�ӡ��𳤡�������������������ˡ�
�����żᶨս������־��

��ֻ���ң�
��
��������ԥ��

��������������Ҫ��ԥ�ˡ�
��ֻҪ��һ���İ������Ҿ��ܴ�����������н�ų�����

��ʵ���ϣ���Ȼ������ͯ�����������������£����Ҳ�û
�����κ���������Ϊ���۵�������
��û��ɱ���κ�����֮�ˡ�

������£�����ؿ�ο���ҵ�����
��
��
����ô�����ⲻͦ����

�����׵�ʵ���������֮�ˡ�
�����翰�������޶��а���׵Ĵ���Űɱ֮ʱ��������
÷���н֣��Ż��������Ƭ���򣬶�ȥ�˰�����������
����ǧ��������

�����һ��˵���Ǹ���֮�ˣ�ֻ�ܱ�ʾͬ�⡣
�����Ա绤��Ҳ����绤��

���ǻ���ʲô������
����������һ�����Լ�����һ�ڹ�ͬս��֮�£����ڴ�
���һ��ڹ���ʲô�أ�

������Ϊս�������ܴ����һ���һ�Դ��
��������������������޵Ŀ��ƣ����ǣǣȣѵ�ռ�죬
Ҳ���������ܴ���һ�����ڹ�������Ĵ�Ͱɡ�

������ʲô������
��
�����෴��

������������
��ֵ�����ε�����ʹ��������

���Ǿ�Ϊ�˶�ս�ɡ�
�������������Ǻܺ���

����Ȼս�����̲�ֹ����Ȼ��ɱ���������
��<RUBY text="��������������������������">���Ѿ�������Ҫɱ������֮��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb03/0111510a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����֡�
����֡�
����֡�
����֡�

��ƫƫ����
��<RUBY text="������������">�벻ͨ��һ��</RUBY>ȴ�Ǻιʣ�

��Ī�������ȥ�޹��ߵ�������������ô���ܡ�
��ֻ���˫�ֻ�ӭ���������֮���ء�

�������ס�

������Ϊ�ι��ġ�
�����������ԥ��
��
�����Ƿ񡪡���ȴ��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	Fade("�}ɫ�\", 600, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���ǲ��ǡ�����ʲô��
��Ȱ�롭��ս���ľ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��
������������Ϊɱ�˵��ˣ������˽�ս����
�����������ˡ����෴��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	FadeDelete("�}ɫ�\", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����������˼�������顣
������ཻ֯��ײ�������е�ͷʹ��

��ÿ������ҪƽϢ��һ�С�
���ͻ�о���һ��ǿ���������

������ǣ���ҵ���ȥ��һ�������������
�����ҷ�����ԥ�������Ҽᶨ����־��

�����������ܵ���������ģ�һ������ֻ���ҡ�
��<RUBY text="��">��</RUBY>֮��������ˡ������������ϸ��ܵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 1000, null);
	FadeDelete("�}��д", 1000, true);

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111520b26">
�����ֶ�Ϊʲô�أ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111530a10">
�����֣���


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111540b26">
���ǵġ�
��������Ϊ�����õ�Ļ����������������
������Ҫһ����֮��������š�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb03/0111550b28">
����֮����
������Ҳ�����ټ����ڡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0111560a10">
�������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111570a02">
������
������Ҫʲô���֡���


{	FwC("cg/fw/fw�\��_�@��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111580b26">
��ʲô��
���������ǣ����ڴ��ˡ���


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111590a02">
��һ���������־ͻᱻ��������
��ͨ�����ֿ��Կ��Ȿ�ʡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111600a02">
���Ȼ������ֶ�������⣬Ҳ�������ֶ�����
���衣
�����Ը�������Ҫ���֡�ֻ��ս����ɡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111610a02">
�����ǲ�������ս���¡�
���������ޡ����פ�������������֮��ս������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111620a02">
��ֻҪ�����崫������˱�ɡ�
��ֻҪ�������˽����壬����ս���������˱�
�ɡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111630a02">
������Ҫ���֡�
��������������ս�����塣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��һ����û��������ߵ�������

�����ǣ������˶�Ϊ֮�𺳡�
��ÿ���˶�����������������

����λ��Ů������ָ�ɵ�ʥ�ߡ�
�����������������˵����

������ͯ�ӹ����ǰ��
������ȫ��������������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���\����
<voice name="�\��" class="�\��" src="voice/mb03/0111640b26">
��������Ȼ��ˣ�
���������ǳ��ҵ�Ϊ������֮�����ɡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����һ�ּ��ȼ��������������޳�����Ů�ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111650a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0111660b40">
��û��������ã�������
������ҫ����֮־�£��������ġ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0111670b40">
�����ж�<RUBY text="��">��</RUBY>һ˵����
�������Ტ��а��֮ͽ֮��Ȩ����


//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0111680b40">
�����弯�ᣬ��������ǿ�������������
��ֻҪ��ȳ�Ϊ��·֮�⣡��


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0111690a02">
�����ǡ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0111700a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0111710a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_012.nss"