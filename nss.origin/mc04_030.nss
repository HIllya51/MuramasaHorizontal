//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_030.nss_MAIN
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
	#bg092_ɭ�ε�a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_031.nss";

}

scene mc04_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_029.nss"

//��ɭ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg092_ɭ�ε�a_01.jpg");
	CreateSE("SEL01","se����_����_�i��01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ɭ�����Ŷ��صľ��¡�

�������ļ���������ˬ��
�����ƴ�������ˬ��Ȼ��
�������＾���о���ů��

����Ҫ˵��������ɭ����ʲô���Դ����
�������ʣ�ȷʵ�൱�����Ա�
��������ɭ�ֵĶ����ԣ�����˵��Դ�����������ڱ���
������˵��Դ��������Ƿȱ��

��û��ɫ�ʡ�
��û���¶ȡ�
��û��������
��û�з�չ��

��������ɭ����ȱ��֮����Ų�ȱ֮�ˣ��Թ�����
���������˾Ͳ��ࡣ
��
��������Ҳ������ȫû�С�

��������ɭ�ֲ��ǲ�ȱ������һ�����񡪡�
����ʵ�壬�����ࡣ

����ȥ����֮��������ʵ�����ۣ�
�������������

���ؼ�����Ҫ�����ȱ�ݣ���������з������С�
��
���е���������˵�ġ�

���˿̣�����ɭ���в��е��ң�����Ҳ��������
���Դ���Ϊ�ն�����������֮�أ�
�о���Щ̫�����á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/0300010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������Ϊ��������Ե����
�����ķ·���ɭ��ͬ����һ�㣬����˼���
û�а��������

���������Ŀ־壬��Ȼ�޿ɱ��⡣
����������֦�ǰ���ɱ���ָ���Ѿ��Ƚ��ҵ��ʺ���
���׵���㣬�����ܲ����¡�

�����������ľ��磬���������
�Ȳ��Ǵﵽ����֮���µ�ʥ�ˣ�
�಻�Ǵﵽ���֮���µĸ��ֶ��ԣ���ң���ɼ��ġ�
���־�֮�������ġ�

��Ȼ����ݿ־�ֻ������������û����������֮�⡣
����������û�в�����ͷ��Ҳû��������ҡ�


�������һ������ì�ܵ�ƽ�����飬�ȴ�����������á���




</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc04/0300020a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û����¶���ˡ�
��Ȼ�����Ե���Ϣһֱ��׷���������ԡ�

���������ԡ���
����һ������˵Щʲô�ɡ�

����������Ȼ�л������˵�����ֲ�֪�Ƿ�
��˵����ԥ���޷��������ϡ�
������һֱ���ֳ�Ĭ����


����û������Ľ��д����н����������˼���ҵ�
����ͬʱӿ���˱�Ǹ���л����ͷ��
�������Դ����������������飬�����ǵ�һ��Ҳ
˵������

����Ȼ���е����Ժ����ѵã����һ�����Ҫ��������
�����顣
����������������Ҳ����������ڡ�ת�������Ǹ���
��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc04/0300030a00">
����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0300040a01">
������ʲô����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0300050a00">
���������չ��ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0300060a01">
������������

{	DeleteStR(150, false);}
</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ȡ�ɭ�����Ȥ���
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Fade("�}����100", 2000, 1000, null, false);

	Wait(1000);
	OnSE("se����_����_�i��04_L", 1000);
	Wait(2000);


	SetVolume("@OnSE*", 5000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ɭ����ɢ����

�������һСʱ�ˡ�
����̫���ĸ߶ȣ��糿��һʱ�μ���������

��û��Լ����ʱ�䡣
��
������������Ӧ�ÿ��˰ɡ�

���������ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����100", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mc04/0300070a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0300080a00">
������������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ԭ��������������մ˿�����Ѹ�����ŵ��Ʋ�
����ʴ��
��ɽ�е�����ʵ���Ʊ䡣

�������ӣ�һ���꼴�����١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mc04/0300090a01">
����������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0300100a00">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("�����Ť��Ƥ���","se���L_����_��ͻ�M05");
	MusicStart("�����Ť��Ƥ���",1000,200,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ڶ��κ������Ҳ����ڡ���
��
����ʶ�����������������������������Ŀ�ĵ����ģ�
�����뻽���ҵ�ע�⡣

�����ң����Ƕ�<RUBY text="��������">�ض�Σ��</RUBY>�����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("�����Ť��Ƥ���", 1000, 400, null);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/0300110a00">
�������ǵ���δȷ������?!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0300120a01">
�������Ϸ�һ��ȣ�
��������婖���ٶ����ߩ���λ������


{	SetVolume("�����Ť��Ƥ���", 500, 600, null);}
//��������
<voice name="����" class="��������" src="voice/mc04/0300130a01">
�����ַ�Ӧ�ǡ����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0300140a00">
��������פ����?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�����Ť��Ƥ���", 1000, 800, null);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStR(0, true);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	DrawDelete("�\Ļ��", 300, 1000, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��һ���鱨������һ����⣬����ֲ�����һ����⡣
������פ�������߻���������Ҳ����˵����

�������ַ�<RUBY text="������">������</RUBY>�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`���ƲΡ�
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",1000,1000,Axl1,false);

	SetVolume("�����Ť��Ƥ���", 1000, 1000, null);

	CreateSE("�Ȥ�","se���L_����_���ϕN01");
	MusicStart("�Ȥ�",0,1000,0,1000,null,false);
	SetVolume("�����Ť��Ƥ���", 0, 0, null);
	Wait(250);

	StL(300,@-100,@400,"cg/st/3d�Х���_�T��_���La.png");
	Zoom("@StL*", 0, 500, 500, null, true);
	Move("@StL*", 200,@1150,@0, null, false);
	FadeStL(200,true);
	DeleteStA(300, false);
	Wait(500);

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	Fade("�ե�å����",1000,0,Axl3,true);



	OnSE("se���L_����_��ͻ�M04",1000);

	WaitKey(500);

	OnSE("se���L_����_�z_�ŵ�01",1000);

	WaitKey(1150);

	CreateColorEX("�\Ļ��", 4500, "BLACK");
	Fade("�\Ļ��", 500, 1000, null, true);


	StC(300,@0,@0,"cg/st/3d�Х���_����_ͨ��.png");
	FadeStC(0,true);

	WaitKey(200);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc04/0300150a01">
�������Ǹ����塣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0300160a00">
�������Ǹ��ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺���L�򚢤��Х��������֥��å�
//���F�줿�Х��������֥��å�
//inc�ñ����CG���ݳ��_�J����Ҫ�{����

//���L�򚢤��Х�����
	EfRecoIn1(18000,300);
	CreateTextureEX("�}����01", 5000, @200, @100, "cg/ev/ev170_�Х������L���䚢_a.jpg");
	Request("�}����01", Smoothing);
	Zoom("�}����01", 0, 1500, 1500, null, true);
	Fade("�}����01",0,1000,null,true);
	EfRecoIn2(300);

	Move("�}����01", 1500,@-400,@-200, Axl3, true);
	WaitKey(500);


//�Х��������֥��å�


	EfRecoOut1(300);
	Delete("�}����*");
	CreateColorSPadd("�ե�å����", 15000, "WHITE");
	EfRecoOut2(600,true);


	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, Center, Middle, "cg/st/resize/3d�Х���_����_ͨ��l.png");
	Move("�}����ƥ���*", 0, @0, @-200, null, true);

	Request("�}����ƥ���1", Smoothing);
	Request("�}����100", Smoothing);


	Move("�}����100", 10000, @0, @+100, null, false);
	Move("�}����ƥ���*", 10000, @0, @+200, null, false);

	Fade("�ե�å����",500,0,null,true);

	Wait(1000);

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc04/0300170a00">
��������һ��𣡡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺���L�򚢤��Х���
//���F�줿�Х���

	EfRecoIn1(18000,600);
	CreateTextureEX("�}����01", 5000, Center, Middle, "cg/ev/ev170_�Х������L���䚢_b.jpg");
	Request("�}����01", Smoothing);
	Delete("�}����100");
	Zoom("�}����01", 0, 1500, 1500, null, true);
	Move("�}����01", 0,@-200,@0, null, false);
	Fade("�}����01",0,1000,null,true);
	Delete("�}����ƥ���1");

	EfRecoIn2(300);

	WaitKey(1500);

//�Х��������֥��å�
	EfRecoOut1(300);

	Delete("�}����*");

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, 0, Middle, "cg/st/resize/3d�Х���_����_ͨ��l.png");
	CreateTextureEXadd("�}����ƥ���2", 11100, 0, Middle, "cg/st/resize/3d�Х���_����_ͨ��l.png");

	Move("�}����ƥ���*", 0, @-500, @0, null, true);

	Move("�}����100", 5000, @-212, @0, null, false);
	Move("�}����ƥ���*", 7000, @-1000, @0, null, false);

	EfRecoOut2(600,true);

	Fade("�}����ƥ���2", 0, 700, null, false);
	DrawTransition("�}����ƥ���2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("�}����ƥ���2", 1000, 0, null, false);
	DrawTransition("�}����ƥ���2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("�ե�å����",500,1000,null,true);

	Delete("�}����ƥ���*");
	Delete("�}����100");

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2500, 2500, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, Center, Middle, "cg/st/resize/3d�Х���_����_ͨ��l.png");
	Move("�}����ƥ���1", 0, -819, -871, null, true);
	Zoom("�}����ƥ���1", 0, 1500, 1500, null, true);

	Move("�}����100", 0, @0, @-100, null, false);
	Move("�}����ƥ���*", 0, @0, @-200, null, true);

	Move("�}����100", 500, @, @100, Dxl2, false);
	Move("�}����ƥ���*", 500, @0, @200, Dxl2, false);

	Zoom("�}����100", 500, 2000, 2000, Dxl2, false);
	Zoom("�}����ƥ���*", 500, 1000, 1000, Dxl2, false);
	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);


	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

	Wait(1000);

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc04/0300180a00">
������ǡ����Ǹ�ʱ���!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ
//���`�}ȫ�����Τ��˥�Υ���ޥ�����
//inc�ñ���֥�å������ȤΤ����C��ʤΤ��زĤ򤭤줤�ˡ�


	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ",3000,1000,null,true);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg013_�`�}���a_01.jpg");
	FadeBG(0,true);
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	FadeDelete("�ϱ���", 0, true);
	WaitKey(1500);
	SoundPlay("@mbgm35",0,1000,true);
	FadeDelete("�}��ܞ", 2000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��
������������������������ɼ�¼���

����¡��ʮ������£���ɼ�ټ�����˱�½��������
�ܲ���ɱ�����¼���
���ⱻ���ǿ����ǴӼ���������̧ͷ����������Ȩ��
������¡��ʮ����ʮ����䣬����ʱ��������һ��������

����ɼ�����ھ��˼�ͥ��������Լ�Ҳ��־���ϴӾ�
��·�����½������ѧУ��������������������������
֮��һֱ���Ž����������ĳɳ�����ȫ�̷񶨵����


�����ڽ��������˼��ҽ�ʶ���뷴�۹�����ͷ�ս
�۲�����������Ҳ����˵�Ƕ��ڱ������������ܾ�һ
�µķ�����
��Ȼ������û�н��Լ�����Ϊһ�������Ķ����ж��ߡ�

������̳������˵����ѧ֮·�ϣ���ɼ�ٻ����µļ�
ֵ�۶�־�����չ��������Ժܶ��˲�����Ӱ�졣
�����ܴ��������廹�Ǹ���������˵��������ˡ�

���������Ĳŵ����۳������ܹĻ����ĵ�����������
�����ŵĸ��Ի�������޷����������ǵ�Ŀ�⡣
��ɼ���ԡ�������Դ��Ϊ�ⷭ��������ĵ�������
���ã��ֱ����˴��ˡ�

������Ȩ���ķ���������<RUBY text="����������">����������</RUBY>��
���������ڴˡ�
�������������˳�Ϊ��ɼ�ɵ�˼����������ͬʱҲ
�����˼����ɵ�ǿ������

�����ŷ�۹���������Ƕ��ԣ����Ƿ�ս�ۺ�������
����Ѿ��ǳ����ۡ�
���������������壬����ȫ�����ǵĵ��ˡ��ϰ�����
�����������ٲ��ῼ�����������ֶΡ�

����¡��ʮ�������һ�ա�
���ض�����𱬷���

������ģ��������Ϊ��Դ�����ĵ����Լ����ӷ�����
���ֳ��׻����˹ض��ϲ��������˽�������Ŀ�ʹ�ʮ
��֮�޵ļ����𺦡�
��������ʷ��ǰ���Ĵ����ѡ�

���ڻ����У��û������ɢ��������ʱ�ڴ�������ڶ�
�����Դ�½�������͹��Լ������������߷��𱩶�
�Ĵ��ԡ�
���⵱Ȼ�����Ǻ��޸��ݵ�ҥ�ԡ�

�������ҵ��ǣ����ڿֻ�״̬������ȱ�������α��
������
����ҥ������Ϊ�棬Ъ˹�����˽���¼�����������
�����˴����������ߡ�

�����У�һ���־��˵��ж����Ҫ�༸���侲��
���������ա����ɵ�ǰ�ȰѶԷ��ɵ�����һ����ԭ��
�����ƻ�������˵�������أ�<RUBY text="����������������">���ܴ��������Ǽ�</RUBY>
�ȳ����������ʰ������׼���˶�Ȼ�ж���

�����ֱ������պ�Լʮ������ڽ������α�����
Űɱ��������Թ껧�¼�֮����������ĲҾ硣
��Ȼ���ھ���ʮ���ա�

����ɼ�ټ������ӣ�����ĳ��ӡ�����Ĵ��ӹ����ˣ�
��̽�����ֵ���ɼ֮�ú��ڻس�·��ʧ�١�
��һ�����뿪��ɼ֮���ں�亵�լۡ��û�лص�λ
�ڽ�������լ��

��һ�ܺ󣬹ٷ��������ʵ���¡�
��
������ɼ֮��������Թ�޵�ĳ½����ξ
����ͬ��������ɼһ�ҡ���

����������ɱ����
����ξ���½�������Ծ���
��
�����������������������������������������������ϡ�

��������񣬴�����˶��������ط��еĹ������м���
�ġ���ɼ�¼�����Ҫ�������ɡ�
��ֻ�м�С��Χ�ڵ���֪����������¼�а�����ٵ���
Ϣ������ȱ��Щ����ʵ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc04_031.nss"