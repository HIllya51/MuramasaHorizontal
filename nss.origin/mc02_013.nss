//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_013.nss_MAIN
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

	$GameName = "mc02_014.nss";

}

scene mc02_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_012.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


//����Ϥ��롢�ȤΤ��Ȥǡ�
//�����������΢��⤷��ʤ��� inc�Ѿ�

	OnBG(11, "bg079_������ս��ڤβ���_03.jpg");
	FadeBG(0, false);
	Delete("�ϱ���");
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ͻȻ���Ҹо���ͻأ�����ߣ���̧��ͷ����
���һ��ӷ��ڡ���û�����κ��ˡ�

��ÿ����Ҫ��ʼ������ʱ��������ܵ�������ߡ�
��
�������Ǵ����

�����ٴν��������������ϡ�
���Ҹղſ��������ˡ���Ѱ���ŸոյĽ��ȡ�

������䣬�ҷ��������ʲݵ��ּ���
����λ��ҳ���һ�ǡ�����ͬ�����ģ��������ҡ�

���俴�Ƴ���ͬһ��֮�֡�
������д���Բ�ͬ��������Ӣ�ĺ����Ĳ���ʹ�ã����ʲݵ�
�ּ�Ӧ���ǡ������

���ƺ���һ���ǳɵĶ��䡣
��
���ͣ�����ͣ���������򡭡�
���ˣ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/0130010a00">
���������ף�
������ˮ��֮����ҹ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ǰ����ƴ����Ѱ�������ü����ķ���ʱ��
����ѧ��һ��ҽ�Ʒ�����ҡ����¹������ԡ�
�����ѹ����޵׵ļ��䣬��֮���������ŷ���
����֮�⡣

������һ��Ӧ���������˼��

��
�������ǵĴ��װ���ˮ��֮ҹ�����˺��£���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0130020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ס�������ǰ����ս��ʱս�ܵ�ͳ�϶�������
���쵼���ԳƵ����š�
�����ڡ���ˮ��֮ҹ��

