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

scene mb04_009.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_009.nss","KodouAction",true);
	Conquest("nss/mb04_009.nss","KodouSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg051_�����Ҿ��g_01=true;
	#bg043_���΍uɽ��_02=true;
	#bg050_�������Tǰ_01=true;
	#bg052_�����ҵ���_01=true;
	#bg002_��b_03=true;
	#bg047_�������_�a_01=true;
	#bg049_�������_סլ��a_01=true;
	#bg053_�����Ҥ�ͥ_01=true;
	#bg054_�����Ҽ���a_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_010vs.nss";

}

scene mb04_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_008vs.nss"

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg051_�����Ҿ��g_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
����������      ���й�ĸ�׺����á��й���ͥ��
��<PRE>��Now you are come, all my grief is removed��</PRE>

��
��������������       �й����Ų��ɵ��
��<PRE>��Let me forget that so long you have rov'd��</PRE>

��
������������������        �й����顣
��<PRE>��Let me believe that you love as you lov'd��</PRE>

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g
//��������ݳ����ɡ��ɤ��Ǒ�äƤ��������Ĥ项
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
//	FadeDelete("�ϱ���", 2000, true);
	FadeDelete("�ϱ���", 1500, true);
	SoundPlay("@mbgm01",2000,1000,true);
//	FadeDelete("�}��ܞ", 2000, true);
	Wait(500);
	FadeDelete("�}��ܞ", 2000, true);

	CreateTextureEX("�}��", 3000, -850, -85, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	Move("�}��", 6000, @-60, @0, Dxl1, false);
	Fade("�}��", 2000, 750, Dxl1, false);

	Wait(1000);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/mb04/0090010a14">
����������
��������˿ɲ���������������


//���⡿
<voice name="��" class="��" src="voice/mb04/0090020a14">
�����������������ҡ�
�����������������ҡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090030a14">
�����������õĽ���
��ĥ������似�ɡ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090040a14">
������Ҫ����֮�
����ֻҪר��׷���Ҽ��ɡ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090050a14">
����Ȼ�����޷��������ҡ���
�������ָʼ��δ�������ң���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090060a14">
��<RUBY text="������������������">ʼ�ղ��Ͽ��ҵĴ���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	WaitAction("�}��*", null);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
//	FadeDelete("�ϱ���", 2000, true);
//	FadeDelete("�}��ܞ", 2000, true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��
��������������������Ȼ�ǵ��Ǹ��⾰��
������Do you remember the path where we met?��

��
���������������������ܾúܾ���ǰ��
����������<PRE>��Long long ago, long long ago��</PRE>

��
������         ƽ�����棬��ȴ�����޷������Ĺ⾰��
��<PRE>��Ah, yes, you told me you ne'er would forget��</PRE>

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

��
������ֻ�ǵ������������һ��ģ��⾰��
����Then to all others my smile you preferr'd��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g
//��������ݳ����ɡ��ɤ��Ǒ�äƤ��������Ĥ项
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	CreateTextureEX("�}��", 3000, -445, -530, "cg/ev/resize/ev101_�ץ��`��_cl.jpg");
	Move("�}��", 6000, @60, @0, Dxl1, false);
	Fade("�}��", 2000, 750, Dxl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������Ϊʲô�أ�
��Ϊʲô���һᱻ����أ�

���Ҳ����ס�

����ץס�����Ǻŵĺ�����
��ץס��������ʶ��

�����ǣ�ȴδ�ܸ�֪�κ�ǰ�ס�
�����ǺŵĹ���ͻ�������أ����Ҵ�ɡ�

��Ϊʲô��

������Ϊһ�ж����ҵ������
����Ҫ�����޾��ľ���̽�鵽����ĺ�������Ȼֻ��
��������

�����ǡ���
��
�������������Ļ���

������Ϊ�������Ǻŵ�������һ��Ϊ����<RUBY text="��������">��������</RUBY>����
��
���Ǹ����ˡ��ҵ����á��Ǹ�ħ����

���Ѿ������־�������
��������ʶ��ִ�������˵�����ľ���

���������뽣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb04/0090070a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ҳ����ס���

���������׵�Ψ��һ�㡣
��
���ҵ���˫��ʲô��ץ��ס��ֻ�����ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	WaitAction("�}��*", null);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg052_�����ҵ���_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��
�������������������еĶ��������õش����š�
<PRE>��Love, when you spoke, gave a charm to each word��</PRE>

��
�����������������ǰ���������������
��Still my heart treasures the praises I heard��

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���F�g
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��b_03.jpg");//���ߩ`ע��
	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/mb04/0090080a14">
��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090090a14">
��ԭ����ˡ�
��<RUBY text="������">������</RUBY>������


//���⡿
<voice name="��" class="��" src="voice/mb04/0090100a14">
������ֽ����ǡ���
�������ֶ����������ء���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090110a14">
�����Ƿݡ����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��
�����������������޾������ᡣ
������������Though by your kindness
��������������my fond hopes were rais'd��

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������ʶ�����ڳ�����������
���ξ��롭����ʵ��

�������ı����ξ����ı�������ʵ����
�����ǵĽ��޿�ʼ����������塣

�����ģ����
����ò������ڡ�

����֪������ζ�Űܱ��������ĵ�����

�����ǡ���������Ρ�
�������ⳡս���и���һ�С�������Ϊ�������ġ�

��ȫ����������
��ȫ�������ԡ�
��ȫ���ľ���

��������ˣ�������Ȼ��
����ȫ�ء���������ء�

����ô����
���һ��������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb04/0090120a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����������������ů����������⡭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��a_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��
����������������ӵ�е��������Ҹ���
��You by more eloquent lips have been prais'd��

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/mb04/0090130a14">
�������鹹�ġ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090140a14">
����ٵġ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090150a14">
����Ϊ����<RUBY text="����">û��</RUBY>����
��û�й���Ҫ�Ķ�������


//���⡿
<voice name="��" class="��" src="voice/mb04/0090160a14">
���콫���ֶ��������ˣ�������
��������Ӧ�����Ѷ����˰ɣ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090170a14">
����<RUBY text="����">��˫</RUBY>�֡�
����<RUBY text="����">��˫</RUBY>�֡���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090180a14">
�����ѱ����������˻ٵ��ˡ�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090190a14">
����ɱ������
��������ɱ��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090200a14">
��ɱ��ĸ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg053_�����Ҥ�ͥ_01.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��
�������۾�����ã��Ҷ�����ʧȥ����Ҹ���
��But by long absence your truth has been tried��

��
����������������������ı䡣
����Still to your accents I listen with pride��

��
���������Ҹ�������������������Ų��ɵĵز���
����Still to your accents I listen with pride��

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	CreatePlainSP("�}��д", 5000);
	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureSP("�}�ݷ���/�}����", 4100, -835, -120, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	Move("�}�ݷ���/�}����", 6000, @0, @60, Dxl1, false);

	CreateTextureSP("�}����", 3000, -385, -500, "cg/ev/resize/ev101_�ץ��`��_cl.jpg");
	Move("�}����", 6000, @0, @-60, Dxl1, false);

	FadeDelete("�}��д", 2000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������������������������������������������������
������������������������������������������������
������������������������������������������������
���������������������������������������������ղš�

����������ʵ�ļз��У���������������ĳ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/0090210a00">
������ʲô������


//��������
<voice name="����" class="����" src="voice/mb04/0090220a00">
����˵����ʲô����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090230a14">
������<RUBY text="����������">����ɱ����</RUBY>��
�����㣬ɱ��ĸ�ס���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090240a14">
������ǰ����
���ڴ�������ų���֮ǰ���Ҿ��Ѿ�֪���ˡ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090250a14">
���⸱����׷�����ʲô��
���������ѵ�ɱ¾��֮���ֻ���������


//���⡿
<voice name="��" class="��" src="voice/mb04/0090260a14">
����ͬ����������ֳ����˵�������
����һ�������ֳ�һ�ݶ񡣡�


//���⡿
<voice name="��" class="��" src="voice/mb04/0090270a14">
���԰����ֳ����ޡ�
������������֪������Ѱ��Ķ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0090280a00">
��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090290a14">
�����ԣ��ҲŲ�δ��ɽ����ͷ��ɱ������


//���⡿
<voice name="��" class="��" src="voice/mb04/0090300a14">
��������һ���������ϳ��˴ն��ķ��ӡ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090310a14">
��Ϊ������ʹ�ô�����������ɱ������
��Ȼ�󡪡���


//���⡿
<voice name="��" class="��" src="voice/mb04/0090320a14">
�����Ϊ������������������ɱ����ĸ�ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ąӣӣţ���åɥ����ȥ�åɥ���
	KodouAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��
�����������������������㡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/mb04/0090330a14">
��������������һ��ɱ������
���Һ���ɱ�����Ǹ�<RUBY text="����">����</RUBY>��
���ٵ����Ǹ���������硣��


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090340a14">
�����Ѳ��������ˡ������鹹�Ķ���������ʧ��
��Ӱ���٣���ΪңԶ��ȥ�Ļ�Ӱ�ˡ�
�������㲻Ҫ��ִ�������ֶ����ˡ�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090350a14">
���������ɡ�
����ֻ��Ҫע������ǰ���ұ��㹻�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ąӣӣţ���åɥ����ȥ�åɥ���
	WaitAction("�ץ����Ą�", null);
	KodouAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��
�����������������������㡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/mb04/0090360a14">
���������ĸ���Ѿ������ˡ����������ˡ�
�����������ʹ�������Բ��Ϸ����Ļ����Ǳ�
�����������ĸ�ס�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090370a14">
�����Ե�<RUBY text="������">�����</RUBY>���ɡ�
��Ψ�����������Ĺ��ޡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090380a14">
��Ψ���ҵ���ߡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0090390a14">
��Ψ�����ܽ����㣡
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ąӣӣţ���åɥ����ȥ�åɥ���
	WaitAction("�ץ����Ą�", null);
	KodouAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��
�������������������㡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���^ȥ�⾰
//��������ܥå���
	WaitAction("�ץ����Ą�", null);
	ClearWaitAll(2000, 0);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");//���ߩ`ע��
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��
���������������������Ѿ��ǳ�������ˡ�
������������<PRE>��Long long ago, long ago��</PRE>

��
���������������������ܾúܾ���ǰ��
������������<PRE>��Long long ago, long ago��</PRE>

��
�������������Ѿ��޷������ģ�ңԶ�Ĺ�ȥ��
����������<PRE>��Long long ago, long long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	FadeDelete("�ϱ���", 1000, true);

}

..//������ָ��
//�Υե����롡"mb04_010vs.nss"



.//�ץ�����======================================================

..//��Ġ�ιĄ�
function KodouAction()
{
	CreateProcess("�ץ����Ą�", 5000, 0, 0, "KodouSET");
	SetAlias("�ץ����Ą�","�ץ����Ą�");
	Request("�ץ����Ą�", Start);
	Request("�ץ����Ą�", Disused);
}

function KodouSET()
{
	CreateSound("SEP01", SE, "sound/se/se����_��_��Ġ����02");
	SetVolume("SEP01", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	Request("SEP01", "Play");
	SetVolume("SEP01", 0, 1000, null);
	Request("SEP01", Disused);
	$�ƕr�g=RemainTime("SEP01");

	CreateColor("�}��ɫ��", 5000, -1024, Middle, 1024, 576, #CC0000);
	SetAlias("�}��ɫ��", "�}��ɫ��");
	Fade("�}��ɫ��", 0, 0, null, true);

	Move("�}��ɫ��", 0, @1024, @0, null, true);
	Fade("�}��ɫ��", 100, 1000, null, true);
	Wait(30);
	Fade("�}��ɫ��", $�ƕr�g, 0, null, true);
	Request("�}��ɫ��", Disused);
	WaitPlay("SEP*", null);

}