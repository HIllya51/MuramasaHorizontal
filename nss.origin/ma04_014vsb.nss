
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_014vsb.nss_MAIN
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
	if($ma04_014vsb_routeFlag==true){$ma04_014vsb_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_015vs.nss";

}

scene ma04_014vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_014vs.nss"

	SoundPlay("@mbgm12",0,1000,true);

//���۸�ˏؤ���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Һݺݶ���һ�µ��档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`���ߤ롣
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPmul("�}��", 1010, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateColorSP("�}��ɫ", 1000, "#339900");

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������Լ��ػش���
��ȡ����������ı���

�����ռƻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5920a01">
��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5930a00">
���Ҵ�Ӧ����
���������ʩ��Ԯ�֡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5940a00">
���������������Ҳ������������������������
�ȳ��������ˡ�
���Ҵ�Ӧ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������һ����
������λ��Ů��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSPmul("�}��", 1010, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateColorSP("�}��ɫ", 1000, "#006600");

	DrawDelete("�}�\Ļ", 150, 100, "circle_02_00_1", true);

	CreateWindow("�}��", 19000, 0, 72, 1024, 144, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 10010, "#990000");
	CreateTextureSPmul("�}��/�}����", 10110, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateTextureEX("�}��/�}����", 11010, Center, -300, "cg/st/3d�����˜�_�T��_��xb.png");
	Fade("�}��/�}����", 0, 1000, null, true);
	Move("�}��/�}����", 450, -280, @0, Dxl2, false);

	CreateSE("SE02","se����_����_���S03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	Wait(150);

	Move("�}��/�}����", 16000, -370, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ӵ����һ�����ǵ���һ�����ǣ�ȡ��̾�����С�
�������޷����ϡ�

�������жϵ�Դ֮ǰ��
���ڻ�Ϯ����һ����

������������֪������
������ֻ���д������׵�һ�����ܳ���ס�����Ŀ����Բ���
�ڷ�֮һ��

����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}����", 19000, 0, 360, 1024, 144, false);
	SetAlias("�}����","�}����");
	Zoom("�}����", 0, 1000, 0, null, true);
	CreateColorSP("�}����/�}��ɫ", 10010, "#3300CC");
	CreateTextureSPmul("�}����/�}����", 10110, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureEX("�}����/�}һ��", 11010, Center, 160, "cg/ev/resize/evexһ��_���x.png");
	Request("�}����/�}һ��", Smoothing);
	Rotate("�}����/�}һ��", 0, @0, @180, @0, null,true);

	Fade("�}����/�}һ��", 0, 1000, null, true);
	Move("�}����/�}һ��", 450, 460, @0, Dxl2, false);

	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 300, 1000, 1000, Dxl2, true);

	Wait(150);

	Move("�}����/�}һ��", 16000, 550, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0054]
������ôһ˲��������ľ�ļ�϶������������Ĩ��Ӱ��
�������������Ҳ������������Ů��

��������λ�ÿ������ҡ�
�������������߲���������

��Ȼ��һ��ȴ�����ҡ�

��������������Ρ�

�������Ҳ���ȥ��������
�������һ�����Ӷ����ȡ�

��ȫ��ȫ��������һ�̤������ʬ�����˹�������Ѫ��
�ȳ����������������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}��/�}����", 600, -2048, @0, Axl3, false);
	Move("�}����/�}һ��", 600, 2048, @0, Axl3, false);

	Wait(200);

	Zoom("�}��", 600, 1000, 0, DxlAuto, false);
	Zoom("�}����", 600, 1000, 0, DxlAuto, true);
	Delete("�}��");
	Delete("�}����");

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5950a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSPmul("�}��", 1010, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateColorSP("�}��ɫ", 1000, "#339900");

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_0", true);

	CreateSE("SE01b","se����_����_���S01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSPmul("�}��", 1010, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateColorSP("�}��ɫ", 1000, "#006600");

	DrawDelete("�}�\Ļ", 150, 100, "circle_02_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ջ�Ŀ�⣬�ɱ�������
��������Ŀ�����߹����һ�̡�����֪����ʹ��������
��ν������Ҳ�Ƕ���һƬ����ı��ѡ�

��һ����ǰ��
���������������ģ�һ����ǰ��

������ס��˫����<RUBY text="����">�ٴ�</RUBY>������������������������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh�ӣš��R���
	CreateSEEX("SE01","se���L_��҆��_����02_L");
	MusicStart("SE01",0,1000,0,500,null,true);
	SetFrequency("SE01", 3000, 1000, DxlAuto);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5960a02">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5970a00">
��һ��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ѩ`�󡣰k��Ͳ��
//���ۥ磻�ȥ�����
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se���L_����_�k��Ͳ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 100, 1000, Axl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5980a00">
�������̣���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5990a00">
��������
��������˭?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs6000a01">
����������֪����
���ڵر�̽����ܲ��ܳ�ַ��ӡ�����

//��������
<voice name="����" class="��������" src="voice/ma04/014vs6010a01">
������������Щ����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs6020a00">
�������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����Ȼ״����ȫ������������ǧ���ѷ�ĺû��ᣡ
��ֻҪ����Ļ�ڱι���������ڼ䣬һ���������������

���Ѿ�û�б�Ҫ������ء�
�������ַɳ�����Ŀ��ص�ֱ��ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateColorSPadd("�}��ܞ", 10000, "#FFFFFF");
	CreateTextureEX("�}�ݣӣ�", 1000, 135, -300, "cg/st/3d�����˜�_�T��_ͨ��.png");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 1000, false);
	Fade("�}�ݣӣ�", 300, 1000, null, false);
	Move("�}�ݣӣ�", 1000, @-10, @-30, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����Ǹ���
���Ǹ�ϸ�ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
//���ء�
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01b","se���L_����_Ұ̫�����02");

	CreateSE("SE01a","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�ݣӣ�", 300, @-300, @0, Dxl2, false);

	Wait(100);

	MusicStart("SE01b",0,1000,0,1500,null,false);
	Fade("�}ɫ�\", 100, 1000, null, true);
	SL_leftup2(5010,@0, @0,2000);
	SL_leftupfade2(10);

	CreateSE("SE01c","se���L_��҆��_ܞ��01");
	MusicStart("SE01c",0,1000,0,1500,null,false);
	CreateColorSPadd("�}ɫ��", 6000, "#FFFFFF");
	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);

	Delete("�}�ݣӣ�");
	Delete("�}ɫ�\");

	FadeDelete("�}ɫ��", 100, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("�}��*", 150, -615, @0, Dxl2, false);

	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ն���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("�}ɫ�\", 15000, "#000000");

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs6030a12">
����ѽ����Ư������
����Ȼ��Ư����ն��<RUBY text="�����ĥ��">����ƿ</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ѩ܇��T
	PrintGO("�ϱ���", 30000);
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݣӣ�", 100, Center, Middle, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
	Move("�}�ݣӣ�", 0, @0, @-72, null, true);
	Zoom("�}�ݣӣ�", 0, 200, 200, null, true);
	SetBlur("�}�ݣӣ�", true, 3, 500, 50, false);
	Request("�}�ݣӣ�", Smoothing);
	Move("�}�ݣӣ�", 600, @0, @-20, DxlAuto, false);
	Fade("�}�ݣӣ�", 600, 1000, null, true);

	SetFwL("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150a]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs6040a12">
���Ǿ������Ǽ����ɡ�
��������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150b]
//��������
<voice name="����" class="����" src="voice/ma04/014vs6050a00">
��ʲô����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
//��һ�ϴ���Ϥ������������`��
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE01a","se���L_����_Ұ̫�����02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}�ݣӣ�", 400, 1500, 1500, Axl2, false);
	Move("�}�ݣӣ�", 100, @0, @-20, null, true);
	Move("�}�ݣӣ�", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("�}ɫ�\", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se���L_����_��ꪏ���02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ԫ", 10020, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("�}��", 10030);
	Zoom("�}��", 0, 1250, 1250, null, true);
	SetBlur("�}��", true, 3, 500, 200, false);
	FadeDelete("�}��", 800, false);
	Shake("�}��", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

//��һ���øжȣ���
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_014vsb_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

}

..//������ָ��
//�Υե����롡"ma04_015vs.nss"
