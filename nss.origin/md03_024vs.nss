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

scene md03_024vs.nss_MAIN
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
	#ev225_���g���h��ߡ������_a=true;
	#ev225_���g���h��ߡ������_b=true;
	#ev225_���g���h��ߡ������_c=true;
	#ev225_���g���h��ߡ������_d=true;

	#bg056_���L�����Tǰ_03=true;
	#ev925_Ұ̫����Ƭ_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_025vs.nss";

}

scene md03_024vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_023.nss"


//�����㥭�`�󡣒i��
//���\���¶Σӣ�


	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/st�����AȾ_���L_�Ʒ�.png");
	FadeStR(0, true);
	CreateTextureSP("�}�ӣԣ�100", 1500, 0, InBottom, "cg/st/st�\��_ͨ��_˽��.png");
	Delete("�ϱ���");

	OnSE("se����_����_һ�i", 1000);
	FadeDelete("�}�ӣԣ�100", 300, false);
	DeleteStR(300, true);
	WaitKey(500);

	SoundPlay("@mbgm13",0,1000,true);


	OnSE("se���L_����_������01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������˰γ�̫���������⳯�°����¶Ρ�
���������¶θ��͡������⼸���������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_һ�i", 1000);

//inc�ñ��pre�櫓���ޤ�����
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
��Ȼ�󱣳��Ǹ����������鲽���ұƽ���
���ÿ졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\���¶Σӣԡ���䥢�å�
	CreateWindow("�}�ݷ���", 1000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 1050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 1100, 100, -44, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 1200, -500, -250, "cg/st/resize/st�\��_���L_˽��l.png");
	Request("�}�ݷ���/�}���}", Smoothing);
	Zoom("�}�ݷ���/�}���}", 0, 800, 800, null, true);

	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 2000, @0, @-400, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 2000, @0, @-1000, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(1000);


//	OnSE("se����_����_���饤�ǥ���", 1000);
	SetFwC("cg/fw/fw�����AȾ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md03/024vs0010a00">
��ԭ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ߡ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	CreateTextureEX("�}�ţ�30", 3000, Center, Middle, "cg/ev/ev225_���g���h��ߡ������_a.jpg");
	Fade("�}�ţ�30", 500, 1000, null, true);
	Delete("�}��*");
	Delete("�}ɫ100");
	WaitKey(1000);
//	Delete("�}�ӣԣ�100");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040a]
�����ǹ��������ļ�����
���˼�����Ҫ��ʿ��̫����λ��ѹ����ͣ�
������������ּ�ľ��롭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�29", 2990, Center, Middle, "cg/ev/ev225_���g���h��ߡ������_b.jpg");
	FadeDelete("�}�ţ�30", 1000, true);

	WaitKey(1000);

	CreateTextureSP("�}�ţ�28", 2980, Center, Middle, "cg/ev/ev225_���g���h��ߡ������_c.jpg");
	FadeDelete("�}�ţ�29", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040b]
����ͻȻ��Ϯ��һ����������ܵ����·������ĵ�����
�ȵ�ͬʱ�����ֵ��˵�ͷ�����Ŵ󿪺��޷������Ӷ���
�����϶ο��¡���<k>
�����ǣ�����Ŀ��µĻ���ʤ�������̷�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�27", 2970, Center, Middle, "cg/ev/ev225_���g���h��ߡ������_d.jpg");
	FadeDelete("�}�ţ�28", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040c]
�������Ͳ��ȵ����������Է�֮ǰ���ͻ���һ��������
���ϻ����ĵ���̴����������ؿڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ӣԣ�100", 1500, 0, InBottom, "cg/st/st�\��_���L_˽��.png");
	SetBlur("�}�ӣԣ�100", true, 2, 500, 50, false);
	Fade("�}�ӣԣ�100", 300, 1000, null, false);

//������
	FadeDelete("�}�ţ�*", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ǻ��ں������ģ���ʵ�ü�ֵ��ʵս������
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/024vs0020a00">
��״���жϴ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��Ҫ��Ч�ػ��ý������似���ͱ���ע��������ʹ
����Ӧ�ļ��ܡ�
��û������֮����һ�м��ܶ������ʺ����벻���õ�
״����

����ߡ���۳ɹ��ıر�������Ҫ��������

����һ�������߱���ȱ��������������ϴ������ơ�
����ߡ���۵Ĺؼ���ʹ���ֶ�ҡ�Ӷ�������������
���в��ܶ�˼ά�侲�Ķ���ʹ�á�

���ڶ�������������Ե�ߡ����֮��֪֮���꣬����
Ӧ��֮����
������һ�м��ܵı�Ҫ�ɹ�������

�����ˡ�������������������������������¹��˹�����

����ʧ�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Фá����礯�Ӥ�����
//��ef003����Ю���
//���������\���¶Σӣԥ��åס������¶Τε������Ĥ�
//����ʾ����

	CreateTextureEX("����", 9000, @-200, @-100, "cg/ev/ev925_Ұ̫����Ƭ_c.jpg");
//	Rotate("����", 100, @0, @180, @-50, null, false);
	Request("����", Smoothing);
	Zoom("����", 0, 1200, 1200, null, false);
	Move("����", 200, @100, @100, null, false);

	OnSE("se����_����_�᤺����01",1000);
	CreateTextureEX("�ޤ�", 10000, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");

	Request("�}�ӣԣ�100", Smoothing);
	Request("OnBG", Smoothing);

	Move("@OnBG*", 50, @0, @-50, null, false);
	Move("�}�ӣԣ�100", 50, @0, @-100, null, false);
	Zoom("@OnBG*", 50, 1200, 1200, null, false);
	Zoom("�}�ӣԣ�100", 50, 2000, 2000, null, false);


	Zoom("�ޤ�", 100, 1200, 1200, null, false);
	Fade("�ޤ�", 100, 1000, null, true);

	Delete("@OnBG*");
	Delete("�}�ӣԣ�100");

//	CreateColorSP("�\Ļ��", 9000, "BLACK");
	Fade("����", 0, 1000, null, false);
	Zoom("����", 200, 1500, 1500, null, false);

	Zoom("�ޤ�", 200, 1400, 1400, null, false);
	FadeDelete("�ޤ�", 200, true);

//	Fade("�ޤ�", 100, 0, null, false);
//	Zoom("�ޤ�", 100, 1500, 1500, null, false);

	SetFwC("cg/fw/fw�\��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/024vs0030b26">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ں�ɫ����϶���˫�����ȵض�ҡ�ˡ�

�����������յ�̫�����ҵ�������뼫����
����Ϊ���������ƣ����������塣

�������ĵ��������ǰ��
��Σ�ա���<k>����

��<RUBY text="������">̫����</RUBY>��
�����������������ͻ�̻���ն�������޷��ش��ҡ�
Ҫȷ��ɱ��������Ҫ��Ӧ�ļ��پ���ġ�

���ʺ��⴦Ҫ���������ǵ�λ�ù�ϵ��������赲��
���ܹ�����
���۾�����Ŀ��С���Ի��У�����δ�ػ���������ˡ�
������ᴩ���ԣ�����Ҳ�ᱻ���ѹǸ���ס��

�����һ��������ֻʣһ��ѡ��
����̫���߾ٹ����������Ϸ�ն�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetBlur("����", true, 2, 500, 50, false);

	OnSE("se���L_����_�����02",1000);

	Move("����", 300, @-2000, @-300, null, false);
	Rotate("����", 300, @0, @0, @-60, Dxl3, false);
//	Rotate("����", 200, @0, @0, @60, Axl3, false);
	Fade("����", 300, 0, null, false);
	SetFwC("cg/fw/fw�\��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/024vs0040b26">
���ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Фá����礯�Ӥ���
//��ef001��
//����Ω`�磻�פ������ƺ��S������
//�������`��װ�פ˵����ä�����

	CreateTextureEX("ido", 10002, 50, -50, "cg/ef/ef001_�����Ƅ�.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Move("ido", 200, @-250, @150, Dxl1, false);
	Fade("ido", 200, 1000, null, true);
//	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	WaitKey(100);
	Fade("ido", 400, 0, null, false);

//	SetVolume("@mbgm*", 300, 0, null);

	OnSE("se���L_����_�����01",1000);
	CreateTextureSP("�}��", 10011, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	EffectZoomadd(12000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

//	DrawTransition("�}��", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);
	WaitKey(100);
	OnSE("se���L_����_��_�ҥå�01",1000);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������һ����ɨ�������Ŵ󿪵��Ȳ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��֣Ӵ���
//�����L�顣�����ӄ�


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}��");
	Delete("�\Ļ��");
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	StL(1000, @0, @0, "cg/st/st����_���L_˽��.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);


	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");

	WaitKey(1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//	SoundPlay("@mbgm11", 0, 1000, true);
	WaitKey(500);
	OnSE("se����_�n��_ܞ��01", 1000);
	FadeStR(300, false);
	FadeStL(300, false);
	Move("@StL*", 300, @0, @30, DxlAuto, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md03/024vs0050a01">
����������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0060a07">
�����ֲ����Ļ���������ȫ�����������ƾ���
�еļһ�һֻ�־������ꡣ
���Ը����Ǵ��С���ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0070a07">
����ʵ˵�Ҷ�Ҫ�����ˡ�
����������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/024vs0080a01">
�������㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������

	Move("@StL*", 1000, @, @-30, DxlAuto, false);
	Shake("@StL*", 1000, 5, 0, 0, 0, 500, Dxl1, true);

	OnSE("se����_����_���S01", 1000);
	Move("@StL*", 100, @100, @0, Dxl1, false);
	DeleteStL(100, true);

	CreateTextureEX("ido", 15000, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Fade("ido", 400, 1000, null, true);
	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	DeleteStR(0, true);
	OnSE("se����_����_������01", 1000);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0090a07">
����������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0100a07">
������㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ɩ`��
	OnSE("se���L_����_�z��������", 1000);

	Fade("ido", 400, 0, Axl3, false);
	EffectZoomDXadd(16000, 500, 300, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", true);

	CreateTextureSP("�ɩ`��", 14000, @0, @0, "cg/bg/bg056_���L�����Tǰ_03.jpg");
//	Shake("�ɩ`��", 500, 20, 0, 0, 0, 1000, Dxl3, true);

	OnSE("se����_�n��_ܞ��03", 1000);
	Shake("�ɩ`��", 500, 0, 25, 0, 0, 1000, Dxl3, true);


	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	StR(1000, @100, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");

	Fade("�ɩ`��", 300, 0, null, true);
	SetBlur("@StR*", true, 1, 50, 50, false);
	Move("@StR*", 300, @-100, @0, DxlAuto, false);
	FadeStR(300, true);
	Move("@StL*", 1000, @0, @30, DxlAuto, false);
	Shake("@StL*", 1000, 5, 0, 0, 0, 500, Dxl1, false);
	FadeStL(1000, false);

	Delete("ido");
	Delete("�ɩ`��");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md03/024vs0110a01">
����������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0120a07">
���С�
����Ӳ������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0130a07">
�������Ǹ���Ʒ�������е��;�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/024vs0140a01">
�����������ҡ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0150a07">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/024vs0160a01">
��������������!!��

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0170a07">
����Ҫ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ

	DeleteStL(200, false);
	DeleteStR(200, true);
	WaitKey(100);

	OnSE("se���L_����_Ź��05", 1000);
	CreateTextureEX("���Ĥ�", 10002, 0, 0, "cg/ef/ef040_�����nͻ.jpg");
	Zoom("���Ĥ�", 0, 1500, 1500, null, true);

	EffectZoomadd(15000, 1000, 100, "cg/ef/ef040_�����nͻ.jpg", false);

	Fade("���Ĥ�", 200, 1000, null, true);
	Zoom("���Ĥ�", 400, 1000, 1000, null, false);
	Fade("���Ĥ�", 400, 0, null, true);

	StL(1000, @50, @0, "cg/st/st����_���L_˽��.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	StR(1000, @-100, @0, "cg/st/st�衩��_ͨ��_�Ʒ�x.png");

	Fade("�ɩ`��", 300, 0, null, true);
	SetBlur("@StR*", true, 1, 50, 50, false);
	Move("@StR*", 300, @100, @0, DxlAuto, false);
	FadeStR(300, true);
	SetBlur("@StL*", true, 1, 100, 50, false);
	Move("@StL*", 300, @-50, @0, DxlAuto, false);
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0180a07">
����ô���ܷ��֣�
�������Һò��������ϵ����ˣ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0190a07">
�����������ܰ��ҵ��������õ������ˡ�
���Կ���ֻ�ǰ�����������˵��
���Ǿ��Ա�Ҫ��!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/024vs0200a01">
�����ǲ�֪��������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0210a07">
���ǰ��㲻֪���ɣ�
��������ľ����ʮ��Сʱһ�̲�ͣ�����ǵ�
���µĻ쵰�ҽУ�ѹ�������ж��!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/024vs0220a07">
��˭Ҳ����֪������
�����Բ����ñ���ͬ�顣��ֻ������
�߾�ȫ��<RUBY text="��������������">��ر�����֮��</RUBY>����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��

	OnSE("se����_����_���S01", 1000);
	CreateTextureEX("ido", 15001, @0, @0, "cg/ef/ef001_�����Ƅ�.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Move("@StR*", 100, @-50, @0, Axl1, false);
	Fade("ido", 100, 1000, null, true);
	Zoom("ido", 100, 1000, 1000, DxlAuto, false);
	DeleteStL(0, true);
	DeleteStR(0, true);
	CreateTextureSP("�ɩ`��", 14000, @0, @0, "cg/bg/bg056_���L�����Tǰ_03.jpg");

	OnSE("se���L_����_�z��������02", 1000);
	OnSE("se����_�n��_ܞ��03", 1000);
	Fade("ido", 400, 0, Axl3, false);
	EffectZoomDXadd(16000, 500, 300, "#FFFFFF", "cg/ef/ef042_���ô��.jpg", true);

	Shake("�ɩ`��", 1000, 40, 40, 0, 0, 1000, Dxl3, false);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md03/024vs0230a01">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//	ClearWaitAll(0, 0);

}

..//������ָ��
//�Υե����롡"md03_025vs.nss"