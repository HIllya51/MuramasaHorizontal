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

scene mb02_025vs.nss_MAIN
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
	#bg070_���ӘS�����A�Υ۩`��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_026vs.nss";

}

scene mb02_025vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_024vs.nss"

//�������֣ӳ��
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5100,@0, @0,2000);
	SL_leftdownfade2(5);

	StL(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	SetBlur("@StL*", true, 2, 500, 70, false);

	StR(1100, @30, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStA(0,true);

	CreateColorSPadd("�}ɫ��", 6000, "#FFFFFF");
	Delete("�}��ܞ");
	Move("@StL*", 600, @-30, @0, DxlAuto, false);
	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ô���¡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ġ��Ҥ��Ҥ��
//����霡��ܤ��롣�ܤ���ΤǤʤ��ܤ��롣
	CreateSE("SE02a","se���L_����_�����01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Zoom("�}��*", 0, 1200, 1200, null, false);
	Zoom("�}����", 150, 1000, 1000, Dxl2, false);
	Shake("�}��", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 100, true);

	CreateSE("SE02b","se���L_����_�����02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	Zoom("�}��*", 0, 1200, 1200, null, false);
	Zoom("�}����", 150, 1000, 1000, Dxl2, false);
	Shake("�}��", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 100, true);

	CreateSE("SE02c","se���L_����_�����03");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}��*", 0, 1200, 1200, null, false);
	Zoom("�}����", 150, 1000, 1000, Dxl2, false);
	Shake("�}��", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 100, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0010a00">
���С�����


{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0020b37">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɩ`���һ��
//����霡��Ҥ�`����w��Ǳܤ��Ƥ����`����ŵ�
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_�n��_�nͻ01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	SL_down2(5100,@0, @0,2000);
	SL_downfade2(5);

	CreateColorSP("�}ɫ��", 6000, "#FFFFFF");
	CreatePlainSP("�}����", 500);
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Delete("�}ɫ�\");
	FadeDelete("�}ɫ��", 600, true);

	CreateSE("SE01a","se����_����_���S02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	StL(1000, @30, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	SetBlur("@StL*", true, 2, 500, 70, false);
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������ô���¡�

������Լ��Ǵ��Թ�ս֮�ˣ�Ҳ���ܽ���
<RUBY text="��������">����ָ��</RUBY>��
�����磬ָ��˫���Զ�ӽ�һЩ��ʵ�С�

���������ߵ�Ӱ�вŻ���ֵĳ�������
��
����Ȼ�������������߽���Ľ��ͣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mb02/025vs0030a01">
��������ʵ���ǡ���
���ǲ�����<RUBY text="����">�ϻ�</RUBY>ˣ�ң���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0040a00">
���һ�����ô���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ȼ������Ϊ������ô���¡�
���ѵ�һ�ж����ξ�����ʵ�е��Ҳ�֪�ںδ����ߡ�
�����ǰ��<RUBY text="����">��ʵ</RUBY>�����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0050b37">
���Ⲣ��ʲô��ֵ����顭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ƺ������������޴��ĶԻ�������ʵ���ѿ�������
���Ķ�ҡ����
��װ�����ص����Ӳ廰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0060b37">
���˴���С�������������ƣ�������������
ȫ�޷����ӡ�
������ȥ˫���ӥץֻ���󶼷Ѿ�����ȫ����
����ɡ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0070a00">
������������ˣ�ӥ���м�����๡�
����������ݽ����Դ��·�Ļ��������ᱻ��
Ϊ�����ҷϵİɣ���


{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0080b37">
����������Ե�ɡ�
������һս�����ǿȡʤ��ֻҪ����ס�����
������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0090b37">
�����㲻ͬ��
������뾡����ҡ�����Ϊ����������ȥ��
�Ĳ����ǻ���ͻ�ϵ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0100a00">
��������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0110b37">
����ʱ�����ߵô��ݣ���ʱ����ߵý��ǡ�
�����������֮������Ҳ�����ʤ���ҡ���
����ȴ��������֮�ϡ���


{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0120b37">
�����ˣ����Ҳ���ʤ����
�����������Ϳ������ˡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0130a00">
������ȴ������֮����!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������¤�һ�W
//����霱ܤ�
//�����S��һ�W
//����霱ܤ��Ʒ���
//�����ѩ`��
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreatePlainEX("�}��д", 500);
	Fade("�}��д", 0, 750, null, true);
	Shake("�}��д", 300, 0, 20, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01a","se����_����_���S02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DeleteStL(50,false);
	Move("@StL*", 50, @60, @0, Dxl2, false);
	SL_down(@-290, @0,1000);
	SL_downfade(0);

	StR(1000, @-30, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	SetBlur("@StR*", true, 2, 500, 50, false);
	Move("@StR*", 100, @30, @0, Dxl2, false);
	FadeStR(100,true);

	WaitAction("@slashD*", null);

	CreateSE("SE01b","se���L_����_Ұ̫�����02");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	Shake("�}��д", 300, 20, 00, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01c","se����_����_���S01");
	MusicStart("SE01c",0,1000,0,1500,null,false);
	DeleteStR(50,false);
	Delete("@slashD*");
	Move("@StR*", 50, @-30, @60, Dxl2, false);
	SL_right(@0, @0,1000);
	SL_rightfade(0);

	WaitAction("@slashD*", null);

	StC(1000, @20, @120,"cg/st/st��霔�_���L_˽��a.png");
	SetBlur("@StC*", true, 2, 500, 50, false);
	Move("@StC*", 100, @-20, @-120, Dxl2, false);
	FadeStC(100,true);

	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	Delete("@slash*");
	WaitKey(10);
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainEXadd("�}��д", 4999);
	Zoom("�}��д", 0, 1200, 1200, null, true);
	Zoom("�}��д", 300, 1000, 1000, null, false);
	FadeFR2("�}��д",0,750,300,0,0,50,Dxl3, true);
	Delete("�}��д");

	CreateSE("SE01d","se����_Ѫ_�����01");
	MusicStart("SE01d",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0140a00">
����������


{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0150b37">
��ǰ��һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����������ƻ�֮��һ�ٶ㿪�ҳ����ӳ���̫�����Դ�
Ӯ��ʱ������������������һ����
���ؽڲ�λ���������ڷ�������Ȼ����ն�ϣ�ȴ������
���

��û�ܱܿ��Է��ķ�����Ȼ���Ҵ����С��
�����������������ܵ��ǣ��ҵ�Ϯ�����������㿪����
����û���õ�����

���������޷�����<RUBY text="��������">����һ��</RUBY>��

����������һ��������ƾ����ѹ���Է���
�������볣����������������֮��

���Ⲣ�����£���ԭ��������Ϊ�ġ�
��������������������������ܹ��������嵶����
�ж����ء�

��Ҳ����˵��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	StC(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	FadeStC(300,true);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -120, "cg/st/resize/st��霔�_ͨ��_˽��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);
	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0160a00">
�������Ͼ�Ȼ����˴�Ĳ�࡭����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������뺢ͯ��
���м������еĲ�ࡣ

����Ϊ��ʦ����������������˷����ҡ�
�����Ǻη���ʥ����������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0170b37">
��������ѽ���������ۡ���
����Ȼ������׼����Ҫ�������𣿡�


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0180a00">
��������


{	FwR("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0190b37">
����������Ϊ��Ϥս���ķ�Ӧ���޷����͡�
����������֪���İɣ��ҵ��������������Ľ�
������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0200a00">
���й�һ�ν�ս�ľ��顣��


{	FwR("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0210b37">
���Է�Ϊ���ˣ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0220a00">
��һ֮β��������


{	FwR("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0230b37">
�������Ǹ����
���ֲ��á���ԭ����ˡ���


{	FwR("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0240b37">
����������������������ǾͿ�������ˡ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0250a00">
����֪����λС���𡭡���


{	FwR("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0260b37">
����������ܵ����ĵ���ְ�¼�ǣ�������˵
��������ε�������ˡ�
�������ź�������


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0270b37">
����Ȼ��ֻ����ָ������Σ���������ȷ����
����
�������ںδ�����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0280a00">
����������ǰ��Ϊ�Լ������϶�����
������û�п�˵���ˡ���


{	FwR("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0290b37">
���������𡭡���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0300a00">
����������ʦ���𣿡�


{	FwR("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0310b37">
������˵Ҳ�޷��ɡ�
�������ðɡ���Ҳ����һ��Ե�֡���


{	FwR("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0320b37">
��û�д������İ��أ����ھͽ̸���ɡ�
�����������������


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/025vs0330a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

	WaitKey(300);

	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @0, @0,"cg/st/st��霔�_���L_˽��a.png");
	FadeStC(500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������䣬�����ӱ��״ΰںü��ơ�
�����������Ҽ磬��ͳ���߾ٵ�����֮�ơ�

�����������Ե���©����
�������������¿�ѭ������һ���·�������Ҫ����Է�
�������ǲ����ܡ�

������˵������ӽ��������ĶԿ���
�����һ������������ƺ����ԡ�

�����Ǻ���ͼ��
��
�����ǣ���û��ʱ������ԥ��

���������˲�䣬����Ҳ������ڱ���
�������Ǻ��������ֻ��ӭ����ս��

{	CreateSE("SE01a","se���L_����_������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
����Ҳ��Ч�¶Է�����̫��������
��������������ȥ�Ʋ�ƽϡ�����㽣������֮��Ϊ��
������������ֱ���Ծ��Ĺ��

����ȥ���ǣ�
��һζ������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓ�
//�􌝳Ƥʔؓ�
	CreateSE("SE01a","se���L_����_Ұ̫�����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	CreateWindow("�}����", 3000, 0, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}ɫ�\��", 3005, "#000000");
	CreateTextureSP("�}����/�}�ݔ���", 3100, -256, 0, "cg/ef/ef008_��������܉��.jpg");
	DrawTransition("�}����/�}�ݔ���", 200, 0, 250, 300, null, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateWindow("�}����", 3000, 512, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}ɫ�\��", 3005, "#000000");
	CreateTextureSP("�}����/�}�ݔ���", 3100, 256, 0, "cg/ef/ef008_��������܉��.jpg");
	Request("�}����/�}�ݔ���", Smoothing);
	Rotate("�}����/�}�ݔ���", 0, @0, @180, @0, null,true);
	DrawTransition("�}����/�}�ݔ���", 200, 0, 300, 300, null, "cg/data/slide_02_01_0.png", false);

	FadeDelete("�}ɫ��", 200, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0340a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������ҵĹ������з�<RUBY text="��">��</RUBY>��һ�ġ�
��
��������ȴ������ӭ���ҵĹ��������

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0350a00">
���ѵ�������֮��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����һ���˽�����
�����Է��Ľ�<RUBY text="����">����</RUBY>��ͬʱ�ж϶Է����壬�Դ�ȡʤ��

����Ϊһ�������ؼ�֮�����������¡�
��Ϊ�Ρ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0360a00">
����ô���ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ҳ�ȥ����ֹ�����
��û�б�Ҫͣ�֡����ⳡ�Կ�������ȡʤ��

������������������������֮��Ĳ����<RUBY text="����">����</RUBY>�ġ�
�����������ӵĽ�����ξ�����ף�Ҳ�����ܵ�������
һ���ı����й����

���������öԷ������أ����������������á�
������Ҳһ����

�����������ƽ�֡�
�����ܵ����˺�����Ȼ�ǶԷ����ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W���������Ϥ��Ϥ��ʤ��Τ�ע�⡣
//�����Фá���һ���ؤä���
//��Ѫ
//�������ȳ��
//����������
	CreateSE("SE01a","se���L_����_Ұ̫�����02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DrawTransition("�}����/�}�ݔ���", 200, 250, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1500,null,false);
	DrawTransition("�}����/�}�ݔ���", 200, 300, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE02","se���L_����_���̤���05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\��", 6000, "#000000");
	CreateTextureSPadd("�}����", 6100, @0, @0, "cg/ef/ef006_����Ѫ���֤�.jpg");
	CreateTextureSP("�}��", 6050, @0, @0, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	SetBlur("�}����", true, 3, 500, 50, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	PrintGO("�ϱ���", 30000);
/*
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	StL(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	StR(1000, @0, @0,"cg/st/st��霔�_���L_˽��a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 300, true);
	FadeDelete("�}��ܞ", 300, true);
*/


	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	Move("�}�ף�/�}������100", 0, @0, @144, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @300, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, InBottom, "cg/st/st��霔�_���L_˽��a.png");
	Move("�}�ף�/�}������100", 0, @-212, @244, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);

	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);

	FadeDelete("�ϱ���", 500, false);

	Move("�}�ף�/�}������100", 1500, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}������100", 1500, @380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 1500, @-190, @0, Dxl2, false);
	Move("�}�ף�/�}�ӣԣ�", 1500, @190, @0, Dxl2, true);
	WaitKey(500);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0370b37">
����������������������������������


��
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/025vs0380b37">
�����������������������ϻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤȤá�
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se����_�n��_ܞ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");

	CreateTextureEX("�}�ݱ���", 2000, 0, -450, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");//���ߩ`ע��
	Move("�}�ݱ���", $�Еr�g, @0, @-60, DxlAuto, false);
	Fade("�}�ݱ���", 300, 1000, null, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb02/025vs0390a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���޻���˵��
��Ψ�г�Ĭ��������<RUBY text="����">�Ǹ�</RUBY>��

���ҵ����ֹ����������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_026vs.nss"