//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_010vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_010vs.nss","TurboBlur",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg002_��a_02=true;
	#ev901_�y�Ǻ�����ʧ��С����_a=true;
	#ev504_����ͻ�M=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_011vs.nss";

}

scene mb04_010vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_009.nss"

//���£ǣ�
//���Q��
	SoundPlay("@mbgm11",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0010a00">
���⡪������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ФҤ�`����ؼ��l
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����类�ֳ����������֡�
���ֳ�������������������������

��ֻ�п��еĵ�����������ġ�
������һ�ж��������κ����塣

���׿����е���Ϣ�����һ�е�˼����
���ն��������ڵ�������������һ˿˿��<RUBY text="��������">�߽����</RUBY>��

��֪�Կ�ʼ�߸���
�����Կ�ʼ��ã��
�����Կ�ʼ�񱼡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/mb04/010vs0020a14">
���ۺ�������

//���⡿
<voice name="��" class="��" src="voice/mb04/010vs0030a14">
�����ɡ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš��ϕN����ӭ�Ĝʂ�
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSPadd("�}����", 3100, -1024, -190, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	CreateTextureSP("�}��", 3000, -1024, -190, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -650, -400, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_0", true);

	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040a]
��Ȼ�󡪡�
��
���Ժ������ͷ���Ŵ��ҵķ�����賤��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 18000, "#000000");
	CreateTextureSP("�}��", 17000, -600, -140, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040b]
�����˵ص�������
��͸���ط�����

��
��������������������������ɱ��

���趨Ŀ�ġ�

��
���������������������������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��ܞ", 600, true);
	CreateColorEX("�}ɫ�\Ļ", 17500, "#000000");
	CreateTextureEX("�}���y", 17010, -150, -1200, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Rotate("�}���y", 0, @0, @0, @180, null,true);
	Request("�}���y", Smoothing);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
��Ѱ��ɱ�е��ֶΡ�

�������ֶΡ�
���ܹ�������������ѷ�����ʲô��

{	Fade("�}���y", 500, 750, null, false);}
��������ӵ�м����ٶȵ����Ǻš�
���ӳ��߿��½�ʱ����һ�����硣

{	FadeDelete("�}���y", 300, false);}
��Ҫ�ֿ����ѽ����һ����ֻ�п�����
��
����ʽ����

{	CreateTextureEX("�}����x", 17100, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	Fade("�}����x", 500, 1000, null, false);}
��̽�����ĺ�����׼ʱ���������Ʋ���ĵ���Ĺ�����׼
������Ϊ��Ч��Ӧ�԰취����ȷ�ذ��յ����ÿһ˿������
���ϵظ��ݶ����ı仯�޸ĶԲߣ�����ս�����٣��������
Ŭ��������޶ȵؽ�ʤ���Ŀ����Ի�Ϊ��ʵ����

{	Fade("�}ɫ�\Ļ", 300, 1000, null, false);
	DrawTransition("�}ɫ�\Ļ", 300, 0, 1000, 100, DxlAuto, "cg/data/random_01_00_0.png", false);}
��
������������������������������

��������<RUBY text="����">����</RUBY>���������ô���
����һ�㷽���Ѿ������ˡ������õġ�

{	WaitAction("�}ɫ�\Ļ", null);
	Delete("�}����x");
	Fade("�}ɫ�\Ļ", 300, 0, null, false);}
�������Ƕ�ô��տ����ʽ��������ǰ����ʧЧ��
���������ڶ��˹����ļ������������ƽ���档
һ�ж�����Ϊ��һ�ж���ͽ�͡�һ�ж��ǰ׷ѡ�

��<RUBY text="����">�ɻ�</RUBY>���ֶ���û���õġ�
��Ҫսʤ���Ǻţ���ֻ�������������������

������Ҫ�κλ�����ʽ��
����Ҫ��ֻ��������

{	Fade("�}ɫ�\Ļ", 300, 1000, null, false);}
��
�����������������������������ٶȡ�

���������ž����Ե����أ����ٶȡ�
���ٶȡ�

{	CreateTextureSP("�}���y�Ǻ�", 17100, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	FadeDelete("�}ɫ�\Ļ", 300, false);}
�������ǿ���Դ�����������ٶȡ�
��������Ϊ����һ�����ƣ�����ſ���������ѹ����
�Ĺ�����������һ���������Լ��������˵�ȡ��ʤ����

���ٶȡ�

{	FadeDelete("�}���y�Ǻ�", 300, false);}
��ֻҪ���ٶ��ϻ�����ƣ��Ϳ���ȡʤ��
�����ҷ��ȵ�����죬�ҷ����������ѹ���ԵĹ�����
������һ���������Լ��������˵�ȡ��ʤ����

���ٶȣ�
���ٶȣ�

��Ҫȡ���ٶ��ϵ����ơ�����Ҫ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0040a00">
������!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/010vs0050a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������û��������Ӧ���д�����
�����ҵ��������ﵽ�ˡ����������ҵ��������ȴ���
�´����������ظ��ܵõ���

��Ϊ���Բ�����ȫ��������ȥʵ����������־������
�������Դ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}��", 17000, -600, -140, "cg/ev/resize/ev504_����ͻ�Ml.jpg");

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0060a00">
����װ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����װ
	CreateSE("SE01","se���L_��x_����չ�_");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}����x", 17100, Center, Middle, "cg/ef/ef021_������x�k��a.jpg");
	CreateTextureEXadd("�}����x��", 17110, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}����x��", 500, 1500, 1500, Dxl2, false);
	Fade("�}����x��", 250, 1000, null, true);
	Fade("�}����x��", 250, 0, DxlAuto, true);
	FadeDelete("�}����x", 300, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0070a00">
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");



//���Śݼ���
//��������`��
	CreateSE("SE01a","se����_��x_��������01");
	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,750,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainEXadd("�}��д", 18000);
	CreateTextureEX("�}�������", 17010, -600, -140, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	SetBlur("�}�������", true, 1, 300, 50, false);

	Request("�ץ�����", Start);

	Fade("�}�������", 100, 200, null, false);
	Shake("�}�������", 360000, 4, 2, 0, 0, 1000, null, false);
	Fade("�}��д", 100, 1000, Dxl2, false);
	Zoom("�}��д", 100, 1250, 1250, null, false);
	Wait(100);
	Zoom("�}��д", 500, 1300, 1300, null, false);
	FadeDelete("�}��д", 400, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��װ����ɴŻ���
�����ԣ����ڴ����ļ�Ԧ��ʱ�������ŵĶ�����
����ͬ���뷴���Ĵ������������ĳ��������

����һ���ڷ��ж���Ҳ����Ч�ġ�
�������˶����̵�ÿ��ϸ�ڶ�������������ʡ���
���һ�����ٶ�Ҳ��֮�õ�������

����Դ�ֱ������һ�����������Ҳ�ɽ���˷���
�����ٶȡ�
��
��Ȼ����ֻ��������������

��������������ʤ�����Ǻš�
������һ����

����������
�������������ٶ��ںϣ����޷�սʤ���ˡ�

������!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���\�����ͥ륮�`�������`��ȳ��ƤФ��Ф��äȡ�
	CreateSE("SE01","se����_��x_�k��03");
	CreateSE("SE02","se����_��x_����ӥƥ���������ʂ�");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,false);
	CreateColorEXadd("�}��ɫ", 18000, "#FFFFFF");
	Fade("�}��ɫ", 100, 1000, null, true);

	Delete("�}����x*");

	CreateColorSPadd("�}�ե�", 18000, "#660099");
	FadeDelete("�}��ɫ", 200, true);
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0080a00">
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`���Ф��Ф��äȡ��^ؓ�ɤäݤ�
	CreateSE("SE03","se���L_��x_����չ�_");
	MusicStart("SE03",0,1000,0,750,null,false);

	CreateColorEXadd("�}�ե�", 18000, "#FFFFFF");

	Shake("�}�������", 360000, 6, 4, 0, 0, 1000, null, false);
	SetBlur("�}�������", true, 2, 500, 100, false);

	Fade("�}�������", 500, 1000, null, false);
	Move("�}�������", 6000, -600, -180, DxlAuto, false);
	Zoom("�}�������", 1000, 800, 800, DxlAuto, true);
	Zoom("�}�������", 5000, 700, 700, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����������п�ʼ��ת��
�����ǿ񱩵ļ�����

����������������
�����Ǻŵ�������

��������ʹ�ù�����������
��������ʱ������������ԶԶҪǿ��öࡣ

  ͨ�����ѡ������ǺŴ���ȡ����������
����ԭ�������Ǵ���������������Ҳ�޷���������

��������û�������������ѱ��һƥ����һ�㡣
�������������ƴ������Ҫ���ҵ����ڵء���
�������ţ�һζ�ط����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/010vs0090a00">
��������!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/010vs0100a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������ˣ���ҲҪ��Ԧ����
���������˵��������߾�һ���ֶΡ�

��ץס���Ĳ���ʹ�䳼�����������ҵ�ָ���н���
��������ݿ����������������ữΪ�ҵ��ٶȡ�

���ٶȡ�
������׷���ֻ���ٶȡ�

�����ԡ���������ζ�Ҫ�����ƿء�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ݼ���
//���ɤ��`��
	SetVolume("SE*", 100, 0, null);
	CreateColorEX("�}ɫ��ܞ", 18000, "#000000");
	CreateColorEXadd("�}ɫ��", 17600, "#FFFFFF");
	CreateSE("SE04","se���L_����_�z_�ϵ�������01");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);
	CreateSE("SE04a","se����_��x_����ӥƥ������������");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 600, 1000, null, false);
	Move("�}�������", 300, -600, -10, null, false);
	Zoom("�}�������", 300, 1500, 1500, DxlAuto, false);
	Wait(200);
	Fade("�}ɫ��ܞ", 1000, 1000, null, true);
	Delete("�}�������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���·��Խ��һ��ǽ�ڡ�

������Χ�����翪ʼ������ʧ��
�����ڳ�һ��������̬��������˵�����ݲ����㡣

��ֻ����һ���˱����ŵ������޵Ŀռ䡣
��
�����������������ˡ�

������һ���ˡ�
���ڳ�Խ�ٶȶ�������������ģ�������޵Ŀռ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//�Υե����롡"mb04_011vs.nss"

function TurboBlur()
{

	while(1){
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 100, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 20, 1000, null, true);
	Fade("$�����ʥå���", 80, 0, null, true);
	}

}
