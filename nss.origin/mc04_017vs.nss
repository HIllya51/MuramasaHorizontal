//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/mc04_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev186_�����֣�㑷�_e=true;
	#ev186_�����֣�㑷�_f=true;
	#ev186_�����֣�㑷�_g=true;
	#ev186_�����֣�㑷�_h=true;
	#ev186_�����֣�㑷�_i=true;
	#ev186_�����֣�㑷�_j=true;
	#ev186_�����֣�㑷�_k=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_017vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_016vs.nss"

//������������
//���¤���{�Ӻ�
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 15000, "BLACK");

	OnBG(100, "bg090_���Bۡͨ·b_01.jpg");
	FadeBG(0, true);

	StR(10000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(0,true);

	Delete("�ϱ���");
	FadeDelete("�\", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	CreateWindow("�}��", 19000, 0, 30, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#336600");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, Middle, "cg/st/resize/3d㑷�_����_�i��l.png");
	Move("�}��/�}�����}װ��", 0, @-100, @160, null, true);
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 900, 900, null, true);

	Move("�}��/�}�����}װ��", 3000, @-110, @0, DxlAuto, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0010a06">
���ء����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ҵ������������еĸо���

���ҵ�����̫����ն�������˵���ϥ���Ϸ���������
��
��������װ���Ͽ����˲�ǳ�����ˡ�

����Ȼû��ն�����������ȣ������Ӧ�õ����˹�ͷ��

����������Ӧ���ܹ���̵��谭������ж���

��Ӧ�û�Ӱ�쵽��ǰ���Ĺ�����
���ҽ���������Ҳ��Ȼ�ή�͡�
��
���ҵõ��˺ܴ�����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0020a01">
���������ڡ�
�����������һ��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0030a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Ѿ�ռ�������ơ�
���Է�Ӧ��Ҳ���ǲ�֪����

����Ȼ����ʨ�Ӻ������׳嶯������ս��֮��ȴ����
�᳹���侲��
����ô��������������������棬Ӧ���ܹ��ڴ�������
�侲���жϰɡ�����

������Ҫ���г��ԡ�
������Ҫ�����ܹ��رܵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0040a00">
����֪�����н�����


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0050a06">
��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0060a00">
�����ظ�һ�飬�Ҳ�Ը��������
�����ң��Ҷ��ڸ��¡����ϵ��¡�����ҵ���
��û�мӺ�����˼����

//��������
<voice name="����" class="����" src="voice/mc04/017vs0070a00">
����ֻ����Ϊ�Լ���ԭ������˴����լۡ��
�Ҵ�Ӧ�ڽ���Լ�������֮�������뿪���
�����������ҹ�ȥ�ɣ���

{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0080a06">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����᤯�{�Ӻ�
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("�}��/�}�����}װ��", 300, 10, 0, 0, 0, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���S������û�лش�
�����������޷��ش�ɡ�

����ʹ�������޷��������ı��飬������ʧȥƽ���վ
�����ܿ�������ʹ�ࡣ
���������ƺ���������ҧ������ʹ���������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0090a00">
���н�����


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0100a06">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����᤯
	CreateSE("SE01","se����_�z_�l����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("�}��/�}�����}װ��", 300, 10, 0, 0, 0, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ʨ�Ӻ����������ҡ�ڡ����������ڲ�����
��
���Ҹе�����������ĵĶ�ҡ��

����Ȼ�����������������һ���û��ǰȥ������
�������ҵ�Ȼ�������Ǿ��𵶼������ѹ��


�������¶������������������Ľ�����ʹ��
���˵������Ҳһ������ҽ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����᤭
	CreateSE("SE02","se����_����_�z�i��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("�}��/�}�����}װ��", 300, 0, 10, 0, 0, 1000, null, false);
	Move("�}��/�}�����}װ��", 300, @-20, @100, null, false);
	Fade("�}��/�}�����}װ��", 300, 0, null, false);
	Zoom("�}��", 1000, @0, 0, DxlAuto, true);
	Delete("�}��");

