//<continuation number="1030">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_024vs.nss_MAIN
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
	#bg071_���ӘS���ڏ������_03=true;
	#bg001_��a_03=true;
	#ev956_ͯ��װ��_a=true;
	#ev956_ͯ��װ��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_ͬ��؞=true;

	$PreGameName = $GameName;

	$GameName = "mb02_025vs.nss";

}

scene mb02_024vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_023vs.nss"

//���ƥ饹�äݤ��Ȥ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg071_���ӘS���ڏ������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 1000, "slide_01_03_1", true);

	Wait(200);

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0010a09">
����ѽ����ѽ����
��������΢�е��ͷ���𡣡�


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0020a09">
��ԭ����ΪֻҪ��Χס�˾��ܾ͵�Ͷ�����ء�
�����ǵ�����찡����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0030a09">
�����ˣ��������ͽ��������ɡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0040a02">
����ʲô��Ц
���������������Ϲۡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0050a09">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(500,true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0060a02">
��������������еĿ��ͣ��Ǿ���ȥ�˰����硣
����������䣬�ҿɲ�ͬ�⡣��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0070a09">
��ŶӴ����λ�ǣ�
���ķ��ˡ�����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0080a02">
���ҽ����һ����
���պ������������˳��ͺá���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0090a09">
��������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0100a02">
���ǵġ����������ĸ����С�
�������������ˡ���


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0110a09">
���ǺǺǡ�����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0120a02">
������������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0130a09">
�������㲻��Ϊ�������������˴���ඣ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0140a02">
����Ȼ��׷���������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0150a09">
��׷ƶɮ�𡭡���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0160a02">
�������Դ����Ǻ��ϡ�
���ڰ�֮�����úò�ҫ�ۡ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0170a09">
�����������
�����ǡ����ǡ�ƶɮƽ���ﾭ��ע��ĥ�⡣��


{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0180a02">
����Ҫȡ���ǹ�ͷ�����ڳ�ǽͷ�ϡ�
�����ÿ��Դ�����ݡ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0190a09">
���ǺǺǡ���
����ôִ�ŵ�ɱ�Ⱑ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0200a09">
�������˲���ԭ������ͯ�ĺ����𣿡�


{//���ᱡ��Ц��
	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0210a02">
������ԭ�¡���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0220a09">
��Ҫɱ�𣿡�


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0230a02">
��Ҫɱ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0240a09">
����˺��ƶɮ�⸱Ƥ���𣿡�


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0250a02">
��˺�ѵ���ɷۡ�
��ק�����������������á��ڳ������غ��ι
����ѻ����

{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0260a02">
��������ͺ¿һϢ�д�֮ʱ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0270a09">
�����ǳ��졣
�����ǣ���Ϊ�ιʡ�������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0280a02">
���ιʣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0290a09">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0300a02">
����������ֳ��������С�
���������أ�����װ�����������»�е������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0310a02">
��ȴ��һ�澵�Ӷ�û�С���


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0320a09">
���ǡ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0330a02">
��������


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0340a09">
���ǺǺǺǺǺǺǡ�������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0350a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̤���z����˒줱��
//���ʤ��w��Ǥ��Ʒ����������`��
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateSE("SE01b","se���L_����_��ꪏ���01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg071_���ӘS���ڏ������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0360a02">
����!?��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/024vs0370b40">
�����������ǽ��У���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0380a02">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͬ��؞�������w�ΑB���ʤ��w��Ǥ롣
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_01_1", true);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,800,null,false);

	StL(1000, @360, @200,"cg/st/3dͬ��؞�w_���.png");
	Move("@StL*", 3000, @-90, @0, null, false);
	FadeStL(300,false);


	Wait(1000);

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0390a02">
����쵰������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/024vs0400b40">
���������𡭡���
�����������٣���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @-180, @0, Axl2, false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//��ͯ�Ĥ�����
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg071_���ӘS���ڏ������_03.jpg");
	StL(1100, @-100, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ",200, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se���L_����_�z_�ŵ�01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StCL(1000, @130, @350,"cg/st/3dͬ��؞�w_����.png");
	Rotate("@StML*", 0, @0, @180, @0, null,true);

	Wait(500);
	Move("@StML*", 300, @0, @60, Dxl2, false);
	FadeStCL(300,true);


	CreatePlainSP("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 6, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0410a09">
����ѽ�����Ƕ�������������
���������е�ȷû���������ñ�һ�澵�ӡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0420a09">
����Ϊ���ܻ��ڹ�ȥ���ֵĻ���֮�а�����
����ÿ�춼�����ܣ�����Щ���˲����ء���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0430a02">
����������
��Ϊ��Ҫ�������£���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0440a09">
��ʲô�£���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0450a02">
������һ�ԸԲ�С�������Ļ����¡���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0460a09">
�������Ǹ�������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0470a09">
����Ϊ����������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0480a02">
����������
����֮ǰ����������ô���¡���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0490a02">
���Ǹ�������������
����һ�ж���Ϊ����С��<RUBY text="����">�Ϲ�</RUBY>�𣿡�


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0500a09">
����Ҳ���Ǹ�Ҳ�������������ѡ�
�������ٹ��Ĺ�ϵ�Ѿ���Խ����˫����������
�����Ƕ�������ѡ�һ�뵽�����ڷ�����ƶɮ
�͸е������Ž���黳ӿ����ͷ��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0510a09">
���������ŷ�ӿ���ĳ��趯��������
��������⣿��


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0520a02">
����������
����ô����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0530a02">
�����ö�����ѵĹ�ͷ�������棬
����Ϊ�Ρ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0540a09">
���������Ѱ���
������<RUBY text="��������">������Ȥ</RUBY>�š���


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0550a02">
������������


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0560a09">
���ǺǺǡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0570a02">
������쵰����
������ô������ô���𡣡�


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0580a09">
����Ȼ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0590a02">
������Ƿ�ᱻ��ˡ�𣿡�


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0600a09">
��˭�Ҳ���ˡ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0610a02">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0620a09">
��˾����
�������ź���������ķ��ɶ���Ϊ����Ȩ��֮
�������𷣶��ƶ��ġ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0630a09">
�����ߣ�����𣿡��������ݣ�
������������ͯ�ĺ����޲����֣�������ǹ��
���꣬��Ȼ��úܺá�����


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0640a09">
����ô��
��������˭����ˡƶɮ�أ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0650a02">
�����ҡ���


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0660a09">
������Ŷ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0670a02">
���������ɻ������
�����Ǿ��Բ�����ˡ��ġ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0680a09">
���������ǽ�һ���ɡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0690a09">
�����������ں��ˣ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0700a02">
��û�������ҡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0710a09">
��ȡ���ҵ��׼������������ء�
�����ͽ��𣿡�����˵�����Եõ���λ����


{	FwC("cg/fw/fwһ��_����a.png");}
//�룺�������ߤƤ�����090930��
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0720a02">
���޴���
�����������Ұ������������һ��ǮҲû��Ը
�������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0730a09">
����ô����ġ���
��ֻ����Ϊ<RUBY text="��������">�Ƿݷ�ŭ</RUBY>�𣿡�


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0740a09">
����ƾ��߾���ɱ�����𣿡�


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0750a02">
�����ǡ�
��<RUBY text="��������">���˶���</RUBY>����


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0760a02">
�������޷���ˡ��Ҫȡ��������
����ƾ�Һ͡������ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��*");

//��һ��������
	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}����", 4100, 235, 0, "cg/bg/bg071_���ӘS���ڏ������_03.jpg");
	CreateTextureEX("�}�ݷ���/�}����100", 4200, Center, InBottom, "cg/st/stһ��_ͨ��_�Ʒ�b.png");
	CreateTextureEX("�}�ݷ���/�}����200", 4150, Center, InBottom, "cg/st/3d������ţ��_����.png");
//	Move("�}�ݷ���/�}����100", 0, -313, -405, null, true);
	Rotate("�}�ݷ���/�}����", 0, @0, @180, @0, null,true);
	Move("�}�ݷ���/�}����*", 0, @100, @0, null, true);
	Move("�}�ݷ���/�}����200", 0, @-150, @350, null, true);

	OnSE("se����_����_�z�i��03",1000);

	Fade("�}�ݷ���/�}����*", 200, 1000, null, false);
	Fade("�}�ݷ���/�}����", 200, 1000, null, false);

	Move("�}�ݷ���/�}����100", 500, @200, @0, Dxl2, false);
	Move("�}�ݷ���/�}����200", 500, @200, @0, Dxl2, false);
	Move("�}�ݷ���/�}����", 500, @100, @0, Dxl2, true);

	Wait(200);

/*
	StR(1200, @60, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StCR(1100, @190, @0,"cg/st/3d������ţ��_����.png");
	FadeStR(300,false);
	Wait(50);
	FadeStCR(300,true);
*/
	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0770a02">
����������Ҫ������ɡ�
������Ҫ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0780a09">
��������


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0790a09">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0800a02">
��������


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0810a09">
��������������������!!
�����𣡡����𣡡�<RUBY text="����">����</RUBY>!!��


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0820a09">
��������а��С�㣬
���������ڡ������������������!?��


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0830a09">
������һ�졪��һֱ��������һ�����֡�
�������������ˣ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0840a02">
��ʲô����


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0850a09">
�������֮���貢��ֻ��������¡�
�����Ķ��衪�����󡪡��޳ܡ�����˼�ǣ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0860a09">
�����������������ޣ�
�������Ļ��õ���ˡ��!?��


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0870a09">
�����������ᱻ��ˡ��
��<RUBY text="��������">������ˡ</RUBY>���к�Ȥ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0880a09">
�����ܷ񶨰ɣ�
������ҳݵ�ɭ�����󣬾��鼯�������־��
������ƶɮ֮·�ɣ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0890a09">
������<RUBY text="����">Ӣ��</RUBY>����Ϯ����!!��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0900a02">
��������


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0910a09">
������Խ���Ѻ�������֮����
�����������Ծ���������ޡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0920a09">
����аʥ�ס����������ڣ�
�����Һõȣ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0930a02">
����������������׼���ˣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0940a09">
������ʲô����
������׼������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0950a09">
����Ҫ̤ƽ���ǡ�
�������ȫ�ұ�����ҵ����


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs0960a09">
���Ӳ���ͷ������������
�����췣���������ա���
����Ϊ�����<RUBY text="����">��ң</RUBY>���ˣ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0970a02">
����������ó�!!
������!!��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/024vs0980b40">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5000);
	StR(4900, @60, @0,"cg/st/stһ��_װ��_�Ʒ�a.png");
	FadeStR(0,true);
	Delete("�}�ݷ���/�}����100");
	FadeDelete("�}��д", 300, false);
	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0068a]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs0990a02">
�������������𾡶��
�������������Ͼ�а�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��д", null);
	CreatePlainSP("�}��д", 5000);
	StR(4900, @60, @0,"cg/st/stһ��_װ��_�Ʒ�b.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, false);
	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0068b]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs1000a02">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ډ���
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStR(0,true);


	CreateTextureSP("�}�ݷ���/�}����200", 4150, Center, InBottom, "cg/st/3d����_����_ͨ��.png");
	Move("�}�ݷ���/�}����*", 0, @250, @0, null, true);

//	StR(5200, @0, @0,"cg/st/3d����_����_ͨ��.png");
//	DeleteStCR(0,true);
//	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);

//	CreatePlainSP("�}��д", 5000);
//	StL(1100, @-60, @0,"cg/st/stͯ��_װ��_˽��.png");
//	FadeStL(0,true);
//	FadeDelete("�}��д", 300, true);

	Wait(1000);

	CreateSE("SE01","se����_�z_װ��03");

	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/ev/ev956_ͯ��װ��_a.jpg");
	SetBlur("�}����100", true, 3, 300, 100, false);
	Zoom("�}����100", 0, 1500, 1500, null, true);

	MusicStart("SE01",0,1000,0,700,null,false);
	Zoom("�}����100", 1500, 1000, 1000, Dxl2, false);
	Fade("�}����100", 1000, 1000, null, true);
	Delete("�}�ݷ���/�}����200");
	DeleteStA(0,true);

	Wait(1000);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs1010a09">
������ڤ�������ħ����
����̤֮·������֮������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	#av_ͬ��؞=true;

/*
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3dͬ��؞_����_ͨ��.png");
	DeleteStCL(0,true);
	FadeStL(0,true);
	FadeDelete("�}�ե�", 1000, true);

//�����ڣ֣�����

	CreateSE("SE02a","se�M��_냇��_�i��01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitAction("@", null);
	CreatePlainSP("�}��д", 5000);
	StR(1200, @0, @0,"cg/st/3d����_����_�i��.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 200, true);

	CreateSE("SE02b","se���L_����_������02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreatePlainSP("�}��д", 5000);
	StL(1100, @0, @0,"cg/st/3dͬ��؞_����_��x.png");
	FadeStL(0,true);
	FadeDelete("�}��д", 200, true);
*/

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��04");
	CreateSE("SE03","se����_�z_װ��06");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	Zoom("�}����100", 600, 2000, 2000, Axl2, false);
	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSP("�}����100��", 10000, 0, 0, "cg/ev/resize/ev956_ͯ��װ��_bl.jpg");
	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/ev/ev956_ͯ��װ��_b.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 3, 200, 70, false);

	OnSE("se����_�z_װ��03",1000);

	Move("�}����100��", 3000, -1024, @0, Dxl1, false);
	Fade("�}�ե�", 1000, 0, null, true);

	Wait(1000);
	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("�}����100", 1000, 1000, null, false);
	Zoom("�}����100", 1000, 1000, 1000, Axl1, true);
	MusicStart("SE03",0,1000,0,1250,null,false);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev956_ͯ��װ��_b.jpg", true);

	Wait(1500);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}����100");
	Delete("�}����100��");

	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureSP("�}�ݷ���/�}����", 4100, -835, -320, "cg/bg/resize/bg071_���ӘS���ڏ������_03��.jpg");
	CreateTextureSP("�}�ݷ���/�}����100", 4200, Center, Middle, "cg/st/resize/3d����_����_ͨ����.png");
	Move("�}�ݷ���/�}����100", 0, -1012, -661, null, true);

	CreateTextureSP("�}����200", 3100, Center, Middle, "cg/st/resize/3dͬ��؞_����_ͨ��l.png");
	Move("�}����200", 0, -1159, -1463, null, true);
	CreateTextureSP("�}����", 3000, -385, -300, "cg/bg/resize/bg071_���ӘS���ڏ������_03��.jpg");

	Move("�}����200", 3000, -1159, -1563, Dxl2, false);
	Move("�}�ݷ���/�}����100", 3000, -1012, -561, Dxl2, false);
	Move("�}�ݷ���/�}����", 3000, @0, @60, Dxl2, false);
	Move("�}����", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d�����˜�_����_ͨ��.png");
//	FadeStR(0,true);

	FadeDelete("�}�ե�", 1000, true);

	Wait(300);


	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/024vs1020a02">
���ϡ���
���ǵ�Ϊ�Լ�����ȣ�����!!��


{	FwC("cg/fw/fwͬ��؞_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/024vs1030a09">
����������
����ʲô��������׵��Ժ���!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ͻ�������`��
	CreateSE("SE03","se���L_�n��_�nͻ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");
	CreatePlainSPadd("�}��д��", 5100);
	CreatePlainSP("�}��д", 5000);
	Zoom("�}��д��", 500, 1500, 1500, Axl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Axl3, false);

	Fade("�}ɫ��", 500, 1000, null, true);
	$�Еr�g=RemainTime("SE03");
	FadeDelete("�}��д��", 200, false);
	CreateColorEX("�}ɫ�\", 10010, "#000000");
	Fade("�}ɫ�\", $�Еr�g, 1000, null, true);

	ClearFadeAll(100, true);


}

..//������ָ��
//�Υե����롡"mb02_025vs.nss"