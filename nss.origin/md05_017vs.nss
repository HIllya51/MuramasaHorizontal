//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_017vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/md05_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev245_�L����������_a=true;
	#ev245_�L����������_b=true;
	#ev245_�L����������_c=true;
	#ev245_�L����������_d=true;
	#ev245_�L����������_e=true;

	#ev930_����늴Œi����_a=true;
	#ev930_����늴Œi����_b=true;
	#ev930_����늴Œi����_c=true;
	#ev930_����늴Œi����_d=true;

	#ev931_�����֣�ħ���L��=true;

	#ev246_ħ���L�����_a=true;
	#ev246_ħ���L�����_b=true;

	#bg204_�����ر���_02=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_018.nss";

}

scene md05_017vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_016vs.nss"

/*
//������󡸥Х����軭�_�J�á�
	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	CreateMask("��һ", 3000, Center, Middle, "cg/data/circle_13_00_0.png", false);
	SetAlias("��һ","��һ");
	CreateTextureEXadd("��һ/�}��һ", 3010, Center, Middle, "cg/ev/ev104_⏴������_d.jpg");

	Fade("��һ/�}��һ", 2000, 1000, null, true);

*/

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}��", 100, Center, -310, "cg/ev/ev245_�L����������_a.jpg");
	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/017vs0010a01">
�������Ǹ��ط���Ա?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������һ���̴ٵļ�к󣬴����ſڽ��ࡣ
��Ҳ����֡�����ʵ�����ɻ����Ҳ��һ����

��Ϊ�Σ������Ҿ��������ڴˡ�
�����ͽ�����кι����� ������֮ǰ��������
����<k>�������˵�����Ϊ�λᣡ

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�L��ħ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0020b45">
��ŶŶ�����������ã�
�����ܵ��ˡ��ڷ��ڡ�
���������������������𣡡�

{	FwR("cg/fw/fw�L��ħ��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0030b45">
���һص������ˣ�
������ɽ֮���������������

{	FwR("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0040b45">
����찡����û�б���������ˣ�
������������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ȷʵ�Դ���������Ԩ�����ˣ��˿�ȴվ����ǰ��Ц��
����������̬�����������ƶ˵ľ��ˡ�

���ⲻ��ج������ʲô��
�����������ů����С�ʱ�μ��Ļ�Ӱ֮�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/017vs0050a00">
�����������������
����������������������ߡ�����

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/017vs0060a01">
�������ܣ�
����������֮����Բ����ܣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ñ�������������ԡ�
�����ţ�С���ز������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md05/017vs0070a01">
���������ǡ�
�����Ƶ����顭�����ܰ쵽������

//��������
<voice name="����" class="��������" src="voice/md05/017vs0080a01">
����ʬ��Ϊ�����������������ǰ��ӽ���
���ڡ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0090a00">
���Ǿ����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Σ������������ʡ�
���Ǹ�ʬ��Ϊʲô��Ϊ�ˡ���֮���أ�

������˵������նɱ�����Ҿ���һͬ����������ɽ��
�й�������Ĵ�ͳ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�L��ħ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0100b45">
����ζ��
���ŵ��ˡ�����

{	FwR("cg/fw/fw�L��ħ��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0110b45">
��һ�����ڸ�����
����������������ӭ���ҵ��𡣡�

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0120b45">
���ðɡ����Ǳ���Ϊ�޸����Ů�ˡ�
��������Ȣ��Ϊ�ޣ������ұ������ˣ���

{	FwR("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0130b45">
����������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);

	CreateTextureSP("�}�ݱ���", 100, Center, -30, "cg/bg/bg204_�����ر���c_02.jpg");
	CreateTextureSP("�}�ݴ���", 1000, 125, -250, "cg/st/3d������K_�T��_ͨ��b.png");

	FadeDelete("�ϱ���", 500, true);

//�������`��
	CreateSE("SE01","se���L_�Ɖ�_����02");
	CreateSE("SE01a","se���L_�n��_�nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 19990);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 1000, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md05/017vs0140a00">
����Ŷ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���޴�������ǰ��һ����
������һ�٣���ʿɽ���𶯲��ѣ�������Ҳ
Ϊ֮ս����

���Ǽһ��뿪ɽ�����ƺ�����ĳ��ǰ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/017vs0150a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����д���������Σ�ա�

��Σ�ա����ǵģ���Σ�գ�
���ҽ����쳣��������ʻӵ�����һ�磬ǿ���Լ�ת��
˼·��

�������Ķ������䵽��ׯ��������ƽ�����¡�
���ͻ������мǵľ��˲�ͬ���ڴ������ڡ���֮������
�Ǹ����˶�<RUBY text="����">С��</RUBY>�����������飬̫�������쿪��

�����ο���ֻ�����α仯�ġ��񡱣�
������ȫ�������Ⱦ��֮Դ��

  ��Ӧ�����£�����һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݴ���", 300, @-2000, @0, Dxl2, true);

	CreateTextureEX("�}�ţ�", 4000, Center, -310, "cg/ev/ev245_�L����������_b.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	Delete("�}��");

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md05/017vs0160a00">
������!!��

{	FwR("cg/fw/fw�L��ħ��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0170b45">
��������С���ӡ�
�����������ˣ�����������á���

{	FwR("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0180b45">
������β��ԶԶ�ؽл��ɣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0190a00">
����Ȼ������ô����������������˵���ƺ�
������������ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 10000, "#000000");

//���w�衢�ӽ�
	SetBlur("�}�ţ�", true, 3, 500, 50, false);
	Move("�}�ţ�", 150, @0, @-600, null, false);
	Zoom("�}�ţ�", 150, 3000, 3000, null, false);

	Wait(150);

	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}�ţ�");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d������K_�T��_���L.png");
	Move("�}�����}", 0, @380, @-100, null, true);
	Shake("�}�����}", 20000, 2, 0, 0, 0, 1000, null, false);

	Rotate("�}�����}", 0, @0, @0, @-20, null,true);
	Request("�}�����}", Smoothing);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 20000, -100, @0, null, false);

	MusicStart("SEL01a",1000,750,0,1000,null,true);
	MusicStart("SEL01b",1000,750,0,1500,null,true);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ŀ����ͷ��
����Ȼ���������������ǹ����Ǹ��ޱ������ѣ����ܱ���
���޲ߺá���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ��", 4990, "#FFFFFF");
	CreateSE("SE00","se���L_����_��ͻ�M01");
	Move("�}�����}", 1000, @-30, @0, null, true);

	Wait(700);

	SetVolume("SEL*", 100, 0, null);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 200, 1000, Dxl2, false);
	Move("�}�����}", 150, @-2000, @200, null, true);

	Wait(50);

	Delete("�}�����}");
	Delete("�}�ݱ���");

//��Ұ̫��һ�W
//�������`�󡣏�����
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5010,@0, @0,1500);
	SL_leftdownfade2(10);

	Delete("�}�ţ�");

	CreateSE("SE02a","se���L_����_��ꪏ���02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}ɫ�\");

	CreateTextureSPadd("�}������", 110, Center, Middle, "cg/bg/resize/bg106_��ʿɽ�h��b_00l.jpg");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/resize/bg106_��ʿɽ�h��b_00l.jpg");
	Zoom("�}������", 0, 1250, 1250, null, true);
	SetBlur("�}������", true, 3, 500, 80, false);
	FadeDelete("�}ɫ��", 150, false);

	FadeDelete("�}������", 1000, false);
	Shake("�}������", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}������", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw�L��ħ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0200b45">
��Ŷ?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0210a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ͬ��

����ͬľ��������ʯ���е��޴�ķ�������ҧ��������

������ǰ��ͬ����ȫû�и��˵ĸо���
������Ϊ�����֮��ֻ�ǳ���ı��湦�򡪡���ʵ����
������������װ����ͬ������Ӳ�������������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��ħ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0220b45">
����ʹ������С�ֶ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
	CreateSE("SE01","se���L_ħ���L��_����뤦");
	MusicStart("SE01",0,1000,0,1000,null,false);

//���ܤ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������ƻӿ�С����ֱ��£����巭���ӿ���
  ����Ŀ�磬ӡ֤�˵з���ǿ��������

����񣬲�������һ�編ʦ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��ħ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0230b45">
���ɶ�ĳ�С�ӣ�
������ҲҪ�������𣡡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0240a00">
���Ǹ���ԭ�򡣡�

{	FwC("cg/fw/fw�L��ħ��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0250b45">
��������ô����Ŀ�����
���ðɡ����������Ҷ��֡���

{	FwC("cg/fw/fw�L��ħ��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0260b45">
����ϸһ�룬Ƿ��������鲻�ܾ���Ҳ�ܷ���
  ��ȴ�ź����ٱ���һ����ߣ�
Ҳ���١�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ħ���L�ࡢ�i��������
//�������ȤΌ��Ȥǂ��ݤ򥢥ԩ`�롣
	CreateSE("SE01","se���L_ħ���L��_����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ţ�", 4000, Center, -265, "cg/ev/ev245_�L����������_c.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ɽһ�����������ߣ����ձ�����Ӱ��̫����
����ŭնɱ��ħ�Ĳ�������������ֱ��ͬ�����Ĵ��ڡ�

������в���ִʻ��Ѳ������ݡ�
���ֲ���θҺΪ�Σ����������

�����þ�ȫ����������ѹ�ظ������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md05/017vs0270a00">
���ܺá��û��ᡣ��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/017vs0280a01">
���������������Ǿ�������Ŭ����˵���⻰��
�����������ͣ����ڱ���֮ǰ��Ҳ���ò�
������ͬ�̶ȵ�Ŭ������ͷͬ��ղŵĻ�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0290a00">
����������ν��
��ֻҪ������ҵ���ͼ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230a]
������������ȷ����ͼ��
�����д������٩�㴫��������ȴ�������ڱط���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݽ���", 5100, Center, -280, "cg/ev/resize/ev242_���񼤤����k��_al.jpg");
	Fade("�}�ݽ���", 1000, 600, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230b]
���񡱵�ս��������Ծ����ǿ�ˡ�
��û���������������ԭ���أ�
��Ȼ�õ��˳����Ҿ����ǻۡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݰ˰�", 5100, Center, InBottom, "cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	FadeDelete("�}�ݽ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0231]
������Ȼ�����������������<RUBY text="���������">����</RUBY>��
{	Fade("�}�ݰ˰�", 1000, 750, null, false);}
�����������˵��ƿ�֮�£����������޵��������ų���
��������������ײ��ݵ�������͡���ħ��

������ͷ����ս������Ҫ�ƻ��ؽ�����
������ʹ�õ�����ҪϷ����Ч�ʻ���
��
����ӹ���ɣ���Щ���ɹ��ﵽ�ˡ�

{	FadeDelete("�}�ݰ˰�", 1000, false);}
��ս���ıȽ�����õ�������

�����ӵ���������ǡ��񡱣�
��ս�������ҷ�ռ�ݾ������ơ�
��ʹ�ó����ͷ��֮ʱ��ս���ӽ��ƾ����С�
�������в�ϰ�ߵ����Σ��䲻��Ҳ�����ڡ����ⷽ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	WaitPlay("@m*", null);

	CreateTextureEX("�}�ݰ˰�", 11000, Center, InBottom, "cg/st/3d�˰�ʽָ�]��_����_���L.png");
	Move("�}�ݰ˰�", 0, @-256, @0, null, true);

	CreateTextureEX("�}�ݴ���", 11100, Center, InBottom, "cg/st/3d������K_����_���La.png");
	Request("�}�ݴ���", Smoothing);
	SetVertex("�}�ݴ���", center, bottom);
	Move("�}�ݴ���", 0, @256, @0, null, true);
	Zoom("�}�ݴ���", 0, 50, 50, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0233]
�����������Ρ�<k>
��
������<?>
{	Fade("�}�ݰ˰�", 300, 1000, null, false);}
�����Ҿ�<?>
{	Fade("�}�ݴ���", 300, 1000, null, false);}
������ն�������ս�����ܻ���ƥ�У�
֮���ֻ�������ϵ����֮����

�����С�ľ��Բ�ࡣ
��ֻ�����������˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 20000);
	Delete("�}�ݰ˰�");
	Delete("�}�ݴ���");
	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0234a]
�����ǣ��������Ǻû��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݵ���", 11100, Center, 110, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Request("�}�ݵ���", Smoothing);
	Zoom("�}�ݵ���", 0, 1500, 1500, null, true);

	CreateTextureEX("�}�ݵ��r", 11110, Center, 110, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Rotate("�}�ݵ��r", 0, @0, @180, @0, null,true);
	Request("�}�ݵ��r", Smoothing);
	Zoom("�}�ݵ��r", 0, 1500, 1500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0234b]
����Ϊ�����<RUBY text="����">����</RUBY>{Fade("�}�ݵ���", 1000, 1000, null, true);}<RUBY text="��">��</RUBY>��{Fade("�}�ݵ��r", 1000, 500, null, true);}������
�����������ֺ����߶��ֵļ�ı�ǹ�ͨ�ġ�

�����أ������ϵĲ����������
����������Ҳ����ս��������֮һ��

�����������в�࣬��ֻ��׼���õ߸����ļ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 30000);
	Delete("�}�ݵ�*");
	FadeDelete("�}��д", 1000, true);

	CreateTextureEX("�}���ļ���", 11000, Center, Middle, "cg/ev/ev501_�������.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0236]
�����ɣ���һ�����ڵġ�<k>
{	Fade("�}���ļ���", 1000, 1000, null, true);
	SoundPlay("@mbgm03",0,1000,true);}
��Ϊ�˲���������<?>
{	Wait(300);}
Ϊ�˲��н�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ħ���L�ࡢ�����ݳ�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	CreateTextureSP("�}��ħ��", 3000, Center, -760, "cg/ev/resize/ev245_�L����������_cl.jpg");

	FadeDelete("�ϱ���", 1000, true);
	Wait(500);
	Move("�}��ħ��", 6000, @0, -600, DxlAuto, false);
	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����ħ��ļ�����۲������ϵĽ���

����������ǰһ������λ��Ϊ������ϱ������������
ͬʱ��ȴ˿�������������ս����

�������ڽ���֮�������ұ��Ϊ�������ɽ���ȴ˿��
û��ðȻ�������޴��嶯��
��һ��һ�����侲��̽��һ����ɱ֮����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md05/017vs0300a00">
���������������������˵�֮���壩

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������״�����������е��
  ���ǲ�ͬ���ɣ������ٺ�����������������΢�������
�����е�֪ʶ��

��ħ��Ľ��ι�Ȼ�ι̡�
������ϸ���ӣ��ܿ�̽��Щ΢��϶��

����������塣

����������������ǵжԲ���֮��
Ҳ����Ԥ�ϲ����Ļ��С�
��Ϊ�˲�����ˣ���󵨴���������ᡣ

��Ϊ�˲��׷����������ɺͻ��ᣬ�����뷶Χ��
�õ��˻������һ����ʤ����Ҳ���׵öࡣ

  �����ŵ���һ����·���ٽ���ɱ������Ϊ���˵���

���������õ��ġ���֮����ǿ������ɡ�
������������Ҫȥ��С�Ľ�ס�з������С�
�෴���س���̫�������ӹ�����������ɱ���ˡ�

����ʤ��ս����


����������жԵģ����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������ݳ�
	PrintGO("�ϱ���", 20000);
	CreateTextureSP("�}�ţ�", 4000, Center, -265, "cg/ev/ev245_�L����������_d.jpg");
	FadeDelete("�ϱ���", 1000, true);

	SetFwR("cg/fw/fw�L��ħ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0310b45">
�������Ǻǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��ħ����¶������һЦ��
���������ҵ���ͼ��

���������ã����˵Ľ���

����ʳ�ͳ���ʳ����
��̰�����¶��Ķ���

��������Ϊǿ�������������Ŀ�϶�С�

����Զ����Ľ����õ����ֲ�֮��ȥ��ս��
��
����������Ϊʤ���ȹ����߱�ʤ��

���˼�ɱ�˵���
��ħ��ĳ�Ц�޿ɺ�ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/md05/017vs0320a00">
�����ǳ����Ҿ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����ʹ�����Ժ�С������Ȼ���㲢��֪����
����Ҳӵ��ɱ��֮Ȩ����

����ʹ����Ϊ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ұ̫����`�륬��ʂ��_ʼ
	PrintGO("�ϱ���", 20000);
	CreateTextureSP("�}�ţ�", 4000, Center, -265, "cg/ev/ev245_�L����������_e.jpg");
	CreateTextureSPadd("�}�ţָ�", 4010, Center, -265, "cg/ev/ev245_�L����������_e.jpg");
	DrawTransition("�}�ţָ�", 0, 0, 100, 1000, null, "cg/data/circle_13_00_0.png", true);

	CreateSE("SE01","se����_냇��_�k��01");
	MusicStart("SE01",1000,1000,0,750,null,false);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}�ţָ�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���Ե���Ϊ�ᣬת��Ѫ֮ʱ�ӡ�
�����٣����٣���ϡ�

��ƫ��������
����Ҫ֮������Ҫ��������

�������ڵ�װ��������
��Ϊ����ʹ���ն�����������������ξ������
����ģ������ֵ������������ȫ�������ƻ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainEX("�}��д", 8900);
	SetShade("�}��д", SEMIHEAVY);

//���ʂ��ݳ�
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSPadd("�}��/�}��ɫ", 19100, "#FFFFFF");

	CreateTextureEXsub("�}��/�ץ�}��", 19012, Center, Middle, "cg/ev/ev930_����늴Œi����_c.jpg");
	CreateTextureEXadd("�}��/�ץ�}", 19011, Center, Middle, "cg/ev/ev930_����늴Œi����_c.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 19010, Center, Middle, "cg/ev/ev930_����늴Œi����_b.jpg");
	Request("�}��/�}�����}װ��", Smoothing);

	CreateSE("SE02","se����_늓�_���01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}��д", 600, 1000, null, false);

	Zoom("�}��", 300, 1000, 1000, Dxl2, false);
	Wait(300);
	FadeDelete("�}��/�}��ɫ", 700, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/md05/017vs0330a01">
�����ɿ��١���

//��������
<voice name="����" class="��������" src="voice/md05/017vs0340a01">
������ִ�С���

//��������
<voice name="����" class="��������" src="voice/md05/017vs0350a01">
������չ�֡���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ʂ��ݳ�
	CreateSE("SEL01","se����_��x_��`�륬��_�ʂ�");
	MusicStart("SEL01",0,1000,0,1000,null,false);
	DenziBladeCharge();

	SetFwR("cg/fw/fw�L��ħ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0360b45">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ͻȻ���������Ϣ�����ҵ����衣

�������ˡ�
�������Ҿ����ž����ˡ�

��<RUBY text="��">����</RUBY>����ʲô��

����ô�졣
��Ҫֹͣ��

������֮����ֹͣ��һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ʂ��ݳ�
	CreateTextureEX("�}����", 19900, -640, InBottom, "cg/ev/resize/ev902_����늴Œi����`�륬��_dl.jpg");
	Move("�}����", 5000, @0, -96, DxlAuto, false);
	Fade("�}����", 1000, 750, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���ͻ�������ʽ����Űε�֮һ��������̬һģһ����
�������õ��ʺ͵���֮�����ǿ�ҵĴ���������
�ٿ��߲��ݼ����ε�ն����

{	FadeDelete("�}����", 1000, false);}
����֮ͬ��������ʽ������������
����ģ�����ٶȡ��������ϵġ�

����Ϊ����������̫������һ������
Ұ̫�������������ܴﵽһ����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��*");
	Delete("��늴Œi��*");
	SetVolume("SE*", 100, 0, null);

//��ħ���L��
	CreateTextureSPadd("�}����", 9100, Center, -630, "cg/ev/resize/ev931_�����֣�ħ���L��l.jpg");
	CreateTextureSP("�}��", 9000, Center, -630, "cg/ev/resize/ev931_�����֣�ħ���L��l.jpg");
	Zoom("�}����", 0, 1200, 1000, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	SetBlur("�}��", true, 3, 500, 80, false);
	Move("�}��*", 300, @0, -120, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);
	Wait(200);

	SetVolume("@mbgm*", 300, 0, null);

//����
	CreateColorSP("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,650,null,false);

	Delete("�}����");
	SL_down2(10010,@0, @600,10000);
	SL_downfade2(10);

	SetFwR("cg/fw/fw�L��ħ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0370b45">
������������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
������ͷ��ħ������������ȷ���ϡ�
���������˵��Ľ���³ç������̫������

�����¡�

������µ���ʿ���������Ҿ���

  ��һĻ������˵Ҳ������֮�⣬�Գ�����˵������ˡ�
ͻȻ����������Ī������õ���Ц�����������<k>
�������û��ɥʧ��Ϊ��ʿ�����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/md05/017vs0380a00">
�����գ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
  ������ȷ�ľ��ϣ�ֻ����ȷ��ʱ������һ�̡�

���Դˣ�������Щ�Ա���ȴҲ���ġ�

�������
���ұ�����
����Ѹ�١�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

//�����
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}�ţ�", 100, Center, -100, "cg/ev/ev931_�����֣�ħ���L��.jpg");
	SetBlur("�}�ţ�", true, 3, 500, 30, false);
	Move("�}�ţ�", 20000, @0, -490, null, false);

	FadeDelete("�ϱ���", 500, true);
	Wait(500);
	FadeDelete("�}��ܞ", 2000, true);

	Move("�}�ţ�", 300, @0, -490, Dxl2, true);

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400a]
//��������
<voice name="����" class="����" src="voice/md05/017vs0390a00">
����Ұ������ս�񷨡�Ѹ�ס�֮���ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se����_늓�_���01");
	MusicStart("SE01a",0,500,0,500,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev930_����늴Œi����_c.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev930_����늴Œi����_c.jpg");
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400b]
//��������
<voice name="����" class="����" src="voice/md05/017vs0400a00">
����Űε�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02a","se����_늓�_���01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݏr��", 3210, Center, Middle, "cg/ev/ev930_����늴Œi����_d.jpg");
	CreateTextureSP("�}�ݏr", 3200, Center, Middle, "cg/ev/ev930_����늴Œi����_d.jpg");
	Zoom("�}�ݏr", 0, 1100, 1100, Dxl2, false);
	Zoom("�}�ݏr��", 0, 1300, 1300, null, false);
	Zoom("�}�ݏr��", 200, 1100, 1100, Dxl2, false);
	Shake("�}�ݏr", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݏr��", 200, true);

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400c]
//��������
<voice name="����" class="����" src="voice/md05/017vs0410a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi������
//������e�˴̤��󤱤ɡ�
	MovieSESet(20000,"mv��","se����_mv��_��");

	PrintGO("�ϱ���", 19999);
	CreateColorSPadd("�}ɫ��", 19990, "#FFFFFF");
	CreateColorSPadd("�}ɫ�׶�", 19990, "#FFFFFF");
	Delete("�ϱ���");

	MovieSEStart(2000);

//��ħ�����
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se����_������_�����Ϥ�������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE01a","se����_��x_������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ţָ�", 4010, -825, -90, "cg/ev/resize/ev246_ħ���L�����_al.jpg");
	CreateTextureSP("�}�ţ�", 4000, -825, -90, "cg/ev/resize/ev246_ħ���L�����_al.jpg");
	SetVertex("�}�ţ�*", center, bottom);
	Shake("�}�ţ�*", 2000, 60, 0, 0, 0, 1000, null, false);
	Zoom("�}�ţָ�", 6000, 1100, 5000, DxlAuto, false);
	FadeDelete("�}�ţָ�", 6000, false);

	DrawDelete("�}ɫ��", 1000, 1000, "slide_01_02_1", false);
	DrawDelete("�}ɫ�׶�", 1000, 1000, "slide_01_02_0", true);

	CreateSE("SE01b","se����_������_��ν~��");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	SetFrequency("SE01b", 3000, 500, DxlAuto);

	SetFwC("cg/fw/fw�L��ħ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0420b45">
��ѽ��໰���������������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_냇��_������");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainSPadd("�}��д", 19000);
	CreateTextureSP("�}�ţ���", 3990, Center, Middle, "cg/ev/ev246_ħ���L�����_a.jpg");
	Delete("�}�ţ�");
	FadeDelete("�}��д", 800, false);

	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",0,750,0,350,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������ɢ�䡣

��Ұ̫�����۵Ĺ������
���������������ա�

�������������
���������С�
��
����ʴѪ����⡣

����������
���ֻ���ħ��
�����ǹ����о���ᴩ����ֻʣ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/md05/017vs0430a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/017vs0440a01">
�����������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����֤��֡�

�������Ķ���֮��
�������ĳ����Ҿ���
��
��Ȼ�󡪡�������һ�С�

��Ŀ�������������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��ħ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0450b45">
�������������¡�����

{	FwC("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0460b45">
����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ƭ�����ޤ�
	CreateSE("SE00","se����_������_�����Ϥ�������");
	CreateSE("SE01","se����_�z_װ��04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,1500,null,false);

	CreateColorEXadd("�}ɫ��", 19900, "#FFFFFF");
	Fade("�}ɫ��", 1000, 1000, AxlDxl, true);

	CreatePlainSPadd("�}��д", 10000);
	SetVertex("�}��д", center, bottom);
	Zoom("�}��д", 0, 1100, 6000, null, true);

	Wait(500);

	Zoom("�}��д", 7000, 1000, 1000, DxlAuto, false);
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����������<k>
��
����������������Ťת��?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="��������" src="voice/md05/017vs0470a01">
����������Ҫ�ָ�?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/017vs0480a00">
����ô���ܣ���

{	FwC("cg/fw/fw�L��ħ��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0490b45">
�����������Σ�
��������������������!!��

{	FwC("cg/fw/fw�L��ħ��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0500b45">
����ҲҪ�������㡪��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ԫ�^��
	CreateSE("SE01","se����_������_������");
	MusicStart("SE01",0,1000,0,100,null,false);
	SetFrequency("SE01", 5000, 1000, Axl2);
	CreateSE("SE01a","se����_��x_������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ţ֣�", 4100, Center, Middle, "cg/ev/ev246_ħ���L�����_b.jpg");
	DrawTransition("�}�ţ֣�", 10000, 0, 1000, 1000, null, "cg/data/slide_02_01_1.png", false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�����Ǻεȵġ���֮����
�����ǳ���εȵ�ִ�

���ڱ�Ȼȫ����������Ծɷ���������
��Ҫ���ѡ�����<k>
��
�������������óѡ�

���ټ�һ�������������������ˡ�

�������ġ���Ҳ���������
  ��ϧ�Ա���֮���������У��ڻ���Ĵ���������ŭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��ħ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/017vs0510b45">
�����������ް���������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���u������������������
	CreateSE("SE01","se����_������_�u������");
	MusicStart("SE01",1500,1000,0,1000,null,false);
	Zoom("�}�ţ֣�", 10000, 2000, 2000, null, false);
	Shake("�}�ţ֣�", 3000, 0, 0, 0, 30, 1000, AxlAuto, false);

	Wait(2900);

	Shake("�}�ţ֣�", 2000, 0, 30, 0, 30, 1000, AxlAuto, false);

//���ԥ��`��������Y
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_������_������Y");
	MusicStart("SE01",1500,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");

	CreatePlainSP("�}��д", 10000);
	CreateEffect("�}����", 10010, 0, 0, 1024, 576, "KitanoBlue");
	SetAlias("�}����","�}����");
	DrawTransition("�}����", $�Еr�g, 0, 1000, 1000, Axl2, "cg/data/circle_03_00_0.png", true);

}

..//������ָ��
//�Υե����롡"md05_018.nss"


..//�ޥ���늴Œi����늣�
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
	Shake("@�}��/�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�}��/�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�}��/�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�}��/�ץ�}*", 50, 800, null, true);
	Fade("@�}��/�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�}��/�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�}��/�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�}��/�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�}��/�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�}��/�ץ�}*", 50, 800, null, true);
	Fade("@�}��/�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�}��/�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�}��/�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�}��/�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�}��/�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�}��/�ץ�}*", 50, 800, null, true);
	Fade("@�}��/�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�}��/�ץ�}*", 0, 1000, 1000, null, false);

	}

}