����Ȼ��֪�����⣬ȴ�޷���⡣
��
���������˼���������Ʈ�ƣ����Ҳ����
<RUBY text="��������">�Ǹ�����</RUBY>ʱ�������г�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//������Ů��
//�������󥹤λ�`��ߤ����ʸФ���������ն������r�ģ�
//���£ǣͣ�����ħ����

	StC(1000, @0, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStC(300, true);

	WaitKey(1500);

	SoundPlay("@mbgm02", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������Ů��

������ʲôʱ��ʼվ���ǵġ�
���ڼ�ʮ��ǰ���һ��ӷ���ʱӦ�û�û����
��������Ҳ�п�����<RUBY text="����������">��©������</RUBY>��

�����ò�����̽�������޴��Ŀ����ԣ�
������Ůû���κ���ν�ġ����š���
��������������š�����һ�����˵����š�
��Щ��û�С�

����ȫûɢ�����������Ϣ��
����Ȼ��������������Ҳ̫û�������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc02/0130030a00">
���������ǣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ܥå��������ƥ�������
	WaitKey(1500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ȫ�޷�Ӧ��
��Ҳû�������ֶ�����Ӧ�ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/0130040a00">
�����񣿣�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������������һ�����׵���ͷ��
��������������뷨Ҳ�޷��޳�����Ů�İ�������˿
�������������졣

���һ����ؽ���������Ů���������������ա�
��
��������
������ů��

�����������µļ�����
����Ȼ�ǻ����������ࡣ

����Ȼ����˵���������壬������ȴ���Դ̼�����
��Ůգ��գ�ۡ�
��������ֱ������̧ͷ�����ҡ�

��ע�����ҡ�
����Ҳ�������������ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/0130050a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����衩�裨�饤���`��

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg037_����������`��b_01.jpg");
	CreateTextureSP("�}����200", 2100, Center, InBottom, "cg/st/st�衩��_ͨ��_��װ.png");

	EfRecoIn2(300);
	
	WaitKey(1500);

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������Ϊʲô��
����λ��Ů�����գ������ص��ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0130060a00">
��Ϊʲô��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������Ī���Ļ�Ӱ������
����Ҳֻ�ܼ�����Ĭ������������Ů��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

//���£ǣͥե��`�ɥ����Ȥ���
	SetVolume("@mbgm*", 1000, 0, AxlAuto);

//���������ɥ����_��

	OnSE("se����_����_�i��03_L", 1000);
	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se�ճ�_����_���_��01", 1000);

	SetFwR("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130070a13">
����˵���ڿ�����ڽ���ʱ��
�ڿ�����𣿡�


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130080a00">
�������Ǹ������Ƕ��ʰ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���һع�ͷ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	DeleteStA(0, true);

	CreateTextureSP("�}�ݒ��󱳾�", 6000, -207, -273, "cg/bg/resize/bg079_������ս��ڤβ���_03m.jpg");

//���������

	StR(6100, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_04_0.png", true);
	Delete("�\Ļ��");

	SoundPlay("@mbgm21", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����λ�ߴ��������վ�����
�����������룬<RUBY text="��������">��������</RUBY>��˫�۸�������
ע�⡣

�����������Ů��ȣ�����������������ˡ�
�����䲻�ꡣէ��֮������ʮ������ˣ�������Ϊ
������������ϵ����ᡣ����ҲӦ�ò�������ʮ��
��ɡ�

��������<k>{DeleteStR(150,true);}�����������һ��֮�����������Ե���Ů��
Ȼ��¶��Ц�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @80, @0, "cg/st/st�������_ͨ��_˽��.png");
	StCL(1000, @-40, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeDelete("�}�ݒ��󱳾�", 300, true);

	SetFwC("cg/fw/fw�������_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130090a13">
����ô���������ﰡ����Ů����
��������ž��������ɡ�����һֱ�����Լ�
�ļ��С���ʧ��Ǯ�����ڳ������������
�о��ɡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130100a13">
��������ط��ɡ�
���Ѿ���С����˯����ʱ���������������
ˢ����������˯�£��ѵ��ڿ㣬������ѡ�
���һ������Ҫ�ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130110a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 20000);
	DeleteStA(0,true);
	FadeDelete("�}��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����Ȼ��Ů�������˵Ļ�û�������κη�Ӧ����������
��������ס����˳�ӵ����������������������ȥ��Ȼ
����ʧ������
����Ŀ�����뿪��������ת���������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	StL(1000, @0, @0,"cg/st/st�������_ͨ��_˽��.png");
	FadeStL(300,true);

	SoundPlay("@mbgm35", 1000, 1000, true);

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130120a13">
���м�����һֱ���ò���˼�顣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130130a00">
��ʲô�£���


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130140a13">
��Ϊʲô��Ҫ���ڿ㣿��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130150a00">
����������ѧ�����𣿡�


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130160a13">
���Ⲣ��Ӱ���ҵ����⡣
�����ѵ�û�������𣿡�����
�ֲ��������ʹ����ڿ�ġ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130170a13">
��Ȼ��ÿ���˶������ڿ㡣
����ֱ������������һ������


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130180a13">
����������һ���棬��Ҷ������ڿ㰡��
�����˴����ڿ��Խ���
���˴����ڿ��ű��𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130190a00">
����ȷ��������


{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130200a13">
�����ǲ����µ���Ϊ�ɣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130210a00">
���ҳ������������á���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130220a13">
�����������඼�����ڿ㡣
����ô��Ϊʲô��һ��ʼ���ѵ�������


{	FwC("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130230a13">
�������ڿ㲻Ҳͦ�õ��𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc02/0130240a00">
������ԭ����ˡ�
���Ҷ������˼����


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130250a13">
������
����Ҳ�޳��ҵ��뷨�ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130260a00">
��������


{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130270a13">
��ʲô!?��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130280a00">
���˱�����Ӧ�ô��ڿ�İɡ���


{	FwC("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130290a13">
��Ϊʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130300a00">
������������ʡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130310a13">
���š���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130320a00">
�������ϴ�С�����˲����ڿ㵽���ߣ�
�����ÿ����𣿡�


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130330a13">
���������������𣿡�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130340a00">
����ش𡣡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130350a13">
���һ������������˿ھ���ǹ�����������ڿ㣬
���������̸��Ҵ��ϡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130360a00">
��ԭ����ˡ�
���ǡ������ǿ��һ�����˴����ڿ㣬
����ÿ����𣿡�


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130370a13">
���������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130380a00">
��������˵����Ů���ѵ��ڿ��أ���


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130390a13">
����������һ�����¡���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130400a00">
��������ô���¡���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130410a13">
���ţ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130420a00">
���ڲ����ڿ��������ó�ª���˴����ڿ㡣
��ÿ���˶������ڿ�����������Ů�ѵ��ڿ㣬
�ıߵ������Ƚ������أ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130430a00">
���𰸺���ȷ�ɡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130440a13">
����������������


{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130450a13">
�����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, false);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainSP("�}��д��", 9990);
	CreatePlainEXadd("�}��д", 10000);
	Wait(12);
	Fade("�}��д", 1000, 1000, Axl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������˻����������
��������˫�֣��ڿ��л��衣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm28", 0, 1000, true);
	CreateTextureSP("�}�݄�������", 9000, Center, Middle, "cg/bg/bg001_��c_03.jpg");

	Fade("�}��д*", 1000, 0, null, false);
	DrawDelete("�}��д*", 1000, 1000, "effect_01_00_0", true);

	SetFwC("cg/fw/fw�������_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130460a13">
��̫���˰�����!!
��̫�����ˣ�
����ô�������

//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130470a13">
�����ڽ⿪�˳������������ţ�
����Ȼ��ô�򵥾ͽ���ˣ�
��������������������·�����ǣ���


{	FwC("cg/fw/fw�������_�Zϲ.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130480a13">
������������····��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1500);

	SetVolume("@mbgm*", 1000, 0, null);
	StL(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStL(0, true);

	FadeDelete("�}�݄�������", 600, true);

//��������侲��
	SetFwC("cg/fw/fw�������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130490a13">
�����ǰ׳��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130500a00">
��������ʺܸߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����Ȼ�������Ҳ�����ô˵��
����;��ʼ���ҵ���������϶Ի���չ������������
��׵������������𡣵�������Щ���δ�������ѧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35", 0, 1000, true);

	SetFwC("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130510a13">
��������
������������ˣ����ǻ���
���ѵ��ڿ㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130520a00">
������������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130530a13">
�����������������߳��ĵ�֤����
���߳��ľ����ǻ۵ĸ�Դ����


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130540a13">
������С����������Զ��������������


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130550a13">
��ֻҪ�����ڣ�������޷��õ����ԭ�¡�
��������ô�������ǵ�Ը�������վ��޷�
ʵ�֡���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130560a13">
���������Ϊ����֮�ˣ��͸�ȫ�㡭����


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130570a13">
���׿�һ�С�����������
�������Ļ�������ͻ�<RUBY text="����">����</RUBY>������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130580a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������

	DeleteStL(300,false);
	OnSE("se����_����_�i��03_L", 1000);
	WaitKey(1500);
	SetVolume("@OnSE*", 1000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������ͻȻ����������
�����Ƶ����Ӷ��棬����һ���Ͼɵ������ϡ�

��Ȼ�����һֻ�֣�ʾ����Ҳ���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130590a13">
�����Ǵն������ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130600a00">
���ǵġ�
�����ǡ�����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130610a13">
���ҽ��ֶ���
����Ҷ������ֶ�����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������ϡ�
������������������ξ��������һ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mc02/0130620a00">
���ڴ�ѧ������𣿡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130630a13">
���ҵ�ȷ�����̹���
�������ڲ�һ������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130640a13">
����˾�Ҫ����Ӧ��һ�´����Ŀγ̡�
Ҫ���ں�����顣
����ˣ���ҲŻ�ƺ��ҽ��ڰɡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130650a00">
���ҴӸղž������ᵽ����Ĵ�����൱������
����һ�����Ҳ��������Ȼ�İɡ���


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130660a13">
��лл����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130670a13">
���������ҹ��ڴ�����ʹ�ã�
������ʲô�漣������������Ȼ֮�¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130680a00">
���˻���������


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130690a13">
���ܼ򵥡�
����;����ڿ�֮������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130700a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����������޸��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130710a13">
�����ԡ�
��Ӧ��˵������ǲ����ڿ�Ĺ��ҡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130720a00">
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����ǰ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130730a13">
�����ԡ�
������ǽ��еĹ��ҡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130740a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�������Դ����¿�ѭ���������ҵĴ����

�������������У�
���ǣ�������ǡ������е��о�����

�����˵��������������ǻ�е��ѧ��������ѧ������ѧ��
���������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130750a13">
���ƣ������塣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130760a00">
���ƣ������塭������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������͸�ҵ��뷨�Ƶ�˵��һ�����ʣ�
�ҽ��յ�������ʣ������Է�ۻ��
�����ǵ�������ס�

���ƣ������塭���ƣ������塣
����������ѧ</RUBY>��
��
��������ת����Ӣ�ģ��ٽ�Ӣ��ת���ɴ���

������ѧ��
����Ʒζ��������ʺ��ٴλ��ӷ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mc02/0130770a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���Ҹոտ���һ�����������һ��������
׫д�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130780a13">
�����Ӵ�ͣ���վ�������Ļ��ĽǶ���
�⿪���е����壬��ܺ�Ц�ɣ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130790a00">
�������������ô˵����Ϊ����ˣ�
�Ҹе��ܿ��ġ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130800a13">
����������Ҳ��ֵ�ÿ�ҫ���Ļ�Ŷ��
���������С�ĵ����У���Ȼ���Է�չ��
��˶��صļ�������


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130810a13">
������һ����˵�����ǻ����ȫŷ�޵Ĺ���
�����㡣��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130820a00">
�����ҵ���
�����������Ǽ��޷�������ɲ�ҵ�������ΰ��
����ҵ��Ҳ�޷�����ɳ����п��ؽ�θ������
��ҵ����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130830a13">
���š���ô����Ϊ���г��ж̰ɡ�
�����������һ��������͵����㡣��


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130840a13">
������Ӧ��˵�Һ��ڴ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130850a00">
�������ڴ�ʲô����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130860a13">
���Һ��ڴ�<RUBY text="����">����</RUBY>�Ƿ���ʵ��
�����ҵ�Ը������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
�����ҵĴ����
������˵�ġ����ǡ�����������Щ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc02/0130870a00">
������������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130880a13">
����ô�����������������ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130890a00">
�����飿��


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130900a13">
����Ȼ���ǽ��������ԭ�򰡡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����������
����פ���Ĺ��ʽ��ڲ��������������˻���ɡ�
����������Ȼ�ġ�

����Ȼ��������Ӧ�ö�����ʲôҪ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/mc02/0130910a00">
���������ڣ��������Լ���Ϊ��²��
ȴ�ܵ�����Ĵ�����
����ˣ��Ҳ����������е��⡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130920a00">
��ֻҪ���ڵ�Ը�����ҡ����Ǻ����йص�
��Աû�����������ͻ�Ļ����Ҿͻ�
�����ܵ��ƼӴ�����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130930a13">
���š�
������������Ҳû����ô����������


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130940a13">
������ܼ򵥡��ܿ�ͽ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130950a00">
�������ǡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130960a13">
���㽡���𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130970a00">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0130980a00">
���ǵġ�
��������ܴ�����û���ϰ�����


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0130990a13">
��Ӧ�ò�������һ���
ͻȻ����ɣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131000a00">
��������Ų��ᡣ��


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131010a13">
���Ǿͺá�û���ˡ�
������Ի��Լ��ķ����ˡ���


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131020a13">
��������������ʿ������������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/mc02/0131030a00">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131040a00">
����˵�����飬��ֻ�����������𣿡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131050a13">
���š���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131060a00">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131070a00">
����˵����������ξ���һ���
�����˵ء�
��Ϊ�Ρ�����˹����ҵ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131080a00">
��������ԵĻ���ϣ���ܸ�����ԭ�򡣡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131090a13">
�����Ѿ��������˰�����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131100a00">
��������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131110a13">
���Ҷ����������ڴ�����
���Ҹող���˵�����𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0131120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(1500);

//�����ݤ����

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0131130a13">
���������δ���������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���뿪������һ�̣�����������仰��
��
��������ĳ�����ҵ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���r�g�U�^

	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"mc02_014.nss"
