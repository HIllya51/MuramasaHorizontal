//<continuation number="860">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_019.nss_MAIN
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
	#bg019_��У����_01=true;

	#ev104_⏴������_a=true;
	#ev104_⏴������_b=true;
	#ev104_⏴������_c=true;
	#ev104_⏴������_d=true;
	#ev104_⏴������_e=true;
	#ev105_���줿С��_b=true;
	#ev105_���줿С��_a=true;
	#ev105_���줿С��_c=true;
	#ev105_���줿С��_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���=true;

	$PreGameName = $GameName;

	$GameName = "ma01_020.nss";

}

scene ma01_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_018.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 15000, "#000000");
	FadeDelete("�ϱ���", 0, true);

	CreateSE("SEL01","se����_����_ľ����ä���i��01_L");
	MusicStart("SEL01",2000,1000,0,800,null,true);

	SoundPlay("@mbgm28",0,1000,true);

//���֥�å�������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������ˬ��΢�硱

����׷������硡���㱼ȥ��

������ȻһЦ������ˮ�رߡ��ſ�˫�ۡ�

��ǣ��˴˵��֡�������ӵ�����̲�֮���������衱

�������š���ʱ�ǿ̡�����µľ����������㡱

����Ƭ��յ��ɫ����Զ�������������㹲����ʱ�⡱

������������������Զ�������ǡ����㹲����ξ���

����Ƭ��յ��ɫ����Զ�������������㹲����ʱ�⡱

