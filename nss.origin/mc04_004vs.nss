//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_004vs.nss_MAIN
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
	#bg088_���Bۡ�۩`��_01a=true;
	#ev184_�^��̤���z������֦_a=true;
	#ev184_�^��̤���z������֦_b=true;
	#ev184_�^��̤���z������֦_c=true;
	#ev184_�^��̤���z������֦_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_005vs.nss";

}

scene mc04_004vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_003.nss"


//������֦���ֹ�
//�����ڥ۩`�룿���ơ��ȬF�������֦


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	OnBG(100, "bg088_���Bۡ�۩`��_01a.jpg");
	FadeBG(0, true);
	OnSE("se����_����_ľ����ä���i��01_L", 1000);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);


	SoundPlay("@mbgm06", 0, 1000, true);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se����_����_�ߤ�05", 1000);


	StR(1100, @-80, @0, "cg/st/st����֦_ͨ��_˽��d.png");
	Move("@StR*", 1500, @80, @0, DxlAuto, false);
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);

	Wait(250);

	OnSE("se����_����_�ߤ�06", 1000);


	StL(1100, @-50, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0010e167">
�����ߺ��ˣ�
������������ͳ�������˴���֮լۡ����

//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0020e167">
��Ҫ֪��ӭ�ӷǷ����Ե�ֻ��ǹ�ֵ��꣬����
������ڣ�
��Ȱ����ʵͶ�������򽫶���ڤ��!!��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0030a03">
����ѽ��
�������Ǵ���ң���ʹ���ˣ����ϻ�����������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0040a03">
��һ����˵����ȥ���ɡ����͹��˰ɣ���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0050e167">
��վס��
�����ﲻ����Я���������룡��

//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0060e167">
��Υ��ǹ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ����`

	OnSE("se����_����_��ʿ����01", 1000);

	CreateSE("SE00","se���L_�|��_�}��������02");
	MusicStart("SE00",0,1000,0,1000,null,false);

	CreateTextureEX("�}����100", 5000, @0, @0, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");
	CreateTextureEX("�}����200", 5300, @-250, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����210", 5150, @0, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����220", 5100, @250, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����230", 5050, @400, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����240", 5000, @550, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");

	Zoom("�}����100", 0, 2000, 2000, null, false);
	Zoom("�}����200", 0, 2000, 2000, null, false);
	Zoom("�}����210", 0, 1800, 1800, null, false);
	Zoom("�}����220", 0, 1400, 1400, null, false);
	Zoom("�}����230", 0, 1200, 1200, null, false);
	Zoom("�}����240", 0, 1000, 1000, null, false);

	StCL(1200, @-100, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StC(1000, @-100, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");

	Request("�}����*", Smoothing);

	Move("�}����100", 5000, @170, @0, null, false);
	Move("�}����200", 3000, @70, @0, null, false);
	Move("�}����210", 3000, @70, @0, null, false);
	Move("�}����220", 3000, @70, @0, null, false);
	Move("�}����230", 3000, @70, @0, null, false);
	Move("�}����240", 3000, @70, @0, null, false);

	Fade("�}����100", 1000, 1000, null, false);

	Fade("�}����200", 1000, 1000, null, false);
	Fade("�}����210", 1000, 1000, null, false);
	Fade("�}����220", 1000, 1000, null, false);
	Fade("�}����230", 1000, 1000, null, false);
	Fade("�}����240", 1000, 1000, null, true);
	WaitKey(1000);

	FadeDelete("�}����*", 1000,false); 

	CreateSE("SE00","se���L_�|��_�}��������02");

	CreateTextureEX("�}����400", 4000, @0, @0, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");
	CreateTextureEX("�}����500", 4300, @500, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����510", 4250, @300, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����530", 4150, @100, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����540", 4100, @-50, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}����550", 4050, @-150, @300, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");

	Zoom("�}����400", 0, 2000, 2000, null, false);
	Zoom("�}����500", 0, 2000, 2000, null, false);
	Zoom("�}����510", 0, 1800, 1800, null, false);
	Zoom("�}����530", 0, 1400, 1400, null, false);
	Zoom("�}����540", 0, 1200, 1200, null, false);
	Zoom("�}����550", 0, 1000, 1000, null, false);

	Move("�}����400", 3000, @-170, @0, null, false);
	Move("�}����500", 3000, @-70, @0, null, false);
	Move("�}����510", 3000, @-70, @0, null, false);
	Move("�}����520", 3000, @-70, @0, null, false);
	Move("�}����530", 3000, @-70, @0, null, false);
	Move("�}����540", 3000, @-70, @0, null, false);
	Move("�}����550", 3000, @-70, @0, null, false);


	Request("�}����*", Smoothing);
	Rotate("�}����500", 0, @0, @180, @0, null, false);
	Rotate("�}����510", 0, @0, @180, @0, null, false);
	Rotate("�}����520", 0, @0, @180, @0, null, false);
	Rotate("�}����530", 0, @0, @180, @0, null, false);
	Rotate("�}����540", 0, @0, @180, @0, null, false);
	Rotate("�}����550", 0, @0, @180, @0, null, false);


	Fade("�}����400", 300, 1000, null, false);
	Fade("�}����500", 300, 1000, null, false);
	Fade("�}����510", 300, 1000, null, false);
	Fade("�}����520", 300, 1000, null, false);
	Fade("�}����530", 300, 1000, null, false);
	Fade("�}����540", 300, 1000, null, false);
	Fade("�}����550", 300, 1000, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);

	WaitKey(1000);
	FadeStCL(0, false);
	FadeStC(0, false);
	FadeDelete("�}����*", 1000,true); 

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0070a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��д",1500,false);
	FadeDelete("�}���|��ʿ*",1500,true);

//���ãǣ�����֦���`�ץ󥳥�Хå�
//���۩`�����������֦

//�룺�����Ǥ������}�Ǥ���������ޤ���09/07/06��
	StCL(1200, @-100, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StC(1000, @-100, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStCL(300, false);
	FadeStC(300, false);


	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0080e167">
��������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0090a03">
��˵�����ͱ����𡭡���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0100e167">
��������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0110a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣��������

	OnSE("se���L_�|��_�}��������01", 1000);

	Wait(250);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0120e167">
����������ص����ӡ������������Ϊ������
�˲����Ѫ����һֱ������ȥ���һ����š�
��Ů�ˣ����������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0130a03">
���Ҿܾ�����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0140e167">
�������㡭������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0150a03">
���������˱�ū���ʵ��Ա�������
��Ȯ��֮ǰҪ����ִ硣��


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0160e167">
������ʲô����


//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0170e167">
����˵ʲô������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0180e174">
��˵ʲô������
��������ˣ�û��Ҫ�������ۡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�š�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0190e175">
����֮�Ƚ�����������ɡ�
��Ů�ˣ�����ǹ�������������������Ҳһ��
���ˣ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0200a03">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣����`�Ȥ��_������֦���|�������ä��ꡣ
//��Ҫ�ϥޥȥ�å����Τ��Υ��`��
//�룺��������ţ֤Ǥ���������ޤ���ev184_�^��̤���z������֦_a����09/07/06��

	OnSE("se����_����_����Ѥ�01", 1000);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("�}����100", 15000, @0, @0, "cg/ev/ev184_�^��̤���z������֦_a.jpg");
	Fade("�}����100", 500, 1000, Axl1, true);

	DeleteStA(0,true);
	Move("�}����100", 2000, @0, @-500, DxlAuto, true);

	SoundPlay("@mbgm10", 0, 1000, true);

	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0210e174">
������������


{	NwR("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�š�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0220e175">
��ʲô����ι������


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0230a03">
�������Ұ���Щ������������


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 19000);
	Wait(10);

	Delete("�}����*");
	CreateWindow("�}������", 5000, 342, 0, 340, 576, false);
	SetAlias("�}������","�}������");
	CreateTextureSP("�}������/�}�ݣţ�", 5100, Center, Middle, "cg/ev/ev184_�^��̤���z������֦_a.jpg");
	Request("�}������/�}�ݣţ�", Smoothing);
	Zoom("�}������/�}�ݣţ�", 0, 500, 500, null, true);

	CreateWindow("�}����", 4000, 0, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateTextureSP("�}����/�}�ݱ���", 4010, InLeft, Middle, "cg/bg/resize/bg088_���Bۡ�۩`��_01am.jpg");
	Move("�}����/�}�ݱ���", 0, @0, @-100, null, true);

	CreateTextureSP("�}����/�}�ݱ�ʿ412", 4120, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	CreateTextureSP("�}����/�}�ݱ�ʿ411", 4110, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	CreateTextureSP("�}����/�}�ݱ�ʿ410", 4100, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	Move("�}����/�}�ݱ�ʿ*", 0, @-300, @-60, null, true);
	Move("�}����/�}�ݱ�ʿ412", 0, @-150, @0, null, true);
	Move("�}����/�}�ݱ�ʿ410", 0, @+150, @0, null, true);

	Request("�}����/�}�ݱ�ʿ*", Smoothing);
	SetVertex("�}����/�}�ݱ�ʿ*", center, bottom);
	Zoom("�}����/�}�ݱ�ʿ411", 0, 980, 980, null, true);
	Zoom("�}����/�}�ݱ�ʿ410", 0, 960, 960, null, true);



	CreateWindow("�}����", 4000, 512, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateTextureSP("�}����/�}�ݱ���", 4010, InRight, Middle, "cg/bg/resize/bg088_���Bۡ�۩`��_01am.jpg");
	Move("�}����/�}�ݱ���", 0, @0, @-100, null, true);

	CreateTextureSP("�}����/�}�ݱ�ʿ412", 4120, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	CreateTextureSP("�}����/�}�ݱ�ʿ411", 4110, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	CreateTextureSP("�}����/�}�ݱ�ʿ410", 4100, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	Move("�}����/�}�ݱ�ʿ*", 0, @300, @-60, null, true);
	Move("�}����/�}�ݱ�ʿ412", 0, @+150, @0, null, true);
	Move("�}����/�}�ݱ�ʿ410", 0, @-150, @0, null, true);

	Request("�}����/�}�ݱ�ʿ*", Smoothing);
	SetVertex("�}����/�}�ݱ�ʿ*", center, bottom);
	Zoom("�}����/�}�ݱ�ʿ411", 0, 980, 980, null, true);
	Zoom("�}����/�}�ݱ�ʿ410", 0, 960, 960, null, true);

	Rotate("�}����/�}�ݱ�ʿ*", 0, @0, @180, @0, null,true);


	FadeDelete("�}��д", 1000, false);

	NwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052]
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0240e174">
�������𡢱���ţ�
����ֻ���������ƣ���


//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0250e174">
�������ж�����������Ҳֻ���Լ�һ�ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwL("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0054]
//������㣯���B��ʿ�š�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0260e175">
���ҡ�����֪����
������Щ����ȫ���ӵ���Ů��!!��


{	FwL("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0270a03">
������������


{	NwL("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�š�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0280e175">
���ء�����


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0056]
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0290e174">
����������������������𣡡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㤬���㤬���㡣һ�Ť��|����
	OnSE("se���L_�|��_�}��������01", 1000);
	WaitKey(1000);
	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0300e174">
��������ˣ����԰�!?
�������ˣ����Ǹ�Ů�ˡ�����


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwL("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0310e167">
����������
���ȵȣ���һ�¡�����


{	FwL("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0320a03">
������˹����<RUBY text="�ԣ������">����</RUBY>��
<RUBY text="�ӣ�����">��ʼ</RUBY>����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣��Х����`�������y�飨�ң����ױ�����Ӥ�
//����֣��Ҥ��|���򘋤���
//�룺�ţ֤Ǥ���������ޤ���ev184_�^��̤���z������֦_b����09/07/06��
//�룺�ţ֤Ǥ���������ޤ���ev184_�^��̤���z������֦_c����09/07/06��

	OnSE("se����_����_֩������¤�01", 1000);

	FadeDelete("������ɥ���/�}ev100", 1000, false);

	CreateTextureEX("�}����200", 15500, @0, @0, "cg/ev/ev184_�^��̤���z������֦_b.jpg");
	Fade("�}����200", 1000, 1000, null, true);
	Delete("�}����100");
	WaitKey(500);
	
	CreateTextureEX("�}����300", 15600, @0, @0, "cg/ev/ev184_�^��̤���z������֦_c.jpg");
	Fade("�}����300", 1000, 1000, null, true);
	Delete("�}����200");

	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���뤯
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0330e174">
��������������


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0340a03">
�������Ǹ�Ů�ˡ�����


{	NwR("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0350e174">
���ѡ����Ǹ�Ů�ˡ���
���䡢�䡪����

//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0360e174">
���䣡��


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0370a03">
������ǹ��֮����ٴ���������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�k�h������������������ѥ�`�ɡ�
//�룺�ţ֤Ǥ���������ޤ���ev184_�^��̤���z������֦_d����09/07/06��
	CreateSE("����ѥ�", "se����_����_����֦����ѥ�`��_L");
	MusicStart("����ѥ�", 0, 1000, 0, 1000, null,true);

	MFlash(20, 20);

	CreateTextureEX("�}����400", 16500, @0, @0, "cg/ev/ev184_�^��̤���z������֦_d.jpg");
	Fade("�}����400", 0, 1000, null, true);
	Delete("�}����300");


	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯���B��ʿ�ġ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/004vs0380e174">
���������ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��������
//�������Ϥޤ�����֦��ñ���Ф�
//�������£��ţ֤��������}�ˑ��������飩��ñ�ӟo��

	SetVolume("����ѥ�", 1000, 0, null);


	OnSE("se����_�n��_ܞ��_�}��", 1000);

	Delete("@MF*");

	PrintGO("�ϱ���", 30000);

	Wait(10);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");
	StR(1100, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	StL(1100, @0, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	FadeStL(0, false);
	FadeStR(0, true);
	FadeDelete("�ϱ���", 1000, true);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0390e167">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0400a03">
�����ҹ�ȥ����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0410e167">
�������㡢���ǡ���
�����ǡ������������㡭����


//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0420e167">
������֦���ˡ���!?��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0430a03">
��������


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0440e167">
��Ϊ����Ϊʲô������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0450a03">
��Ϊʲô��������


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0460e167">
������������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0470a03">
���㲻������
��<RUBY text="����������������">��������֦������</RUBY>��
�����㲻�����𣿡�


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0480a03">
��������Ĳ�������
������˵���ŵ���Ҫװ���������ء���



{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0490e167">
�������ޡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���k�h������`��
	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	CreateColorSP("�ե�å����", 15000, "WHITE");

	StR(1000, @0, @0,"cg/st/st����֦_���_˽��b.png");
	FadeStR(0,true);
	Fade("�ե�å����",300,0,null,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0500a03">
���ش�һ��<RUBY text="�ң�������">����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StL*", 300, @-20, @0, Axl1, false);

//���k�h������`��
	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	Fade("�ե�å����",1,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0092]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0510a03">
���ش����<RUBY text="�ӣ����������">ɱ¾</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StL*", 300, @-20, @0, Axl1, false);

//���k�h������󤺤���󤺤����
	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	Fade("�ե�å����",1,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	Fade("�ե�å����",1,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	Fade("�ե�å����",1,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0093]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0520a03">
���ش�����<RUBY text="�ң�������">����</RUBY>!!
���ش��ģ�<RUBY text="�ң�������">����</RUBY>!!
���ش��壬<RUBY text="�ң�������">����</RUBY>!!��

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/004vs0530a03">
��<RUBY text="����䡤�ӣ�ϣ�">���½�ͬ</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������������������
//���ӣ�ֹ�᤺
	CreateSE("����", "se���L_�|��_�C�v�|����01");
	MusicStart("����", 0, 1000, 0, 1000, null,true);
	Fade("�ե�å����",1,1000,null,true);

	DeleteStR(0,true);
	FadeDelete("�ե�å����", 300, true);

	MFlash(10, 50);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0094]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/004vs0540e167">
���ޡ����ޡ�������������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����У������
	OnSE("se����_����_�ߤ�05", 1000);

	Move("@StL*", 300, @-50, @0, AxlAuto, false);
	DeleteStL(300,true);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	SetVolume("����", 1000, 0, null);

	Delete("@MF");
	WaitKey(1000);


}

..//������ָ��
//�Υե����롡"mc04_005vs.nss"