//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_010.nss_MAIN
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

	$GameName = "mc04_011vs.nss";

}

scene mc04_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_009.nss"


//������������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	Delete("�ϱ���");
	SoundPlay("@mbgm36", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ұ��մ�����ָʾ����Ҫֱ�ߴ����Ǹ�ʮ��·�ڡ���
��
��һ˲�䡣��Ұ��Ե���ֵ��龰�����һ�æͣ���˽Ų���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateTextureSP("�}����10", 12, Center, Middle, "cg/bg/bg090_���Bۡͨ·a_01.jpg");
	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw����_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/0100010a00">
����ξ����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ȵ�ǰ�档
��������ʿ����������һ����׳���԰�ס��һ���ˣ���
�������˵����ϡ�

������ס���ˣ���һλŮ�ԡ�
���������Ǵ����ξû��

���������Ϊ�ҵ���������ȥ�ˡ�
����������ˣ��������Ƴ��һ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStR(0, true);
	Delete("�}����10");

	CreateTextureSP("�}����20", 12, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	StL(1100,@0,@30,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(0,false);

	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0100020a06">
���Ǿ������ͬ��������֦����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0100030a03">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0100040a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�ߤ�07", 1000);
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������̵���������ͷ��
��һ˲�䣬�����ƺ��Ѿ���״���������жϡ�<k>��������
װ���˽��е����ߡ�����ֻ������װ����������ʿ��Ҳ
����ͨװ����<k>����ս����ȫ���ҷ���Խ��

��������ȳ�һ��������֦����������
��Ȼ�������������෴�ķ�������������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0100050a03">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦����
	OnSE("se����_����_�𤭤�01", 1000);

	StL(1000,@0,@30,"cg/st/st����֦_ͨ��_˽��c.png");
	Move("@StL*", 300, @0, @-30, Dxl1, false);
	FadeStL(300,true);

	WaitKey(200);

	CreateSE("SE01","se����_����_�ߤ�07");
	MusicStart("SE01",0,1000,0,1100,null,false);
	Move("@StL*", 600, @-200, @0, Axl2, false);
	DeleteStL(300, true);

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);

	SetVolume("SE*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ξ��������վ����׷������������˳�ȥ��
��
�����˵��ٶ��൱�죬����ξ���ܵ��ٶ�Ҳ�����Ǹղ�
������ס���ӵ����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����10", 12, Center, Middle, "cg/bg/bg090_���Bۡͨ·a_01.jpg");
	Delete("�}����20");
	DrawDelete("�\Ļ��", 500, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc04/0100060a00">
����ξ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦ȥ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������Ҫ���������������ˡ�
����ξ�������ң�û�п���һ�ۡ�

���ƺ�������ֻ���Ǹ����ߵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc04/0100070a00">
���ѵ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���һ������Ǹ����˵�װ�硣
����������ȫ���Ͻ���װ�硣������������Ӳ�̫����
������ô�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ
	OnSE("se���L_�|��_������01",1000);
	StR(1100,@40,@0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StL(1000,@-40,@0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStR(300,false);

	Wait(100);
	OnSE("se���L_�|��_������01",1000);
	FadeStL(300,true);

	WaitAction("@StL*", null);
	CreatePlainSP("�}��д", 19900);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/0100080a00">
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ź�����
	CreateTextureSP("�}����40", 15000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����40", 0, 1100, 1100, null, true);

	CreateTextureEXadd("�}����50", 16000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Rotate("�}����50", 0, @0, @0, @180, null,true);
	Zoom("�}����50", 0, 1100, 1100, null, true);

	DeleteStA(0,true);
	Delete("�}��д");

	OnSE("se���L_����_Ź��03", 1000);
	Shake("�}����40", 200, 20, 0, 0, 0, 1000, Dxl2, false);

	Wait(150);

	OnSE("se���L_����_Ź��02", 1000);
	Fade("�}����50",100,1000,null,false);
	Shake("�}����40", 200, 0, 20, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������㣯���B��ʿ�ɡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0100090e179">
����ѽ����

{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ʡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0100100e180">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф���
	CreatePlainSP("�}��д", 19900);

	Wait(10);
	Delete("�}����50");
	Delete("�}����40");

	FadeDelete("�}��д", 1000, false);

	OnSE("se����_�n��_ܞ��01", 1000);
	OnSE("se����_�n��_ܞ��02", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������ʿ����Ҫ��׼�����ξ�ı�Ӱ���ҽ����ǻ����ˡ�
��
�������������ȣ�û�������������ˡ��������⼸��
Сʱ����Ӧ���޷�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc04/0100110a00">
�������Ǵ���ʨ�Ӻ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ȷ��������ʿ����״̬��������˵����
���S����������ʨ�Ӻ𡪡������������Ҫ��
�ᣬ��òҲ��������ĸ�����ǡ�

���Ǿ�������֦���׵ĳ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/mc04/0100120a01">
��׷�𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0100130a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������Ѿ����ҵ���Ұ����ʧ�ˡ�
����ʹ�һ��ܿ������ǣ��ҵľ���Ҳ����ı䡣

����ξû�лش��ҵĽ�������֪�����е����ɡ�
��
�������ԣ������Ѿ������˵ġ��Һʹ�ξĿ�Ĳ�ͬ��
�����ǲ��ụ��Э����

���ղŴӽ����˵��Ҳ�����Ҿ��˴�ξ�����ǽ�����ż
Ȼ��
����������ȥЭ�����������ǣ������������׷��ȥ��
������Ͳ�ͬ�ˡ�

���Ǿͻ��Ϊ���������Լ�������
��ȥ��������ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc04/0100140a00">
���߰ɡ�
��<RUBY text="��">����</RUBY>��Ŀ�������Ǻţ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0100150a01">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se����_�z_�l����01", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ת�����ٴ�����������
������ĽŲ��������ں����������С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_011vs.nss"