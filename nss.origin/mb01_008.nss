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

scene mb01_008.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//���꽵�餷�ե饰�ν��
	$AmeHure = false;
	Request("@�}�����������L", UnLock);

	//�����٥�ȣã�
	#bg058_�ҿ�c_01=true;
	#bg060_�ҏ��¾���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_009.nss";

}

scene mb01_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_007a.nss"
//ǰ�ե����롡"mb01_007b.nss"

//������

	PrintBG("�ϱ���", 30000);

/*
	if($AmeHure == true){
	Delete("@�}�±���");
	Delete("@Fw*");
	}else{
	PrintBG("�ϱ���", 30000);
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("�}�����������L", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("�}�����������L", "�}�����������L");
	Request("�}�����������L", Lock);
	Rotate("�}�����������L", 0, @-60, @0, @0, null,true);
	Zoom("�}�����������L", 0, 3000, 3500, null, true);
	Fade("�}�����������L", 0, 500, null, true);

	}

*/
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("�}������", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 500, null, true);

	CreateTextureSP("�}����", 5000, Center, Middle, "cg/bg/bg058_�ҿ�c_01.jpg");
	OnBG(100,"bg060_�ҏ��¾���_01.jpg");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm32",0,1000,true);

	Request("@�}�����������L", UnLock);
	Fade("@�}�����������L", 1000, 0, null, false);
	FadeDelete("�}����", 1000, true);
	Delete("@�}�����������L");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ҵĻ���һ���ܽ�����
������Ů��ֿ��Ը������ȫ�෴��

����Ϊһ�ж�������������ʵ���ˡ�
��ƽ�������ء�û���ܹ����ɵ���ء�

����������ࡣ
����Ůδ�����������ࡣ

�����Ƿ������һ�ʵ����һ�������ò����ܵĴ𰸡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080010a02">
������Ϊʲô������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080020a00">
��������
��û�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��û�С�
��û��������ȥɱ¾֮������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb01/0080030a00">
��ӲҪ˵�Ļ�����Ϊ�Ҿ�������<RUBY text="��">��</RUBY>
���ˡ�
�����˶��ѡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080040a02">
��������������������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080050a02">
������ԭ�¡���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080060a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080070a02">
����û��������ᱻ���ѡ�
�����ˡ���һ��ʼ��˵���ġ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080080a02">
����˵�Լ���������Ļ�顣
��ֻ�Ǹ�ɱ�˷����ѡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080090a00">
���ǰ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080100a02">
���������Ի���⡣
����������Ϊ�ǡ����������Ų��ɡ���


{	FwC("cg/fw/fwһ��_Ц�b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080110a02">
�����Գ���㣡
����������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��<RUBY text="��������������">���ش�Ц��ֹ</RUBY>��
�������ڵ�һ��֪��������Ҳ�����������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080120a02">
�����ǣ����޷�ԭ�¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080130a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080140a02">
���ն�������
�����޷�ԭ���㡣��


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080150a02">
����Ҫɱ���㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080160a00">
������ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������Ը����³���䷴�ʡ�
������һ��������һ����ζ�����ưɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080170a02">
������ɱ��
�����ڡ���!!��


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080180a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ������}�������{��
//�����ڡ���ţ��ǈ�
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateSE("SE01b","se���L_����_��ͻ�M03");
	CreateSE("SE02","se���L_����_�z_̤���z��01");
	CreateSE("SE03","se���L_����_�z_�����w��01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01b",0,1000,0,1400,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	StL(1000, @50, @370,"cg/st/3d������ţ��_����.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);

	Wait(1500);

	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE03",0,1000,0,800,null,false);

	Shake("@StL*", 700, 0, 5, 0, 0, 1000, Dxl2, false);

	DrawDelete("�}ɫ��", 2000, 100, "effect_01_00_0", false);
	Fade("�}ɫ��", 1000, 0, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ����ɫ������

������ɢ����Ӳ�ʵ���ɫ��â��
���������Խźͳ����Ĵ��ǡ�

����ţ��

�����ǽ��١�
�������Ӵ������͸ֽ�������ʾһ�С�

������֮�£���ɫ����ȴ��ȫû����û����ɫ֮�С�
��������Ȼ��ʡ�

��������������Ϲ�����ȷ��ָ��һ����ʵ��
���������߽�����

��������ǧ�Ӵ���һ����
��<RUBY text="����������">���������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14",1000,1000,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb01/0080190a00">
�����ڡ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080200a00">
������һ�ȡ���
�������������������!?��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080210b40">
��������֮�����������ޡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����������
������û��һ˿��еĽ��д����̴����衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080220b40">
�����Ա�������Ϊ���ڡ�
������ն֮��ƾ��֮������


//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080230b40">
��а����֮ ����ɢȥ��
�����������ˡ������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080240a02">
��������ˡ����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080250b40">
�������ۼ���������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080260a02">
��ȫ��Ĩȥ����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080270b40">
��ն��ɱ������


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080280a02">
������а�񡣡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0080290b40">
��һ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������Ƕ�ô�Ĳ����ܣ��������ˣ�ֻ�ܳ�����ǰ��
��ʵ��

������ɫ�Ľ��پ������ڡ�
�������Ĳٿ��������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb01/0080300a00">
��Ϊ�Ρ�
�����Ǻ�ʱ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080310a02">
�������¸�������ν����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������Ů�����ı���̶ȣ�����ѷ�ڽ��١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��c.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080320a02">
������ɱ���㡣
�������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080330a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080340a02">
�����졣��


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080350a02">
�������峿������������������
��������Ľ��١���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080360a02">
����Ҫɱ���㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080370a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�i��07_L");
	CreateSE("SE02","se����_����_�z�i��03_L");
	MusicStart("SE01",0,1000,0,1100,null,true);
	MusicStart("SE02",0,500,0,1200,null,true);


	CreatePlainSP("�}��д", 3000);
	DeleteStA(0,true);
//	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeDelete("�}��д", 600, false);
	SetVolume("@mbgm*", 3000, 0, null);

	Wait(500);

	SetVolume("SE*", 3000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����������ϣ�һ��ת����ȥ��
����������ȥ��

�����ǲ���ߴ�ı�Ӱ���潣��һ���н�Զ��
��ͻȻ����ͣ�½Ų���

���ع�ͷ����

�������ҡ�

�����������ڵ����ҿ�������Ů���۾���
���Է��������������ء�

��һ��̧���ұۡ�
�����������ʳָ��

������ָ�⣬������ָ���ҵ��ؿڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0080380a02">
��ɱ���㡪��!!��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0080390a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SEL01","se��Ȼ_ˮ_����01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	WaitKey(4000);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_009.nss"