������������������Զ�������ǡ����㹲����ξ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("�}����20", 20, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	FadeDelete("��ܞ", 2000, true);

	WaitKey(1000);

//���У����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Į�ء�
���������ɵ��ʶ��Ź��ϵ����и�ʡ�
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 600, 0, null);
	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(600,true);

	WaitKey(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
���崨��

���崨��ʦ��
�����ǵİ����Ρ�

�������ڵذ��ϵ�<RUBY text="����">�Ǹ�</RUBY>��Ͷ���·𰧵����Ŀ�⡣
�����ķ�Ӧ�����˶��ѡ���Ũ�ҵ��ȳ�֮�У�
���������ֶ�����һ�¡�

��һ�����Ͼ�Ҫ��ʼ�Ͽε��򾲱��顣

�������ǽ��ҡ�
����ʦһ�ˡ�
��ѧ�����˼�һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_��o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190010b57">
�������ܹ���Զ������������
������������롣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������Ѿ�û�����������ѧ����
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_��o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190020b57">
��ʹ������Դ�����ѪҺ��������
��������Ѫ�����������������ϡ���������
����ˣ���������ֻҪ��ѪҺ<RUBY text="����">����</RUBY>��
ʱ����ӦҲ����ֹ֮ͣ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190030b57">
��ֻ�����롣ֻ�����밡��
��ֹͣ��ѪҺ���������ֻ࣬�Ǹ����˶��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������ص����ţ�һʱ�տڲ��ԡ�

��������˫�ֿ�ʼս����
�������Ǿ���ץ��ס�Ķ�����
��ȴ�·�������Ҫ������������һ�㣬
˺���ſ���һ�����ա�

���ó�Ѫ�����ۣ�������<RUBY text="����������������">�����ܴ��ڵ�ĳ��</RUBY>��
���崨��һ����¶�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190040b57">
��Ϊʲô����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190050b57">
��Ϊʲô!?��Ϊʲô����ʧȥ!?
��Ϊ������֮���޷���Զ������ԭ����ģ��!?��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190060b57">
��Ϊ��ע����Ҫ��������ɢ��!?��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190070b57">
����������
������������
���������������������������𣡡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190080b57">
������֮�ﲻ������Ļ���
��ע��Ҫ��ó�ª������³��Ļ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190090b57">
��<RUBY text="��������">���ǲ���</RUBY>��<RUBY text="������������������">���Բ������Ҹ���</RUBY>!!
����ν�Ҹ�����ֻ�ǲ��ҵ�ĸ�׵Ļ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Թ��
����ʦ�³��������־䡣

��װ���Ծ����ķ�ŭ��
�������˾����Ļںޡ�
�����³��ģ��������ļ��ˡ�

���Ǽ����崨��
���Ǽ����崨��
�������������ѹ���ڲص����ġ�

�������ڼ�����
��������ͬ��ˮ����ӿ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190100b57">
���������������ֱһ�������Ļ���
���ٺ���һ�������Ļ���
��������������ػ���Щ����֮���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190110b57">
�������ޣ��������ޣ�
��Ϊ������˵�ʱ����
��Ϊ���ǰ��׺ݲб���������ǿ��֮����
ȴ�ܱ�������̴��죡��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190120b57">
��û��������
��û�����壡
�����������������޷��������Ҹ���Լ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190130b57">
��������Ƥ�����޽��޹�������
˺��������ι�����ǵĶ�Ƥ��
����������磡�����ǵ����磡��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190140b57">
��������Щʲô!?
�������������䣡��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190150b57">
������ʲô����������
������ڤ�ӵĶ�ʯ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190160b57">
������ֻ��ȡ�ö��Ķ�ʳ��
��Ӧ����ô����𣡡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190170b57">
����ô����������
������Ҫ�ػ������������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190180b57">
��������޷�ʵ�֡�
���޷�ʵ�ֵĻ������ָ�����Ǻã���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190190b57">
������ֻ�ܰ����ƻ���
��ֻ������˫�����԰����ƻ���
���ڱ��Ұ�޵Ķ�ʳ֮ǰ��
�����١���������������ʱ�̣���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����С�
�������ʧ�صĴ�С�
������������������������ơ�

��������죬��עɱ�⡪��Ȼ�������أ��������ֱۡ�
����ե����ˮ�ֵ����������崨�ĺ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_��o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190200b57">
�����ƻ��������ɡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190210b56">
��������ô�ᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���·��ھ�����ϸ���еĲ�������
������˭�������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190220b56">
�����ǣ���ʦ���ɵ���
��Ϊʲô������

{	FwC("cg/fw/fw⏴�_���.png");}
//�����w��
<voice name="⏴�" class="⏴�" src="voice/ma01/0190230b57">
������Ҫ�������
������ϧ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���崨��֪Ϊ�Σ������һش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SoundPlay("@mbgm28",0,1000,true);
	OnBG(10,"bg019_��У����_01.jpg");
	FadeBG(0,true);


	SetFwC("cg/fw/fw⏴�_��o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190240b57">
������֮�����ո�����ʧ�����������޷����͡�
Ҳ�������͡�
���������������š�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190250b57">
��������������Ϊ��ʹһ��������˥�ˡ�
��������������������Ŀ���
����ֻ���������ƵĴ�Ϣ��
��ֻ�����������š�����Ϊ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190260b57">
������������ʱ�Ҿ�Ӧ�������ж���
������η��η��ֻ�ǿ��ţ���

{	FwC("cg/fw/fw⏴�_ŭ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190270b57">
������Щ�����Ǳ�ó�ª֮ǰ��
�������Ծ�������ʱ�̣�
�͸ý�һ�н�������
���͸ý����Ǵӿ����н�ȳ�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190280b57">
����ʱ�����û������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190290b57">
����ϣ������
����û������ϣ��������Ϊ������
���о����������ܴ�������ȱ���
ϣ������

{	FwC("cg/fw/fw⏴�_��o.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190300b57">
�������������������䣬����ν��ϣ��
��������������һ����
������ʹ�����޷�����̨���ѵĸ�����������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190310b57">
��Ȼ�����Ѿ������ٻںޡ�
�����ٻᱧ���ǰ�ϣ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190320b57">
�������Ƕ��ҵ�ʱ����
������֮���ս�ɥʧ��
���޷��ػ���
�����ԡ���

{	FwC("cg/fw/fw⏴�_��o.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190330b57">
���İ������������ﰡ��
����������˫�֣������ƻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�����������w�֡��ɩ`��
	CreateColorEXadd("�ե�", 15000, "#FFFFFF");
	CreateTextureEX("����", 30, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	SetBlur("����", true, 3, 500, 200, false);
	Fade("����", 0, 800, null, true);

	OnSE("se���L_�Ɖ�_����01",1000);
	Fade("�ե�", 2000, 1000, Dxl1, false);


	Shake("����", 2000, 20, 0, 0, 0, 800, null, false);
	Shake("�}*", 2000, 0, 20, 0, 0, 800, null, false);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����������������䡣
���۳�������

���ذ����顣
������Ӳľ��ĵ��棬��δ֪������˺��������ѿڡ�

��Դͷ�����崨���

������ɢ����
��<RUBY text="��">��</RUBY>�ֳ���������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�ե�", null);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	DeleteStR(0,true);
	Delete("����*");
	Delete("�}*");

	CreateMask("�}��", 6000, 0, 0, "cg/data/effect_01_00_0.png", false);
	CreateColorSPadd("�}��/�}�ţƟ�", 6000, "#BBBBBB");

//���ţ֣�⏴�����ģ����㣩
	CreateTextureSP("�}�ţ�5010", 5100, -650, -235, "cg/ev/resize/ev104_⏴������_al.jpg");

	Move("�}�ţ�5010", 3000, @0, -50, DxlAuto, false);
	FadeDelete("�}��/�}�ţƟ�", 4000, false);
	FadeDelete("�ե�", 2000, true);

	CreateSE("SE08","se����_����_�५������");
	MusicStart("SE08",0,1000,0,1000,null,false);

	WaitKey(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����򼡣���㡣
���������ֻ�ŵĳ��棬���崨�ı�������ͷ��

�����֨֨���졣
��һ�Դ���ҡ����

���޷�֪���۾����ںδ���
������һ��ļ׿ǣ���΢������ҫ�Ż�ͭɫ��

�������Ǽ�ƽ����С����̬��
�����������������ͻ��������Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��");
	CreateTextureSP("�}�ţ�5000", 5000, Center, Middle, "cg/ev/ev104_⏴������_a.jpg");
	FadeDelete("�}�ţ�501*", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0174]
��Ȼ���Ǿ޴�������������Ǻ���Ĭ��

��ͷ����λ����������崨֮�ϡ�
�������һ�롪��������ֹ�����������ڵذ�֮�¡�

������������ֻ���е�����һֻ���������������ֱ�ƥ�С�

�����������ܴ���ô��
������
����Ȼ���в����ܴ��ڡ�

����ϸ�۲�Ļ���
��������ļ׿�ʵ���ϣ����������ĸ������ɡ�

���������С�
�������˵�����ʷ���ϣ����Է�һ�����������ݡ�

�����������ɽ�������ϵȽ��У�
�����Ա仯Ϊ�������̬��ƾһ��֮�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw⏴�_���.png");

	SetBacklog("��������������������ġ���", "voice/ma01/0190340b57", ⏴�);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190340b57">
��
��������������������ġ���

</PRE>
	SetTextEXR();
	Request("@text0180", NoLog);
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE08", 1000, 0, null);

//���Х�`�󡣥५�Ǥ��z�ѩ`�Ĥ˷ֽ⡣
	CreateColorEXadd("�ե�", 10000, "#FFFFFF");
	CreateSE("SE01","se����_�z_װ��03");

	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("�ե�", 300, 1000, null, true);

	CreateTextureSP("�}�ţ�5000", 5000, Center, Middle, "cg/ev/ev104_⏴������_b.jpg");

	FadeDelete("�ե�", 2000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������ѡ�
������Ϊ��ʮ��������˵��ʮ�Ĳ�Ƭ��
�·��Χ���崨ɢ����

�����׵������С�
���ֱۻ�������

���������ơ�
��
��ֹͣ˼�����Ժ���ð������֡�

������װ��֮�ơ�
��
�����ߵ��񷨣���Ϊ���ơ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��΁I�|�����֤��Ϥ��롣���gǰ�����ҽ�äݤ��Ф���
	CreateTextureEX("�}�ţ�5011", 5010, -265, 0, "cg/ev/resize/ev104_⏴������_cl.jpg");

	Move("�}�ţ�5011", 1300, -500, -100, AxlDxl, false);
	Fade("�}�ţ�5011", 300, 1000, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190350b57">
��Ը�����������¡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}�ţ�5011", null);
	Delete("�}�ţ�5000");

//���٤����_���褦�ˡ�����S�ˁI����ص�����
	CreateTextureSP("�}�ţ�4000", 4000, Center, Middle, "cg/ev/ev104_⏴������_d.jpg");

	CreateMask("�}�ͣ�", 4100, 0, 0, "cg/ev/ev104_⏴������_d.jpg", false);
	CreateColorSP("�}�ͣ�/�}��", 4000, "#FFFFFF");
	SetBlur("�}�ͣ�", true, 3, 500, 100, false);

	Zoom("�}�ͣ�*", 600, 1100, 1100, AxlDxl, false);
	FadeDelete("�}�ͣ�/�}��", 600, false);

	FadeDelete("�}�ţ�5*", 600, true);
	Delete("�}�ͣ�*");

	Wait(1000);

	SetFwR("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190360b57">
����ӳ��ҹ��;�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�������`��
//�����ߡ����Ϻ�Ȫ�ع�ؑ�����
	#av_���=true;

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Fade("�ե�", 300, 1000, null, true);

	WaitKey(1000);

	Delete("�}�ţ�*");

	CreateTextureEX("�}�ţ֣�", 4130, Center, Middle, "cg/ev/resize/ev104_⏴������_el.jpg");
	CreateTextureSP("�}�ţ�", 4120, Center, Middle, "cg/ev/ev104_⏴������_e.jpg");
	FadeDelete("�ե�", 2000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ǡ�
�������ڴ�����

{	Fade("�}�ţ֣�", 1000, 1000, null, false);
	Move("�}�ţ֣�", 3000, @0, 0, DxlAuto, false);}
��<RUBY text="����">����</RUBY>��
������������ǿ��������
�����ڣ��ҵ���ǰ��

����Ȼ��δ��ȡս����̬����
������
��˵ʲôɵ����

{	FadeDelete("�}�ţ֣�", 1000, false);}
��<RUBY text="��������">ս����̬</RUBY>��
����һ����ָ����ɱ����ͨ�����<RUBY text="����">����</RUBY>��
Ϊʲô������ô������Ҫ��

��û�й�ϵ��
�������Ǳ���ӭ���������Ų�����
��������˲Ϣ�����õ�ʱ����
���ܻٵ�һ�������Ĵ��ڡ�

�����������
��<RUBY text="������">������</RUBY>��<RUBY text="������������">Ҫ�����ǻ���</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg019_��У����_01.jpg");
	FadeBG(0,true);
	StC(1000, @0,@0,"cg/st/3d���_����_ͨ��.png");
	FadeStC(0,true);

	FadeDelete("�}�ţ�", 1000, true);

	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����¡������
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190370b57">
������������ǡ�����Ұ����
�������Ǻû�顣��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190380b57">
��һֱ�������¡�
�������޾������ؽ�����
�����������顣û�б�����õ��ˡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190390b57">
�������������ࡣ
�����뿴����֪��ʱ�ͻᵽ�õı��ҽ�֡�
�����Ծ������������ɡ�
�����ڣ��˴�����

{	FwR("cg/fw/fw���w_�Ӥ�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190400b56">
�����ۡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ᱻɱ����
����ͻ����⡣

���ᱻ������ɱ����
�������ӱ���ʵ����ʵ��������в��

�����ߣ�
�����ߣ�
�����ߣ�

������
������
������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw���w_�Ӥ�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190410b56">
�����ҡ����ҡ����ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��Ϊ�Σ�
��Ϊ�����߻᣿

����ν����Ӧ���������޲Ŷԡ�
�����崨���������ޡ�

��������ˣ�Ϊ�Ρ�
��Ϊ���崨��������!?

������ƭ�˵ġ�
���������飬һ������ƭ�˵ģ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw���w_�Ӥ�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190420b56">
���ҡ�����

{	FwR("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190430b57">
����Ҫ�ӣ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���崨�ö��غ������������
��˵�Ų�Ҫ�ӣ�ȴ��׷�������Ӷ�û�С�

��<RUBY text="����������������">��Ϊû���ӵ����</RUBY>��
����Ϊ���ڹ�����Χ֮�ڡ�

�����
�������
��������ȥ��
���ӵ�����ȥ�źá�

���Ƚ��޷�վ����ƨ�ɲ��ŵذ��䶯��
�Ҿ���Ҫ�ӵ����
���ܴ��ﺽ˲Ϣһ����������ߵ���������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190440b57">
�����µĻ����ͱ����ۡ�
����˯����һ����<RUBY text="������������">���ҽ���һ��</RUBY>����

{	FwR("cg/fw/fw���w_�Ӥ�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190450b56">
���ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����˵�ҡ��ͷ��
������˫�ۡ�

�����Ͼ����ˡ�
����һգ�۵�ɲ�ǣ��ҿ϶����̻ᱻɱ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190460b57">
�������ߡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������Ť��ͷ��
�����ڿ���С�ĺ��ұ����������������ô��

���ǲ��ǣ�����������Ҳͬ��һ����
��������������̾Ϣ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190470b57">
�����ǻ��ǲ����װ���
����������ν�Ķ��⡭����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190480b57">
���ǰ���
����Ϊ�������������Ҹ�֮�С���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190490b57">
��Ψ����֪���ܱ������Ҹ���
��<RUBY text="����԰">��԰</RUBY>�Ĵ�˵ʵ����ȷ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190500b57">
��һ��֪�����Ҹ��㵽ͷ�ˡ�
������Ȼ������һ����֪��
���Ǳ㼱�ڴ����������ߡ�
��ô�����ͻ���ʹ�ࡣ��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190510b57">
�����������ǵ��������ǽ��ѡ��ǰ��֡�
�����ԡ������������ǡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190520b57">
����Ϊ���ǵİ����Ρ�
���������һ�Ρ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190530b57">
������������������α�����
���ڰ�Ϣ֮ǰ���̸��������Ŀ�ʹ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�������ꡣ
//����ġ��i��

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg019_��У����_01.jpg");
	FadeBG(0,true);


	StL(1000, @0,@0,"cg/st/3d���_����_�i��.png");
	FadeStL(500,true);

	CreateSE("SE01","se���L_����_��ж�");
	MusicStart("SE01",0,1000,0,1500,null,false);

	FadeDelete("�ϱ���", 300, true);

	WaitPlay("SE01", null);
	CreateSE("SE01a","se���L_����_������01");
	MusicStart("SE01a",0,1000,0,750,null,false);

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�������Ľ��������졣
�������γ��İ��С�

����ϸ֮�
������˵��ʵ��������������������װ�ε�����

{	CreateTextureEX("�}̫��", 1100, -5000, @-500, "cg/st/resize/3d���_����_�i��.png");
	Move("�}̫��", 0, -250, @0, null, true);
	Fade("�}̫��", 1000, 500, null, false);
	Move("�}̫��", 2000, @0, @-200, Dxl1, false);}
���������ԡ�
�����ܴ����ǳ����ҵ��ֱۣ����������ȵĴ�ֵ���

����ͭɫ�Ľ����غ�֮����ʹ��˾��￴������ϸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}̫��", 1000, false);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190540b57">
�������ڿ�ʼ�ġ������������ξ���
��������ʵ������ô��ɡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190550b57">
����Ϊ���ǡ���Ӧ����������������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���X������������������ʧ
	CreateSE("SE01","se����_����_���S01");
	DeleteStL(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);

//���£ǣͣ�������
	SoundPlay("@mbgm29",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������ʧ�ˡ����������
�����������Ϊ��ɲ�ǡ�

//{	SoundPlay("@mbgm37",0,1000,true);}
������<RUBY text="������">�ӱ���</RUBY>���ݵ�����������Ұ�С�
�������ž��ϵĺ�ë��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190560b57">
����ʱ�˵أ����Ƕ�һ������ɡ�
���������˱�ɵþȵķ��򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�������ͷ����
���Ǹ����������˲��������Ľ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190570b57">
���ǲ��Ǿ����ⷨ�������ᰡ����
������ʵ�����ᰡ��
�����ǰ�������Ӧ������ġ������������
<RUBY text="��������">��������</RUBY>��һ��ʵ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190580b57">
����ȥ���˵�ʳ���Լ��㲻�ټ�����
����ȥ���˵�Ǯ���Լ��㸻���Ժա�
��������������˹��ɡ���Ϊ��ʦ��
�Ҿ����úý̸�������һ��ʵ�ɡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190590b57">
������Ұ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����е����֣�С���Ȼһ����
���޷�����ֻ���ó����־��˫�ۣ�
������վ�����ұ�������ߡ�

��Ȼ���崨�������⡣
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190600b57">
��<RUBY text="������������������">��ɱ������Ź��Ұ�</RUBY>��
��˵˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����������

��ʲô����
���ոյģ���ʲô����

�������������������ġ����������Ļ�����ָо���
����ʲô����˼������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190610b57">
������˵�����ҾͷŹ��㡣
����ô����������Ұ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���ڱ������˵����л���֮ǰ��
��û�лش𣬵�ȴ�л�Ӧ��

��С�Ķ����ţ�ƴ������ҡͷ��
��ȫ����־������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190620b57">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
������Ϊ��أ���׵ĸо���ͷ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190630b57">
������������ķ�������Ҳ��������Ϊ����
���ĵ�֮������
������ʶ�����Գ�Ϊ�Կ�����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190640b57">
����Ϊ���࣬����ȷ��������ʶ����Ϊ
��������ʹ����õ����겢��������
����Ϊ��е���ª���е����ɡ�
����ȷʵ����˹��ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����˵����������ע���⣬��˵���˵�������
��������ȴ����һ˿���á�

��Ϊ�Σ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190650b57">
��Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
�������޶����Եؼ�����
�����������췽�ţ�
�����ǻ���̾�������Ĵ���ô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190660b57">
��֧����������ʶ�ġ���
�������Ƕ���ʵ��������ȱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���X��һ�W
//��������

	SL_rightdown(@0,@0,1000);
	SL_rightdownfade2(10);
	OnSE("se���L_����_���̤���03",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����ǰ��һ����
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190670b56">
����������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
��<RUBY text="����������">������ʲô</RUBY>��
�����ܵأ���˷�Ӧ��

�����ǡ�����ʲô��
�����׵��м⣬����Ұ��б����������

����ˡ�
�����Ǽ�ˡ�

����û��Ѫ����
��������˰ɡ�
�����Ҹо������ͺ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190680b56">
�������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�������ˡ�
��̫�����ҵ�<RUBY text="������������">�ű��ݺݴ���</RUBY>��

�����ǣ�ȴ��һ��Ѫ��û��������
���޷�����ʵ�еĳ��档

����ʹ��Ҳ����
��û�С�

��Ȼ����ʱ������ȴѸ�ٲ����
������ֻ�ǡ���ͷ��û�м�ʱ׷����ʵ��

����������ʵ����׽��

��<RUBY text="��������">�����ת</RUBY>��
��<RUBY text="��������������������">�����Ŵ̽��ű���״̬</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֥á���åɥե�å���
//�������SE����������o��verҪ����
	OnSE("se���L_����_���̤���03",1000);
	CreateColorSP("�}Ѫ�ե�", 10000, "#CC0000");
	FadeDelete("�}Ѫ�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�����ȡ�
��������
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190690b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����������ȫ��ĸ�ѹ������
�����Ƶ�ʲô�о���

��ʹ�ࡣ
�����Ǿ޴�ģ�ʹ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�Ӥ�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190700b56">
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����ռ������ϵͳ��ʹ���ܼ���
��Ȼ�����������񾭻���������ʣ��ʹ��ӿ��������

����˻���š�
������Ұ�޵�������

�����������۵ĵذ��ϣ�ʹ��ط�����
�·��������Ĺ���һ��񱩺�С�
�����鳾������ɢ����ʶ�У�����ϡ�е���
С�ĺ��ұ�Ͷ���ģ��������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190710b57">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��������ңԶ��
����������֧���ߵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190720b57">
�������������Ѿ�û���˰�����ô������Ұ��
������һ�ΰɡ�
��������<RUBY text="������">������</RUBY>��ĥ����Ҳû��ϵ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
�����������������־䡣
����Ĭ�ĳ�������֮ǰ��Ҫ����

�����Ѿ�û�����ȥ��ʲô��ʲô��
��Ȼ���崨���ƺ��Ѿ��õ��˻ش�

������ͬ���Ļش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190730b57">
�����𡣺ܺá�
������Ұ��������
���������ܹ����������ʹ�ࡣ��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190740b57">
��Ȼ������ʹ�࣬�����ǿֲ���һ�֡�
���Ȳ���ȫ����Ҳ���Ǽ��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������X�����S��
	CreateSE("SE01","se����_����_���S01");
	DeleteStL(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�����ڣ��ڱ��ߵĸд�����ƽ����������������
�ǲ�����ʹ��õ����⣬�������񾭳����ջٱ�
�ϡ���֮�У��Ҹо�������Ķ�����ʼת�ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Фա�
	CreateTextureEX("�}�ţ�5100", 5100, Center, Middle, "cg/ev/ev105_���줿С��_b.jpg");
	OnSE("se����_�n��_ܞ��01",1000);
	Fade("�}�ţ�5100", 300, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
�������Ϣ���������ͷ·������������������
���Ծɺ����ŵ���ת�ƹ����ߣ���֪��������ʲô��
ֻ����С�������ڵ����ϣ�����ͭ�����߸���������

�����ַ�����̫����
���м⣬ֱָС�ĵ��ʺ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190750b57">
������������Ŀֲ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
����ô���ܶ����ˡ�С���ô��͵�˫Ŀ��
���������޽ӽ��Լ��ĸ�����
������֮��ʲô����������

������ȴ��ͬ�ɡ�
����Ӧ����̫����¡������������������еģ�
���������ֵ�̫����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190760b57">
�����������ô������
���������㲻�룬ֻҪ��ͷ��΢��ôһʧ��
��������Ұ��������ˡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190770b57">
��������¶��������ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
����ۻһ�㣬˵����Щ�����崨��
�����������ߵ�������
�����ڽ������Ͽ�ʱ��һģһ����������

��������˲����˺�ë������
�������ճ����������������ʱ�˿̵ķ��ճ�͹�Դ�����

�����ˡ�
���������Ѿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190780b57">
��������ô�졣
������ѧ���˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
����ע���µ�������
��С��û�лش�
��ʲô���޷��ش�

��Ȼ���������ڿΡ�
����ʦ����ͬ��Ĭ��

{	OnSE("se���L_����_������01",1000);}
�������м⣬����<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0190790b33">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
��ϸ��ĺ�����С�ĵĺ���©����
��һ˲�䣬���˻���<RUBY text="����������">���Ǵӿ�ǻ</RUBY>��Ѩ��
�з��������������˲���������

��û�д��¡���û�д��¡�
����������û�����𡭡������Ѿ���
��ȥ��һ����ϸƤ����

���봭��ȴ����������С�ĵ��촽�����š�

�������ڳ�Ĭ��
��û���ٶȷ��ʡ�Ȼ����ӹ���ɣ��ǲ�������Ϊ���룬
�����Ѿ�û�б�Ҫ��

���崨�����ʻ㼯��̫����ˡ�
���Ѿ����ԣ��޷����ѵľ��롣

��������в��
������ѹ�ȡ�

����С��<k>
��������Ȼ��Ĭ��

����ʹ�Ѿ�ս���־嵽����ָ�ⶼ�������õĳ̶ȣ�
���崨Ҫ��Ļ������û�дӿ����³���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190800b57">
���������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
�����ˣ��崨���������ڻ�����Щ����֮ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190810b57">
������֮���ļ�̣����ǳ���Ԥ�롣
��ʹ������в��Ҳ�޷�����ͬ��ô��
���������������ܺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
����˵����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�5090", 5090, Center, Middle, "cg/ev/ev105_���줿С��_a.jpg");
	FadeDelete("�}�ţ�5100", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0791]
��̫���ļ�ˡ���
���뿪�ˡ�

���·�Ӿ�ʯ����ѹ�½�ų�����С�Ŀ�ʼ��ڴ�����
����Ҳ��ˡ��ڴ˿��������ȫ���ʹ���а������ġ�

����֮������һ�����ӹ�ȥ�ˡ�
����Ȼ����ȫ̸���ϰ�ȫ��

���е�ѪҺѭ�����ٻָ���������
��˼������΢�����ڻָ���

���侲��
���侲�ء�����ȡ�ж���
��Ϊ�˻���ȥ��

���崨������Ȼ����֡��������٣��ܶԻ���
�����ң�Ӧ�ã�Ҳ�����������ǡ�

����ô����������ʲô��
���Ҽ����š�

����Ҫ�̼������������ԡ������а취��
��
��ƴ��ȫ��˼����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	FadeStC(0,true);
	FadeDelete("�}�ţ�*", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0799]
����̧�����ߡ�
�������崨Ҳ�ڿ����ҡ�

������׼��˵���ڵ����л����ʧ���١�
������������˫������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190820b57">
����ô������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
��˵Щʲô����
����˵����
��������˭���������š�

��<RUBY text="��������">����Ļ�</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @+300, @0,"cg/st/3d���_����_��x.png");
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",1000,1000,0,1000,null,false);
	DeleteStC(1000,false);
	FadeStL(1000,true);

	SetFwL("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0190830b57">
����������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W����
	CreateColorSP("�}���ե�", 10000, "#FFFFFF");
	DeleteStL(0,true);

	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1100,null,false);

	WaitKey(75);

	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1150,null,false);

	WaitKey(75);

	CreateSE("SE01c","se���L_����_�����01");
	MusicStart("SE01c",0,1000,0,800,null,false);

	WaitKey(75);

	CreateSE("SE01d","se���L_����_�����01");
	MusicStart("SE01d",0,1000,0,1200,null,false);

	WaitKey(75);

	CreateSE("SE01e","se���L_����_�����01");
	MusicStart("SE01e",0,1000,0,1000,null,false);

	FadeDelete("�}���ե�", 200, true);

/*====================================
//��������ݳ������ԩ`�ɸФ��o���ΤǱ�����
	SL_leftdown(@0,@0,1000);
	SL_leftdownfade2(10);
	OnSE("se���L_����_�����01",1000);

	SL_rightup(@0,@0,1000);
	SL_rightupfade2(10);
	OnSE("se���L_����_�����01",1000);


	SL_left(@0,@0,1000);
	SL_leftfade2(10);
	OnSE("se���L_����_�����01",1000);


	SL_rightdown(@0,@0,1000);
	SL_rightdownfade2(10);
	OnSE("se���L_����_�����01",1000);


	SL_leftup(@0,@0,1000);
	SL_leftupfade2(10);
	OnSE("se���L_����_�����01",1000);

*/====================================

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
����Ӱ������
��˺�ѿ�����Ħ������

������ʲô����������û������
���������˰��ĵ���ʵȴ�����˲���������

����������أ����������򲱾���
��������ն����!?

��û��Ѫ�Ĵ��С�
����һ�뵽����û����Ѫ�Ľ��ˣ�
�������Ҳ������ô�ɿ���

���������Դ����ú����ڲ����ϡ�
��û��Ҫ���ļ���

�����ٻ�û����
����Ȼ�󱳸е��Ķ�����������δ��ɢ��
������ȷ��������޶ȵı�Ҫ���

����ô������������ʲô��
��
��������Ұ�п�ʼ�����仯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0190840b33">
��������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190850b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateTextureEX("�}�ţ�5100", 5100, Center, Middle, "cg/ev/ev105_���줿С��_c.jpg");
	Fade("�}�ţ�5100", 300, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
��С�ĵ��·�ɢ���ˡ�
�������������·�֮�µļ���¶�˳�����

��ͨ͸ѩ�ס�
�����ң�����ģ�����Ů��������

����Ȼ��������Σ�
�����ǵ�Ȼ��һ�ζ�û���ۼ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0190860b56">
����Ư����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870a]
������ʱ�˵ĸп���
����һʱ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�n��_ܞ��02",1000);

	CreateColorEX("�}��Ļ", 10000, "#000000");
	Fade("�}��Ļ", 600, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870b]
��С���ſ������Ŀ��ͣ���˫����ס���塣

���ز��ʹ����ڲࡣ
����������ȻҪ���������ﰡ�������������¡�

��С�ĵ�Ů�Բ��ֱ�����ס����
��Ȼ��һ˲֮��������Ŀ��ת���ؿ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 11000);

	CreateTextureSP("�}�ţ�300", 5100, -40, 30, "cg/ev/ev105_���줿С��_d.jpg");
	SetShade("�}�ţ�300", MEDIUM);
	Zoom("�}�ţ�300", 0, 3000, 3000, null, true);
	Request("�}�ţ�300", Smoothing);

	MoveFFP1("@�}�ţ�300",40000);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0873]
���߸�¡����ز���
���Ǽ�˵��Һ졣
����������������ǰ״���ػ���ϲ�ã�ʵ�ڴ̼���ʮ�㡣

�����ǣ�Ϊ�Σ�
��Ϊ�����ܿ�����
��С�������ڵ������塣

�������ò�����͸�����������˰ɡ�
��������Ȼ��ûʲô���ã�ֻ�Ǽ�Ȼ������Ҫ���ѵĻ���
��ϣ�����������ڵ�״�������õġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 500, null);

//����֫�ж�С��
	CreateTextureSP("�}�ţ�5090", 5090, Center, Middle, "cg/ev/ev105_���줿С��_d.jpg");
	FadeDelete("�}�ţ�300", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

���ף�
��ʲô��

������ʲô��

�������ڿ�ʲô����
���ҡ�

���Ǹ���
������

������<RUBY text="������">û����</RUBY>��

�������ף�
��Ϊʲô��

��û������

��С��Ҳ��һ���ܵ����ŵı��顣
��Ҳ�ǰ���

��<RUBY text="����������">û���˵Ļ�</RUBY>�������Űɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	SetShade("�}����100", LIGHT);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Move("�}����100", 0, 511, -253, null, true);

	Fade("�}����100", 600, 1000, null, false);
	Move("�}����100", 600, 511, -283, Dxl1, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
��������
�����ˡ�

���������뿪һ��ĵط����úõ����Ƕ���
��<RUBY text="������������">û���˵Ķ���</RUBY>��

��̫����̫���ˡ�
�����ǵ�����һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�}����100", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0891]
��������������������������

���Ǹ�������һ�º���
���㡣�����㡣���ڽ�<RUBY text="��">��</RUBY>�ء�

���ӱ���ʵ�Ի��ü����˸����
���ܾ��þ�Υ�أ��������˵���ˡ�

���ش�����⡣
������ʲô���¡��ܼ򵥵����⡣

��û����ʲô��ֵ��°ɣ�

����ֵ��£�һ��Ҳû�з����ɣ�

���԰ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(1000);

//���֥�å������ȡ�������磻�ף�
	CreateColorSP("�}��ܞ", 15000, "BLACK");
	DrawTransition("�}��ܞ", 3000, 0, 1000, 1000, DxlAuto, "cg/data/slide_02_01_0.png", false);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
���������Ľ��ң�
��������һ��һ��������졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��ܞ", null);

	ClearFadeAll(0, true);

}

..//������ָ��
//�Υե����롡"ma01_020.nss"
