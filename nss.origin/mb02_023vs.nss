//<continuation number="240">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_023vs.nss_MAIN
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
	#bg069_���ӘS���ڎ��g_01b=true;
	#bg063_���ӘS��������_03=true;
	#bg070_���ӘS�����A�Υ۩`��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_024vs.nss";

}

scene mb02_023vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_022.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg069_���ӘS���ڎ��g_01b.jpg");

/*
//��������ݳ���ǰ�ե�������z��å����٬F�á�
	CreateTextureSP("�}���z��", 900, Center, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_�i��b.png");
	CreateTextureSP("�}���z��", 700, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_�i��.png");
	CreateTextureSP("�}���z��", 600, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	CreateTextureSP("�}���z��", 800, Center, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_�i��.png");
	CreateTextureSP("�}���z��", 600, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	CreateTextureSP("�}���z��", 700, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);

	Move("�}���z��", 0, @-420, @0, null, true);
	Move("�}���z��", 0, @-180, @0, null, true);
	Move("�}���z��", 0, @-10, @0, null, true);
	Move("�}���z��", 0, @120, @0, null, true);
	Move("�}���z��", 0, @360, @0, null, true);
	Move("�}���z��", 0, @520, @0, null, true);

	Request("�}�}�z*", Smoothing);
*/

	FadeBG(0,true);
	Delete("�ϱ���");
	CreateMovie("���ӻ�", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 3000, null, true);


	CreateSE("SE01","se�ճ�_�Cе_늚ݥ���`�Ȏ��01");
	MusicStart("SE01",2000,300,0,1000,null,true);


	Fade("���ӻ�", 0, 1000, null, true);



	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mb02/023vs0010a01">
����������ô�ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/023vs0020a00">
������<RUBY text="������">�����</RUBY>ʧȥ��
�����ơ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/023vs0030a01">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��û��������������λ����֮�˽��͸ô���˼��
�����ƴ���ֻ�ǲ�֪��ν�Ŀ�ѧ֪ʶ���ѣ�����ʵ����
��ָ�ưɡ�

������������ֻ����һ̨�����豸���������л�������
��Դ��
��û�ϵ���ը��ģ���֮���ƺ���������ĳ��������
��������Ȼ�⻹������ʹ�ǳص�����

�������ɼ�Ӯ�õ�ʱ�䲻��̫�á�
��������Чʹ�á�

{	CreateSE("SE01","se����_�n��_��ˤ֤Ĥ���01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�����ݽŲ����������̽���ΧȦ��©����
����һ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/023vs0040a02">
�������ն�����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ψ�������������ǰ��ָʾ��
����ʵ���ϣ�������ʱ�䶼û�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mb02/023vs0050a01">
����������


{	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb02/023vs0060a00">
���ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ץ��������
	CreatePlainSP("�}��д", 5000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a1.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0070a00">
������ն��
  ���߱�𡣡�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b1.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0080a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
//���£ǣ�
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);
	Delete("���ӻ�");
//��ͻ�M
	CreateSE("SE05","se���L_����_��ͻ�M01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	SoundPlay("@mbgm08",0,1000,true);

	Move("@StR*", 150, @-256, @0, Axl2, false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}��", 4000, -250, -110, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	SetBlur("�}��", true, 3, 500, 50, false);
	Move("�}��", 200, @-370, @-70, Dxl2, false);

	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��̤�ر��ܡ�
���������桪������ͻ�ơ�

����������ѭ��ν�ѱ������ڣ�Ψ���������ķ���
���н�����λ���й������Ѳ�����Ӱ�����ⳡ�����У�
���������κ��˻ָ��侲��ȡ�ж�����

������Ŀ�������ٶ������ˡ�Ҳû���Ʋ��ʱ�䡣
�������ҵ�ȼ�˷����ƽ������������Է��С���ֻ����
�����ӡ���ƾ���ƶ��󱳼ӿ�ų̵�������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ���α���
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("�}��д", 5000);
	Fade("�}��д", 100, 1000, Dxl2, false);
	Zoom("�}��д", 100, 1250, 1250, null, true);
	FadeDelete("�}��д", 400, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ˣ����������������£��쳹ҹĻ�µĳǹ���
����ʿ����һ�뼯����ӻ����𽥻ָ���ע����������
ͨ��Ƥ����֪����

����˱�ɡ�
����������ֻҪһ��ӵ��Ѹ���ж�������ȷ�ж�������
�Ǿ��гɹ����ѵ�ϣ����

��ǰ��ֵ���ڴ���
�����߹��Ҳ�̸��

����֮�����Ǳ����չ˺��Լ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Mͻ
	CreateSE("SE01b","se���L_����_��ͻ�M01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("�}��", 150, @-200, @0, Axl2, false);

	CreateColorSP("�}�\Ļ��", 10000, "BLACK");
	DrawTransition("�}�\Ļ��", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	Delete("�}��");

//�����\���T
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg069_���ӘS���ڎ��g_01b.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	StL(1000, @0, @30,"cg/st/3d���\_����_���L.png");
	StR(1000, @0, @30,"cg/st/3d���\_����_�i��b.png");
	FadeStA(0,true);

	CreateSE("SE02a","se����_����_�z�i��03");
	CreateSE("SE02b","se����_����_�z�i��03");
	MusicStart("SE02a",0,1000,0,800,null,false);
	Move("@StL*", 300, @80, @-30, Dxl2, false);
	Wait(50);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-80, @-30, Dxl2, false);

	DrawDelete("�}��ܞ", 150, 100, "circle_01_00_1", true);

//�������w�Ф�
	CreateSE("SE03","se���L_����_�z_���01");
	CreateSE("SE03b","se���L_�n��_�zܞ��02");

	CreateColorEX("�}ɫ��", 15000, "#FFFFFF");
	Fade("�}ɫ��", 0, 800, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEX("�}�\Ļ", 16000, "BLACK");
	Fade("�}�\Ļ", 0, 500, null, true);
	DrawTransition("�}�\Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	SetVertex("@OnBG*", center, bottom);
	Shake("@OnBG*", 300, 10, 0, 0, 0, 1000, Dxl2, false);
	Zoom("@OnBG*", 300, 1500, 1500, null, false);

	MusicStart("SE03b",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Shake("@St*", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-100, @30, Dxl2, false);
	Move("@StR*", 150, @100, @30, Dxl2, false);

	Wait(150);

	FadeDelete("�}ɫ��", 100, false);
	DrawDelete("�}�\Ļ", 300, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��δ��̫�������Ƿ����������Ľ���֮�ܴ�ɵ������м�
�ĵ��
��Ӧ�ò�����ɹ������ˡ������Դ򿪵�·��

�����Ƶ�����Ǵ�����ͷ����ǰ�ǻ��ȡ�
��һ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE04","se���L_����_��ͻ�M03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", false);
	Move("@OnBG*", 200, @-100, @0, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
//��������ݳ����⤬Ҋ�������¤��١���ä������ʡ��Ӥ������Ƥ��ޤ���
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 1000, "slide_01_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��·���޴ӵ�֪��֪��·�ߵ�ͬ���Ѹ���Ȫ��
��Ψ��ǰ�С�������һ�����򡣲�����ԥ���塣

����ȻĿ���ǳ��ǣ�ֻ��������±�ɡ�
���µ������ִ�������Ŀ�ĵ��޴�ֻ����һ�������װ�
��Ϊ����޶ȵĴ��ۡ����ң����Ͻ�ҹ�����Ƿ��ڴ˴���
�Ǹ��ԡ�

����������Ϊ����ת�Ƶ��𴦲űȽ������ɡ��źӹ�����
���ܲ���������׼����
������������£�������ηܶ������˱�ȫ�Լ������ܻ�
�б��ʤ�㡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����\
	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("�}���z��", 900, Center, InBottom, "cg/st/3d���\_����_���L.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_ͨ��.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d���\_����_�i��b.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��b.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);

	CreateSE("SE01a","se����_����_�z�i��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se����_����_�z�i��03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se����_����_�z�i��03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se����_����_�z�i��03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @360, @0, AxlDxl, false);
	Move("�}���z��", 0, @200, @0, AxlDxl, false);
	Move("�}���z��", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se����_����_�z�i��03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @-420, @0, AxlDxl, false);
	Move("�}���z��", 0, @-200, @0, AxlDxl, false);
	Move("�}���z��", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se����_����_�z�i��03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @520, @0, AxlDxl, true);
	Move("�}���z��", 0, @200, @0, AxlDxl, true);
	Move("�}���z��", 300, @320, @0, AxlDxl, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0090a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ң��������Ҳ���Ǽ�򵥵����ܷܶ���õģ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ�Y�֡����㥭�`��
//�����\���x�졢�e���򤫤�⤦һ�T
	CreateSE("SE02","se���L_����_Ұ̫�����01");
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	MusicStart("SE02",0,1000,0,900,null,false);
	SL_down2(5100,@0, @-256,2000);
	SL_downfade2(10);

	CreateSE("SE02a","se���L_����_��ꪏ���01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 6000, "#FFFFFF");
	Delete("�}���z*");
	Delete("�}ɫ�\");
	FadeDelete("�}ɫ��", 600, false);

	Wait(200);

	CreateSE("SE02b","se����_����_���S03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	StL(1000, @180, @20,"cg/st/3d���\_����_���L.png");
	Shake("@StL*", 300, 0, 4, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-30, @-20, null, false);
	FadeStL(150,true);
	CreateSE("SE02c","se���L_����_������01");
	MusicStart("SE02c",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ӭͷϮ��һ�������䲻��ػػ����ϣ����ػӵ�����
�塣
��ֻɲ�ǣ�����һ��Ȼ���ʧ�����ù���֮�Ƶȴ���
֮������Ϯ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƥ����ȥܥå��������ơ���������
	WaitKey(100);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��׼���á���
��<RUBY text="������������">�ʹ˲��ٶ���</RUBY>�ĵ��˴����ҵĲ�����

��ɲ�Ǽ䡣
�����㹻��һ�غ��е��µĵ���ָ�ս�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0100a00">
����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�Ȥ���һ��
	CreateSE("SE01a","se����_����_���S01");
	CreateSE("SE01b","se����_����_���S02");
	StCL(1200, @-60, @0,"cg/st/3d���\_����_���L.png");
	StR(1200, @0, @0,"cg/st/3d���\_����_�i��b.png");
	Zoom("@StML*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 1400, 1400, null, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 150, @60, @0, Dxl1, false);
	Request("@St*", Smoothing);
	FadeStCL(150,false);
	Wait(50);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 150, @-60, @0, Dxl1, false);
	FadeStR(150,true);

	Move("@StML*", 10000, @30, @0, Dxl1, false);
	Move("@StR*", 10000, @-30, @0, Dxl1, false);

//��һ�ď�����
//��һ��ʳ�餦
	CreateColorSP("�}ɫ���\", 5000, "#000000");
	CreateColorSP("�}ɫ���\", 100, "#000000");
	Delete("@St*");

	Wait(1);

	Delete("�}ɫ���\");

	CreateSE("SE02a","se���L_����_Ұ̫�����02");
	MusicStart("SE02a",0,1000,0,900,null,false);

	SL_rightdown(@-150, @-256,2000);
	SL_rightdownfade2(0);

	CreateSE("SE02b","se���L_����_Ұ̫�����01");
	MusicStart("SE02b",0,1000,0,1100,null,false);
	SL_leftdown(@150, @0,3000);
	SL_leftdownfade2(0);

	CreateSE("SE03a","se���L_����_�z������01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	CreatePlainSPadd("�}��д", 111);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Delete("�ϱ���");
	CreateSE("SE03b","se���L_����_�z_���02");
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1000, 1000, null, false);
	FadeDelete("�}��д", 200, false);
	FadeDelete("�}��ܞ", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��һ�๥�����е��أ���һ���޿��κΡ�
������׼����������װ�׵ĺ�ʵ�粿����һ����

�����ƶ��ϵĶ���֮�����߽��ڴ�������Ϊ���Ŀ���֮
�£��������Ǽ��ޡ�
�������͸������ɲ�Ǽ�������ѣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0110a00">
���ް���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	StL(1000, @60, @0,"cg/st/3d���\_����_���L.png");
	StR(1100, @0, @0,"cg/st/3d���\_����_�i��b.png");
	Move("@StR*", 0, @-60, @0, null, true);
	Zoom("@StR*", 0, 1200, 1200, null, true);
	Request("@St*", Smoothing);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���о��������ʵѹ�ڿ��С�

{	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FadeStR(150,false);}
�����߶��Ǹ������֡������������������������ɡ�
�����ǵĽ�����������ǰ�����ĸ����ɽ��ͣ������ǽ�
�����е���֮����

�����ң����˵ĺ���Ĭ���ǳ���
�����г���Щ��ʵ�����뵽��һ���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0120a00">
�������������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������˼�����������塣
���˿�����ʱ����

����ɱ�����ĵ����ʧ��׷���ľ��û��ᣬ��֪��ν��
ͣ�¹�����
��һ���Ǵ�������Ѱ���ļ�Ӳ�����Ƕ�ҡ�ˡ�

����׼ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T���򤫤�
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}��", 5100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreatePlainSP("�}��д", 5000);
	Request("�}��д", Smoothing);
	SetVertex("�}��д", 768, 0);
	SetBlur("�}��д", true, 3, 500, 50, false);
	Fade("�}��", 150, 0, null, false);
	DrawDelete("�}��", 300, 100, "zoom_01_00_1", false);
	Zoom("�}��д", 150, 2000, 2000, Dxl2, true);

//���ᤫ��⤦һ�T��
//��������ط���ܞ�Q
	CreateSE("SE01b","se����_����_���S02");
	MusicStart("SE01b",0,1000,0,800,null,false);
	Move("�}��д", 200, @580, @-90, AxlDxl, true);
	Shake("�}��д", 300, 6, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw���\.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���ܥ����ʤ�
//������㣯���\��
<voice name="����㣯���\" class="����������" src="voice/mb02/023vs0130e022">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//��һ�T�����w��
	CreateSE("SE02b","se���L_����_�z��������03");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 6000, "#FFFFFF");
	CreatePlainSPadd("�}��д��", 5100);
	SetVertex("�}��д��", 256, 144);
	Shake("�}��д��", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д��", 150, 1250, 1250, null, false);
	Wait(50);
	Fade("�}ɫ��", 100, 1000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE02","se���L_����_�z_�����w��02");
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	CreatePlainSPadd("�}��д", 110);
	Shake("�}��д", 900, 0, 20, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 600, true);

	CreateSE("SE03","se����_����_���S03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, -550, -370, "cg/ev/resize/ev503_�����i������l.jpg");
	CreateTextureSP("�}��", 3000, -550, -370, "cg/ev/resize/ev503_�����i������l.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����������ֵ��ҳ��䲻�⡣
����װ����ͣ�¶����ĵ��ʵ���ɴ���Ծ��������
һ�

��ͬʱ�������һ����
���Է�������������ƶ���ҡ����ʣ����һ��ķ�Ӧ
�к����ӻ���

�������»���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
//�����`��
	CreateColorSP("�}ɫ100", 4500, "BLACK");

	OnSE("se���L_����_�z_���01",1000);

	SL_left2(20000,@0, @0,1500);
	SL_leftfade2(10);

	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");
	CreateSE("SE01b","se���L_�n��_�zܞ��01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���������ͷ����
����ò��ᡪ�����ܴݻ���ͷ�ǹ����д�ľ�����־��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_����_���S03");
	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	MusicStart("SE02",0,1000,0,1200,null,false);
	Zoom("@OnBG*", 150, 1500, 1500, null, false);

	Fade("�}��", 0, 1000, null, true);
	DrawTransition("�}��", 150, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0231]
��������ϥ������棬��û�б�ҪĿ����ֱ�����ص���
һ�̡�
��֮ǰ��ɵ����￴����Ҳû��Ѹ�ٻָ������ƣ�ȷ��
��һ����ٴ���ǰ��ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0140a00">
�������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��<RUBY text="����">����</RUBY>��
�������ʶͻȻ�����������ʡ�

���Ա�Ȳ�������Ϊ����û�з���һ����
���ԣ���ʼ���ա�������֮ʱ������֮ʱ����ս֮ʱ��
��������֮ʱ��

���������ʹ�ҵ�������ι̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0150a00">
�������޾��ڣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��˵��Ļ����ʵ��Ч��������һ�壬�������������⻹
���¸��ֲ����˵�����
�������˶�֪��������һ���������塣
�����������ۼ�����

��һ��ֻ���Ʋ⡣��û��֤�ݿ��Է��ϡ�
�������ҳ���Ѹ�٣������ж�ȴҲ�Ƕ����ĸ��壬��
�ںڰ�������������������ǲ��ǣ������к���ʤ�ξ�
��һְ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}��ܞ", 150, 100, "circle_01_00_1", true);

//���¤��˔����F
	CreateTextureEX("�}���z��", 900, Center, InBottom, "cg/st/3d���\_����_���L.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_ͨ��.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d���\_����_�i��b.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��b.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);

	CreateSE("SE01a","se����_����_�z�i��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se����_����_�z�i��03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se����_����_�z�i��03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se����_����_�z�i��03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @360, @0, AxlDxl, false);
	Move("�}���z��", 0, @200, @0, AxlDxl, false);
	Move("�}���z��", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se����_����_�z�i��03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @-420, @0, AxlDxl, false);
	Move("�}���z��", 0, @-200, @0, AxlDxl, false);
	Move("�}���z��", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se����_����_�z�i��03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @520, @0, AxlDxl, true);
	Move("�}���z��", 0, @200, @0, AxlDxl, true);
	Move("�}���z��", 300, @320, @0, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����ǽ�����Ը�����뷨��
�������ļ��ţ�Ļ��ӵ�в�ֹһ�������������ˣ�����
���������޷�������

������ϣ���ܾʹ��սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓ĤҤ��Ҥ��
//���ܤ���ܤ���
	CreateSE("SEL01","se���L_����_���B��02");
	MusicStart("SEL01",0,800,0,1000,null,true);
	CreateMovie("�}�ӻ�", 4000, Center, Middle, true, false, "dx/mv���_���㥭�`����㥭���`��.ngs");
	SetAlias("�}�ӻ�","�}�ӻ�");
	Request("�}�ӻ�", Play);
	Delete("�}���z*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������ܼ���������������޷����н��ܺ�����
����׼��һ�㣬��ѡ��ͻ�ơ�

�����赶Ū���������ڼ�϶֮��ͻΧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//���ܤ��M��
	CreateSE("SE03","se����_����_���S03");
	MusicStart("SE03",0,1000,0,1300,null,false);
	CreateTextureSPadd("�}����", 5100, -180, -160, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 5000, -180, -160, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Delete("�}�ӻ�");
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 10, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���������������ǿ��
��ÿ���һ�����е�Ƥ�����䡣

��������ɱ����Χ�������ҵ�ʤ����
��Ϊն��������פ������ǣ���Ҫ׷�ϳ������ܵ��Ҳ�
�����¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��e������
	CreateSE("SE04","se���L_����_��ͻ�M01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("�}��", 300, @-600, @0, Axl2, false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
//��������ݳ����e�����¤ʤɤʤ�����
	OnBG(100,"bg063_���ӘS��������_03.jpg");//���ߩ`ע��
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0160a00">
���á�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ǰû�е��˵���Ӱ��
��һ������ͻΧ���������ǰ��ѵ��˵ĺû��ᡣ

��ֻҪ�������������롪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 5100, 0, 0, "cg/bg/bg063_���ӘS��������_03.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 6200, -35, -1250, "cg/st/resize/3d���\_����_�i��l.png");
	CreateTextureEX("�}�ݷ���/�}���}2", 6000, -35, -1150, "cg/st/resize/3d���\_����_�i��l.png");
	CreateTextureEX("�}�ݷ���/�}���}3", 5800, -35, -1160, "cg/st/resize/3d���\_����_�i��l.png");
	Rotate("�}�ݷ���/�}���}*", 0, @0, @0, @60, null,true);

	Move("�}�ݷ���", 0, @0, @-288, null, true);
	Move("�}�ݷ���/�}���}*", 0, @-1000, @0, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 1500, 1500, null, true);
	Zoom("�}�ݷ���/�}���}", 0, 500, 500, null, true);
	Zoom("�}�ݷ���/�}���}2", 0, 400, 400, null, true);
	Zoom("�}�ݷ���/�}���}3", 0, 300, 300, null, true);
	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 100, false);


	CreateSE("SE010","se���L_����_��ͻ�M01");
	CreateSE("SE020","se���L_����_��ͻ�M02");

	OnSE("se���L_����_��ͻ�M03",1000);

	Move("�}�ݷ���", 200, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 200, 1000, null, true);
	Move("�}�ݷ���/�}���}", 300, @1000, @0, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);
	MusicStart("SE020",0,1000,0,1000,null,false);
	WaitKey(150);
	MusicStart("SE010",0,1000,0,1000,null,false);
	Fade("�}�ݷ���/�}���}2", 0, 1000, null, false);
	Fade("�}�ݷ���/�}���}3", 0, 1000, null, false);

	Move("�}�ݷ���/�}���}3", 450, @2600, @0, Axl1, false);
	Move("�}�ݷ���/�}���}2", 450, @2500, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 450, @1000, @0, Axl2, true);

	FadeDelete("�}�ݷ���*", 200, false);


//���Ҥ夤�`��
//�����\���w��
//��ǰ�����ŵ�
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}���z��", 900, Center, InBottom, "cg/st/3d���\_����_���L.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d���\_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��b.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);

	Move("�}���z��", 0, @-420, @0, AxlDxl, false);
	Move("�}���z��", 0, @-150, @0, AxlDxl, false);
	Move("�}���z��", 0, @180, @0, AxlDxl, false);
	Move("�}���z��", 0, @490, @0, AxlDxl, true);

	CreateSE("SE01b","se���L_����_�z_�ŵ�01");
	MusicStart("SE01b",0,800,0,1100,null,false);

	Wait(300);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("�}���z��", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01c","se���L_����_�z_�ŵ�01");
	MusicStart("SE01c",0,800,0,900,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("�}���z��", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01e","se���L_����_�z_�ŵ�01");
	MusicStart("SE01e",0,800,0,1200,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("�}���z��", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	SetVolume("SE01", 1000, 0, null);
	CreateSE("SE01f","se���L_����_�z_�ŵ�01");
	MusicStart("SE01f",0,800,0,700,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("�}���z��", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0170a00">
��ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ծ�����������ԡ�
�����˲�����׷�����ҡ�

���ղ����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0180a00">
���⡪����Щ�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������ɰͰ͵���򢡣
����������ζ�Լ��̳����������ˡ�����ʹ���˷�����
��������<k>Ҳ����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0190a00">
����Ȼ���������С�Ŀռ���
��������װ����!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ��
//���ܤ���һ��
//���ɤ��`��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE01b","se���L_����_�z��������03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg063_���ӘS��������_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreateSE("SE01c","se���L_����_�z_�����w��02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����⽣Ӱ�����ͻ���������������̫��ӭ��һ����
���������Ҳ�������װ�ס���ͻ��֮���ƺ��������ã�
�Է��������ع������¡�

������û�е����������Ӷ������س��֡�
���ٶ۵��ٶ��𽥻ָ�������̤�����ڻ��е�ͨ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0200a00">
����Щ����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/023vs0210a01">
��������Ⱥ�����ֵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�������ɬ��
����Ϊ������ʶ�����Լ��Ƿ�͹���һ�С�

������Щ��սǰ����Ϯ���������ϣ���Ȼֻ����װ��
�£������������˳�����ѡ�����һ�ж�������ܹ�ʵ
����
�����ֻ����Ϊ�ǳ���˵�Ρ�

�������Բ�����֮�¡�
�����д��뷨��

���������һ�������Ρ�����ʷ��
�����ִ�ҵ���ý���ΰ�˻�Ӣ�ۡ�Ϊ�δն�����֮����
��֪�ܵس��˷�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���A��
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se����_����_���S03");
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1200,null,false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/mb02/023vs0220a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//���ɤɩ`��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE02a","se���L_����_Ұ̫�����01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	SL_left2(5100,@0, @0,2000);
	SL_leftfade2(10);

	CreateSE("SE02b","se���L_�Ɖ�_����02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 6000, "#FFFFFF");
	Wait(10);
	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��̨��ͻȻ��������ǰ���������ϡ�
������̫����ɨ����������ݻ١�

��Ȼ�󡪡�ǰ����һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 1000, "slide_02_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����������Ϊ��Ϯ�����ϲ����϶��С�������ܹ��õ�
�˲������ִ��������Ӯȡ������ʱ�䡣
�����������˽������к�����̽�⣬һ�ж��ǰ׷ѡ���
������һ���ܷǻ��¡�

������׷��֮��û��Ŀ�õ���һĻ��
��������һ�������������ӵķ����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��һ�˳Ƥϡ��錄������
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/023vs0230b37">
������������á���
�������˷���ʻ������������ǡ����뽫��
��Ϊ���£�Ϊ��Ч������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/023vs0240a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W�����夤�`��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_�����01");
	CreateSE("SE02","se���L_����_�����01");
	CreateSE("SE03","se���L_����_�����01");
	CreateSE("SE04","se���L_����_�����01");

	SL_right2(5100,@-300, @0,2000);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightfade2(10);

	MusicStart("SE02",0,800,0,1500,null,false);
	Wait(500);
	MusicStart("SE03",0,500,0,1500,null,false);
	Wait(500);
	MusicStart("SE04",0,300,0,1500,null,false);
	Wait(2000);

}

..//������ָ��
//�Υե����롡"mb02_024vs.nss"