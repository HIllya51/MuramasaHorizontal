//<continuation number="730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_011.nss_MAIN
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
	#bg053_�����Ҥ�ͥ_01 = true;
	#bg053_�����Ҥ�ͥ_04 = true;
	#bg001_��a_02 = true;
	#bg001_��a_03 = true;

	#ev134_���L���h�֣����I����_a = true;
	#ev134_���L���h�֣����I����_b = true;
	#ev134_���L���h�֣����I����_c = true;
	#ev135_���L���h�֣����I����_a = true;

	#ev135_���L���h�֣����I����_b = true;
	#ev135_���L���h�֣����I����_c = true;
	#ev135_���L���h�֣����I����_d = true;
	#ev135_���L���h�֣����I����_e = true;

	#ev135_���L���h�֣����I����_a = true;
	#ev135_���L���h�֣����I����_b = true;
	#ev135_���L���h�֣����I����_c = true;
	#ev135_���L���h�֣����I����_d = true;
	#ev135_���L���h�֣����I����_e = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_012.nss";

}

scene ma05_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_010.nss"

//��ҹ����ǰ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��a_03.jpg");
	CreateTextureEXadd("�}����110", 110, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	Fade("�}����110", 0, 400, null, true);
	DrawTransition("�}����110", 0, 0, 300, 1000, null, "cg/data/slide_02_00_1.png", true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������
������˫�۵�ɲ�ǣ��㵽����һʱ�̡�

����ʱ��̫����δ����Ϊʲô���������ء�
������Ϊ�����ٴ��������������������ȫ��
��ϸ�����˷���������

������˵����������ν��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ
	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg053_�����Ҥ�ͥ_04.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
//	StL(1000, @0, @0,"cg/st/st����_ͨ��_��Tb.png");
//	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���򿪵������ţ����ߵ�������ɫ��Ⱦ��ͥԺ�С�
�����ܱ��ž�����Χ��

�������峿�ǳ��е��¡�
��Ȼ�����������ݼž�������������Ϊ�������ڳ��ߣ�
������ĳ���̺���һ���ն񡪡��·�ѹ���ŵ�ĳ����
����

��û�߼������Ҿͷ�����������Ŀ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma05/0110010a00">
�����Ϻá���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110020b31">
���������Ϻá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ƺ����������������ȥһ�㣬�������š�
���ž����ƺ����Ų����������ڣ���Ĩ��Ӱ��ͥԺ����
�������˳�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I
	CreateSE("SE01","se����_����_�᤺����01");
	StC(1000, @0, @0,"cg/st/st���I_ͨ��_�Ʒ�.png");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStC(300,true);
	SoundPlay("@mbgm26",2000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������һ��զ������������Ǽ��䲻Ը��ġ�

�����Ҷ�������Ŀ���£����Ѿ�ƽ����΢Ц������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110030b31">
�����ˣ�����ʡ���ҵĹ���
������ת��תȥ����ı���
�ˡ���

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110040a00">
�������ҾͲ��ǵø��߹����ҵ�ס������

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110050b31">
���������飬һ���������֪����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ȷ��ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0110060a00">
���������⣿��

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110070b31">
�������ҾͲ�֪���𣿡�

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110080a00">
����Ȼ�������������������������֮�¡�
���б�Ҫȷ��һ���Է���һ����ˡ���

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110090b31">
���������������֮�£��Ǹ�û��
ȥһһȷ�ϵĿ��аɡ�
����Ȼ���Ǵ���������˯�ڴ��Ļ�������
ֱ�ӿ�������Դ�����

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110100a00">
�������Ļ�ԭ����û��һ˿��⡣��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ѡ������֮ǰ��ʱ����͵Ϯ������������Ȼ�İɡ�

����������������µؾʹ�˯������ô�������߽����
��Ҳһ���������ˡ�

����ʹ�����ˣ�Ҳ���ֽű��أ�����޷���֮������

���峿��˯����������ڹ��������ı����У����ʱ��
Ҳ����Ϯ�����ʱ����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110110b31">
����������Ҳһ����
���ֲ��ǿ������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������˵�ţ��������õ�ĳ������������߶�����

����������֣��ڿ��н�ס��

����̫����
��ǰ����ĶԾ��н�������һ�ѡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma05/0110120a00">
�������㲻�Ǵ������Ϯ�𡣡�

{	FwL("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110130b31">
���ߡ�
������ܺ������潻�������ȳ���
���µĻ����������õ�ѡ�񡣡�


{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110140b31">
��ֻ�ǣ�Ϊ������һ��ƽ���ȥ����
׼��һ����������ʽ����ȫû������
��������

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110150a00">
�����𡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ȼ������������������������Ҳ�����޷���⡣


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0110160a00">
���һ���������ԵȽ������ʸ�
�����������𣿡�

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110170b31">
�������Ҫ��ô��Ļ�����ô����ˡ�
��������������ս�Ļ����Ҿʹ�����
����նɱ����

{	FwL("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110180b31">
��ֻ���������ˡ���

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110190a00">
��������

{	FwL("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110200b31">
���������ô�����á�
����֮ǰ��������һЩС����Ҳ�С�
��Σ��һὫ���ֶ��������������һͬ
ȫ��նɱ������������

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110210a00">
��������Ȼ���ù�һ�����ּ����ˡ�
�������㲻�����ң���Ҳ����Ϊ���Լ���
�޵�֮������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����Ӧ¶�����е����죬��Ҳ�ν����ʡ�
�����е�ά���ƺ�����Ҳûи����

���ǲ���Ϊ������ѵ��޷�ʹ�ö������涯��ʲô�ֽ�
�ء���
��Ҳû��ӿ�ֳ�����������Ҫ��ʲô����Ļ���ֻҪ
һ��ʼ�Ͳ���̫�����ұ�ɡ�

�����ң����������������������ڵ�ս��Ҳ������α��

��˵Ҫ�����潫�Ҵ������Ļ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0110220a00">
���һ���ͨ���ķ����Ը��㡣��

{	FwL("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110230b31">
��������ô˵����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg053_�����Ҥ�ͥ_04.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);
	Fade("�}����100", 0, 1000, null, true);

	CreateTextureEX("�}st100", 120, -324, -190, "cg/st/resize/st���I_���L_�Ʒ�_ex.png");

	Fade("�}st100", 0, 1000, null, true);

//	OnBG(100,"bg053_�����Ҥ�ͥ_04.jpg");
//	FadeBG(0,true);
//	StL(1000, @0, @0,"cg/st/st����_ͨ��_��Tb.png");
//	StR(1000, @0, @0,"cg/st/st���I_���L_�Ʒ�.png");
//	FadeStA(0,true);
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("�}st100", 500, @+50, @0, Dxl1, false);
	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ң����콫̫�����������Ҽ�֮�ϡ�
������������ͳ���϶���̬��

����Ҳ�ڳ����ơ���
������֮ǰ���Ҽ���˵����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma05/0110240a00">
��������¡���

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110250b31">
��ʲô����

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110260a00">
���ھ���֮ǰ���ܲ�������Լ���أ���

{	FwL("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110270b31">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������ǻ�������Ĵ��ߡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110280b31">
����ô���������뵽ʲô�����Լ������
���������޷������Ѿ���������Ϊ��ڵ�
Լ����
������Ҫ��ǩ����ͬ����

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110290a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ҡ��ҡͷ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma05/0110300a00">
�����ϴ�һ����Լ�����ɡ�
�������Ӯ�ˣ�����������ֹͣ��С��
���Ӷ���Ϊ����

//��������
<voice name="����" class="����" src="voice/ma05/0110310a00">
�������Ӯ�ˣ��������������á���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��������Ȼ��������ɱ���Ķ��ֶ��ԣ��������������
Щ����Ҫ�졣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110320b31">
������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110330b31">
��������ʲô������

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110340a00">
��ûʲô�ر���¡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ֻ���¶��˾��ġ�
��������������ЩС������
��ս���������λŮ�Եĺ���֮��Ϊֹ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0110350a00">
�������𣿡�

{	FwL("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110360b31">
����������Ŷ��
������������Ը���Ļ�����

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110370a00">
����ô����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);
	PrintGO("�ϱ���", 15000);

	CreateMask("�ޥ���", 2000, 0, 0, "cg/mask/ci����å���_01_00.png", false);

	CreateTextureEX("�ޥ���/�}����100", 2100, -481, 225, "cg/bg/bg053_�����Ҥ�ͥ_04.jpg");
	Zoom("�ޥ���/�}����100", 0, 2000, 2000, null, true);
	SetShade("�ޥ���/�}����100", HEAVY);
	Fade("�ޥ���/�}����100", 0, 1000, null, true);
	CreateTextureSP("�ޥ���/�}st200", 2200, 126, -177, "cg/st/resize/st����_���L_��T_ex.png");
	Request("�ޥ���/�}st200", Smoothing);
	Zoom("�ޥ���/�}st200", 0, 750, 750, null, true);

	CreateTextureEX("�}st100", 120, -503, -142, "cg/st/resize/st���I_���L_�Ʒ�_ex.png");
	Request("�}st100", Smoothing);
	Zoom("�}st100", 0, 750, 750, null, true);
	Fade("�}st100", 0, 1000, null, true);

	CreateTextureEX("�}����100", 100, -205, 230, "cg/bg/bg053_�����Ҥ�ͥ_04.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);
	Fade("�}����100", 0, 1000, null, true);

//	OnBG(100,"bg053_�����Ҥ�ͥ_04.jpg");
//	FadeBG(0,true);
//	StL(1000, @0, @0,"cg/st/st����_���L_��T.png");
//	StR(1000, @0, @0,"cg/st/st���I_���L_�Ʒ�.png");
//	FadeStA(0,true);
	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("�ޥ���/�}st200", 500, @-40, @0, Dxl1, false);
	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���Ҿ���̫����
�����������Եľٵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma05/0110380a00">
����Ұ������ս�񷨣��ն�������
�����ϡ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110390b31">
��������������������
����˵�Եȵ��Ա�����Ҳ̫���޴�������
������������Ҳ�޷�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L�£ǣ�
	SoundPlay("@mbgm09",0,1000,true);

	Move("�}st100", 1000, @+30, @0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��������ǰһ������������������֮��ľ��롣
����������Ȼû�������ϴ��ǰ��ư��ִ��ݵ�Ӱ�ӡ�

���е�ֻ����ʵ������ܵ�ƽ���ġ�
��������Ȼ����ǿ��

���ٴθп���ͬʱ���ҷ������õ�����ս�Ĳ��ԡ�

���������������Ҳ�޷�ʤ�����ġ�

���������жԵС�
���Ⲣ�������ڵ��еķ�������״������
ƽ�⡢�������ķ�ʽ�����ε����á���ȫ����������һ
��;Ϊǰ��ġ�

������������һ�㣬���������͵��������ܡ�
������ʵ�����в�࣬�����������������Ļ���Ҳ���
�е�ʤ����ץס֮ǰ�ͻ������ˡ�


��ֻ����ȷ��ʹ��̫�������һ�Ҫ�ܿ�Ҫ����
����Ȼ�Ļ�����Ҫ�ڿ����Է�ǰһ��ͣ������

������������Σ����룬�����õ���ȡʤ�㲢�޶��£�
�������¡�
������ֻ��һ˿һ���ܹ��ӽ�ʤ���Ŀ��ܣ�
�������ѡ������α������ҵ����ϡ�

���ҵļ��������������������Լ�һ���˵����ˡ�

�����쾲����һ��һ�����ڵ����ϣ���������֮��ľ�
�롣
���·��ڹ�һ��Ĳ�������Ȼ������������������в��

�����ƶ���������ƽ�ȣ�ȴ�����ޱȵı�ֱ�������Ǽ�
Ϊ���ѵ��¡�
�����Ƶ�ά�������첽��Ҫ���״�ɵöࡣ

���ٳ����г������ӱ����������ˡ�
���ñȲ��л�Ҫ�������ٶ����Ƚ��������г���������
˭��������

���������������ζ��������ݾ����������ĵ���ȫ
���ơ�
�����ܵĵ������ҵļ�������һ�ɺ��⡣

��������֮������ˡ�
����ͨ���˲�����������<RUBY text="��������">ն������</RUBY>��˲�䣬�ֺ������
��ȫ���գ���������ѵ�ʱ���ӳ�һ����


������֮����ģ���ֻ����Ҳ������ͬ��ս���ˡ�

������ǿ����Ϊ���Ŷ���ֱ��������ɣ��ʵ���������
�ɳ�һ�����ȶ���Ұ��

���Ų�������ԭ�ء�
����Ҳ��һ��ѡ��

���Ե��˵Ĳ����ҷ�Ҳ������Ӧ�Ĳ�����������ҵз�
�Ծ�������ն���ȡ�Լ��ľ��롪����Ҳ��һ�ַ�ʽ��
��Ȼ���ҷ����ˡ������ַ�ʽ�����Ļ�����������Ӯ��
�˵ġ�

��˵������˴�֮��ľ��룬ʵս�����Ǳ�ʲô����Ҫ
�ġ�
�������еļ�����������εı��Ծ��飬��˿������Ϊ
�Լ����ܹ��й����������ߵ�ս��������

����ֹ�ȴ��Ļ�����Ȼ���ڽ��������������ø��Է���
���Ծ���İ���ȴ���ҷ����׻�����ơ���ʹ�ٶȺ�����
��ֻҪ���˻ᶯ����һ����޿ɶ�ҡ��


�������ڴ�ʱ��Ѱʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma05/0110400a00">
������������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110410b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����������������������֣���ȫ���ܲ���������˵�
������
����Զ��ԣ�������Է��������������ס�Լ��ĺ���
�𡭡�������

�����˿������������ںڰ���д���ж�Ԥ������˿���
����ͬһ����˼��
�����ֻ�ץס���޷�Ӧ�ԵĻ�����������ɣ�


���˶����忿���Ǽ��⣬������ĳ����Ǳ�����״̬��
���ҵġ�
��ͨ��������<RUBY text="��">��</RUBY>��<RUBY text="��">ͣ</RUBY>������ͣ��<RUBY text="��">��</RUBY>�������ļ�����������

����ˣ�������ζ����ܽ���������β���ʱ������ȫ
������ж��������ٵ�˲�䱻�Է������

������Ҫ�������ķ��Ⱦ����ܵļ�С��

���ܹ����غ����Ļ���Ҳ������������
�������ܵ�����ʹ�÷β���������

����֪��������������ˡ�

����������������С���ĵ����е��Է��ľ��룬��ܽ�
��ĳ���̶�ֵ��
��
�������̶�ֵ��

�����ǣ�<RUBY text="��������������">�ܹ�ն���ľ���</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma05/0110420a00">
�������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���Ҿ����ܵشӽǶ����ӵ��о����룬����ȷ�ϡ�
�������ϣ����԰��յ�������Ϊ��λ�ĳ̶ȡ�

��ս��������
�����ǣ��ҵĻ��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h���g�Ϥβ�
	CreateTextureEX("�}�ţ�30", 3000, Center, Middle, "cg/ev/ev134_���L���h�֣����I����_a.jpg");
	Fade("�}�ţ�30", 1000, 1000, null, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����ҵ����������ȳ���
��Ȼ���������ȴ�в�࣬�������������Ч��̵Ĳ�
�ࡣ

���ҵ���̱ȶ��ֻ�����
��ռ�����Ƶ��ǲ��֣����ҷ��ܹ������湥���ľ��롣


��������ֹˮһ����ٶȲ��Ͻӽ������������죬
�������Ŀ��Ƿ·���Ϊ��
�������׻���������һ�㡣

����Ȼ��������ˡ���<k>����Ҳ�޷���˶��ԡ�

��������������˿��ǵġ�
����������ѵ�ʱ����������Ȼ������ʱӭ��������
ѹ�ơ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h���a
	CreateTextureSP("�}�ţ�29", 2900, Center, Middle, "cg/ev/ev134_���L���h�֣����I����_b.jpg");
	FadeDelete("�}�ţ�30", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����˵�������ռ�ſ��Ե�����ع�����������ָ����
��ʼ����֮ǰ��
����ʼ������������ǰ��Ļ�����������Ȼ�ģ������
���̣��ڶ��ֶ���Ҳ�ǹ�����ʱ����

����״������ֻ������һ����

��������ˣ����ж���һ��ʮ��������һ�㲻���

�����ֽ��ҷ��Ĺ���<RUBY text="����������">��һ�ӳٵ�</RUBY>����ס����������ǿ��
���ƾ����еľ��档��ʵ����������в�ͨ�ġ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h���b
	CreateTextureSP("�}�ţ�28", 2800, Center, Middle, "cg/ev/ev134_���L���h�֣����I����_c.jpg");
	FadeDelete("�}�ţ�29", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������޷�������������ʱ����һ�����ˣ��ڵ�����
�������������Ĳ����ķ������ǲ��Զ�����
����ʹ����ǰ����λ�������֣�
Ҳ�޷������������

�������п����ý�������ء���
����Ȼ��������˵�����Ǵβ���Ľ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ꡣͥ�ǤΌ���
	Move("�}����100", 0, @-40, @0, Dxl1, true);
	FadeDelete("�}�ţ�*", 1000, true);

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma05/0110430a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��������롣

�������ҵľ��롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110440b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��Ҳ�����������á�
�������˫�����·�Խ���ն�

���ҷŹ�ʱ����
����Ȼά�ֲ��������ɵ����������̾��롣

���ҷ�����Ч��̣��з������֮�⡪���ҷ���������
����Ȼ���������Ͼ�Ҫ��ʧ�˰ɡ�
���ҷŹ�ʱ����һ��ʵ�����ǳ�����������ϡ�

��������ȷ��
�������ӱ����ĳ��棬����Ӧ�ù����ġ�

��֮���Դ��������ͷ������Ϊ�Ժ���ͻȻ����һ�仰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma05/0110450a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ȷ��˵Ӧ���������������������ɡ�
��������Ϊ�´����������Ĵ�����֮���ᡣ�ڵ´�ʱ��
ĩ���������Ҷ�Ͷ���ڳ�͢�����У���Ϊ�����޵Ĳ���
��������������ϵ��汲��

��ӵ�������صļ�������Ȼ�Ѿ����ѱ���֮Ϊ������
�ˣ�����Ļ�����ں��ܻ�ӭ��
����˵�Ƿ��ɣ�ȴ���������ڱ���֮�ϵĵ�λ������
�䵱���Ѿ���Ļ��ռ��һϯ֮���ˡ�

���������ҽ���������ի��
������Ϊ�������֣��ܹ�������һ�壬��������������
���޾��ڵ�ͷĿ�����������������¾͵���Ϊֹ�ɡ�


�������������������ģ���ӵ�е´��ұ���������СҰ
��һ������
����Ҳ�������ɣ��������а���������

�����䡣
����Ҫ�õ��˴�����<RUBY text="��������">��ն����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������h
	CreateTextureEX("�}�ţ�30", 3000, Center, Middle, "cg/ev/ev135_���L���h�֣����I����_a.jpg");
	Fade("�}�ţ�30", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureSP("�}�ţ�29", 2990, Center, Middle, "cg/ev/ev135_���L���h�֣����I����_b.jpg");
	FadeDelete("�}�ţ�30", 1000, true);

	WaitKey(1000);

	CreateTextureSP("�}�ţ�28", 2980, Center, Middle, "cg/ev/ev135_���L���h�֣����I����_c.jpg");
	FadeDelete("�}�ţ�29", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430a]
���ȴ������ַ������������½���Ϊֹ�����ҷ��ſ�ʼ
������
��������жԵĽ�����ԳƵĽ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�27", 2970, Center, Middle, "cg/ev/ev135_���L���h�֣����I����_d.jpg");
	FadeDelete("�}�ţ�28", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430b]
��Ȼ��ӭ���з��Ľ��У�<RUBY text="��������">����ն��</RUBY>��
���������������˵����嶼��ն�ϡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�26", 2960, Center, Middle, "cg/ev/ev135_���L���h�֣����I����_e.jpg");
	FadeDelete("�}�ţ�27", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
���ý��е�һ��ͬʱ���������ͷ��ء�
������������һ����֮����������ʽ��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}����100", 0, @-50, @0, Dxl1, true);
	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0432]
�����������ļ��������ܶ������졪���������Ƿ�֪
����
��СҰ����������ȻΪͬһ����Ч���������ǻ����Ӷ�
��ΪǱ�ڵ��ˣ�͵ѧ�˴˵ļ���Ҳ�Ǽҳ��㷹��

����ʹ������ˣ�ĳ�����ɵļ����������մ����ڱ��
������Ҳ���Ǻ���֮�¡���Ϊ׷�����ͬ�������Ĳٿ�
������������Ҳ����˵��������Ȼ�ġ�
���������������ڴ�������ļ�����ǲ���˼��֮�¡�

��ʵ���ϣ��Ҳ�������֪��������һ���ƶ���������
��������Ϊ������ɡ�
���ڼ�Ұ�����У����м����ǹ��Դ�֮�������ڵġ�


��������ҵĹ�������������������ȡʤ����������
����ӭ���ҵ�ʱ�򡪡�ʤ���������ܹ������Է��Ľ�
�С���Ϊ���������໥����ʱ��ֻ�п����Է��Ľ���
��������<RUBY text="��������">ն��Է�</RUBY>��

�����ⳡ�������Ҳ�����
����Ȼ�����ҷ��ȿ�ʼ�����ʱ���Ѿ�����һ�����ϵ�
�����ˡ�����Ȼ����;�仯Ҳ���ǲ����ܣ����������
Χ�ڱϾ�����̫�����ж��ˡ�

��������ĳ�̶ֳ����ǿ����ҷ��Ľ��вŶ��ֵĵ���֮
�䣬�������Ե߸������Ӳ�ࡣ
��Ҳ����˵��ֻҪ������һ�������Ǵ��ƽ��Ҳ�����
����������ǽ�ʥ�����߼��������η��֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�������ҷŹ�ʱ����
������᲻���������������ͬ�������������
����ȡ��ʤ����ӭ������������Σ���Բ�������ȫ��
ֵ�ÿ��ǵġ�

���������������ҷŹ���Ψһ��ʤ����

������������������<RUBY text="��������">���ϳ���</RUBY>��������ã�����¹�����
���롣

���ҵ����ƾ���쵽��ͷ��
���ٹ�һ������֮�󡭡���Ҫ��˫���Ĺ��������ˡ�

���������ʱ�㣬��������ѡ��
��һ�������ƹ�������ʱ�����������������໥������
��ʱ�����������������໥��������ʱ�ȴ����˹�����


����֮���Ӧ�ģ��Է�Ҳ���⼸��ѡ��


�������ǵ�һ��ѡ��
���������ƾ���ʱ����������������Է�Ҳ����������
��ļ���ӭ���Ļ����һ�ս�ܡ�
�����������ˣ���Ҫ�����ٵĲ��ȡʤ��

���ڶ���ѡ��
����˫���Ĺ������빥����������Է�Ҳͬ���ع�����
�Ļ��������ӡ��Խ��ٶ�ʤ����
������з��������������׼����ϵĻ����ҽ�ս�ܡ�

��������ѡ��
���ȴ����˽�������������Ը���˹������Ļ��ҽ���ʤ��
ǰ�������ҵı�������ȫ�᳹���򳱡��Ľ���������
�����ǵ��˲������������Ʊ㽩���ˡ�

���������ַ����������бס�
������ѡ��Ĺؼ��������ж���µ��˵���һ���档


������ĵ����˽��ٶȣ���һ��Ҫ���ھ����ж�������
�ӽ���ն��
�����������໥��������֮�󣬾�ֻ�ܳ�Ϊ�ƾ�������
�µĽ����ˡ�

����������ˣ���ӭ�����趨Ϊ������в�Ļ�����һ
����ڶ���ѡ�����Ч�ˡ�
����ѡ����ǵ����֣��ȴ������ơ�

���������ء�
������Ȼ���������Ѿ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma05/0110460a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�����ڵȴ���
������������֮�����ı仯��

��һζ�صȴ����˵Ĺ�����
��˵���ף���������һ˲�䡪��Ȼ����

��һ˲�䡣

�����룬
���������໥�����ľ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110470b31">
��������

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110480a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���õ��Ľ���ǣ�<k>
�������������ǣ�<RUBY text="��������">ͬʱ��ֹ</RUBY>��

������һʱ�㣬˫������ͼ����¶�ˡ�
�����ߵ�Ŀ�꣬�������նԷ�������Ȼ��ʹ��ӭ������


������Ȼ����֪���˴˵�Ŀ�ġ�
��
������ĥ�塣

���в������Ҳ�����
��ֻ�ܵȴ��з�������

��Ȼ��������Ҳ֪�����ڵȴ��Է���

������Ҳ�������������ȴ��š�

��<RUBY text="��������">�ȶ��߰�</RUBY>��
�����Ǳ˴˶�������һ�㡣

��Ҳ���ǡ���
�����������˳־�ս��

��һ˲��
������һ˲��

���������ţ�ά�ֶ��ţ�Ψ��ʱ�������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/ma05/0110490a00">
����ô�죩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
���������������Σ�Ҳ����û��ѡ�����ء�
�����˼����ȴ��Է��ı����⣬��������������

������֮һ�����Ǹ���һ����
���ڱ����������֮ʱ����ͬ�˴˵��������ֳ�ʤ��
�����зִ��������Ϊ��

������һ�ַ����������նԷ�������
���𹥡������յ��˰װ�ʹ��ӭ������Ȼ��
�����ˡ�

���������ַ������ܴ�������档
��Ȼ���������޷�ѡ��

��ǰ���ڿ��Ƿ�Χ֮�⡣
����Ȼ����ν�����������һЩ��������ʹΥ����ʿ��
����Ҳ�޷����á�

�����ߣ�Ҳ������ֵ�ÿ��ǡ�
���������Ϊ�����������׾ͻᱻ�ҵ�������ƭ�Ķ�
�ֵĻ������ߵ��������֮ǰ���кü��ֶԸ����İ취
�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/ma05/0110500a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�����������ַ������Ǻ��п��ܡ�

���Է����ڹ����ˡ���Ȼ��Ҳ�������̾ͻ����Ϲ���
����������վ���
���Ż����ƣ�����ս��֮�˱�ӵ���յ�֮����


���ܿ�͸������Ҫ�ġ�
����͸���˹��Ƶ���α��

��������һ˲�䣬�ܷ�������ȷ���ж��ء�
�����Ǻ����ѵİɡ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/ma05/0110510a00">
����͸�Ļ�����Ӯ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������ܹ�����αװ�Ļ����Ϳ���<RUBY text="����">��װ</RUBY>�ϵ���

��Ȼ����׼����ӭ����ʱ��������ѹ�ƶԷ���

�������ɿ������ǵ��˵�ӭ����ʵ�������ǶԷ���<RUBY text="����">αװ</RUBY>��
��������Ҳ���п��ܷ����ġ�
��������ˣ���������ȥ�𹥶Է����ȴ��űȽ�������


���������������
�����������ȴ���

���ȴ���
���ȴ����˶�����

������Ҳ�ڵȴ���
���ȴ��ҵĶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/ma05/0110520a00">
��������վ�Ž��ֿ�ʼ����
�Ѿ���ȥ�߸�������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
��������Ϊ��λ�Ļ��Ǽ����ء�
����������Ҫȥ���ˡ�

����ֵ����֮ʱ���Ʋ�ʵ��ʱ��������塣
��������������պ������Ÿ������塣��Ϊ������״̬
��������״������ֱ����ϵ�ġ�

�����������ʱ�㣬��ȫû�����⡣
���Ҷ��Լ��ĳ־����������š����±�����ǰ��ԭ����
�������ɡ�

�����������֮������һ���ϣ��෴���ҵ����Ŷ�����
�����Ļ�����
����ʱһ�������ҷ������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/ma05/0110530a00">
���ǵġ�
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
�������š�

�������Ǵ���ʤ���ҵ��Ը��������ζ�ս�ġ���Ҫ
֤��ǰ���յİܱ���һ��ʧ��

����Զ��ԣ��Ҷ��Լ�ʵ������Է���һ��������ɡ�

��������˵���������ֶ���û���κ�Ӱ�졣
��Ȼ��������ͬ�������������µĶ��ţ���ͬ�ڷ���
�����ʵ��ʤ������ԭ����ս��������Ҳ��ʧȥ��ս��
�����塣

�����������ò��������ơ�
��Ϊ��֤�����Լ���������һ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110540b31">
��������

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110550a00">
�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(5000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
������������������������������������������������
������������������������������������������������
������������������������������������������������
�����������������������������������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I���鷺����ǰ��
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�}st100", 1000, @+10, @0, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/ma05/0110560a00">
������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110570b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
��������������������?!

������ȷ�Ƕ���������
��Ȼ������ȴ��ȫ�����ҵ�Ԥ�ϡ�

������Ż��Ų���ǰ������һ����
��ֻ�ǣ��������ѡ�

��Ҳ�����ٴο�ʼ��������֮��ľ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��������
<voice name="����" class="����" src="voice/ma05/0110580a00">
�����ã�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
���Ҹе��ҵ�����Ѫɫ��ʧ��
������վ��ӵĻ�һ����������һ���԰ס�

�����˵���ͼ������ʲô������������������ˡ�
����Ȼ���ֵ�Ҳ̫���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="����" src="voice/ma05/0110590a00">
���ҵľ���<RUBY text="��������">��Ĩɱ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
������֮�⣬û���������͡�

������֮��������ν�ļ�࣬���Բ����ԡ�
�����ǵ������ܵ���ķ�Χ������ȷ��˵��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h�ã�
	CreateTextureEX("�}�ţ�30", 3000, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_a.jpg");
	Fade("�}�ţ�30", 1000, 1000, null, true);

	CreateTextureSP("�}�ţ�29", 2990, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_b.jpg");

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670a]
������˵�����ǵ����ܹ��ﵽ�ľ��룬ͨ���ǲ�������
���֮�ڵġ�
{	FadeDelete("�}�ţ�30", 1000, false);}
�����ǽ������⣬���㿳���Է�Ҳ���ܸ��������
�˺������������¸��Ƥ��С�˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}�ţ�30", null);
	CreateTextureSP("�}�ţ�28", 2980, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_c.jpg");
	FadeDelete("�}�ţ�29", 1000, true);

	WaitKey(1000);

//��������ݳ��������زĤ�ʹ�ä��륿���ߥ󥰤��狼���
	CreateTextureSP("�}�ţ�27", 2970, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_d.jpg");
	FadeDelete("�}�ţ�28", 1000, true);

	WaitKey(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670b]
�������ܹ��������˹���ļ�࣬��ָ�ڵ�������֮
���Լһ�ߵķ�Χ���ܹ��õ��д��������ֵľ��롣

�������ⲿ�ֵĵط�����Ϊ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("�}�ţ�16", 2960, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_e.jpg");
	FadeDelete("�}�ţ�2*", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670c]
�����������ľ��룬��<RUBY text="��������">û�й���</RUBY>�Ǹ����룬������ɱ
�����㶼�������
���������޷��ӵ�ն�¡���Ȼ��ȴ�޷����һ����ɱ��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670d]
�����ڵ���˫���������ܴﵽ���Է��ľ���֮���ˡ�
��Ȼ�����������������������̾���Ļ���

��˫�����뽫�����ҵ������롣
��Ȼ�󣬵���ʱ���з���Ȼ���ж��ҷ����ķ�Χ����


��û��
���ڶ��Ž���֮ǰ����ĳ�̶ֳȱ�֤��������������
��������ƣ���α�������ơ�
��<RUBY text="������������������������">��Ϊ������Ҳ���ұȽϳ�</RUBY>��

�����գ�����ֻ�жԷ��������ܹ�ն���ҵľ��롣��
����ζ���ҽ�ս�ܶ�����
������˽��ľ���Ҫ�ֵ������Ƕ�ô���ѵ����飬����
�������˵��ǻ۱���֪����

������ν<RUBY text="��������">���н���</RUBY>��Ҳ��
�����ǿ׳���������С֮��ʱ����ò�η�����̬��


�������Ҫ�ر��ڲ��õĽ����������ٵľ����Ļ���һ
��Ҫ����̬�������ǰ����ʤ����
��Ȼ��������·�ľ�ͷ����������

�������Ļ����⵽������
����ʮ���˽���һ�㡣

���޷����⶯����״����Ȼû�иı䡣
��ֻ�ǡ�����ֻ������ߣ���������ʱ�����ơ�


����������
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/ma05/0110600a00">
���˺��𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
������ͻȻ�����Ժ���������
���������Һ��ˡ�

���������ǰ����ֵ���ٶȺ��ˣ�ά�־��롣
���������Ļ�����ʹ�޷�����������Ҳ�ܳ�������״̬��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��������
<voice name="����" class="����" src="voice/ma05/0110610a00">
�����У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
��Ȼ�����ҷ�����Լ����뷨��
���ں��˵���һɲ�ǣ��ұ���Ϊ<RUBY text="����">ʬ��</RUBY>��

��ʧȥ��ǰ���������˵���ͷ��
���������˵����ʤ����û��ӭ���ķ��գ����������
�ĺ��ƻᵼ���޷����ط����������ױ��ʹ˿�����


�������Ϊ���޷�ץס��һʤ���Ļ�������Ҳ̫����
�ˡ�
����֮�Ҳ�����Ϊ����û�н����ܲ�ȡ�ķ���֮һ����
���ˣ����뿼�Ƿ�Χ�С�

��һ�����˶��ᱻץס���š�

�������޴����ӡ�
��������ʱ���ս��Ҳ�������á�

��ʱ����һζ��ɥʧ��
���Ҳ��ϵؽӽ���Ϊ������ʱ�ޡ�

����˫�����յ�̫����ú�������ľ��������Ͻӽ���


������ԭ���ҾͲ�����ɱ���Է���
������ʧȥɱ����Ҳ�޷���

��Ȼ���ܷ񽫴��������ؼ�����ɱ����֮��<RUBY text="������">ѹ����</RUBY>֮
�ϣ��������顪��
�������������̴��̫���ˡ�

��������ɱ��������ô������ͷ����ն�ϡ�
������û��ɱ��������ô�Ͳ���ն�Ϲ�ͷ��

����������������̼�࣬Ȼ���๥�����������ٶ�
ʤ���Է����ҵĵ����ȿ����Է������塣

��Ҳ�������ǿ�����˼�������ס�

��Ȼ�����˲�����ͣ�¡�
����һ˲�İٷ�֮һ֮�󣬵��˵ĵ��е��ʹ����
�ڴӹ�ͷ�����඼��˺����

���ܱ���

����ô�����ǻ��๥������
�������ܹ��������ʩ��һ���Ļ�������ʹ��һ���޷�
����ʤ����Ҳ��ʹ����˥�����þ��Ƴ��������ķ���
չ�ɡ�

�����ô򳱡�������Ľ�����ѹ�Ƶн�����������
������������˻�֮���㿪��һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��������
<voice name="����" class="����" src="voice/ma05/0110620a00">
���췽ҹ̷��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
�������ڵ�ʵ��ʧ���ˣ��ҷ������������
��Ҫʵ�����룬������ζ�����Ҫ�����ҵ��������޺�
������

�����룬̫���ˡ�
��û�а�Ū��ʽ����ԣ��

����Ȼ�Ѿ�������˽ӽ�����������ʧȥ�˺��һ���̫
��֮���ѡ��
��ʣ�µ�Ψ�г�Ĭ�ر��������˰ɡ���Ҫ�ó����Ƶ���
��Ҳ�����ˡ��������ġ�

�����������޲ߡ�

���޲ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��������
<voice name="����" class="����" src="voice/ma05/0110630a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
��̫����һ�ζ���û�н������
��Ȼ��ʤ���ѷ֡���������ô��ġ�

�����������δ�е����ľ�����

������ʧ�ܵĽ�����
���������������˵Ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}���뱳��", 8000, 0, -381, "cg/bg/resize/bg053_�����Ҥ�ͥ_03l.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw�y_Ц��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0110640b46">
����Ϊĸ�ף�ֻ��һ�������˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
�������ټ��ϣ���һλ���˵�������

����������ս����
������ȴ��Ҫ����ʧ�ܡ�

�������в�û�д����ĵ��������ʲô�µ�������

�����첢�������ƫ̻���ҡ�

�����������ֻ������ľ�����
���Ͷ�ҡ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ʤ룿
	CreatePlainEXsub("�}��ܞ", 5000);

	SetVolume("@mbgm*", 1500, 1, null);
	CreateSE("SEL01","se����_냇��_����01_L");
	MusicStart("SEL01",3000,500,0,1000,null,true);
	Fade("�}��ܞ", 1500, 500, null, true);

	SetFwC("cg/fw/fw�����^ȥ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��������
<voice name="����" class="����" src="voice/ma05/0110650a00">
���侲����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
�����Լ��ĳ����ھ���֮ǰֻ��ͽ�͡�
���ӽ缱�ٵؿ�ʼʧȥɫ�ʡ�

���ⲻͬ��ʧȥ����������������Ļ�ɫ��֢��ֻ��
���Ƚ��Ŷ������Ѫ�����Ҷ��ѡ�
��Ȼ������˼�����Ƶġ�

���������ұ�����
�������б�������ӭ��ܱ���

����ʹ�Լ��о��õ���Ҳ�޷����ơ�
����ʶ��û��ҡ�ɢ��������ʵ����֪ģ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��������
<voice name="����" class="����" src="voice/ma05/0110660a00">
�������Ƕ�ս�С���
�����˾�����ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
�������������������ȴ����Զ��
��<RUBY text="����������">����������</RUBY>���ҿ�ʼ�������ˡ�

��������⡣
������ĸо���ʧ�ˡ�

���Լ������岻���ˡ�

����ݶ�ҡ������滯�Ļ������ˡ�
������޷����ƣ�ʹ��©�����֣��ǶԵ�����˵����һ
�����ڴ���˲�䡣

�����ǣ�նɱ����
�����޵ֿ��ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="����" src="voice/ma05/0110670a00">
�����ܱ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
���ҵ����岻����Ϊ��һ�˵�ԭ�������

���ҽ���ؽ��������������ء�
���Ǿ�����ˮ֮��ץס����һ�㡣

�����е�Ŭ������������Ķѻ����ò����κ���Ч�Ľ�
����
����Ҫ�������Ķ����ߵĶ����˳���һ�㶼û�м�����
��Ц�ŴﵽĿ�ġ�

���о����Ǵ�����ʼ��ʧ��
�������Ⱥ��������ˡ�

����֪��ʧ���δ�ȥ��
�������������ܡ����������ƵĻ���������ȷʵ�ش���
�İɡ�

��Ȼ��ȴ�޷�������Ҫ���Ƶ���������������

�����ˣ�������ǰ������

����ʱ��Ҫ΢΢�����Ƶ����ߣ�����ƴ���ع̶������档

����Ȼ��ô���ˣ�����Ϊ������ʧ�����ֻ���������ȴ
�޷���ɢ��

�����ڣ������Լ�<RUBY text="������������������">�Ƿ�վ�Ŷ�ֵ�û���</RUBY>��
������Ư���ڿ���һ��ĸо���

����̫���������衭��
�������������߰��������������λð���¡�


����������ߵĻ�����ʹ˫�������ʧ�ˣ�Ҳ����ʮ��
���š�
����Ϊ�ǲ��������ڼ�Ԧ���Ƶ��㲿�����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="����" src="voice/ma05/0110680a00">
����������Ľ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
�������ֻ�㱵���ͷ�����֣�����������һֻ���Ѿ�̤
��ײĵ�֤����
��������ʱ��ʱ��Ҳ�������ţ�����Ҳ�ڽӽ���Ҳ��
�����������Ƚ���

�������޿��κΡ�

������ǿ�����е�һ��С���䱣��һ�����ѡ�
�����������������׼����

����Ȼ��ˣ���ֻ�гöԷ�������ʱ�ӵ��Զ��ˡ�
���Է����ڵȴ������Է���ӭ����ѹ�ƵĿ����Ժܴ�
�൱��ʤ����١���Ȼ�����������ȴ��Է�������
����ʤ����ֹ���٣���ֱ��ȫû�С�

��ֻ����Щ΢�Ĺ������ҳ���·�ˡ�
��Ϊ�ˡ�����Ҫ���Ⱥ�����ء�

��ѪҺӿ��ͷ����ɥʧ�°���о���״̬������������
�ҿ������¶��޷�������
�������в��϶�ҡ�Ĳ���<RUBY text="����">��ȴ</RUBY>����ȫ�����п�ƽ����
�ǲ��֡���Ȼ���ٴ�ȷ����֫��

��Ѱ��������Ӧ֧���������˫�š�
�������侲������

�����ﲻ�ǿ��У���Ҳ�������ߡ�
������˫����ȷʵ���ڵġ�

��������˫�ŵĿ粽�������ߵ�����
��Ȼ�������ǵ��档��������㼼�Ļ�����������һ��
���޷���ɡ�

��������ý����粽�Ļ���
������Ҳ�ã����Ҳ�ա���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��ԥ��`��
//�����桢�Ѥä�Ԫ�ˑ���
	SetVolume("SEL01", 300, 0, null);
	CreateSE("SE01","se����_������_������Y");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�}��", 10000, "#FFFFFF");
	Delete("�}��*");
	FadeDelete("�}��", 1000, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//��������
<voice name="����" class="����" src="voice/ma05/0110690a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
����һ˲�䡣
��
������ȫ������ϵ���ˡ�

���Ļع���ʵ��
���о��ع�������

������������뼹׵������һ��������ȫ�����ա�

���ӽ������ѣ�����ȫ�������鱨��

���Ҹ�ԭ�ˡ�
���ֱ����������������ٴξۼ���һ�㡣


�������˲��<k>
��������ڣ�<k>�����������̵ķֽ�㡪��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 1000, null);

//��΢��ʉ仯����������ݤ��٤���ࣿ
	CreateSE("SE01","se����_����_���01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�ޥ���/�}st200", 1000, @-6, @10, DxlAuto, true);

	SetFwC("cg/fw/fw���I_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110700b31">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
���ҵ�<RUBY text="��������">ն������</RUBY>��
����δʧȥ��ά�����ǡ�

������Ҳ�����˰ɡ�
��û�����Ϲ�������������õ�֤�ݡ�

����ֻ���ƶ������ġ�

��˫�ţ�����ԭ�ء�
���ı���ϥ�ĽǶȣ�����������󷽡�������������ơ�
û�иı����ƣ�������΢��غ��ơ�

������ô��仯��
����<RUBY text="��������">�粽ն��</RUBY>�����ƣ���Ϊ<RUBY text="��������">����ն��</RUBY>�����ơ�

��ƽʱ�ͺ���Ϥ�ģ��ջӵ����ơ�
��Ϊ�˿���ս��׼���ģ����ҷ�ס���������߶�����

��ͨ�������ڵ����ϲ���ʵս����Ļ�ն̫������̬��

������������ս���У���ֻ�ܱ���Ϊ�������粽����
���޴���Ϊ��

���ǱϾ�ֻ�ǣ���ͨ�����ԡ�
���������������״�����������ѱ����ǰ��״̬��
��������޴���ӭ����ת��

��������<RUBY text="������������">��Сն������</RUBY>��Ч����
�������ǣ�����һ���ĵ�·��

��ӭ�ӵ��˽������ֵ���ξ��롪��
���������粽������˵���Ǿ��ѵģ�����򴦹����Է�
�ľ��롣

��ֻҪ�뵽�����Ǽ�Ϊ�򵥵��¡�
��Ȼ����ն����Ҫ�粽�������̶ֹ�������޷�����
�������ֵ����뷨��ͻ�Ƶġ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="����" src="voice/ma05/0110710a00">
��Σ�ա�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
������Ҫ�������µ�������һ����ָ֧�š�
�������������ڵ��ľ���

��������û�а����ɿ����Ŀ��С�

����������������
��Ȼ�����Ʊ��ڴ����뽩�֡�

�����켴ʹ��������ת�����ƣ�Ҳ��û�������ʴӡ�

�����Ǽ����ò������������������ǰ�С�

����������״��
����������˵���Ѿ���ֻ��ն���ľ����ˡ�Ȼ�����һ�
�����������׾ٵع�����

�����������֫���̵ĵ����Ǳߣ���ʣ��Щ�����ϵ���
ԣ��
����ʹ����˽��ľ��룬Ҳ��ʹ�������������Ӧ����
ʽ������������ȴ���

������෴���������ڵ�״������ų��ڵ������ơ�
����û�л�Ӧ����������ء��Բ�Ψ�л��๥����
������ˣ����������ȷ����ˣ���һ��Ҳ�ã������Խ�
�����Է��������ϲߡ�

��Ȼ��������û�й�����
��ֻ��һ��һ�������̾��룬�������ҵĺ�����


��Ϊʲô��
��������Ե��£�Ϊʲô�����ס�

����������������Ҳ����Ϊ�Ը�����
���������֮���ʤ��������в�����ҳ���Ȼ��ӭ����
��ʤ��������ϣ������

����ȷ����ÿһ�̶����ۻ���ɱ��ɿ�����ҵĿ־��ġ�

���·𼴱�ֻ���������������һ��㣬��Ҳ�����Ǹ�
˲����������ź��һ�ն�����Ѿ���������ز���

��Ϊ��������ݳ嶯������Ҫ���������е���־����
��
����������һ��㡣����һ��㣬�������͡�

�����Ľڵ����Ͼ�Ҫ��á�

��������ô�����̡���
�����ڣ�����Ҳ������ֻ��ն���ľ��롣

���˴˾۾�������ӭ�����ϵ���أ�����û�С�
��ֻ���໥�ӿ����������ٵļ�ࡣ

��û�в���û�з���Ҳû�м��ɡ�
�������������¡��������ʵ��ƾ����С�

���ı߱ȽϿ졣
���ı߱Ƚ�ǿ��

���û���ӿ�����һ������������

�����Ľڵ㡣
������ս����

����������ӽ���
���ҵĵ��ˣ������ֱ��ܴ����ľ��롣

�����ı���<k>
������������ƽ����

������ɽ����
��ӵ�������޳������޷������𾴵ľ�����������ô��
���Ƿǳ������Ů�ˡ�

��Ȼ��������һ˲�䣬ֻ�ǵ�����Ϊһ�����ˡ�������
���ѵĴ��ڡ�

��սʤ�ն�������һ���ˣ�
��һ��һ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0110720b31">
��������������������

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0110730a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	PrintGO("�ϱ���", 15000);
	Delete("�ޥ���/*");
	Delete("�ޥ���");
	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg053_�����Ҥ�ͥ_04.jpg");
	OnBG(100,"bg053_�����Ҥ�ͥ_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	FadeDelete("�}����100", 10000, false);

	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
��������ҫ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݳ����ۥ磻�ȥ����ȣ�
//���ؤ�Ϥ�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_����_���̤���01");
	CreateSE("SE02","se���L_����_���̤���04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("�}��", 5500, "#FFFFFF");
	WaitKey(2000);

//��������
//���ե��`�ɥ�����
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��a_03.jpg");
	CreateTextureEXadd("�}����110", 110, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	Fade("�}����110", 0, 600, null, true);
	DrawTransition("�}����110", 0, 0, 600, 1000, null, "cg/data/slide_02_00_1.png", true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(2000);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_012.nss"