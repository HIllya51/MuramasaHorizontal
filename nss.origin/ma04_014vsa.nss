
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_014vsa.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_014vsa.nss","MeimetuAction",true);
	Conquest("nss/ma04_014vsa.nss","MeimetuSET",true);

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
	if($ma04_014vsa_routeFlag==true){$ma04_014vsa_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_015vs.nss";

}

scene ma04_014vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_014vs.nss"

//��һ�����ؤ�
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//���w��
//����҆�¤�����˳���
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);
	WaitKey(300);

	Move("�}��*", 150, @-60, @-200, Dxl2, false);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);

	DrawDelete("�}�\Ļ", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se���L_����_���ϕN01");
	CreateTextureEX("�}��", 100, Center, -150, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	SetBlur("�}��", true, 2, 500, 60, false);
	Move("�}��", 1800, @0, -230, null, false);
	Fade("�}��", 600, 1000, null, true);

	Wait(300);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("�}��", 900, @0, -720, Dxl2, false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5760a02">
�������ն���������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5770a02">
��Ϊʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5780a00">
���������Ѿ��������Լ���ְ��
����������񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5790a00">
�������������Ѳ��Ǿ���������ֻ�Ǹ���ͨ�ˡ�
������Ҫ�����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������Ц�Լ���˵Щ��ֵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5800a02">
�������¡���
���������Ļ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5810a00">
��û���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh
	CreateSE("SE01a","se����_�z_�l����01");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���k��ʂ�
	CreateSEEX("SE01b","se���L_��҆��_����02_L");
	MusicStart("SE01b",3000,1000,0,1000,null,true);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1100, 1100, null, true);
	Shake("�}����", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ֻҪ����ס�Ϳ����ˡ�
��ֻҪ��ס��һ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k��
	Delete("�ץ���*");
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se���L_��҆��_����03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 9910, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}��", 9900, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 200, 1500, 1500, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 400, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5820a00">
����������!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5830a01">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����åɥ�����
	CreateColorEXmul("�}ɫ��", 10010, "#990000");
	Fade("�}ɫ��", 2000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ȫ���ڡ������ڡ���
����ʶ�ڡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ����", 10020, "#990000");
	Fade("�}ɫ����", 1000, 1000, null, true);

//���֥�å�������
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(1000);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5840a12">
��ѽ���ܿ�ϧ����
���ɲ��ܾ�<RUBY text="��������">�����ճ�</RUBY>������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5850a12">
����˵!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//��������
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_right2(5100,@-300, @0,2000);
	SL_rightfade2(10);

	WaitKey(200);

	CreateSE("SE01a","se���L_��҆��_ܞ��01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Delete("�}��ܞ");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}ɫ��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5860a01">
��ʲô��
������ͣ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ͣ��������
�������Ĳ�����

���������ã�
�����������ܡ����ǲ��Զ����ġ�

�����￴��ȥҲ��Щ��ҡ��
����ͣƴ��ת������¼��ٲȻ����̽��ʲô������̬һ�㡣

��Ȼ��������û��˿���쳣����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5870a01">
��������
�����ߣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5880a00">
�������Ͽ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ϊʲô��
�����¹ʣ�

������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5890a12">
���١��١��١�����
���ĳ��Ͽɲ��ܶ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ѩ܇��T
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
[text0140a]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5900a12">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140b]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5910a00">
����������?!��

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
	$ma04_014vsa_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


}

..//������ָ��
//�Υե����롡"ma04_015vs.nss"



.//�ץ�����======================================================

..//����ʹ�
function MeimetuAction()
{
	CreateProcess("�ץ�������", 5000, 0, 0, "MeimetuSET");
	SetAlias("�ץ�������","�ץ�������");
	Request("�ץ�������", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@�}����", 800, 1000, null, true);
	Wait(200);
	Fade("@�}����", 800, 0, null, true);
	Wait(200);
	}

}