//���ɤ��ä�ϥ��Ĥ�
	CreatePlainEX("�}��д", 9900);

	CreateSE("SE02","se���L_�n��_�zܞ��01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ƺ����޷������ˣ�ϥ�����ڹ�����ȥ��
������װ��ײ���˼�Ӳ�ĵ����ϣ�������������������

������ͷ����
������ʨ�Ӻ𡪡�<k><?>
{	CreateSE("SE03","se���L_����_������02");
	MusicStart("SE03",0,1000,0,1000,null,false);}
������̫����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0110a00">
����������


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0120a06">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������󣬽�̫���������䡣
���������ŵ�������ǰ̤��һ�����ڳ��˺�ն�����ơ���
���ǡ�

������
��׼��������ͬʱ��Ҳ��Ҫ�����ϵ����Ƶõ��ָ���


������������Ϣ�����ƵĻָ�Ҳ��ӿ졣
�����ң��ָ���״��Ҳ�ܴ�����ǰ���ء�
���������վ�ţ����ܴ��������ƿ����仯���������
�ý�����ֻ�����ڵ��ϣ����޷����ơ�

�����������л��������ַ�����ֵ�����͡�
���������ǡ����ַ����Ƿ������壬ȡ�����ҵ��жϡ�


����Ϊ���ߣ��ڵ���֮�������ս����Ҳ���ǲ����е�
ų����Ϊ������Ҳ������ĬĬ�ȴ����˻ָ�������
��
��������Ϊ�Լ�û����ô���档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������01", 1000);
	StR(10000, @0, @0,"cg/st/3d�����˜�_����_���L.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0130a00">
�������н������������һ�䡣
��֮���Ҿ�Ҫ�����ˡ���


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0140a06">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0150a00">
�����ÿ��ɡ�
��������Ĭ�ᵱ���ܾ�����ش�ɡ���


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0160a06">
������û����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0170a00">
����������


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0180a06">
��û�취������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0190a00">
�������н�����


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0200a06">
����Ϊ����û�취��
���������ԡ�����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0210a06">
���Ҿ������ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ѩ`���¤���ʤ�
	CreateTextureEX("�}����500", 11000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Request("�}����500", Smoothing);
	Rotate("�}����500", 0, @180, @0, @0, null,true);
	Zoom("�}����500", 0, 1100, 1100, null, true);

	OnSE("se���L_����_�����02",1000);
	FadeFR2("�}����500",0,1000,300,@0,@0,40,Dxl2, true);

	CreatePlainEX("�}��д�r�gֹ", 12000);
	SetTone("�}��д�r�gֹ", Monochrome);

	Fade("�}��д�r�gֹ", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������ʲô!?

�������������˽š�
���������˹��ڵ��ϵĽš�

�������߻���������̫Զ��
����ʹ�����ң�Ҳ��ȫû��������
��
������Ϊʲô��������ʲô���塭��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣤ʤ󤫤֤Ĥ��ä���
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("�}��д�r�gֹ");
	Delete("�}����500");
	Wait(10);

	OnBG(100, "bg090_���Bۡͨ·d_01.jpg");
	FadeBG(0, true);

	CreatePlainSPadd("�}��д", 10000);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 4, 500, 60, false);

	FadeDelete("�}ɫ��", 600, false);

	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1000, 1000, null, false);
	FadeDelete("�}��д", 5000, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0220a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���������ܵ��˹���!?

����ʲô!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͨ·
//��������󡣽��郎�����������
	OnSE("se���L_����_������Ȥ�", 1000);

	WaitKey(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������ǡ�

������ʨ�Ӻ�<k><RUBY text="����������">�ӵ���С��</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0230a00">
����������


{	FwC("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0240a06">
���¼��ļһ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�
//������һ�W�����`��
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_rightdown2(20000,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateTextureSPadd("�}�݄���", 5000, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");
	CreateSE("SE01a","se���L_����_�z��������03");

	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("�}��д", 4990);

	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 10, 30, 0, 0, 1000, Dxl2, false);

	Delete("�}ɫ�\");
	FadeDelete("�}�݄���", 500, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����δ�ܼ�ʱ���ܿ���
��ʨ�Ӻ��������ƵĻӳ���ն�����������ҵļ粿��


������������ҵ����壬�������ҵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0250a00">
���ء�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������������һ���ȴ������˵�һ����
��̫���ˡ�

���ղ���ȷʵ�е�������������
����������αװ���˸�������ӣ���������ҡ���Ź���
ȥ��������ƭ������

�������־ٶ���ֻ��Ϊ�˲������ֵ��ƶ���С����λ�ã�
Ȼ������ڽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0260a01">
���ⶼ����Ϊ�����׵����������˰�����


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0270a00">
����Ȼ���޻���˵�����㻹�Ǳ��죡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ڴ����ĳ�����ֻ�Ƿ������ѡ�
�������ڸ����ҵ���ʹ������ȷʵ��ЩЧ����


����ҧ�����أ����¼���ͶԷ��ľ��롣
����ЩԶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤ӌ���
	PrintGO("�ϱ���", 20000);

	CreateTextureSP("�}����01", 5000, @0, @0, "cg/ev/ev186_�����֣�㑷�_e.jpg");

	FadeDelete("�ϱ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������ʨ�Ӻ��ٴξٵ��������ҿ��������������Ƶ�Ӱ
�졣
�������ƾ�����<RUBY text="�ڣ���">˿��û��</RUBY>����
���������Ѿ��޷��Ʋ��ˡ�

������������ˣ����׵�Ԥ������Լ�ɥ����
���ղ���������ᵽ����һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 5010, -1550, -500, "cg/ev/resize/ev186_�����֣�㑷�_elm.jpg");
	Move("�}��", 6000, @0, -780, DxlAuto, false);
	Fade("�}��", 2000, 1000, null, false);

	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0280a06">
����Ȼ���ϵغ��֡���
������ս���ϻ����ľ��鶼û����!?��


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0290a06">
���������ˣ�����ֵ��������̫������������
������������Ż�ȥ��
���˵ر����Ŵ�͵�δ�����㾹Ȼ�޴�������
�������������Ҫ����Ѫ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������ʨ�Ӻ𼤶��غ��š���������װ��֮ǰ��ȣ���
�����ı������⣬��û��������ͬ��
���S���������������н���Ļ�����Ľ�˧��

����һ������ʮ��S�����������Բ����������ٶ��ܴ�
���ģ��������µ��½���������

�����ǡ�
��������ȴ�е��˼����<RUBY text="������">���Ծ�</RUBY>��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��", 1000, false);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0300a00">
�������н�����


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0310a06">
���㲻���ٶ�˵�ˣ�
���Ҳ�����������ԡ�����


{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0320a00">
���㲻�����������˰�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	Wait(800);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����������仰����û�����̻ش�
�������Ĭ��Ҳû�бܶ������Ԥ�ס�


���⾲�ţ�����������������ǳ�����<RUBY text="����">Թ��</RUBY>��
��
������仰�����˴���ʨ�Ӻ����У��ƺ��ᴩ��ĳ����


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0330a00">
��ѣ���������
�����˵�αװ��
�������ýŲ���С���ļ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0340a00">
�����ֻ����һ���һ���Ϊ�����Է���������
�⼼�ɡ�
��������ȴ�����֡���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0350a00">
���н������ǡ�����


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0360a06">
����������˵��
���дն��ġ�����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0370a00">
������������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0380a06">
�������ԡ�
���ұ�����������<RUBY text="������">������</RUBY>����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0390a06">
���Ҷ����Լ��Ĵ���û���κβ�����
�������ǰǰ����������Ϊ��ʱ�δ��ˣ�����
����Ͷ�����κ�����֮�С���


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0400a06">
�����ǣ��޴���ǰ�������ٻ���һ�У�
��������Ϊ������ʧȥ�˱���������������
Ϊ�˹᳹ǰǰ����������־��ֻ��ȥ��Ϊ�Ǹ�
�˵�<RUBY text="����">����</RUBY>!!��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0410a06">
���㲻�������ס�
���ñ�ӦǱ������Ӱ�е��Լ������ڱ�����
�������һ��۶����Լ����Ĺ��ҳϵ�����ְ֮��
���ֳ��裡������Ű���������£���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0420a00">
������������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0430a06">
������Գ�Ц�ң����ԡ�����������
�������㿴��������������Ϊ�S���н�����
��������<?>
{	Wait(1000);}
��ǰֻ������һ��Ӱ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����x�����
//������ä��ˤ��B��
	OnSE("se����_��x_�k��04", 1000);

	CreateTextureEX("�}����02", 5200, @0, @0, "cg/ev/ev186_�����֣�㑷�_f.jpg");

	CreateTextureEXadd("�}����02EX", 5210, @0, @0, "cg/ev/ev186_�����֣�㑷�_f.jpg");
	SetVertex("�}����02EX", 768, 306);
	Zoom("�}����02EX", 0, 1150, 1150, null, true);

	Fade("�}����02", 1000, 1000, null, false);

	Fade("�}����02EX", 300, 1000, null, false);
	DrawTransition("�}����02EX", 300, 0, 500, 100, null, "cg/data/circle_12_00_0.png", true);

	SoundPlay("@mbgm13", 0, 1000, true);

	FadeDelete("�}����02EX", 4000, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0440a01">
����������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0450a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����������
�����ϴ��������⼼�ɡ�����Ȼ�����ж������������ʣ�
�µ�������Ѿ�û��˿�������ˡ�

������ʨ�Ӻ𡪡���<RUBY text="����������">��ɱ��</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}����02EX", null);

//������`�������롣
	OnSE("se����_��x_�k��03", 1000);

	CreateTextureSP("�}�ݱ���", 10000, Center, Middle, "cg/bg/bg090_���Bۡͨ·d_01.jpg");
	CreateTextureSPadd("�}�݄�������", 10010, Center, Middle, "cg/bg/bg090_���Bۡͨ·d_01.jpg");

	Delete("�}����02*");
	FadeDelete("�}�݄�������", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0460a01">
����ʧ�ˡ�������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0470a00">
����������
����ϸ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateTextureSP("�}��", 5000, -1400, -770, "cg/ev/resize/ev186_�����֣�㑷�_glm.jpg");
	CreateTextureEX("�}����", 5010, -1400, -770, "cg/ev/resize/ev186_�����֣�㑷�_glm.jpg");
	Fade("�}����", 0, 500, null, true);

	Request("�}��*", Smoothing);
	Zoom("�}��*", 0, 800, 800, null, true);

	SetBlur("�}����", true, 3, 500, 200, false);

	MoveFFP1("@�}��",30000);
	MoveFFP2("@�}����",40000);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ռ������ı߽����жϲ㡣
���������ӣ��ܹ�΢΢��������ϸ�ߡ�

�����ǿ������Ѿ�������<RUBY text="���">���</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0480a00">
���������ù���͸����
������װ�׵���ɫ������Χ��
������һ����̬�����Ǳ���ɫ��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0490a01">
������ԭ����ˡ�
������ɽ������Ҫ��Щ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0500a00">
�������������أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݏr", 5100, Center, Middle, "cg/ev/ev186_�����֣�㑷�_g.jpg");
	Fade("�}�ݏr", 1000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	Delete("�}��");
	Delete("�}����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����������<RUBY text="�ԣ����">թ��</RUBY>��
��ֻҪ����ԭ�����ѻ�����

�����ǣ���ȷʵ�ǵ������������塣
����Ȼû�з�ħ������ĺ������������ŵ�Ч������Ҳ
�޷��ڴ����ҵ��Ƴ������Ĺؼ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0510a00">
����Ȼ����<RUBY text="�Σ�������">��������</RUBY>����
�����к��ѶԸ�����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0520a01">
�������ҵ�<RUBY text="����">�ź�̽��</RUBY>��<RUBY text="Ƥ��">��Դ̽��</RUBY>���з�Ӧ��
������ƺ�û���κ�Ӱ�졣��

//��������
<voice name="����" class="��������" src="voice/mc04/017vs0530a01">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������������ó��Ŀ�ս������������������Ϣ���Լ�
���Э�����˽�����λ�á�
�����ǡ��������ֽ�����ս��������ȫû���ô���


���������ģ�ֻ�����Լ�����С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ������
	CreateTextureEX("�}����05", 5400, @0, @0, "cg/ev/ev186_�����֣�㑷�_h.jpg");
	Fade("�}����05", 1000, 1000, null, true);
	Delete("�}�ݏr");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���������������<k>�𽥱���ˣ�

�������ڿ�������
������������𣿡������ҿ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0540a00">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���Ҹе����ױ�ú��䣬�Ҳ�����һ�¡�

�����侲�����¹۲죬�ҷ��ֵ��˿����˰벽��
��
������±���û�����⡣����֮�仹�о��롣������Ϊ
�뵽���������²Ų�����

��<RUBY text="������������������">���޷����������ж�</RUBY>��

���Է��ӽ����������޷����̷�����һ�㡣����Ҫһ��
ʱ�����ж����Ƿ��Ǵ����
���������������룬��Ҳ�������ġ�

�����ڵ��˵ľٶ������޷�����Ӧ�ԡ�
���S�����������˿��Թ����ҵķ�Χ����Ҳ�޷������
��������ҷ����������Ҳ����޷������������޷�������
��������������

�������Ҳ�����սʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0550a00">
����ô���ɴࡪ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����������������
��������һ˲�䣬�Ҵ��������˵��˵�λ�ã�������֮
��ľ��롣���õ��Ļῳ��ط���

������Ҫ�ϵĻ�ֻ�����ڡ�
����������ƶ��ˣ�Ҳ������ˡ�

�����Ҫ�ϣ��ͳ����ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0560a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	Wait(1200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�����ǡ�
����û���¶����ġ�

�������û�еõ�ս����ʱ����ǰȥ��������ֻ�����
<RUBY text="�ã��������">������</RUBY>�ϡ�
����ô��<RUBY text="�ƣ����">��</RUBY>���ж��ι���������Ҳ���С�
���Ѿ��Թ�һ�Σ�û�е���������

�����С�
����ʹ�������֣���Ҳ�޷�սʤ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0570a00">
���������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������Ҽ����ȣ����Ҳ��һ����
��������ɫ�ĵ���Ҿ����޷�Ѹ�ٶ����Ĺ���������
Ӧ���ҵ�Ӧ�Ի�����ӳ١�

����ֻ�ᵥ���汻�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0580a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
������ǰ������������Ҳ��������
��
�����ڲ�֪���ڵĵ��ˣ����ƺ��������������ҡ�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�ӽ�
	CreateTextureEX("�}����06", 5500, @0, @0, "cg/ev/ev186_�����֣�㑷�_i.jpg");
	Fade("�}����06", 1000, 1000, null, true);
	Delete("�}����05");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�����˵���Ӱ�ٴ�ҡ����
�����ӽ������𡣻��������ƶ����ء���

�����������������ʶ��֮ǰ��
��
��
����������һ��������Ȼ���ж��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�M��_냇��_�i��01", 1000);

	CreateWindow("�}��", 19000, 0, 0, 1024, 576, false);
	SetAlias("�}��","�}��");

	CreateMask("�}��/�}��", 6000, 0, 0, "cg/mask/ci����å���_05_00.png", false);
	SetAlias("�}��/�}��","�}��/�}��");

	CreateTextureEX("�}��/�}��/�}��", 6100, -590, -186, "cg/ev/resize/ev908_����늴ŔS��_am.jpg");
	SetBlur("�}��/�}��/�}��", true, 3, 500, 90, false);

	Zoom("�}��", 1, 1000, 0, null, true);


	Fade("�}��/�}��/�}��", 0, 1000, null, true);

	Move("�}��/�}��/�}��", 600, -880, @0, DxlAuto, false);
	Zoom("�}��", 300, 1000, 500, null, true);

	WaitAction("�}��/�}��/�}��", null);
	SetBlur("�}��/�}��/�}��", false);
	Move("�}��/�}��/�}��", 1000, -812, -38, null, false);
	Zoom("�}��", 2000, 1000, 2000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0484]
����С��ά����ƽ�⣬�����˰벽��
���ҽ����ջ��˽��ʡ�

��һ����
��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0590a00">
��<RUBY text="�ţ������">��װ</RUBY>
����<RUBY text="�ţ�����">����</RUBY>��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0600a01">
�����������ۣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������û�з����ң����ǻ�Ӧ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("��", 20000, "WHITE");
	Fade("��", 300, 1000, Dxl3, true);

	Delete("�}��");

	CreateSE("SE_���", "se����_늓�_���01");
	MusicStart("SE_���", 0, 1000, 0, 1000, null, true);

	CreateTextureSPadd("�ץ�}��", 5560, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	CreateTextureSPsub("�ץ�}", 5555, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	CreateTextureSP("�}�݄���", 5550, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	SetVertex("�ץ�}", 790, 320);
	SetVertex("�ץ�}��", 790, 320);
	Request("�ץ�}*", Smoothing);

	DenziBladeCharge();

	FadeDelete("��", 1500, true);

	SetFwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0610a06">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
������̫֮��������Ϊ<RUBY text="�ң���ǣ���">��Űε�</RUBY>��

���⵶�����������������ô������ٳ�Խ���٣��ܻ���
�κεķ�����
��
������˭Ҳ�޷�����������ʲôҲ�޷��赲��

������<RUBY text="����">��ɱ</RUBY>֮����
�����ڲ�ɱ�Ķ����⽣����Ӧʹ�á����ǣ��Һ�����
�ǵ���ս����������ٽ��еĿ�ս��ͬ���ҿ��Աܿ���
�ں��׼����������ĵط���

����Ȼ����������ˣ�����Ϊ����Ӧ�ÿ��Իָ���
��
��
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����07", 5600, @0, @0, "cg/ev/ev186_�����֣�㑷�_j.jpg");
	Fade("�}����07", 300, 1000, null, false);
	DrawTransition("�}����07", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("��늴Œi����능�`��");
	Delete("�}�݄���*");
	Delete("�ץ�*");

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0620a00">
��������


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0630a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
���Ӹ�������˵��״��û��<RUBY text="����">�κ�</RUBY>�仯��

����ʹ�ҵĵ�Űε����Գ�Ϊ�޵У�����Ҳֻ������
������ͬ�����±�ƴ����һ����ʤ�����̶ֳȵ���˼��
��
����ͬ��������Ҳ����˵Ҫվ����ͬ��<RUBY text="�ӣ��������̣���">������</RUBY>�ϲ��ܱ�ʤ��

�����Ҫ˵��״�Ƿ���ˣ��Ǿ����ǲ�ͬ�ġ�
�����ڶԷ����ű��Ҹ����˽����仯��Ȩ����


�����˻����ҵ�ǰ��ʹ����ﵽ<RUBY text="�ã���󡡣ң����">һ��һ��</RUBY>ʱ��
ֻ�е��˻�����֪����һ�㡣

����������Ҫ�۲���ˣ��ұ�Ȼ����Щ��

���������ֲ�࣬���ٵİε�Ҳֻ��˯�ڽ���֮�С�
��
����û��ʱ��ʹ���������ͻᱻ�������ɡ�

���������ԡ�
�������ȥ������������ƣ��Ҿ��޷�սʤ����ʨ�Ӻ�


����Űε���<RUBY text="�ţ����">�Ե�</RUBY>��ս�����Ǳ�ʤ�ļ�����
��Ϊ���õ�Űε��������ã�����Ҫ�������Եȡ�

������Ǻ��ء�

������˵����
����β������յ����<RUBY text="��������">λ����Ϣ</RUBY>��Ҫȫ��������һ�㡣

���ҵ�֪�����о���Ҫ�������ò��ܵõ��������Ϣ��


�����Ӿ���
��������ֻ�ܿ�������ģ������Ӱ���ҵ��׸����ʹ��
�Լ����۾��ء�

����ô�������𡭡��⵽�����ж�ɿ��ء�
�����˾߱���ѹ���Ե����ƣ�����û��һ������������
�⵱Ȼ��Ϊ���ڸǽŲ�������֪�����������ҷ����Ĺ�
�������Լ���䱸��

����ô�������������ĺ�����
��������������ʵ�ط�Ӧ���ˡ����Ƕ������������˵��
Ҳ���������Ҳ����αװ����̫�ó���ɱ��Ϯ�ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0640a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ������
	CreateTextureEX("�}����08", 5700, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");
	Fade("�}����08", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
���ҴӼ����ϸе���ʱ�̿�Ҫ�����ˡ�
���ܿ졪���͵��ˡ�

���������Ƿ���ã���Ҷ���������������
��û�н����һֱ����ȥ����ֻ����ɱ��Ϊ���ѡ�
�������Ҫ����ȥ�ﵽĿ�ģ��ͱ�����������ѡ��


{	SetVolume("SE*", 2000, 0, null);}
����ô�����ɡ�

����������¡���
���Ҹ��������ָо���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitPlay("SE*", null);

//���x�k��ҕҙ��ҙ��������

}

..//������ָ��
//��ҕҙ��"mc04_017vsa.nss"
//��ҙ��"mc04_017vsb.nss"
//�������С�"mc04_017vsc.nss"

//���x�k֫���`��
scene mc04_017vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 5800, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("�Ӿ�","����","������");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
//��ҕҙ��"mc04_017vsa.nss"
				$GameName = "mc04_017vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//��ҙ��"mc04_017vsb.nss"
				$GameName = "mc04_017vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//�������С�"mc04_017vsc.nss"
				$GameName = "mc04_017vsc.nss";
		}
	}
}


function DenziBladeCharge()
{
	CreateProcess("��늴Œi����능�`��", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("��늴Œi����능�`��","��늴Œi����능�`��");
	Request("��늴Œi����능�`��", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}