//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043b.nss_MAIN
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
	#ev128_�����ι�_h=true;
	#ev128_�����ι�_i=true;
	#bg097_ܥԽ�����ھ����β���_01=true;
	#bg047_�������_�a_01=true;
	#bg047_�������_�a_03=true;
	#bg051_�����Ҿ��g_03a=true;
	#bg052_�����ҵ���_01=true;
	#bg023_��Դ̫�μ�_03b=true;
	#ev106_���w��Ҋ�¤�����_a=true;
	#ev106_���w��Ҋ�¤�����_d=true;
	#ev128_�����ι�_g02=true;
	#bg053_ܥԽ������ͥ_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_044.nss";

}

scene md02_043b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_043.nss"


//�񡭡��ʤ�ʤ�
	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ɱ���⡣
�����ò�ɱ����

�����ն��������ĳ�Ϊ�ϰ��Ļ��������ɱ������

���������������ȥ�Ļ����⻹���Ϊ���Ǻš���
����ȡ�����˵�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/043b0010a00">
�����ò�ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������

��Ϊ�Σ�

����һ��Ҫ��!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣ�
//������
	EfRecoIn1(18000,300);
	SoundPlay("@mbgm31", 0, 1000, true);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg047_�������_�a_03.jpg");

	EfRecoIn2(800);


	SetFwC("cg/fw/fw����_�@��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/043b0020a00">
��ι��ι��
����Ҫ�����Ҳ����ϣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/043b0030a14">
���Ҿܾ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0040a00">
�������Ͳ�����·�ˣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/043b0050a14">
�����߿�����
��ֻ�����̶ֳ���ô��Ӯ���˹��أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoIn1(18000,300);

	Delete("�}����*");


	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg051_�����Ҿ��g_03a.jpg");

	EfRecoIn2(800);

	SetFwC("cg/fw/fw������ǰ_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/md02/043b0060a14">
��������
����˵��ֻ�������˵ķ�������Ҳ
���ù��־��������԰ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0070a00">
�������ˣ���

{	FwC("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/md02/043b0080b46">
���ס����ұ������������𡭡���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/043b0090a14">
�����������ˡ�
�������������ζ��������Ǹ�<RUBY text="����������">����������</RUBY>��
�����ߵĻ��͸����ҡ��������������غ㶨�ɣ�
��Ҳ�Ὣ�������������ȫĨ���ġ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/md02/043b0100b46">
���Բ����һᾲ�����Է��ġ�
�����ǲ����ڵġ������貢����
�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0110a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoIn1(18000,300);

//������
	Delete("�}����*");


	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg052_�����ҵ���_01.jpg");

	EfRecoIn2(600);



	SetFwC("cg/fw/fw��_��˼.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md02/043b0120a14">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0130a00">
���ţ���

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/043b0140a14">
���⡭�����õ������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0150a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}����*");
	Delete("Memory_cover");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	EfRecoOut2(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ʲô��
��<RUBY text="������">�����</RUBY>��������ʲô��

��������������ǰ��ֹͣ�ˡ�
������Ů����һ��������ס��ʱ�򣬱���ûǰ��һ����

����֮����²����ڹ�ĸ����뷨��

��ɱ¾�����ǺŽ���һ���Ρ�
�������ƻ���ʵ���磬�ڱ��˿��������������е��¶��ѡ�

��ΪʲôҪ�������
�������ķ����ܲö�������Ϊ��� 

�����

���ն���û��һ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/043b0160a00">
��������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ��Ҫɱ������
�������ҵ��ģ������ҵĹ�ȥ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�\Ļ��", 50, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	FadeDelete("@OnBG*",1500,true);

//���������w
//���դ�
//���դ�
	CreateTextureEX("�}��01", 3100, @600, @220, "cg/st/st�դ�_ͨ��_˽��.png");
	Fade("�}��01", 300, 500, null, false);
	CreateTextureEX("�}��02", 3101, @800, @290, "cg/st/st�դ�_ͨ��_˽��.png");
	Fade("�}��02", 300, 500, null, false);
	CreateTextureEX("�}��03", 3102, @150, @190, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Fade("�}��03", 300, 500, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����һ���������������ˡ�
����Щ�˵������������Ҷ�ȥ��

���ڸ������ʧȥ����ǰ��ɱ����

��״������������������ȫ��ͬ��
������ɱ���⣬���и������ɥʧ������

�����ԣ�������������

��Ϊ�˲��ܻ������۷ɵ�������
��Ϊ�˲��ܻ�ʀ���������õ�������

��ɱ����

������˫���˽�ն����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 15000, "#990000");
	Fade("�ե�å����",200,1000,null,true);

//�������Ƥ���ե�å���Τۤ������������� inc�Ѿ�
	Delete("�}��*");

//���ãǲ�֣�����פˁI��

	CreateTextureEX("����2", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateSE("SE01","se����_����_�����01");

	Fade("����2", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 2000, 0, 0, Dxl3, false);
	Fade("�ե�å����",1000,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ҡ�

�������ն�������

���᳹Ӣ�ۡ�

��ɱ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateSE("SE01","se����_����_�����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ɱ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ɱ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���

	Fade("�ե�å����",0,1000,null,true);

	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("�ե�å����",300,0,null,true);

	SetFwR("cg/fw/fw����_��ŭ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md02/043b0170a00">
����������������������������������������
����������������������������������������
����������������������������������������
��������������������������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//���ۥ磻�ȥ�����
	Fade("�ե�å����",0,1000,null,true);

//���٤����ܤ����Ǥ��ױ���Z������

	OnSE("se����_��_���}���Z����01", 1000);

	Wait(2000);

//���ãǲ�֣��I�֡�����פ����x��Ʋ����Ѻ������
//�����Ƥ��롣�ۤ�Ɖ�ʷ����
//���ۥ磻�ȥ���

	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_i.jpg");
	Fade("����3", 0, 1000, null, true);
	Delete("����2");
	Fade("�ե�å����",2000,0,null,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���첻����

���첻��!!

����ô���ܰ�õ�!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnBG(100, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);
	FadeDelete("����*",1000,true); 

//	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");
//	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md02/043b0180a01">
��������������

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/043b0190a07">
����硭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������������

���񱩵���������¶���ҵ�ì��������֮�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������դ����դ�
//����ҙ�äݤ�

	SoundPlay("@mbgm04", 0, 1000, true);

//�������Խ��λ����ݳ���EfRecoInϵ�Υ��ޥ�ɤ�ʹ�ä�����Q������΢���냇�ݤȺϤäƤ��ʤ��Τ�ʹ�ä��Ƥ��ޤ��� inc�Ѿ�


	FadeDelete(@StR*,1000,false);
	CreateTextureEX("�}��01", 1100, @600, @220, "cg/st/st�դ�_ͨ��_˽��.png");
	Fade("�}��01", 2000, 800, null, false);
	CreateTextureEX("�}��02", 1101, @800, @290, "cg/st/st�դ�_ͨ��_˽��.png");
	Fade("�}��02", 1000, 800, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��
����������������������ų���ļһ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ԭ���ҡ�

��
�������������������������˾������֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�ե�å����", 15000, "#990000");
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03b.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);

//������



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ԭ���ҡ�

��
����������������ɱ�Լ��ļ��˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ե�å����",0,1000,null,true);
	Delete("Memory_cover");
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");

	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����С�
���������������ǲ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	Fade("�ե�å����",0,1000,null,true);

	Delete("Memory_cover");
	Delete("�}����*");
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

//���衩������w

	FadeDelete(@StL*,1000,false);
	CreateTextureEX("�}��03", 1102, @150, @190, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Fade("�}��03", 1000, 800, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��
�����������������������С�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 15000, "#990000");
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_a.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����С�

��
��������������ֻ���۶��ǲ��Ӷ���Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���첻����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_�����02", 1000);
//	SL_right(@0,@0,2500);
//	SL_rightfade2(10);
	CreateTextureSPadd("�}EF100", 6500, Center, 100, "cg/ef/ef014_���ú�܉��.jpg");
//	OnSE("se���L_����_�����01",1000);
	Fade("�}EF100", 0, 1000, null, true);
	DrawDelete("�}EF100", 50, 100, "slide_01_00_0", true);

	CreateTextureEX("�}����900", 2001, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");
	Fade("�}����900", 300, 1000, null, true);

	WaitKey(1000);
	OnSE("se����_�n��_ܞ��02", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��
�������������������������ҵĲ���Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	Fade("�ե�å����",0,1000,null,true);

	Delete("�}��0*");

	Delete("Memory_cover");
	Delete("�}����*");
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\Ļ��", 500, "BLACK");
	Fade("�\Ļ��", 1500, 1000, null, false);

	FadeDelete("@OnBG*",1500,true);

//�����w���դ����դ�

	CreateTextureEX("�}���w", 1000, 85, -230, "cg/st/resize/st���w_ͨ��_�Ʒ�l.png");
	Move("�}���w", 6000, 0, @0, DxlAuto, false);
	Fade("�}���w", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270a]
��
����������������������ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݤդ�", 1010, 350, -260, "cg/st/resize/st�դ�_ͨ��_˽��lm.png");
	Move("�}�ݤդ�", 6000, 430, @0, DxlAuto, false);
	Fade("�}�ݤդ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270b]
��
����������������������ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݤդ�", 1020, 130, -240, "cg/st/resize/st�դ�_ͨ��_˽��lm.png");
	Move("�}�ݤդ�", 6000, 50, @0, DxlAuto, false);
	Fade("�}�ݤդ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270c]
��
��������������������ɱ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	Delete("�}���w");
	Delete("�}�ݤ�*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270d]
��
�����������������������񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����Ԫ", 1000, Center, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	CreateStencil("�}����",1010,center,InBottom,128,"cg/st/st���w_ͨ��_�Ʒ�.png",false);
	SetAlias("�}����","�}����");
	CreateTextureSPover("�}����/�}��Ѫ", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("�}����/ɫ", 1050, "#990000");

	Fade("�}����/�}��Ѫ", 0, 750, null, true);
	Fade("�}����/ɫ", 0, 950, null, true);
	DrawTransition("�}����/ɫ", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}����*", 0, @-256, @0, null, true);

	CreateTextureSP("�}�ݹ���Ԫ", 1000, Center, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateStencil("�}�ݹ���",1010,center,InBottom,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�}�ݹ���","�}�ݹ���");
	CreateTextureSPover("�}�ݹ���/�}�ݹ�Ѫ", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("�}�ݹ���/ɫ", 1050, "#990000");

	Fade("�}�ݹ���/�}�ݹ�Ѫ", 0, 750, null, true);
	Fade("�}�ݹ���/ɫ", 0, 950, null, true);
	DrawTransition("�}�ݹ���/ɫ", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�ݹ���*", 0, @186, @0, null, true);

	CreateTextureSP("�}�ݲ���Ԫ", 1200, Center, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateStencil("�}�ݲ���",1210,center,InBottom,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�}�ݲ���","�}�ݲ���");
	CreateTextureSPover("�}�ݲ���/�}�ݲ�Ѫ", 1300, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("�}�ݲ���/ɫ", 1350, "#990000");

	Fade("�}�ݲ���/�}�ݲ�Ѫ", 0, 750, null, true);
	Fade("�}�ݲ���/ɫ", 0, 950, null, true);
	DrawTransition("�}�ݲ���/ɫ", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�ݲ���*", 1, @316, @0, null, true);

	CreateSE("SE01","se����_�ҥ���_�Қ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�}ɫ�\");

	CreatePlainEX("�}��д", 5000);
	Zoom("�}��д", 6000, 1100, 1100, null, false);

	MoveFFP1("@�}��д",10000);

	Fade("�}��д", 3000, 500, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270e]
��
����������ɱ���ǵ�ʱ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��ԭ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��
���������������������޷�ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����У���ԭ���ҡ�

��
��������������������ô����ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��ԭ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��
����������������������ɱ����

��
����������������������ɱ������

��
����������������������������

��
�������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�y�Ǻ��¼���ʹ�äƤϤ����ʤ���

	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}�ݛAȾ", 4100, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);
	Delete("�}�ݛAȾ��");

//���ãǣ�������

	CreateColorEX("�ե�å����", 15000, "#990000");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}��*");
	Delete("�}��*");
	MoveFFP1stop();
	CreateTextureEX("����2", 1000, @0, @0, "cg/ev/ev128_�����ι�_g02.jpg");
	Fade("����2", 0, 1000, null, true);

	Fade("�ե�å����",300,0,null,true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md02/043b0200a00">
��������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md02/043b0210a00">
��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Фá����á�
//����򱧤����ߤ��������
//��ͥ

	OnSE("se����_����_�����Ĥ�01", 1000);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 10, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	Wait(100);

	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�ޤ�");
	Delete("����2");
	Delete("�\Ļ��");
	OnBG(100, "bg053_ܥԽ������ͥ_02.jpg");
	FadeBG(0, true);
	
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("�\Ļ��");

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/md02/043b0220a01">
������!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/043b0230a01">
�����¡�����Ҫ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�y�Ǻ��¼�ʹ�����������o�����ʤΤǄe�λ���
	CreateTextureEXsub("�}�ݣ�", 450, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	Zoom("�}�ݣ�", 0, 1500, 1500, null, false);

	CreateColorEX("�}ɫ399", 399, "#CC0000");
	Fade("�}ɫ399", 5000, 750, null, false);
	Fade("�}�ݣ�", 5000, 1000, null, false);



	CreateStencil("�ޥ�����",100,600,220,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColorSP("�ޥ�����/logoM001", 400, "BLACK");
	Fade("�ޥ�����/logoM001", 400, 0, null, false);

	CreateStencil("�ޥ�����",100,800,290,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColorSP("�ޥ�����/logoM002", 400, "BLACK");
	Fade("�ޥ�����/logoM002", 400, 0, null, false);

//310��0��������פ����

	CreateStencil("�ޥ�����",100,150,190,128,"cg/st/st���w_ͨ��_�Ʒ�.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColor("�ޥ�����/logoM00", 150, 0, 310, 1024, 576, "Black");
	SetAlias("�ޥ�����/logoM00","�ޥ�����/logoM00");

	Fade("�ޥ�����/logoM003", 400, 0, null, false);


	Fade("�ޥ�����/logoM001", 0, 0, Dxl1, false);
	Fade("�ޥ�����/logoM001", 0, 500, Dxl1, false);

	Fade("�ޥ�����/logoM002", 0, 0, Dxl1, false);
	Fade("�ޥ�����/logoM002", 0, 500, Dxl1, false);

	Fade("�ޥ�����/logoM003", 0, 0, Dxl1, false);
	Fade("�ޥ�����/logoM003", 0, 500, Dxl1, false);

	DrawEffect("�}�ݣ�", 3600000, "HighWave", 30, 30, null);

	OnSE("se����_����_�ߤ�07", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������׷��������

�����ӵĻ���

����ץס�Ļ��������ˡ�
���ᱻɱ����

����ᱻɱ����

�����в��в��С�
������������ɱ����

����������������

������������
��ֻҪ���һ��˭Ҳ����ɱ������

��˭Ҳ����ɱ����

�������⡣
����Ϊ�ұ��뱣������

������һֱ׷������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��ɱ����<k>��������������������ɱ����<k>
��������������ɱ����<k>
������������������������ɱ����<k>
������ɱ����

</PRE>
	SetTextEXCColor("#990000");
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
������һֱ׷������
���������µķ�ŭ�����䣬���ұ��������š�

��Ҫ�ӡ�

���ӵ�������׷�����ĵط���

���������û�������ĵط���

������Զ��������������
�����Ź⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ϥ���`�Ϥ���`��

	SetVolume("@mbgm*", 3000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md02_044.nss"