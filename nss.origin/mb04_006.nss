//<continuation number="320">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_006.nss_MAIN
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
	#ev152_Ҋ�¤��y�Ǻ�_a=true;
	#ev152_Ҋ�¤��y�Ǻ�_b=true;
	#ev152_Ҋ�¤��y�Ǻ�_c=true;

	#ev152_Ҋ�¤��y�Ǻ�_a=true;
	#bg002_��a_02=true;
	#ev152_Ҋ�¤��y�Ǻ�_b=true;
	#ev152_Ҋ�¤��y�Ǻ�_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_007.nss";

}

scene mb04_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_005.nss"

//������������
//��������ݳ��������ǵ��ν}������������ä��ʤ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");
	SoundPlay("@mbgm14",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������

��ǧ�Ӵ�������������Ϊͬ��ʦ�ֵܡ�
����Ȼ���˶��츳������������ȴ��Ȼ��ͬ��

����һ��ʦ�����������˷ֱ�������ѵ����������ں��С�

�������ĵ�������������Ư������Ҷ�����п���
�����ڵĵ�ȴδ�п���Ҷ�������沨��ȥ��

������ֻն��ն֮�������ν֮�²��ǵ�����߾��硣
��ʦ������˵�������������ڣ������Ǵ�����

������Ȼ����
��
�����ս����������������ı��ʱ��ֳ����ģ�
�����������еĺ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

//���ãǣ����Ϥ����Ҋ�¤��y�Ǻ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ֣���", 4000, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_a.jpg");
	CreateSE("SEL01","se��Ȼ_��_��ĵ���");
	MusicStart("SEL01",2000,750,0,800,null,true);
	Delete("�ϱ���");

	CreateMovie("���ӻ�", 4020, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 4000, null, true);
	Request("���ӻ�", AddRender);
	Move("���ӻ�", 0, @0, @-100, null, true);
	Rotate("���ӻ�", 0, @0, @180, @0, null,true);


	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/mb04/0060010a14">
��������



{//�������`���T�������ʤ󤫽������Ƥ��롣
	CreateSE("SE01","se���L_����_��ͻ�M08");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mb04/0060020a15">
��������������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060030a14">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������`��ȴ����ǈ�
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Zoom("�}����100", 0, 1200, 1200, null, true);

	CreateTextureSP("�}St100", 5000, 100, -242, "cg/st/3d�����˜�_�T��_ͨ��.png");
	SetBlur("�}St100", true, 3, 300, 50, false);

	Shake("�}EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("�}St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("�}EF100", 0, 500, null, true);

	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_��ͻ�M03",1000);

	Move("�}����100", 1600, @100, @-50, null, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", false);

	Move("�}St100", 800, @-300, @50, Dxl2, true);
	Move("�}St100", 800, @-600, @100, Axl2, false);

	Wait(500);

	FadeDelete("�}����100", 300, false);
	FadeDelete("�}St100", 300, true);

	CreateSE("SE01","se���L_����_�z_�ŵ�01");
	CreateTextureEX("�}�ţ֣���", 4010, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_b.jpg");

	Wait(500);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(700);
	Shake("�}�ţ֣���", 500, 0, 3, 0, 0, 1000, Dxl2, false);
	Fade("�}�ţ֣���", 500, 1000, null, true);
	Wait(500);
	Delete("�}�ţ֣���");

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/mb04/0060040a14">
����������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060050a00">
��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060060a14">
�������������޻���̸��
�����߰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060070a00">
���Ҳ����ߡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060080a14">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060090a00">
������Ѿ��ܹ������Ǻ�������Ρ�
����ҹ�������ڴ������˽�ɡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060100a14">
������Ŷ������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0060110a01">
��������


{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mb04/0060120a15">
��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060130a14">
����ô���������蹷����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060140a00">
���Ұ��������ˡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060150a14">
��Ϊʲô����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060160a00">
����ΪҪ����������һ���ġ�
�������Ĳ������һ���������û�зֱ𡣡�


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060170a14">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060180a00">
����˵��û�����Ǻš�
������������������ƶ���֡���


//��������
<voice name="����" class="����" src="voice/mb04/0060190a00">
��������Ρ������޷����ѡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060200a14">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš������η�����
	CreateTextureSP("�}�ţ֣���", 3980, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_c.jpg");
	FadeDelete("�}�ţ֣���", 300, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/mb04/0060210a14">
���ǺǺǡ�������������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060220a00">
��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060230a14">
���ԡ��������ͺá�
�������ڴ��Լ������������ѹ����ˣ���������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060240a00">
���ǰ�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060250a14">
������������������Ϸ�ɡ�
���ɰ��ľ������һ����ҵ���ָ�úõ��۰��㣬
�ջ���ġ�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060260a14">
��������֮���ޣ�����������֮����
��ɱ����������ƾ�Ŷ��������ȫʤ��������
�������ϵı���!!��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060270a00">
�������޷���������ġ�
���Ҳ�������ȥ�ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060280a00">
����ն�����ҵ�������ҽ�Ҫն��������
�����Ѫ��ɫ֮�Σ������ڴ˽�����
�����Ǻš�����


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0060290a00">
�����Ѿ��޷����������ˡ�
�����գ��ұ�����������!!��


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060300a14">
�����������𾢰���������
������Ҫն���ҵ�ȥ·�𣡡�


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060310a14">
������Ҳ������ԥ��
�����Ǳ���Ϊ����֮�ǵ��������ֳ�������֮
����ɡ�����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb04/0060320a14">
������ץ�����С���ɣ�С�ı�����׹��ڤ��
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_007.nss"