//<continuation number="2790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_013vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_013vs.nss","DenziBladeCharge",true);
	Conquest("nss/ma04_013vs.nss","DenziBladeChargeSet",true);

//��������ݳ����ΤΥե������ʹ�ä����ä˜ʂ䡹
	CP_AllSet("����");

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
	#bg046_���΍u�Q�y̨_03=true;
	#ev909_��҆��=true;
	#ev909_��҆��_b=true;
	#ev909_��҆��_c=true;
	#ev909_��҆��_d=true;
	#ev911_��҆�£��ɥե��`���չ�_=true;
	#ev912_��҆�¸o�ݳh���å�_a=true;
	#ev912_��҆�¸o�ݳh���å�_b=true;
	#ev913_��҆��׷β��=true;
	#ev944_�����֣ӻ�҆��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma04_014vs.nss";

}

scene ma04_013vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_012.nss"

//�񣱣�
//��ɽ픡��Q�y̨
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateColorSP("�}�\��", 10, "#000000");

	$���k��=384;
	$��λ���{��=288-($���k��/2);

	CreateWindow("�}��", 19000, 0, $��λ���{��, 1024, $���k��, false);
	SetAlias("�}��","�}��");

	CreateTextureSP("�}��/�}�ݱ���", 100, Center, Middle, "cg/bg/bg001_��a_03.jpg");
	CreateTextureSP("�}��/�}�ݴ���", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Zoom("�}��/�}�ݴ���", 0, 75, 75, null, true);

	MoveFFP1("@�}��/�}�ݴ���",20000);

	CreateSE("SE01","se���L_����_������01_L");
	MusicStart("SE01",0,300,0,1000,null,true);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0010b02">
���������š�
���Ǿ��Ǵ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

	PrintGO("�ϱ���", 30000);
	OnBG(100,"bg046_���΍u�Q�y̨_03.jpg");
	StL(1000, @0, @0,"cg/st/st���L_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Move("�ϱ���", 300, @0, 576, Dxl2, true);
	Delete("�ϱ���");

	WaitKey(500);

	StR(1000, @0, @0,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0020b02">
������������¿����尡����
���ѵ���û�о�ȷ���ٸ�һЩ��
�Ե���Զ�����𣿡�

//���oҕ�L
{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0030b22">
������������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0040b02">
�������㻰�أ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0050b22">
���������ţ�û��������
������������Ǿ�������ʽ��
��Զ���ˡ���

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0060b02">
�����������
��ԭ����ˡ�������Գ����Ķ�����˵��
���ȷ���Ǹߵ��ˡ���

//���n܈���L
{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0070b22">
������������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0080b02">
�����ڿ佱�㰡����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0090b22">
���桭��������ָм�ѽ��
�����ɿ佱�����¾�ϲ��ֱ���������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0100b02">
����������Ц�����ģ�������
���ǳ�ûƷ����

//���Τ������L
{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0110b22">
������������

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs0120e068">
���İ��´���ͨ�š�
����ѯ�ʣ��������������߸����
���á�����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0130b02">
������������

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0140b22">
��ιι��
���Ǹ����ڽ��е����ء�������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0150b02">
�����������ܾ���Ҳ����ν����

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0160b22">
������νѽ?!��

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs0170e068">
���������ʡ�������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0180b02">
����������о�����ָ��Ȩ�����������С�
�������������ġ���
������˵�����к����飿��

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs0190e068">
������������

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0200b22">
��������ม�
��ɱ�����ɡ���������������ɱ������
����������Ը����ֻʵ��һ���ͺã�
�Ǿ���ɱ����쵰������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������֣ӻ�҆��
//����҆�¥֥쥹�ȥե������`���ܤ������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}�ţ�", 19000, Center, -170, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	DrawDelete("�ϱ���", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm10",1000,1000,true);

	CreateSE("SE01","se���L_��҆��_����01");
	CreateSE("SE01aa","se���L_����_��ͻ�M02");
	CreateTextureSPadd("�}����", 19100, Center, -170, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	CreateTextureSP("�}��", 19050, Center, -170, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);

	Delete("�}��ܞ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}����", 1000, false);
	Wait(400);
	Move("�}��*", 8000, @0, -700, null, false);
	Wait(1300);

	MusicStart("SE01aa",0,1000,0,1000,null,false);
	SetBlur("�}��", true, 2, 500, 40, false);
	Move("�}��*", 300, @0, -700, Dxl2, true);

	WaitKey(500);

//���٤�����
	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateColorSP("�}�\Ļ", 20000, "BLACK");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSPadd("�}����", 19100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 19000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);
	FadeDelete("�}����", 200, true);

	CreateSE("SE01b","se���L_�Ɖ�_�z03");
	CreatePlainSPadd("�}��д", 19990);
	CreateColorEXmul("�}ɫ��", 20000, "#CC0000");
	Zoom("�}��д", 0, 1150, 1150, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 800, null, true);
	FadeDelete("�}ɫ��", 300, false);
	Zoom("�}��д", 200, 1000, 1000, null, false);
	Shake("�}��д", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0210a00">
���������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0220a01">
��������΢����
����Ӱ�����ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ����˵��ǹе����������̫��
Ч����
����Ϊ��Ҫ��׽���������͸��װ�ף�
ǹ��̫���������ġ�

�����������һ��ʮ�ֵ��������۽������У�
�𰸾ͻᱻ�߸���
������һ�������У���ôʮ���أ�
ʮ������������ô�ٷ��أ�

��һ���������ã�ǹе���ܶ�����
������в�ˡ�
���Ӿ��͹���ı�Ƥ��ͻ�������ڿ�Ⱥ��
����Ϊ�����Ŀ�İɡ�

�����ǣ���ʹ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0230a00">
������������Ϊ��ȫ�㿪�˰���
���ѵ���Ϊ̫���ˣ�����Ŀ�������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0240a01">
�����ԡ�
�������ǵĶ���������Ҫ�ٶۡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0250a00">
����������
��ԭ������ǰ��<RUBY text="����">����</RUBY>ô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0260a01">
���ԡ������Ǹ���
���������������ȡ��������
��Ϊ�Կ������õ���װ����������Ч�ÿ��°�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������һ�г�����������������Ϊ���ۡ�
����������Щ����������ȷ�����ž��������������
��̽ݾ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0270a00">
��Ҳ����˵�������Ա������
��׽��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0280a01">
���š�
��װ�׿��Զ�����һЩ�������ã�
�������ܶ���������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0290a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}��", 1500, @-256, @0, Axl3, false);
	WaitKey(1000);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	CreateTextureSP("�}�ţ�", 19010, InRight, Middle, "cg/ev/resize/ev909_��҆��_l.jpg");
	SetBlur("�}�ţ�", true, 2, 500, 50, false);
	CreateSurfaceEX("�}��������", 19000,1000,"@�}�ţ�");
	Fade("�}��������", 0, 1000, null, true);

	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	Move("�}�ţ�", 2000, 0, 0, Axl2, false);
	Zoom("�}��������", 2000, 2000, 2000, null, false);
	Rotate("�}��������", 2000, @0, @0, @20, DxlAuto,false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	Wait(1700);

	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	CreateTextureSP("�}�ݱ���", 18000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	DrawDelete("�ϱ���", 150, 100, "slide_02_01_0", true);
	Move("�}�ݱ���", 650, @0, @286, Dxl2, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070a]
��������ǹ�ڵ��ƶ�����⻭Բ�ܷ���
�������󷽵��Ͽա�
{	CreateSE("SE02","se���L_��҆��_�Ƅ�01");
	MusicStart("SE02",0,1000,0,750,null,false);}
����Ȼ����ɫ����Ȼ�������̸ı����ƣ�ת������
�������������Ķ������ǳٶ۵ÿ��ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݻ�", 17000, -60, -250, "cg/ev/resize/ev909_��҆��_cm.jpg");
	Move("�}�ݻ�", 3000, @0, -90, DxlAuto, false);
	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}�ݱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070b]
���������������󡣵����ֶ�����
��������һ����������ƶ���
���������ε��������ݣ��������̾��롣

��ԶԶ����������֮�ޱ����޿����ɣ�
�������ⲫʱ����һ���ֱ�ø�Ϊ�����ˡ�
���Ҿ��൱����ս��������ϡ�

�����ǡ�
�������������֮�ڡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

	CreateSE("SE00","se���L_����_��ͻ�M02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreatePlainSP("�}��д", 18000);
	SetBlur("�}��д", true, 3, 500, 60, false);
	Zoom("�}��д", 600, 2000, 2000, Dxl2, false);
	Wait(580);

//��һ�W
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_left2(20010,@0, @0,2000);
	SL_leftfade2(10);

//�������`��
	PrintGO("�ϱ���", 30000);
	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE01*",0,1000,0,1000,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

//���|�𡣱ܤ����Ӥ��������
	CreateSE("SE02","se���L_��҆��_����05");
	CreateTextureSPadd("�}����", 19100, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	CreateTextureSP("�}��", 19050, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	SetVertex("�}��*", 1070, 1000);
	Delete("�}��ܞ");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�}����", 1500, 1250, 1250, Dxl2, false);
	Shake("�}��", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}����", 1000, false);

	WaitKey(800);

	CreateSE("SE03","se���L_����_��ͻ�M02");
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	MusicStart("SE03",0,1000,0,1000,null,false);
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 15000, InLeft, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	CreateSE("SE03","se���L_����_��ͻ�M01");
	CreateTextureEX("�}�����}����", 15100, Center, Middle, "cg/st/3d�����˜�_�T��_���La2.png");
	Move("�}�����}����", 0, @-286, @120, null, true);
	Zoom("�}�����}����", 0, 850, 850, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("�}�����}����", 300, 1000, 1000, Dxl2, false);
	Move("�}�����}����", 600, @30, @-120, Dxl2, false);
	Fade("�}�����}����", 300, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0300a00">
������������ô�а���
����Щ���ѡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0310a01">
��װ�׵ĺ�����Ŀ��Ĳ��޶��¡���
����Ը����ֻֽ�ϻ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ʧȥ�˴�����������Ҫ��װ��Ұ̫�����µ����
��ʹϧ���ѡ�
���Ǽ��޴����Ʒ����Ϊ��Ӧ��������������ڵġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���T�����m����������Ĥ�
	Move("�}�����}����", 300, @30, @0, null, false);
	Wait(250);
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("�}�����}����", true, 2, 300, 30, true);
	Fade("�}ɫ��", 0, 1000, null, true);
	Move("�}�����}����", 300, @1800, @0, Dxl2, false);
	Wait(30);
	Fade("�}ɫ��", 400, 0, null, false);
	DrawTransition("�}ɫ��", 800, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", false);
	BezierMove("�}�ݱ���", 1000, (0,-576){-100,-500}{-300,-400}{-500,-300}(-1024,0), Axl1, false);
	Wait(800);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Wait(500);

//��һ�ġ���äѥ����`��ȡ�
	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

//���|���Ӥ����`��
	CreateSE("SE03","se���L_��҆��_����05");
	CreateTextureSPadd("�}����", 19100, -740, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	CreateTextureSP("�}��", 19050, -740, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	Request("�}��*", Smoothing);
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	SetVertex("�}��*", 1070, 1000);
	Delete("�}��ܞ");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("�}����", 1500, 1250, 1250, Dxl2, false);
	Shake("�}��", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}����", 1000, false);

	WaitKey(800);

	CreateSE("SE03a","se���L_����_��ͻ�M02");
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSPadd("�}����", 18100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("�}��*", 150, -615, @0, Dxl2, false);
	Delete("�ϱ���");
	FadeDelete("�}����", 600, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0320a00">
����̵�װ�ס��ٶ۵��ж��������������
�ػ����صİɣ�
������������ı���������ϡ��Ź֡���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0330a00">
�����������һ�������žʹ��½⿪�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0340a01">
�����ţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0350a00">
���⽣����˾޴󡣶��Ҽ�Ȼ���ڽ����о���
���;��Ƕ�һ�޶���
��Ϊ�˶��������ʧ��Ʒ���ڵĴ���װ�ף�
��֪��������ٷ������ϡ�����

//��������
<voice name="����" class="����" src="voice/ma04/013vs0360a00">
�����ǽ���������Χ�ĺ����д������
���¶ȱ仯֮��ʹ�þֲ�����
�����쳣Ҳûʲô����˼�顣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0370a01">
���⵹Ҳ�ǡ�
�Թţ���ұʦ�Ǿ�ʮ��ͷ�۸����
����ϸ֡����������д�˵���ѷϸ�
�����ں��У����ʹ��ˮ�ɺ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0380a00">
���ƻ���̬ϵͳ��Ҳ����Ϊ�����ɡ���Ȼ��Ϊ
���а��������ı�����ʵ�����Ϊ������Ʒ����
������������Ļ�������Ҳ������ˡ�������
��һ���ֵ����������ٵĹ⾰�����޴�˵��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0390a00">
��������Σ�Ϊ�����±�������������Ȼ������
��ʽ�������̫�������ˡ�
��Ȼ�����޵��ʲ���
���������꣬�±����ͻ���Ϊ��ʽ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0400a01">
���ǰ���
����������������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs0410a01">
����Ҳ�������Ծ���<RUBY text="��">��</RUBY>��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0420a00">
�������γ����ԣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݻ�҆��", 18100, -460, -90, "cg/ev/resize/ev909_��҆��_m.jpg");
	Fade("�}�ݻ�҆��", 1000, 1000, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0119]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0430a01">
��������������õ���ļ����Ƴɵġ�
���������࡭�������ǹ�ʽ֮���

//��������
<voice name="����" class="��������" src="voice/ma04/013vs0440a01">
�����ǣ�
���޴����򡭡�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������Ϊ�⼫�п��ܡ�

������˵���󽢾���������Ҿ����ڲ��ľ�ʱ����
���ͽ����������뵱ȻҲ���ֹ�����������û��
���˼����ϵ�������������ˡ�
������˵��ͻȻ�����Ƴɹ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݻ�҆��", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0450a00">
����ʱ�������ֶ���ô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0460a01">
��������ֻ�����������ִ��š�
��˵¹����˯�Ų������꣬Ҳ�д���
�ƹ�֮����������
����������Ҫ���ǡ���

//��������
<voice name="����" class="��������" src="voice/ma04/013vs0470a01">
������硭��
���������У��������塣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����塣
�������Թ������ķ���
ֻ���Զ�ұʦ��������Ϊ���������������
����У���ӵ������������

��ԭ����ˡ���Ȼ��ʹ�������������Ͳ�����
���ִ�����ʽ���С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0480a00">
�����ǣ����һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}��", 2000, @-512, @-200, Axl2, false);

	Wait(500);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}��");

	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateTextureSP("�}�����ر���", 15000, Center, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}�����}����", 15100, -2300, -200, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	SetVertex("�}�����ر���", center, 0);
	Zoom("�}�����ر���", 0, 1000, 3000, null, true);
	Request("�}�����ر���", Smoothing);

	SetBlur("�}�����}����", true, 2, 500, 120, false);
	Shake("�}�����}����", 2160000, 1, 3, 0, 0, 1000, null, false);

	Move("�}�����ر���", 2000, @0, -2304, AxlDxl, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 1000, "slide_02_01_1", true);

	Move("�}�����}����", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	Move("�}�����}����", 20000, @30, @30, DxlAuto, false);
	Move("�}�����ر���", 20000, @0, -2880, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����˵����������ص�Ƥ��֮�£�
�������ɹŴ�֮���������������װ��
�ڵ������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE03","se���L_��҆��_����05");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(30, 20);

	WaitKey(300);

//���ܤ��ʤ���ӽ����ƥ����`��ȡ�
	Zoom("�}�����}����", 200, 800, 800, Axl2, false);
	Move("�}�����}����", 200, @200, @200, null, true);

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(500);

	Delete("@MF*");
	Delete("�}��*");

	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0490a00">
����������û��ϣ������ն��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0500a01">
�������ܿ�ϧ��
���������̫�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_1.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	CreateTextureSP("�}�ݱ���", 18000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	DrawDelete("�ϱ���", 150, 100, "slide_02_01_0", true);
	Move("�}�ݱ���", 650, @0, @286, Dxl2, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������յض��ұ�ʾ��ͬ��
����ǰ�ý���������ɶԷ���������������
�෴���ҵ��ֱ�ȴ�ܵ��˳��������Ӱ�쵽��ͷ�ˡ�
����Ҳ���Լ��ĵ�������������˰ɡ�

��û��������ͬ��
����ݵ������־��ԵĲ�࣬
���޷����׹��Ƶġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0510a01">
�����кδ��㡭������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0520a00">
����ʵ������������Ӧ�ó��ˡ�
�����ǡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0530a01">
�������˼�ǲ��ܳ��ˣ�
������ʱ��Ļ����Ѿ����
�㹻�˰ɣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0540a00">
�������м������Һ����⡣
����ֻ�����ô�������������
�ȴ����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ǰ������ս��
����˵������żȻ�����ֶ��⵽������δ�ⷢ����̫���ˡ�
������Ϊ�з�һ��ʼ�Ͳ�׽�������ǵ���Ӱ���űȽ��׵���

�����У��µ���񣬻���û�г��������ĵз�����
��һ��ʵ�����������ǵ������˲����¹ʣ�
Ӧ�������ͻ��о������������ڿ϶����Ǿ����
�Ƽ�������

������Ϊ�Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0550a00">
���˴��¼��������ͺ�Ļ���ء�
���������������ǻ��ǵ�����ĳ��Ϊ��ĳ��Ŀ��
�����µ�Ȧ�ס���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0560a01">
�����������壬��ô�������߷���������
����ľ�������
����������˼�𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0570a00">
��������Ժܴ�
�����ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������Bһ��
	EfRecoIn1(20000,600);
	CreateTextureSP("�}���뱳��", 18000, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	StC(18100, @0,@0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStC(0,true);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	DeleteStA(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0580a00">
����������ʧ�ٵ��¡�
����Ȼ�Ǹ�����˵��֮������������ʧ���¼�
ֻ�ǵ�������ҹǱ�ӣ���ƫƫ������һ��
Ҳ��ʧ�ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0590a00">
��Ӧ�ò���ʲô��ҹǱ�ӣ����ǵ�������һ����
��Ȼ��֪������ϸ�ڡ�
����������ǣ�����Ѹ�ٽ���¼��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0600a01">
������Ҫ����⵺�Ϸ������¼���
��Ҳ����˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����҆��
	CreateSE("SE01","se���L_��҆��_�Ƅ�02_L");
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��_c.jpg");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Fade("�}��", 2000, 1000, null, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0610a01">
��������������Ǹ��һ��ˣ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0620a00">
���ǰ���
������ǽ��ۡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����۳�һ��������ȴ�ó���çײ�Ľ��ۡ�
��һ�㣬���ǳ���Ϊǭ¿֮����

��������Ȼ����
����<RUBY text="����">����</RUBY>��˵����ֻ��<RUBY text="��������">�ҳ��㷹</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0630a01">
�������˽⡣
����ô������ֻ��һ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//���|��
	CreateSE("SE01","se���L_��҆��_����05");
	CreateTextureSPadd("�}����", 19100, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	CreateTextureSP("�}��", 19050, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	SetVertex("�}��*", 1070, 1000);
	Delete("�}��ܞ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 1500, 1250, 1250, Dxl2, false);
	Shake("�}��", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}����", 1000, false);

	WaitKey(800);

//���ܤ��á�
	CreateSE("SE02a","se���L_����_���ϕN01");
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}�����}", 18100, 512, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	CreateTextureSP("�}�ݱ���", 18000, InRight, Middle, "cg/bg/resize/bg001_��a_03.jpg");
	Request("�}�ݱ���", Smoothing);
	SetVertex("������", right, middle);
	Zoom("�}�ݱ���", 0, 3000, 1000, null, true);
	Delete("�ϱ���");

	SetBlur("�}�����}", true, 2, 300, 50, false);
	Shake("�}�����}", 1000, 0, 2, 0, 0, 1000, null, false);
	Move("�}�����}", 800, -1700, @-10, Axl2, false);
	Move("�}�ݱ���", 10000, 1024, @0, DxlAuto, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	Wait(800);

	CreateTextureEX("�}��", 18000, -500, -130, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}��", 0, 800, 800, null, true);

	Zoom("�}��", 300, 1000, 1000, DxlAuto, false);
	Move("�}��", 300, @-80, @0, DxlAuto, false);
	Fade("�}��", 300, 1000, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0640a01">
�������������д�װ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0650a00">
��Ҫ�õ�Űε�ô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0660a01">
���š�
���ҵ�����̫֮��������ն��
�κζ�������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs0670a01">
�����ǵ������ͨװ��Ҳ�ã�
��ʱ�����Ų�Ҳ�գ�������ν��
��������ʲô�������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������ǿ��ʤ������Ҳ���ǳ���δ��<RUBY text="������">�˺���</RUBY>�Է���������
����У�����Ҳ����Ϊ����ڿ�
������̫֮��������Űε�����ѹ�Ĵ���������������
����֮һ������ʹǰ���������ڣ�Ҳȷʵ�ܹ����ưɡ�

������������ĵ���ʣ�޼���Ҫ��ͼ����������Ҫϸ��
ע��������ʽ�����ھ޴�Σ�ա���<k>��δ�ܳɹ�����
��Űε��������������ı��߽���ζ������ı���
����<k>������Ҳ�Ǽҳ��㷹�����Ҳûʲôֵ�������ˡ�

��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0680a00">
�����С���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0690a01">
��Ϊʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0700a00">
�����ǽ��С�
��<RUBY text="��������">��������</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0710a00">
��ʹ�����ɵĻ�����û�취���������ˡ�
���������Ĳٿ���һ��ն������ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0720a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������Ū����ٿ��ߵ������ھ�������ĺδ���
�����ҵ�ͻ�ƿڡ�
�����������˵�����ȫ������������

������Է��Ǳ�ֲ�롰�ѡ��ļ����塪��
��Ҫɱ�˶Է���û��������ء�
����Ҫ��ֹ�µ����Ǻŵ�����ֻ�о����ܿ��ٵ�
�ƻ���һ�С����ɽ�����ˡ�

�������Է�������ˡ��Ҳ���ɱ��
��������ˣ������ܻ����Ӳ������Ǵ�𡪡�����
�ƻ����ϻ�������в��������֮��ȫ������������
�Ź��������Ҳ��������ƻ���

����������������<RUBY text="����������">�������Ʋ�</RUBY>�����ְ����ľٶ���
�ǲ����ܵõ���ͬ�ġ�
���������������Ʋá�����������
ֻ�н��ӷ�������ͥ���ѡ�

����������ɶ�������ס�Ļ������Է���Ļ������
Ȩ�������ã��ߵĻ���������Ҳ����Ϊ����������
���д��á�
������ô�����Ǳ�ͽ���Һô��Ǹ����졣

����������˾���ҳϲ�����
���������Ը���һ��֮��ȥ�������
���вþ�������ɱ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���ե�å���Хå�����Ě��������ٚ�������·׿����
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl2, true);

	CreateColorSP("�}ɫ�\��", 18000, "#000000");
	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/3d���_����_���L.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/3d���_����_���L.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);


	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/3d�˰�ʽָ�]��_����_�i��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st��·_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st��·_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

	Delete("�}�����}*");
	Delete("�}ɫ�\��*");

	FadeDelete("�}ɫ��", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������Բ��С�
�����ǲ����������Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0730a01">
����Ҫ��ô��?!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs0740a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������Ʊ���ס������¡�
��Ҫ���������

���������Ժ��еĲ�ı�ƺ��������̾ͻش�
�������Թ�ͷ�����ʡ�
�����ң�����Ҳ�����ܹԹԵ����ң�
ֱ���ó��𰸡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE01","se���L_��҆��_����05");
	CreateTextureSPadd("�}����", 19100, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	CreateTextureSP("�}��", 19050, -340, -730, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	SetVertex("�}��*", 1070, 1000);
	Delete("�}��ܞ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 1500, 1250, 1250, Dxl2, false);
	Shake("�}��", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}����", 1000, false);

	WaitKey(1000);

//���ܤ���
	CreateSE("SE02","se���L_����_��ͻ�M02");
	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	CreateTextureSP("�}�ݱ���", 18000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Delete("�}��*");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("�}�ݱ���", 650, @0, @300, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 1000, "slide_02_01_1", true);

//���o�ݳh
	CreateTextureEX("�}��", 18100, -310, InBottom, "cg/ev/resize/ev909_��҆��_l.jpg");
	Move("�}��", 650, @0, -65, Dxl2, false);
	Fade("�}��", 600, 1000, null, true);

	CreateSE("SE03","se����_�z_�l����01");
	CreateSE("SE03b","se����_�z_�l����02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}�ݻ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻ���", 200, true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0750a00">
����������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0760a01">
�����ǡ�������
��ʲô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ڿڵĶ����·������ӵ��ߣ�ָ�����ҡ�
������������˵����С��ϸ����û������
����׼�Ķ��������������������

�����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���֤��`��
	CreateSEEX("SE01","se���L_��҆��_����02_L");
	MusicStart("SE01",0,1000,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	CreatePlainSPadd("�}��д", 18900);
	CreateTextureSPadd("�}�݄���", 19000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	SetBlur("�}��д", true, 2, 500, 30, false);
	Zoom("�}��д", 0, 1500, 1500, null, true);
	Zoom("�}��д", 3000, 1000, 1000, null, false);
	DrawDelete("�}��д", 300, 100, "circle_01_00_0", false);

	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", false);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0770a01">
������
�����ǡ������д���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��Ȼ����
��������˲����������������ѵ�<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma04/013vs0780a00">
�����������˱�!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs0790a01">
��?!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���o�ݳh�k��
//����`���`�h�ߤ����ʤ�󤫣�
	CreateSE("SE01","se���L_��҆��_����03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	Wait(300);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	OnBG(100,"bg046_���΍u�Q�y̨_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SetVolume("SE*", 5000, 0, null);
	DrawDelete("�}��ܞ", 300, 1000, "slide_01_01_1", true);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0800b02">
����������ʲô����

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0810b22">
��������

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0820b02">
��������
������ļ���������żǲ��ΰɣ�
�������ٴ�ͨ�棬��������ش��ҵ�
���ʡ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0830b22">
��������������
����˵<RUBY text="������������">������</RUBY>�����Ǿ��������˰ɡ���

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0840b02">
��<RUBY text="������������">������</RUBY>����
���ҵ�ȷ�������ֱ��������롣��

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0850b02">
��������ʹ���˽���װ��ͨ�ŵı�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0860b22">
���ǰ���
�����յ����ߵĽ��д��������ͻ�С����
�ɣ������������ܷ����ڹ����أ���������
�����Ȥ���뷨��ʼ�о��ġ���

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0870b22">
����������Ƿ��ֿ��Ծۼ��𼫵͵Ľ��д�����
������Ŀ��Ϳ���˲�����£�
���ձ���ȼ��
�����ǰ��������ʵ�����������������ˡ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0880b02">
����������ԭ����ˡ�
�����������˲��𰡡���

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0890b22">
���ߡ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0900b02">
��������������Ҿ�����Ϊ��������������
ս���Ĵ�����װ�������о���������˵δ��
�������������С�ͻ����⣬���ܴ��ж��ˡ�
������������̨�ϣ��ɱ��ֲ����㡣��

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0910b02">
���������������ͻ�����Ȼ�ͽ����
��Щ���⡭�����Ǿ�����ֲڵ��ַ���
��Ҳֻ�е�����ԭʼ�˲���ó���������������
��ֻ�ܵ���Ц�ϸ�һ�������ˡ���

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0920b22">
����໡�����!!��

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0930b02">
�������л���ǿ��ԣ�������̫�����ˣ�
��������

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0940b22">
�����㿴�����������ڸ�л��!?��

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0950b02">
���ҶԻ���ԭʼ���Ҷ��ط��׶������ĸ������
û��Ȥ��
����˵��������������

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0960b22">
���˼���ؼ�������
���������ڷ����������ɱ�������С���
�������ǡ������������ˣ�ɱ��ɱ��ɱ��
��һ��ʵ����Ψһ��Ը���ɡ�����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0970b02">
���Ǹ���һ�ô�Ҳ�ǽ��аɡ�
���ǣ��������ú��ַ�������ɵģ�
����˾޴�Ķ�������˵ʵ����
����ȫ�޴����󡣡�

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs0980b22">
�����������Ҳ��֪����
����������ɱ���װ���ĵ�ȷ�����ǣ�����<RUBY text="�����">ԭ��</RUBY>
�͸������޹��ˡ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs0990b02">
��Ŷ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1000b22">
������������϶��и�ʯ����
��ʲôͨ��ʿɽ�ķ綴ѽ��
ʲô�Ĵ����ε���֮��·ѽ��
�кܶ���Ȥ�Ĵ�˵����

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1010b22">
���Ƕ������ڶ�Ѩ����ֵġ�
������ǰ������ѧ�����ŷ��֡�������
����ܾ���ǰ���ڵ��ؾ���֮�䱻
�ڿ��ഫ�ˡ���

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1020b22">
��˵��ʲô<RUBY text="��������">����֮��</RUBY>ɶ�ġ�
����㲻������������Ҳ��
�ڿڷ�硡���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1030b02">
��������

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1040b22">
����ʹ����ȥ���ֵ��飬���Ҳֻ���ж�������
��ǰ��������ǧ������������ǰ�����
����<RUBY text="������">������</RUBY><RUBY text="��������">���Ľ���</RUBY>��
����Ҷ�����һ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1050b22">
����Ϊ�ڽ����������Ͻ��У�
�����뷨��������δ�š��ܶ���֮��
�����鵽�����޵Ĺ�Ͻ֮�£����˸����֣�
���������ǿ����װ��Ȼ��Ϳ�ʼ�о�������

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1060b22">
������������췽������ûŪ���ס�
�����εؾ�������ֻ��һ��ҲͶ�����ðɣ�
Ȼ��˳���о����Ƕ����ͱ���������ˡ�
����ô���¡���

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1070b02">
��ԭ����ˡ�
���Ҵ�������ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1080b22">
���������ꡣ��

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1090b02">
���ܶ���֮�������ǡ�һ����֪����
����л�����ݿն���˵����
���Ծ��˷��˺ö�ʱ�䡣��

{	FwC("cg/fw/fw���L_Ц��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1100b22">
�����ۡ�
���Һ���ʼ�е������ˣ�
�ܾ����Լ�������ս���������ɱ����
��ʲô�̶ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤����`��
	CreateSE("SE01","se���L_��҆��_����04_L");
	MusicStart("SE01",0,500,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	WaitKey(300);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1110b02">
��������
������������Ҫ��ʲô����

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1120b22">
���ţ�
��Ŷ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1130b22">
��������ɢ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ҫ�ϒ�ɢ���ӳh����
//�����ө`�äȡ�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "slide_01_01_0", true);

	CreateTextureSP("�}��", 19000, Center, Middle, "cg/ev/ev909_��҆��.jpg");

	CreateSE("SE01","se���L_��҆��_����05");
	CreateTextureSPadd("�}����", 18090, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}��", 18090, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	CreateSE("SE01a","se���L_��҆��_����05");
	CreateTextureSPadd("�}����hһ��", 18081, -900, -380, "cg/ef/resize/ef047_�k��h�������l.jpg");
	CreateTextureSP("�}����hһ", 18080, -900, -380, "cg/ef/resize/ef047_�k��h�������l.jpg");

	CreateSE("SE01b","se���L_��҆��_����05");
	CreateTextureSPadd("�}����h����", 18071, -460, -512, "cg/ef/resize/ef047_�k��h�������l.jpg");
	CreateTextureSP("�}����h��", 18070, -460, -512, "cg/ef/resize/ef047_�k��h�������l.jpg");

	CreateSE("SE01c","se���L_��҆��_����05");
	CreateTextureSPadd("�}����h����", 18061, -68, -500, "cg/ef/resize/ef047_�k��h�������l.jpg");
	CreateTextureSP("�}����h��", 18060, -68, -500, "cg/ef/resize/ef047_�k��h�������l.jpg");

	CreateSE("SE01d","se���L_��҆��_����05");
	CreateTextureSPadd("�}����h����", 18051, -10, -10, "cg/ef/resize/ef047_�k��h�������l.jpg");
	CreateTextureSP("�}����h��", 18050, -10, -10, "cg/ef/resize/ef047_�k��h�������l.jpg");

	CreateSE("SE01e","se���L_��҆��_����05");
	CreateTextureSPadd("�}����h����", 18041, -397, -30, "cg/ef/resize/ef047_�k��h�������l.jpg");
	CreateTextureSP("�}����h��", 18040, -397, -30, "cg/ef/resize/ef047_�k��h�������l.jpg");

	CreateSE("SE01d","se���L_��҆��_����05");
	CreateTextureSPadd("�}����h����", 18031, Center, Middle, "cg/ef/resize/ef047_�k��h�������sex01.jpg");
	CreateTextureSP("�}����h��", 18030, Center, Middle, "cg/ef/resize/ef047_�k��h�������sex01.jpg");
	SetVertex("�}����h*", 140, 470);
	SetBlur("�}����h����", true, 2, 500, 50, false);


	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_0", true);

	SetVolume("SE*", 100, 0, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 200, 1400, 1400, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 300, true);

	Delete("�}��");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("�}����hһ", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����hһ��", 200, 1250, 1250, null, false);
	FadeDelete("�}����hһ��", 300, false);

	Wait(200);
	Delete("�}����hһ");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("�}����h��", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����h����", 200, 1250, 1250, null, false);
	FadeDelete("�}����h����", 300, false);

	Wait(200);
	Delete("�}����h��");

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("�}����h��", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����h����", 200, 1250, 1250, null, false);
	FadeDelete("�}����h����", 300, false);

	Wait(200);
	Delete("�}����h��");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("�}����h��", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����h����", 200, 1250, 1250, null, false);
	FadeDelete("�}����h����", 300, false);

	Wait(200);
	Delete("�}����h��");

	MusicStart("SE01e",0,1000,0,1000,null,false);
	Shake("�}����h��", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����h����", 200, 1250, 1250, null, false);
	FadeDelete("�}����h����", 300, false);

	Wait(300);
	Delete("�}����h��");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("�}����h��", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("�}����h����", 200, 2000, 2000, null, false);
	FadeDelete("�}����h����", 300, true);

//�������`��
	CreateColorSP("�}��ܞ", 20000, "#FFFFFF");
	CreateSE("SE02","se���L_����_�����N_��");
	CreateSE("SE02a","se���L_����_�z��������03");
	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("�}��*");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	DrawTransition("�}ɫ����", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE02a") / 3;
	FadeDelete("�}ɫ����", 150, false);
	FadeFR2("�}��д",0,500,$�Еr�g,0,0,30,Dxl3, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1140a00">
��������!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1150a01">
����ղ�һ������
����΢���ˡ���������ȫ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ν��Ƥ�����ܵ���<RUBY text="����">��ʹ</RUBY>�����ոС�
��û�ܱܿ��ղŵ�<RUBY text="��">��</RUBY>��

��������Χ��ɢ����������Ҳ����Ӧ�����˰ɡ�
�뷽�Ż��������һ����������
���������ˡ�
�������Ѿ�̼��������ָ���������á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1160a00">
����������ʲô��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1170a01">
������ô����֪����
�������ܿ϶����ǣ��������˽��д�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�������˽��д��������������
�������޷�����

����˵�����޹����ձ������ĵ�ż������⣬
���������������
�Ǵ����������о�֮һ��
���ѵ������п���ʵ�û�����Ŀô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1180a01">
����׷������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1190a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//���رܙC��
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("@OnBG*", true, 2, 500, 60, false);
	Zoom("@OnBG*", 300, 1500, 1500, DxlAuto, false);
	Move("@OnBG*", 150, @0, @-100, null, true);
	Move("@OnBG*", 150, @0, @300, null, false);

	Wait(100);

	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//���Х�����|��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureEX("�}����", 18010, -150, -30, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}��", 18000, -150, -30, "cg/ev/resize/ev909_��҆��_dl.jpg");
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 216000, 0, 20, 0, 0, 1000, null, false);
	Shake("�}��", 216000, 0, 4, 0, 0, 1000, null, false);
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	Delete("�ϱ���");
	Delete("�}��ܞ");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

	SetVolume("SE*", 5000, 0, null);
	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��*");
	Delete("@MF*");

	CreateTextureSP("�}�ݱ���", 17000, InLeft, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitAction("�}�ݱ���", null);

	Move("�}�ݱ���", 50000, -512, 0, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���������������ʹ�����Ͽա�
��������ε�ǹ��ȫ��ʵ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01L","se���L_����_������01_L");
	MusicStart("SE01L",300,1000,0,1000,null,true);
	CreateTextureEX("�}�����}", 17050, -2240, -200, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	Zoom("�}�����}", 0, 1050, 1050, null, true);

	Shake("�}�����}", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("�}�����}", 300, 1000, 1000, null, false);
	Fade("�}�����}", 300, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1200a00">
�������޷��������䡭����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1210a01">
�����ǲ����е����ҡ�
�����������Ҳֻ�൱��Ϊ�������յ�����
���ϲ������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1220a00">
���������ʲô��˼����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1230a01">
�����Ǳ���Ϊ���Ȼ������������ġ�
����˵���������кδ��㣿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1240a00">
����������Ѱ�Ҳ�����װ�״���֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSEEX("SE01aL","se���L_��҆��_����02_L");
	MusicStart("SE01aL",0,200,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����ʹ�Ǽ���ޱȵĽ��У�Ҳ�бȽ϶��Դ�����
���֡�
����Ϊ�������ŵ����ף�������ز����⡣
���ؽڴ��������㡣

��Ϊ�˱�֤����ɣ��ؽڴ���װ�ױ����ᱡ��
Ҳ�ͱض�������϶��
����׼��һ������ģ���˫����������������������
����ʱ�Ķ���֮һ��

��������Ȼ�ǹ��������˽��г�ʶ��Զ��
�������ǻ���ĳ��Ҫ���ɡ�

��ֻ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���o�ݳh
	CreateSE("SE01","se���L_��҆��_����03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	Wait(300);

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1250a00">
���������ƣ�Ҳ��������˹�����µ��鰡��
�����ҵ��Է����ֹ�֮ǰ��
�Ҿͻᱻ��һ����׹�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1260a01">
�����ǲ��������Ԥ�Ⱑ��
��������������ǣ����޷��񶨡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_01_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
������С�ڣ��̲���һ����ɱ���ߵ�������
���Ҹ����޷��ڱ�����������׼��ͬʱ��
ȥѰ��ʲô���㡣

��������ս�پ���
����������Ȼ������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤��`��
	CreateSE("SE01","se���L_��҆��_����03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, false);

	Wait(150);

//�����رܩ`��
	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ݻ�*");
	Delete("�}ɫ��");

//������äȤ����롣
	CreateColorSP("�}��ܞ", 20000, "#FFFFFF");
	CreateSE("SE03","se���L_����_�����N_��");
	CreateSE("SE03a","se���L_�Ɖ�_���k02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("�}��*");
	Delete("�}ɫ�\");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	DrawTransition("�}ɫ����", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);

	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE03a") / 3;
	FadeDelete("�}ɫ����", 150, false);
	Shake("�}��д", $�Еr�g, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1270a01">
����������װ���е���
���������ء���ʼ����������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1280a00">
���Ժ���˵��
��Ŀǰ�����ٶȾ��С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����ǿ��ס�����ٸ���һ�������а�ľ�ʹ��
�´����
�������������ṩ���������ޡ�����������������
���ܵ�Ȼ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1290a00">
���������ϻ���ʹ����
�������Ѿ�û֪������������
���������˰ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1300a01">
����������
��ʹ�á����ɡ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1310a00">
�����С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
������ٿ���Ҳ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1320a01">
���Ǿ�Ӧ�ó��ˣ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1330a00">
�����С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����������Ҳ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1340a01">
��������ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1350a00">
�������������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("�}�ݱ���", true, 2, 500, 60, false);
	Zoom("�}�ݱ���", 300, 1500, 1500, DxlAuto, false);
	Move("�}�ݱ���", 150, @0, @-100, null, true);
	Rotate("�}�ݱ���", 1000, @0, @0, @-30, null,false);
	Move("�}�ݱ���", 150, @0, @300, null, false);

	Wait(100);

//��ͻ��
	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18010, Center, Middle, "cg/ev/resize/ev502_�����i��Ƭ��l.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/resize/ev502_�����i��Ƭ��l.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�􄇓ġ������`��
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE03","se���L_����_Ұ̫�����02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_centerout2(20010,@0, @0,2000);
	SL_centeroutfade2(10);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE03a","se���L_����_�z_���02");
	CreateSE("SE03b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
���ҵ���ն����ˡ�
����Ȼ�������Ҷ���ȫ��֮����˫��Ҳ�޷�
�����˺۵�Ӳ�ڣ����Ҳ�����������ն�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureEXadd("�}�ݸ�", 18010, -250, -250, "cg/ev/resize/ev909_��҆��_bl.jpg");
	CreateTextureSP("�}��", 18000, -250, -250, "cg/ev/resize/ev909_��҆��_bl.jpg");
	SetBlur("�}�ݸ�", true, 3, 500, 200, false);
	SetVertex("�}�ݸ�", left, 460);
	Fade("�}�ݸ�", 0, 750, null, true);
	Fade("�}�ݸ�", 400, 0, DxlAuto, false);
	Zoom("�}�ݸ�", 400, 1250, 1250, DxlAuto, false);
	Shake("�}��", 2160000, 8, 0, 0, 0, 1000, Dxl2, false);
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	Delete("�ϱ���");
	Delete("�}��ܞ");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//���ر�
	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��*");
	Delete("@MF*");

	CreateTextureSP("�}�ݱ���", 17000, InLeft, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitAction("�}�ݱ���", null);

//���⤦һ�ġ�
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1700,null,false);
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ݱ���");

	CreateTextureSPadd("�}����", 18010, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);


	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE04","se���L_����_Ұ̫�����02");
	MusicStart("SE04",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE04a","se���L_����_�z_���02");
	CreateSE("SE04b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE04*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1360a01">
���кμ�ı��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
������Ͼ�ش��ٴι�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��ȡ�
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_08_00_0.png", true);

	Delete("�}�ݱ���");

	CreateSE("SE01a","se���L_����_Ұ̫�����02");
	CreateTextureSPadd("�}����", 18010, -260, -20, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 18000, -260, -20, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}����", 200, 1150, 1150, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("�}�\Ļ", 150, 100, "slide_08_00_1", true);
	FadeDelete("�}����", 200, true);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE02a","se���L_����_�z_���02");
	CreateSE("SE02b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE02*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

//���˱�
	CreateSE("SE03a","se���L_����_���ϕN01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��");
	Delete("@MF*");

	CreateTextureSP("�}�ݱ���", 17000, InLeft, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitAction("�}�ݱ���", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�������س�����ͽȻ�Ĺ��ơ�

�������ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��_d.jpg");
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	Delete("�ϱ���");
	Delete("�}��ܞ");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//�����ؤ��Ʊܤ��Ƥ����`��ȡ�
	CreateSE("SE03a","se���L_����_���ϕN01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}��");
	Delete("@MF*");

	CreateTextureSP("�}�ݱ���", 17000, InRight, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @300, @0, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	WaitAction("�}�ݱ���", null);
	Move("�}�ݱ���", 4000, @300, @0, null, false);

	CreateTextureEX("�}�ݴ���", 17100, 1024, Middle, "cg/st/3d�����˜�_�T��_���La.png");

	SetBlur("�}�ݴ���", true, 2, 500, 80, true);
	Shake("�}�ݴ���", 216000, 0, 2, 0, 0, 1000, null, false);
	Move("�}�ݴ���", 1200, @-900, @-10, DxlAuto, false);
	Fade("�}�ݴ���", 300, 1000, null, true);

	Wait(900);

	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 0, 850, null, true);
	Wait(20);
	Fade("�}ɫ��", 380, 0, null, false);
	DrawDelete("�}ɫ��", 380, 0, "slide_05_00_1", false);

	Move("�}�ݴ���", 300, @-1600, @-120, Dxl3, true);
	Wait(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}����*");
	Delete("�}�ݴ���*");

	Wait(300);

	CreateSE("SE05","se���L_����_Ұ̫�����02");
	MusicStart("SE05",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	CreateSE("SE05a","se���L_����_�z_���02");
	CreateSE("SE05b","se���L_����_���nͻ01");
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE05*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1370a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
��ע�⵽�˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}��*");

	CreateTextureSP("�}�ݱ���", 17000, InLeft, InTop, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @-300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	WaitAction("�}�ݱ���", null);

//���|��
	CreateSE("SE01","se���L_��҆��_����05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}��", 18050, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}��", 0, 1100, 1100, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 2000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
���������������û�ɢ��
���ɴ˿ɼ����ֵĽ��ꡣ

��������Ҫ������ݽ���㣬�ظ��Ź�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�뤷�Ƥ����`��
	CreateSE("SE01a","se���L_����_��ͻ�M02");
	CreatePlainSPadd("�}��д", 20000);
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	SetBlur("�}��д", true, 2, 500, 80, false);
	Zoom("�}��д", 400, 1500, 1500, null, false);
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 200, 1000, null, false);
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	Delete("�}��д");

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE03","se���L_����_Ұ̫�����02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,2000);
	SL_leftupfade2(10);

	PrintGO("�ϱ���", 30000);
	CreateSE("SE03a","se���L_����_�z_���02");
	CreateSE("SE03b","se���L_����_���nͻ01");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreatePlainSPadd("�}��д", 19000);
	Delete("�ϱ���");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("�}��д", true, 2, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1100, 1100, null, false);
	FadeDelete("�}��ܞ", 600, false);
	WaitKey(200);
	FadeDelete("�}��д", 400, true);

//���Ѥ��ä��|��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureEXadd("�}�ݸ�", 18010, -140, -90, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}��", 18000, -140, -90, "cg/ev/resize/ev909_��҆��_dl.jpg");
	SetVertex("�}�ݸ�", 850, 260);
	Fade("�}�ݸ�", 0, 500, null, true);
	Zoom("�}�ݸ�", 0, 1250, 1250, null, true);
	Shake("�}�ݸ�", 2160000, 6, 0, 0, 0, 1000, null, false);
	CreateSE("SE04","se���L_�|��_�C�v�|����02");
	Delete("�ϱ���");
	Delete("�}��ܞ");
	MusicStart("SE04",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);
	FadeDelete("�}�ݸ�", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
�������Ѿ����ܳ�֮Ϊ�ѻ��ˡ�
��ֻ�����ǵ�����������ѹ�����

��Ҳ������Ϊ׷�ط�����ȥ���Ȳ�Ӭ���ң�
��ʼƣ���˰ɡ�
��ÿһ�������������������صļ�������

��Ҳ��ѹ�������Ƶ�Ե�ʰɡ�
���������޷��˼��Լ�˿������Ӭ֮ʿ��
������Ȼ�޷�ά��ƴ���Ķ�־��

������ʱ���ѵ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���C��
	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}��*");
	Delete("@MF*");

	CreateTextureSP("�}�ݱ���", 17000, Center, InTop, "cg/bg/resize/bg002_��a_03l.jpg");
	Zoom("�}�ݱ���", 0, 1500, 1500, null, true);
	Rotate("�}�ݱ���", 0, @0, @0, @180, null,true);
	SetBlur("�}�ݱ���", true, 2, 500, 80, false);

	Zoom("�}�ݱ���", 650, 1000, 1000, null, false);
	Rotate("�}�ݱ���", 650, @0, @0, @-180, null,false);
	Move("�}�ݱ���", 1200, @0, @-300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	WaitAction("�}�ݱ���", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
��������ջ���Ť��������������Ƶ���ɫ�����
����
������̫��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���C��
	CreatePlainSP("�}��д", 20000);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateStencil("�}�ݴ�����",17110,Center,Middle,128,"cg/st/3d�����˜�_�Tͻ_���L.png",false);
	CreateColorEX("�}�ݴ�����/ɫ", 17120, "#000000");
	Fade("�}�ݴ�����/ɫ", 0, 750, null, true);

	Zoom("�}�ݴ���*", 0, 150, 150, null, true);
	Request("�}�ݴ���*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݴ���*", 0, @-256, @-100, null, true);
	Move("�}�ݴ���*", 300, @0, @-60, DxlAuto, false);
	FadeDelete("�}��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
��������ⲫ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���C�ӡ�ǰ���
	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateColorEX("�}ɫ�\", 19990, "#000000");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�ݴ���*", 200, @30, @-60, null, true);
	Move("�}�ݴ���*", 400, @280, @100, null, false);
	Zoom("�}�ݴ���*", 400, 1500, 1500, null, false);
	Wait(100);
	Fade("�}�ݴ�����/ɫ", 300, 0, null, false);
	Wait(300);
	Fade("�}ɫ�\", 100, 1000, null, true);
	Fade("�}�ݴ���*", 100, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
����������ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1380a01">
��Ŀ��ӽ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1390a00">
�����ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 20000);
	SetBlur("�}��д", true, 2, 500, 80, false);
	CreateTextureSP("�}��", 18000, -514, -170, "cg/ev/resize/ev910_��҆����Ԫ���å�m.jpg");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @180, @0, null,true);
	Zoom("�}��д", 300, 1500, 1500, Dxl2, false);
	Fade("�}��д", 300, 0, Axl2, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
������ãȻ����Ѱ�ҵ�Ӱ��ǹ�ڣ�
��Ծ�����档
������Ҳ��һ��ǹ�ڡ�

��������С�ɶ�����Σ�յ����š�

������Ӧ�������Ͳ�������ҵ�Ŀ�ġ�
�����µ�����Ѿ����ˡ�

�����������Ƿ������ҵ���ս�ƻ�����
�������ȣ��͵��������졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓ġ�
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateSE("SE01a","se���L_����_Ұ̫�����02");
	CreateTextureSPadd("�}����", 18010, -260, -20, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 18000, -260, -20, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	SetVertex("�}��*", 687, 687);
	Zoom("�}����", 200, 1150, 1150, Dxl2, false);
	Shake("�}��", 1000, 0, 20, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MoveFFP1stop();
	DrawDelete("�}ɫ��", 150, 100, "slide_08_00_1", true);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��ն��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//�����ɥե��`��ɰk��
//��Ҫ�ϥХ��`��ֹ�᤿��
	CreateSE("SE01","se���L_��҆��_���ڰk��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev911_��҆�£��ɥե��`���չ�_.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev911_��҆�£��ɥե��`���չ�_.jpg");
	Zoom("�}����", 200, 1150, 1150, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	Wait(100);
	FadeDelete("�}����", 200, true);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1400a00">
������ʲô?!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1410a01">
����ô��?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
������ֹ��!?
�����ԡ���

{	SoundPlay("@mbgm13",0,1000,true);}
��<RUBY text="��������">��������</RUBY>!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ҋ��ϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u�Q�y̨_03.jpg");
	StL(1000, @0, @0,"cg/st/st���L_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 100, "slide_01_01_1", true);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1420b02">
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1430b22">
��������������������֮ǰ���ȸ����㡣
������<RUBY text="���ɣ�����">��������</RUBY>����

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1440b22">
�����õ�ų������������Ƶ���Ķ�����
�Ƿ����渨�������õ���װ����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1450b02">
����û���㡣��

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1460b22">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F��
	PrintGO("�ϱ���", 30000);
	CreateSE("SE01","se����_냇��_����01_L");
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSPadd("�}�ݸ�", 18010, -110, -100, "cg/ev/resize/ev911_��҆�£��ɥե��`���չ�_m.jpg");
	CreateTextureSP("�}��", 18000, -110, -100, "cg/ev/resize/ev911_��҆�£��ɥե��`���չ�_m.jpg");
	SetVertex("�}��*", 800, 300);
	Shake("�}�ݸ�", 3000, 4, 0, 0, 0, 1000, AxlDxl, false);
	Zoom("�}�ݸ�", 3000, 1200, 1200, null, false);
	FadeDelete("�}�ݸ�", 2800, false);
	OnBG(17000,"bg002_��a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",2000,1000,0,750,null,true);
	DrawDelete("�ϱ���", 200, 100, "slide_01_01_0", true);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1470a01">
�����ǡ�����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1480a00">
����Ȼ�����ֶ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
����Ȼ��<RUBY text="���ֶ���">�����ų�װ��</RUBY>����װ��ô��

�����£��н����������֮���ģ�
��������������ܵ���������������
��������ǿ��ĵ������

�����������������Ѳ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1490a01">
����������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1500a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤��`��
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreatePlainEX("�}��д", 18010);
	CreateSE("SE01","se����_�z_�l����02");
	CreateSE("SE01b","se����_�z_�l����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,750,null,false);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	CreateSEEX("SEL01a","se���L_��҆��_����02_L");
	MusicStart("SEL01a",0,1000,0,100,null,true);
	SetFrequency("SEL01a", 10000, 1000, Dxl3);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 50, 750, null, true);
	FadeDelete("�}ɫ��", 800, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
��ǰ����ڿڷ������Ż�ҩζ��������
���������Ǳ�����ն���������

����׼�������Ƶ���ͼ�������������λ�ã�
������룬ת����ζ������Ϯ֮·���϶�ͷ̨��
���ݡ�
�������������ѣ���������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݏr", 18100, -250, -490, "cg/ev/resize/ev911_��҆�£��ɥե��`���չ�_l.jpg");
	Move("�}�ݏr", 300, -300, -200, DxlAuto, false);
	Fade("�}�ݏr", 300, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0761]
�����ǣ��Ҷ������á�
���Ų�֮����������֫��

���Ų�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1510a00">
��������װ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ų�����Ų��������äȡ�
	CreateSE("SE01","se���L_��x_��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSPadd("�}����", 18210, -923, -113, "cg/ev/resize/ev903_�����ŚݥХꥢ�`չ�__al.jpg");
	CreateTextureSP("�}��", 18200, -923, -113, "cg/ev/resize/ev903_�����ŚݥХꥢ�`չ�__al.jpg");
	SetVertex("�}��*", 1700, 440);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Wait(10);
	FadeDelete("�}ɫ��", 200, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���x��
	CreateSE("SE02","se���L_�n��_���Ľ��e02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	Move("�}�ݏr", 0, -256, -144, null, true);
	FadeDelete("�}��*", 300, false);
	SetBlur("�}�ݏr", true, 2, 500, 80, false);
	Zoom("�}�ݏr", 300, 750, 750, null, true);

//���o�ݳh�k��
	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE03","se���L_��҆��_����03");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 19990, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, false);
	DrawTransition("�}����", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Wait(300);

	WaitAction("�}����", null);
	PrintGO("�ϱ���", 30000);
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	MusicStart("SE06",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_01_1", true);
	Move("�}�ݱ���", 650, 0, @0, Dxl2, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
�������������¾���������Ҵ��ڿ�ǰ���
������
������ǧ��һ����

����ʾ�Ż�Ȫ֮·�Ĳ����������ҵĲู��
ȫ�����롪�����롣
���ܶ���֮Ҫ�������롣

�����˾������ַ�����ʩ����ȫ����Ԥ�ϡ�
����ֻ֮�����������ˡ�

�������ź���ʤ���ս��������������һ��
�Լ��������������е��Ƶ��˿���Ϸ��
����������˵���ڶ��ֶ�����������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//��׷�ĳh�𡣱ܤ����`��
	CreateSE("SE01","se���L_��҆��_����05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}��", 18050, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 250, true);

//������äȵ��Ƥ�줿�ꡣ
	CreateColorSP("�}��ܞ", 20000, "#FFFFFF");
	CreateSE("SE02","se���L_����_�����N_��");
	CreateSE("SE02a","se���L_�Ɖ�_���k02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("�}��*");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	DrawTransition("�}ɫ����", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	CloudZoomSet(17110);
	CloudZoomFade(0,false);
	CloudZoomVertex(10000,@512,@-144,null,false);
	CloudZoomStart(400,800,800,300,400);

	CreateTextureSP("�}�ݱ���", 17000, 0, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	SetShade("�}�ݱ���", MEDIUM);
	Zoom("�}�ݱ���", 0, 5000, 5000, null, true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainEX("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE02a") / 3;
	FadeDelete("�}ɫ����", 150, false);
	Zoom("�}��д", 0, 1150, 1150, null, true);
	FadeFR2("�}��д",0,500,$�Еr�g,0,0,30,Dxl3, true);
	Delete("�}��д");

	CreateSE("SE03a","se���L_����_���ϕN01");
	CreateTextureEX("�}�����}����", 17100, -2300, -100, "cg/st/3d�����˜�_�T��_ͨ��3b.png");

	SetBlur("�}�����}����", true, 2, 500, 120, false);
	Shake("�}�����}����", 2160000, 1, 3, 0, 0, 1000, null, false);
	Move("�}�ݱ���", 270000, @-1024, @576, null, false);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Fade("�}�����}����", 300, 1000, null, false);
	Move("�}�����}����", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	CreateSE("SE04","se���L_����_������02_L");
	MusicStart("SE04",2000,1000,0,1500,null,true);
	Move("�}�����}����", 20000, @30, @30, DxlAuto, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1520a00">
����������
��һ������ӽ�������ʱ�ͺ����Ѱ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1530a01">
��ȷʵ��
�����ң��������ű�����׾������
����仨��ˮ������С�������͸�ˣ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1540a00">
��׾�ӣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1550a01">
������ɵ���������ô���������������
��������ֵһ�ᣡ��

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1560a01">
������������������׾���ն�ϡ�
��ǰ������������µĲٿ��߲�Ҫ
����û��Ҫ���������飡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
�����еķ����ָ��������⡣
�������ǿ��С��Ҳ���ɱ�˶Է�����ֻҪ
�������Ǻ��޹ء�

��������Ѱ���Է�����
�����������Ƕ�ǽ���ܹ���Խ�����ϰ����ֶΡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1570a00">
����û�а취������Ƭ�ų���׽ס����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1580a01">
������������ѡ�
������Ƭ�ų���ɢ��ͬ���Ĵ�����
�ͻᱻ������ࡣ���ղŵõ���֤��������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1590a01">
��Ҳ�޴������ٶ���ͻ�ƣ����һ����
��ʣ�µġ���ֻ�ܵȴ�ɢ���ų�������
�ݽ߰ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1600a00">
��ɢ���ų��ġ�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1610a01">
��������ˣ����ǲ������塣
�����Ժ�����Ҳû��ϵ������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1620a01">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 19000, Center, Middle, "cg/ev/ev911_��҆�£��ɥե��`���չ�_.jpg");
	Fade("�}��", 300, 750, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
������������
��ɢ�����ų��Ķ�����

���ǵ����ɡ�
���������Ź��ڵĶ���Ҳ�ǡ�

{	FadeDelete("�}��", 600, false);}
�����ǣ���������ǴӺδ������ģ�
�����������ڲ��е����

��Ҳ������������ĳ�ַ�����
���ⲿ���ܹ�������
������ǵ�أ�Ӧ������ʹ�ã��ջ�ݽߡ�

�������־�ս���������������Ч��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1630a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
�������ƺ�����һ���������ʲô���⡣
������������������Ҷ�������ĳ�Ĭ��
һ��ڤ˼������������Ҵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1640a01">
����ע�⵽�ˡ���
�����˵�ս����ʽ��ô��������֣������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1650a00">
��ʲô��˼����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1660a01">
����������������硣
�����Ƕ�ȡ���������塭����

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1670a01">
���ղ���Ҳ˵�������ǶԿ�����ʱ��
��Ϊ��Ч�Ĺ�����
����������Ϊ��ȴֻʹ��һ�κ����Ҳ
û�����أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1680a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
����ôһ˵����ȷ����˼�顣
������û��Ҫ�������µؽ��������

��˳����ˡ���ʹ��������ֹס�ҵĽŲ��ͺá�
������ʧȥ������һ���ҷɲ�������֮��ͺñ�
��Ѽ���ˡ�

��Ϊ��û��ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="����" src="voice/ma04/013vs1690a00">
����Ϊ��������ľ޴�������𡭡�
�������Ǹ�����ô�Ҳ������
���Է��е���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1700a01">
���ǰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1710a00">
�������ѵ�����������߲���������
�����������������Գ���װ�׵ķ���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1720a01">
���ǵġ�
��Ӧ����ô���ǰɣ���

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1730a01">
�����ǣ��������ʳ����ˡ�
�������������嵽������������ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1740a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
���ò�����Ϊ��Űɱ��װ�׵�����ɡ�
��׼�����־������壬����ĵ���ȴ��
һ���ˣ�δ��̫�ֱ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1750a01">
������ô��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1760a00">
����������
�����˵����־������ǡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1770a00">
������ͨ���˼������Ӧ�ñ�ͨ���Ľ���
��Ҫ����������Ŷ԰�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1780a01">
���ǰ�����Ӧ��û��
����ʹ���Լ�Ϊ����������ɽ�֮�֣�
Ҳ��Ӳٿ������϶������Թ�����
����������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1790a01">
����һ��Ҳ�ܲ���˼�顪����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1800a00">
����һ��ȴ�������������ϡ�
�������Ƿ��������Ƿ���Ϊ�˴��ⲿ����
Ƿȱ�����������ڵ��ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1810a01">
��������
��ԭ����ˡ���

//��������
<voice name="����" class="��������" src="voice/ma04/013vs1820a01">
��������<RUBY text="����">��ȡ</RUBY>�������������
���������ڹ���������Ϊ���������ڵ����壡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1830a00">
��������������ˣ����ܶ��²����ˡ�
�����ڣ��Ǽһ�û�в���Դ����

//��������
<voice name="����" class="����" src="voice/ma04/013vs1840a00">
������ֻ�б����б����ŵ��ҡ�
�����ϵ��������������ѿݽߡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1850a01">
����ά�ֳ־�ս������Ƿȱ����
�޿ɱ���ġ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1860a00">
����������ų������ʺϳ־�ս��
����š���

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs1870a01">
����ô������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs1880a00">
���š�
������Ҫ������ֻ���������ƶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se���L_����_���ϕN01");
	Move("�}�����}����", 200, @30, @-20, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, false);
	DrawDelete("�}ɫ��", 150, 100, "slide_08_00_0", false);
	Move("�}�����}����", 200, @2048, @576, null, true);

	WaitKey(600);

	CreateColorSP("�}��ܞ", 20000, "#000000");
	DrawTransition("�}��ܞ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	CloudZoomDelete(0,false);

//��Ҋ��ϯ
//�����L���h�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateSE("SEL01","se���L_����_���Б��L������҆��01_L");
	OnBG(100,"bg046_���΍u�Q�y̨_03.jpg");
	FadeBG(0,true);
	MusicStart("SEL01",1000,750,0,1000,null,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1890b02">
�������Է��ı�ս�������˰�����

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1900b02">
���Ӷ�ţ��ɶ�ţʿ�ˡ�
�������Ѿ�������ʵ������������ô��
���ж��µ���졣�������׵�����

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1910b02">
�����ǣ���û��ʲô���߱�����
�������������ˡ�����������Ѿ���⵽
�Լ����������޴����ӣ����������ۡ�
����Գ��������顣��

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1920b02">
��ѩ��е����֣�Ҳ���ǲ�����⡣
��������ᳵ��·֮�˶��ţ�
��ȷͦ���ѵġ�˵ʲô��Ҫһ֧��ӣ�
Ҳδ�ؾ��ǿ�Ѩ���硭����

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1930b22">
����˵ѽ����˵��������ʲô����
���µ�����һ�û�õ�
�κν���Ŷ����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1940b02">
���������������⡣��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1950b22">
��û�������������飬������û������˵������
����һﵱ����˵��ɺ���
֮��Ķ����ˣ���

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1960b22">
��˵��������˵��������ء�
�������˵�Ů�˸������ѻ�ɫ���ֵ��˿���
����Ϊ�����൱�ڳ�����Ծ������ں���
�ڴ��������ǰ���·�������

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1970b22">
����໣�
�����뿴��
�����뱻���ɳ����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs1980b02">
�������ƺ���תΪ�־�ս�ķ����ˡ�
������Ǳ�����Ч�𣿡�

{	SetVolume("SEL*", 5000, 0, null);
	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs1990b22">
����������ɶ�����־�ս��
�������ǿ����ˡ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2000b02">
��˵������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2010b22">
��ʲô˵����˵���ģ�����������ѽ��
���Ƕ����ִ��ֲ�����Ҫ׽ס���ܵ�
���ˣ��������̾ͻ����Ĵ�������

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2020b22">
������Է����ӱ����ڴ�֮ǰ�ͻᱻ
��ס�ˡ�������������û�����ˡ�
����Ͷ���˹�����

{	FwC("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2030b02">
������������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2040b02">
���������������ȱ�ݱ���������

{	FwC("cg/fw/fw���L_Ц��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2050b22">
��ȱ�����ã�
������ȼ�Ϲ޾����´�������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2060b02">
��ȼ�Ϲޣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2070b22">
���������Ǹ����ͷ�������
��Դ����
��������ֹͣ�����������¼һ
һ��ʱ�������������ˡ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2080b02">
���ǾͿ�㰲�š���

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2090b22">
��������ϧ���ǣ���ȼ�Ϲ޺���
�ﱸ��ѽ��
�����ϡ�١�������������
�ӻ�����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2100b02">
�����ǣ���滹���еģ��԰ɣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2110b22">
��������˵ѽ�������¡�
��������о���û�����ء�
�Ժ�Ҳ���ü�����ȥѽ����

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2120b22">
����ô������㽫�޴������
ȼ�Ϲ��˷�������Ī�������
��Ź��ѽ��
��ι��˵����ôǳ�Եĵ����㵹�ǿ�Ū���ס���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2130b02">
��ʹ�á���

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2140b22">
����������������!?
���쵰������ʿɶ�ֹ���ҿ����������������͵�
�����浽���ڵġ��������������ռ���������
Ҳ�����޶ȵģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㥭��
	CreateSE("SE01","se���L_�|��_ȭ�|����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(200);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2150b22">
��������

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2160b02">
��������
�����ʡ�����

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2170b02">
��ֻ��Ӣ�ۡ�ʥ�˺����������Լ���
����֮��
���������е���һ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2180b22">
�������١�
����ɵ���𣿡�

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/013vs2190b22">
�������������սᡱ���־�����
�Ҵ��������š���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`��
	CreateSE("SE01","se���L_�|��_ȭ�|�k�h01");
	CreateSE("SE01a","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("�}�ե�å����", 300, true);

	SetNwC("cg/fw/nw�о��T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs2200e068">
������������

//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs2210e068">
������!!��

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2220b02">
���������ְ�����ڿ�ʼ�������ˡ���

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/013vs2230b02">
��ϣ������Ϊһ����������������ҵ�ָʾ����

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/013vs2240e068">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������֣ӻ�҆��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	DrawDelete("�ϱ���", 150, 100, "slide_01_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_0", true);

//�����|��
	CreateSE("SE01","se���L_��҆��_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}ɫ��", 600, true);

	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(30, 5);

//���رܙC��
	CreateSE("SE03","se���L_����_��ͻ�M02");
	MusicStart("SE03",0,1000,0,1000,null,false);
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

//���o�ݳh�֤��`��
	CreateSEEX("SEL04","se���L_��҆��_����02_L");
	MusicStart("SEL04",0,1000,0,100,null,true);
	SetFrequency("SEL04", 10000, 1000, Dxl3);
	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	SetVolume("SEL04", 100, 0, null);
	CreateSE("SE04a","se���L_��҆��_����03");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19990, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, false);
	DrawTransition("�}ɫ��", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	WaitAction("�}ɫ��", null);

//���رܤ�����`
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}��", 3000, -615, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	SetBlur("�}��", true, 2, 500, 80, false);
	Shake("�}��", 2160000, 1, 1, 0, 0, 1000, null, false);

	DrawDelete("�ϱ���", 150, 100, "slide_01_01_0", true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_0", true);

	CreateSE("SE05","se���L_����_��ͻ�M01");
	CreateColorEXadd("�}ɫ�o�ݳh", 19000, "#FFFFFF");
	DrawTransition("�}ɫ�o�ݳh", 0, 0, 50, 1000, null, "cg/data/slide_01_04_0.png", true);

	Fade("�}ɫ�o�ݳh", 2000, 1000, null, false);

	Wait(1500);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("�}��", 150, @-216, @200, Dxl2, false);

	Wait(100);

	DrawTransition("�}ɫ�o�ݳh", 200, 50, 1000, 1000, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("�ϱ���", 25000);
	CreateSE("SE06","se���L_����_���ϕN01");
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InRight, InTop, "cg/bg/resize/bg002_��a_03l.jpg");
	SetBlur("�}�ݱ���", true, 2, 500, 30, false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("�}�ݱ���", 800, @200, @-500, Dxl2, false);
	DrawDelete("�ϱ���", 150, 100, "slide_02_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);

	CreateTextureEX("�}�����}����", 17100, 400, -170, "cg/st/3d�����˜�_�T��_��xb.png");
	Zoom("�}�����}����", 0, 1500, 1500, null, true);
	Request("�}�����}����", Smoothing);
	SetBlur("�}�����}����", true, 2, 500, 100, true);
	Shake("�}�����}����", 2160000, 1, 2, 0, 0, 1000, null, false);
	Move("�}�ݱ���", 27000, @200, @0, null, false);
	Move("�}�����}����", 2000, @-200, @0, DxlAuto, false);
	Fade("�}�����}����", 300, 1000, null, true);

	Wait(1700);

	CreateSE("SE06a","se���L_����_���ϕN01");
	MusicStart("SE06a",0,1000,0,1500,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 250, 0, null, false);
	DrawDelete("�}ɫ��", 300, 100, "slide_08_00_1", false);
	Move("�}�����}����", 200, @-2000, @-200, Dxl2, false);

	Wait(500);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);
	Delete("�}ɫ��");
	Delete("�}�����}����");
	CreateTextureSP("�}�ݱ���", 17000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @200, @400, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_03_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
���Ϸ���ת�������·�����<RUBY text="�����">����</RUBY>�ߴ��������
���ϳ����롣��ת�������������ﲶ׽�������
��ʱ������ͻ�ƣ������ҫ������������෽��
�Ƶ�����󡪡�������

���ٽ��;ü��޵�<RUBY text="��">����</RUBY>ʹ������֨���졣��֪����
�������ٶȵĵ���������
΢��ľ���ͻ�������������õĸ��ʽᾧ
���˲����顣�亹�ڼ��������ʡ�

�����ֵļ���Ҳ�Ƿ���֮����
����Ӧ��˦�����ĵ�Ļ����˲����ǰ��չ����
��������ת����ȴ��ƫ���е��ٴ�
չ����ǰ�������㿪����һ�δ���ǰ�����֡�

�������β��������Ļ����ǿ�����˻��ڵľ�����
�о��Լ���������ڤ�ӵİڶ��˿���Цһ����
���λ�󶯵�����·���һ��ͻιס�ҵ��½�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2250a00">
���ҿ�û�������������������Ȥ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2260a01">
����ֱ���񵱽����������������ѽ��
��˳���ٺ�һ��С�������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���|��
	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(20, 20);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev909_��҆��_d.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev909_��҆��_d.jpg");
	Zoom("�}����", 200, 1200, 1200, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�����뤰��ܤ�
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureSP("�}��/�}�����}����", 19100, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	CreateSE("SE02","se���L_����_���ϕN01");
	Request("�}��/�}�����}����", Smoothing);
	Zoom("�}��/�}�����}����", 0, 850, 850, null, true);
	Move("�}��/�}�����}����", 0, @266, @0, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("�}��/�}�����}����", true, 2, 300, 100, true);
	Shake("�}��/�}�����}����", 5000, 1, 2, 0, 0, 1000, null, false);
	Move("�}��/�}�����}����", 1000, @-1500, @0, Axl2, false);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	Zoom("�}��", 500, 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
��������������ʱ�����ƶ�Խ��������
����֪��ʱ�����������ӵĴ��ݲ����Ѿ���ʧ��
�������ܿ����෴��ĳ��������

�����ꡪ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@MF*");
	CreateSE("SE01a","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateTextureEX("�}�ݱ���", 18000, -480, InBottom, "cg/ev/resize/ev909_��҆��_cm.jpg");
	Move("�}�ݱ���", 3000, @0, -220, DxlAuto, false);
	Fade("�}�ݱ���", 600, 1000, null, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2270a00">
���������Ѿ�ע�⵽���ǵ�Ŀ���ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2280a01">
��Ӧ���ǰɡ�
���������������з�����
ȴ��Զ������ճ������Χת��תȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
��ֻҪ������������Դ����������ɡ�
����֮��ԣ��Է�ѡ�����͹���

���ں��ص�����֮�У�����Ĳٿ�����ҧ���г�ô��
�������ڳ�Цʹ���˴���ս���ĵ����ء�
���ɹ���񡣻��޷�Ԥ���׼���

������Ҳֻ�ܾ�ȫ��Ӧս��
����ã������ҵ�ʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2290a00">
�������������٣���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2300a01">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 20000, "#FFFFFF");
	CreateTextureSPadd("�}����x��", 19005, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	CreateTextureSP("�}����x��", 19000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	Zoom("�}����x*", 0, 1300, 1300, null, true);
	SetBlur("�}����x��", true, 2, 500, 30, false);
	Zoom("�}����x*", 100, 1000, 1000, Dxl2, false);
	Fade("�}�ե�", 100, 0, null, false);
	FadeDelete("�}����x��", 300, true);

//�������`��Ļ
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	Wait(20);
	Delete("�}����x*");
	FadeDelete("�}ɫ��", 0, true);
	MFlash(20, 20);
	CreateTextureSPadd("�}����", 18100, -700, Middle, "cg/ev/resize/ev909_��҆��_bl.jpg");
	CreateTextureSP("�}��", 18000, -700, Middle, "cg/ev/resize/ev909_��҆��_bl.jpg");
	Request("�}��*", Smoothing);
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Zoom("�}����", 500, 1200, 1200, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(500);

//�������`�ر�
	CreateSE("SE03","se����_��x_��������02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18010, -1000, -480, "cg/ev/resize/ev904_�����ޥ��ͥåȥ��`�ƥ���_al.jpg");
	CreateTextureSP("�}��", 18000, -1000, -480, "cg/ev/resize/ev904_�����ޥ��ͥåȥ��`�ƥ���_al.jpg");
	SetVertex("�}��*", 1587, 634);
	Zoom("�}����", 0, 1500, 1500, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Move("�}��*", 200, -680, -210, Dxl2, false);
	Shake("�}��", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateSE("SE03a","se����_��x_��������01");
	MusicStart("SE03a",0,1000,0,1200,null,false);
	CreateTextureSPadd("�}����", 18010, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");
	SetVertex("�}��*", 795, 315);
	Zoom("�}����", 0, 1500, 1500, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(300);

	CreateSE("SE03b","se���L_����_���ϕN01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 18010, Center, -610, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	CreateTextureSP("�}��", 18000, Center, -610, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	Zoom("�}����", 0, 1500, 1500, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
���·������㣬������ȫ��λ�½ض�����
�����ü��ٻ�����������������ÿһ˿��϶��

��������ͨ�ķ����������类��׽�˰ɡ�
�����˵��ǣ��������õĲ��ɣ���ֻ��������ͷ���޹�
��ֱ�Ӷ����������ֱ����

��������Ҫ��������ʱ�ء�
������ֻ�е��˲��м��ޡ���ʹ�Ҳ���
�ȶ���һ������ȱ��������������
������˥��Ҳ�����·������������½���

�������Ļ��������������������
��С�ں�����������˲�䣬ʤ���㶨���ˡ�
�������ҷ�����������������Ŀ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2310a01">
�����˵��ٶȳٻ������ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2320a00">
��ȷ���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2330a01">
�����������Ǹ��ٶ۵������ˣ�����Ҳû
�������
��������ȷ��˥���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
�����ڡ�
�����ҵ�ǹ������ڳ��������Ǿ����������ѵ�
װ���˵��ֲ��ɣ�������ʹ������ˣ�ֻҪ�������ȣ�
����Ҳ��ʧȥ���塣

��֮��ֻҪ�������ص�Ӧս�ͺá���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@MF*");
	PrintGO("�ϱ���", 25000);
	CreateTextureSPadd("�}�ݱ�����", 18010, -120, -70, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}�ݱ���", 18000, -120, -70, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�}�ݱ���*", 6000, -60, -70, DxlAuto, false);
	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}�ݱ�����", 800, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2340a01">
����������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs2350a01">
��ʲô����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2360a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("�}�ݻĳh��", 18010, Center, Middle, "cg/ev/ev913_��҆��׷β��.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
������Ԥ�ס�
���ӵ��ı�����ͻȻ��ʧ�����ˡ�

{	CreateSE("SE01","se���L_�Ɖ�_���k02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	Fade("�}�ݻĳh��", 300, 850, null, false);}
��ȡ����֮��������ǣ�
�����������ڵ���

{	CreateSE("SE01a","se���L_�Ɖ�_���k02");
	MusicStart("SE01a",0,1000,0,1150,null,false);}
�����ķ����͵������������
���ٶȳٻ���

��������Ӧ�ܿ졣
������ǹ�ڵ��ӵ���˵���ǲ�ֵһ��ĵ��١�

��<RUBY text="����������������������">�����ӵ�֮���ٿ�ʼ���</RUBY>Ҳ�������ü���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2370a00">
�������˱ܡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2380a01">
���š�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}����", 17000, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	DrawDelete("�ϱ���", 200, 100, "slide_01_01_1", true);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
�����嵹����ߣ�תһȦ����������ӵ������
���ӵ�Ҳû������ر�Ļ�����
ͽȻ���ӹ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2390a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2400a01">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2410a00">
����ֵ��ӵ�����
������ѹ������ֻ���������ͷ��
����һ�ѳ�ì����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2420a01">
���ǰ�����
��������������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs2430a01">
����������?!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2440a00">
��ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ�����揎
	CreateSE("SE01","se���L_��҆��_�ӥå��Ƅ�04");
	MusicStart("SE01",0,800,0,1200,null,false);
	SetVolume("SE01", 200, 600, null);
	CreateTextureSP("�}�ݻĳh��", 18000, Center, Middle, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	Zoom("�}�ݻĳh��", 0, 1000, 1000, null, false);
	Zoom("�}�ݻĳh��", 200, 800, 800, Dxl2, false);
	Shake("�}�ݻĳh��", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh����", 200, true);

	Wait(200);

	CreateSE("SE01a","se���L_��҆��_�ӥå��Ƅ�04");
	MusicStart("SE01a",0,600,0,800,null,false);
	SetVolume("SE01a", 200, 1000, null);
	CreateTextureSPadd("�}�ݻĳh������", 18110, -358, -198, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18100, -358, -198, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	Zoom("�}�ݻĳh����*", 0, 800, 800, null, false);
	Request("�}�ݻĳh����*", Smoothing);
	SetBlur("�}�ݻĳh����", true, 2, 500, 30, false);
	DrawTransition("�}�ݻĳh����*", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", false);

	Move("�}�ݻĳh����*", 200, -530, -310, Dxl2, false);
	Zoom("�}�ݻĳh����*", 200, 1200, 1200, Dxl2, false);
	Shake("�}�ݻĳh����", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 400, true);

//���ե���ͥ롤�ӥå�
	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18310, -30, -30, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh����", 18300, -30, -30, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh����*", 256, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE04","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, -30, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, -30, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	SetVertex("�}�ݻĳh����*", 256, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE05","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18510, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18500, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE06","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18610, -410, -30, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18600, -410, -30, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
���ӵ��ֻ����ˡ�
�����ۻ�ͷ�����������Լ�����־һ�㡪���ٴ���׼��
�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2450a00">
��ʲ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2460a00">
������ʲô������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2470a01">
����ܿ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//���ر�
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("�}�ݻĳh��*");
	CreateTextureSPadd("�}����", 18010, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);
	FadeDelete("�}����", 200, true);

//���Ҥ��Ҥ����Ӥ��^���Ƥ椯�ӥå�
	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}������", 18310, -90, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	CreateTextureSP("�}����", 18300, -90, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	SetVertex("�}����*", 256, 144);
	Zoom("�}������", 0, 1500, 1500, null, false);
	Zoom("�}������", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 200, true);

	CreateSE("SE04","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}������", 18410, -90, -80, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}����", 18400, -90, -80, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}����*", 256, 720);
	Zoom("�}������", 0, 1500, 1500, null, false);
	Zoom("�}������", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 200, true);

	CreateSE("SE05","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("�}������", 18510, -410, -80, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}����", 18500, -410, -80, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}����*", 1280, 720);
	Zoom("�}������", 0, 1500, 1500, null, false);
	Zoom("�}������", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 200, true);

	CreateSE("SE06","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}������", 18610, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}����", 18600, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}����*", 1280, 144);
	Zoom("�}������", 0, 1500, 1500, null, false);
	Zoom("�}������", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
���˱ܡ���ء�
���ٶ���ȫû�б仯�����ӵ��Ĵ�С����״������
�����к���˺��ɲ���С���Ҫ���ǹ�����
����Ҳ���Ѵ���֮����

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	CreateTextureEXadd("�}�ݻı��帲", 18010, InLeft, -50, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}�ݻı���", 18000, InLeft, -50, "cg/ev/resize/ev909_��҆��_l.jpg");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�}�ݻı���*", 800, -100, @0, Dxl2, false);
	FadeDelete("�ϱ���", 300, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2480a01">
�����塪������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2490a00">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ä��|��
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}�ݻı��帲", 0, 800, null, true);
	Zoom("�}�ݻı��帲", 0, 1100, 1100, null, true);
	Shake("�}�ݻı��帲", 216000, 4, 1, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}ɫ��", 150, true);

	MFlash(30, 10);

	Wait(300);

//���ܤ��롣����äȱ�����
	CreateSE("SE03","se���L_����_��ͻ�M02");
	MusicStart("SE03",0,1000,0,1250,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("�}�ݻ�*");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateSE("SE04","se���L_����_�z_���01");
	CreateSE("SE04a","se���L_�Ɖ�_���k02");
	DrawTransition("�}ɫ����", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Delete("�}ɫ�\");

	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE04a") / 3;
	FadeDelete("�}ɫ����", 300, false);
	Shake("�}��д", $�Еr�g, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
����Ȼ����
����Ȼ��Ҫ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2500a01">
������װ���е���
����С�ģ������Ѿ��ۻ������ˣ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2510a00">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
�����е�������֧�������ӳ�������װ�׵���Ҫ��λ��
�����ﱻ�����ƻ����Ͳ����׹�䡣

����Ϊ��һ��Զ���Լ����������ٴο�����
������˿յ���������Ц�ؿ����ң�
�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2520a01">
��������
�������ӵ����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2530a00">
����ô��û�꣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥå�
	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	CreateTextureSPadd("�}�ݻĳh������", 18310, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh����", 18300, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh����*", 256, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	MusicStart("SE03",0,1000,0,900,null,false);
	Move("�}�ݻĳh����*", 200, -90, -30, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE04","se���L_��҆��_�ӥå��Ƅ�01");
	CreateTextureSPadd("�}�ݻĳh������", 18410, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	MusicStart("SE04",0,1000,0,1100,null,false);
	Move("�}�ݻĳh����*", 200, -420, -80, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//���ܤ��`��
	CreateSE("SE05","se���L_����_��ͻ�M01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, Center, InTop, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @-288, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	Wait(300);

//���|��
	CreateSE("SE06","se���L_�|��_�C�v�|����02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("�}�ݻ���", 18010, -250, -280, "cg/ev/resize/ev909_��҆��_bl.jpg");
	CreateTextureSP("�}�ݻ�", 18000, -250, -280, "cg/ev/resize/ev909_��҆��_bl.jpg");
	Zoom("�}�ݻ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݻ���", 300, 1000, 1000, Dxl2, false);
	Shake("�}�ݻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻ���", 200, true);

	Wait(300);

//���˩`���`�Ʃ`��
	CreateSE("SE07","se���L_����_���ϕN01");
	MusicStart("SE07",0,1000,0,1500,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, InRight, InTop, "cg/bg/bg204_�����ر���b_03.jpg");
	CreateSE("SE07a","se���L_����_���ϕN01");
	CreateTextureEX("�}�����}����", 17100, -1450, 200, "cg/st/3d�����˜�_�T��_ͨ��4b.png");
	SetBlur("�}�����}����", true, 2, 500, 120, false);

	MusicStart("SE07a",0,1000,0,1000,null,false);
	Fade("�}�����}����", 300, 1000, null, false);
	BezierMove("�}�����}����", 950, (-1450,200){-1820,140}{-1770,-240}(-1660,-190), Dxl1, false);
	Move("�}�ݱ���", 150000, -100, -30, DxlAuto, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);
	Shake("�}�����}����", 2160000, 1, 3, 0, 0, 1000, null, false);

	Wait(800);

	CreateSE("SE07b","se���L_����_������02_L");
	MusicStart("SE07b",2000,1000,0,1500,null,true);

	Move("�}�����}����", 20000, -1630, -140, DxlAuto, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2540a01">
������ֵ��ڣ����Ǻ��Ӱ�ģ���ҵĴų�֮�ܣ�
����ֳ����Զ�׷�ٵ��ӵ�������

//��������
<voice name="����" class="��������" src="voice/ma04/013vs2550a01">
����Ȥζ�����䵽����Ҫ��������
��������ĳ���������ˣ����İ�?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2560a00">
����Ҳ�����ָо�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
�����ŷ�����·�Զ�׷β���ӵ���
���������Ǿ�ȷ��׼��ǹ�������

����Ͷ��·�ˡ�
��Ҳ��˴�����ĩ·��

��������������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���֤��`��
	CreateSEEX("SEL01","se���L_��҆��_����02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreatePlainSPadd("�}��д", 18900);
	CreateTextureSPadd("�}�݄���", 19000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Delete("�}�����}����*");
	Delete("�}�ݱ���*");

	SetBlur("�}��д", true, 2, 500, 30, false);
	Zoom("�}��д", 0, 1150, 1150, null, true);
	Zoom("�}��д", 300, 1000, 1000, null, false);
	DrawDelete("�}��д", 300, 100, "circle_01_00_0", false);

	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", true);

//���ӥå����k
	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18310, -30, -30, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh����", 18300, -30, -30, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh����*", 256, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE04","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, -30, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, -30, -258, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	SetVertex("�}�ݻĳh����*", 256, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE05","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18510, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18500, -410, -258, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE06","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18610, -410, -30, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18600, -410, -30, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//���ر�
	PrintGO("�ϱ���", 30000);
	CreateSE("SE07","se���L_����_���ϕN01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InRight, Middle, "cg/bg/resize/bg001_��a_03.jpg");
	CreateTextureSP("�}�ݴ������}", 17100, 1024, Middle, "cg/st/3d�����˜�_�T��_��x.png");
	Shake("�}�ݴ������}", 216000, 0, 2, 0, 0, 1000, DxlAuto, false);
	SetBlur("�}�ݴ������}", true, 2, 500, 30, true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	Move("�}�ݱ���", 5000, @576, @0, null, false);
	Move("�}�ݴ������}", 300, @-1024, @0, Dxl2, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	Wait(150);

	Move("�}�ݴ������}", 300, @-30, @0, null, true);

	Wait(200);

	CreateSE("SE07a","se���L_����_���ϕN01");
	MusicStart("SE07a",0,1000,0,1500,null,false);
	Move("�}�ݴ������}", 300, @-2000, @-150, Axl2, true);

//���o�ݳh�k��
	SetVolume("SEL*", 100, 0, null);
	CreateSE("SE08","se���L_��҆��_����03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	Wait(300);

//��ֱ��
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}����", 17000, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSPadd("�}������", 17010, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateSE("SE10","se���L_����_�����N_��");
	MusicStart("SE10",0,1000,0,1000,null,false);
	Shake("�}����", 3000, 0, 30, 0, 0, 500, null, false);
	FadeFR2("�}������",0,500,3000,@0,@0,100,Dxl2, false);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 3000, true);
	FadeDelete("�}������", 1000, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2570a00">
������������!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2580a01">
���������װ���е�����ֱ����
���󲿷�̼����������״���ԣ��޷��ָ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
��û����ʹ��
������֪���Ÿ����¡�

�����������һģһ������ֺ�ⶼ�������á�
ֻ�г����ںڰ��еı��䡣
����ʹ�д����Ļָ���������Ҳ��Ҫ����ʱ�䡣

������������£��һ������ܷ񰾵�Ϊ��Щ���·��ĵ�
ʱ��
�������ҽ���ţ������ۻ����������������д�
һ�������Ŵ��������ܡ���ӹ���ɡ�

��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥå����k
	CreateSE("SE01","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh��һ��", 18310, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh��һ", 18300, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh��һ*", 256, 720);
	Zoom("�}�ݻĳh��һ��", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh��һ*", 200, -90, -80, Dxl2, false);
	Zoom("�}�ݻĳh��һ��", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh��һ", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh��һ��", 200, true);

	CreateSE("SE02","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);

	Move("�}�ݻĳh����*", 200, -410, -80, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18510, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18500, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh����*", center, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);

	Move("�}�ݻĳh����*", 200, -410, -205, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//���ܤ���`��
	CreateSE("SE04","se���L_����_��ͻ�M01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @0, @288, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//���|��
	CreateSE("SE06","se���L_�|��_�C�v�|����02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("�}�ݻ���", 18010, -110, -20, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}�ݻ�", 18000, -110, -20, "cg/ev/resize/ev909_��҆��_dl.jpg");
	Zoom("�}�ݻ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻ���", 200, true);

	Wait(300);

//���ܤ��뤱�ɩ`��
	CreateSE("SE07","se���L_����_���ϕN01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ݻ�");

	CreateTextureSPadd("�}�ݴ�����", 18010, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}�ݴ���", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}�ݴ�����", 0, 1300, 1300, null, false);
	Zoom("�}�ݴ�����", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݴ���", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}�ݴ���*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}�ݴ�����", 200, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2590a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2600a01">
�����У���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥå����k
//���ӥå����k
	CreateSE("SE01","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh��һ��", 18310, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh��һ", 18300, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh��һ*", 256, 720);
	Zoom("�}�ݻĳh��һ��", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh��һ*", 200, -90, -80, Dxl2, false);
	Zoom("�}�ݻĳh��һ��", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh��һ", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh��һ��", 200, true);

	CreateSE("SE02","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);

	Move("�}�ݻĳh����*", 200, -410, -80, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18510, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18500, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh����*", center, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);

	Move("�}�ݻĳh����*", 200, -410, -205, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//���ܤ���`��
	CreateSE("SE04","se���L_����_��ͻ�M01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, InRight, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @216, @288, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//���|�ġ�
	CreateSE("SE06","se���L_�|��_�C�v�|����02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("�}�ݻ���", 18010, -300, -240, "cg/ev/resize/ev909_��҆��_bl.jpg");
	CreateTextureSP("�}�ݻ�", 18000, -300, -240, "cg/ev/resize/ev909_��҆��_bl.jpg");
	Zoom("�}�ݻ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻ���", 200, true);

	Wait(300);

//��ʳ�餤�ޤ����������äȡ�
	CreateSE("SE07","se���L_����_��ͻ�M02");
	MusicStart("SE07",0,1000,0,1250,null,false);
	CreateColorEXadd("�}ɫ��", 30000, "#FFFFFF");
	SetBlur("�}�ݻ�", true, 3, 500, 30, false);
	Zoom("�}�ݻ�", 150, 1500, 1500, Dxl2, false);
	Fade("�}ɫ��", 150, 1000, Axl2, false);
	DrawTransition("�}ɫ��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("�}�ݻ�*");
	Delete("@MF*");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateSE("SE07a","se���L_����_�z_���02");
	CreateSE("SE07b","se���L_����_�z��������03");
	DrawTransition("�}ɫ����", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("�}ɫ��");

	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE07b")/2;
	FadeDelete("�}ɫ����", 300, false);
	Shake("�}��д", $�Еr�g, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1200]
���������ļ��޵㡪��
�����ܵ������ϴ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1210]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2610a00">
�������ء�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2620a01">
������������
��������ȥ�ᱻ���ܵģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1220]
������˵��Ҳ���ס�
���������������<RUBY text="��������">��;ĩ·</RUBY>��

��������·�����������ҵ������Ѿ�������Ԯ��
����������ʹ��һ�о�ʤ��������ʤ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥåȶ��k
	CreateSE("SE01","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh��һ��", 18310, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh��һ", 18300, InLeft, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh��һ*", 256, 720);
	Zoom("�}�ݻĳh��һ��", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh��һ*", 200, -410, -230, Dxl2, false);
	Zoom("�}�ݻĳh��һ��", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh��һ", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh��һ��", 200, true);

	CreateSE("SE02","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��m.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);

	Move("�}�ݻĳh����*", 200, -110, -90, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//���ܤ���
	CreateSE("SE03","se���L_����_��ͻ�M01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 17000, InLeft, InTop, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}�ݱ���", 650, @-512, @-288, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_03_01_0", true);

	WaitKey(500);

//���֤��`��
	CreateSE("SE03","se����_�z_�l����01");
	CreateSE("SE03b","se����_�z_�l����02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}�ݻ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻ���", 200, true);

	CreateSEEX("SEL01","se���L_��҆��_����02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreatePlainSPadd("�}��д", 18900);
	CreateTextureSPadd("�}�݄���", 19000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	SetBlur("�}��д", true, 2, 500, 30, false);
	Zoom("�}��д", 0, 1150, 1150, null, true);
	Zoom("�}��д", 3000, 1000, 1000, null, false);
	DrawDelete("�}��д", 3000, 100, "circle_01_00_0", false);

	Zoom("�}�݄���", 3000, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 3000, 0, null, false);
	DrawDelete("�}�݄���", 3000, 100, "circle_01_00_1", false);

	Wait(3000);

//���o�ݳh
	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	Wait(300);

	SetVolume("SE*", 5000, 0, null);
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateColorEXadd("�}�ݻĸo", 19000, "#FFFFFF");
	CreateTextureSP("�}�ݴ���", 18000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	DrawTransition("�}�ݻĸo", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Fade("�}�ݻĸo", 5000, 750, null, false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1230]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2630a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1240]
���˱ܡ���
�����������ӿ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥå��w��
	CreateSE("SE02","se���L_��҆��_�ӥå��Ƅ�04");
	MusicStart("SE02",0,600,0,800,null,false);
	SetVolume("SE02", 200, 1000, null);
	CreateTextureSPadd("�}�ݻĳh��һ��", 19110, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��l.jpg");
	CreateTextureSP("�}�ݻĳh��һ", 19100, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��l.jpg");

	Delete("�}�ݴ���*");
	Delete("�}�ݻĸo");
	Zoom("�}�ݻĳh��һ", 0, 800, 800, null, false);
	Request("�}�ݻĳh��һ*", Smoothing);
	SetBlur("�}�ݻĳh��һ��", true, 2, 500, 30, false);
	DrawTransition("�}�ݻĳh��һ*", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Move("�}�ݻĳh��һ*", 200, 250, 70, Dxl2, false);
	Zoom("�}�ݻĳh��һ", 200, 1500, 1500, Dxl2, false);
	Zoom("�}�ݻĳh��һ��", 200, 2250, 2250, Dxl2, false);
	Shake("�}�ݻĳh��һ", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh��һ��", 400, true);

//��ֱ��
	CreateColorEXadd("�}ɫ��", 30000, "#FFFFFF");
	SetBlur("�}�ݻ�", true, 3, 500, 30, false);
	Zoom("�}�ݻ�", 150, 1500, 1500, Dxl2, false);
	Fade("�}ɫ��", 150, 1000, Axl2, false);
	DrawTransition("�}ɫ��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("�}�ݻ�*");
	CreateColorSPover("�}ɫ����", 20000, "#CC0000");
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateSE("SE07a","se���L_�n��_�nͻ01");
	CreateSE("SE07b","se���L_����_�z��������03");
	DrawTransition("�}ɫ����", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("�}ɫ��");

	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 50, false);
	$�Еr�g=RemainTime("SE07b")/2;
	FadeDelete("�}ɫ����", 300, false);
	Shake("�}��д", $�Еr�g, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("�}��д");

	CreatePlainSP("�}��д", 30000);
	CreateTextureSP("�}�ݴ������}", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}�ݴ������}", 0, @140, @0, null, true);
	Shake("�}�ݴ������}", 800, 4, 2, 0, 0, 1000, Dxl2, false);
	Move("�}�ݴ������}", 800, @90, @20, DxlAuto, false);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1250]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2640a00">
���°�?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2650a01">
�����á�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥåȲФ����k
	CreateSE("SE01","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݻĳh��һ��", 18310, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	CreateTextureSP("�}�ݻĳh��һ", 18300, InRight, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex02.jpg");
	SetVertex("�}�ݻĳh��һ*", 256, 144);
	Zoom("�}�ݻĳh��һ��", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh��һ*", 200, -90, -220, Dxl2, false);
	Zoom("�}�ݻĳh��һ��", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh��һ", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh��һ��", 200, true);

	CreateSE("SE02","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18410, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	CreateTextureSP("�}�ݻĳh����", 18400, InLeft, InBottom, "cg/ev/resize/ev913_��҆��׷β��mex01.jpg");
	SetVertex("�}�ݻĳh����*", 1280, 144);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh����*", 200, -420, -80, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

	CreateSE("SE03","se���L_��҆��_�ӥå��Ƅ�01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("�}�ݻĳh������", 18510, Center, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	CreateTextureSP("�}�ݻĳh����", 18500, Center, InTop, "cg/ev/resize/ev913_��҆��׷β��mex03.jpg");
	SetVertex("�}�ݻĳh����*", center, 720);
	Zoom("�}�ݻĳh������", 0, 1500, 1500, null, false);
	Move("�}�ݻĳh����*", 200, -420, -220, Dxl2, false);
	Zoom("�}�ݻĳh������", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݻĳh����", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݻĳh������", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1260]
����·��������
��ȫ�ޡ�

�����ڵ�����һ·��ͨ������
���ܹ��ӱܵķ�λ��׷β��������

���ұ������ˡ�
����Ͷ����

������Ϊֹ��
���һ�����

���һ������ڴˡ�
��������������<RUBY text="��������">�����ڴ�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("�}�ݻ�", 19000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Request("�}�ݻ�", Smoothing);
	Delete("�}�ݻ�҆�h��*");
	Zoom("�}�ݻ�", 10000, 1500, 1500, DxlAuto, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1270]
�������������ǡ�
���Ҿ����Ƿ����������ڴ��أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);
	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 300, 1000, Dxl2, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1280]
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/ma04/013vs2660a14">
�����෴��
�������԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se����_��x_�k��03");
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("�ϱ���", 100, true);
	WaitKey(200);
	FadeDelete("�}��ܞ", 300, true);

	SoundPlay("@mbgm12",0,1000,true);

	CreateWindow("�}����", 15000, 0, 0,1024, 288, false);
	CreateWindow("�}����", 15000, 0, 288, 1024, 576, false);
	SetAlias("�}����","�}����");
	SetAlias("�}����","�}����");

	CreateColorSP("�}����/�}ɫ100", 15000, "Black");
	CreateColorSP("�}����/�}ɫ100", 15000, "Black");

	CreateWindow("�}���k", 15000, 512, 0,400, 576, false);
	SetAlias("�}���k","�}���k");
	CreateTextureEX("�}���k/�}EV100", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}���k/�}EV100", Smoothing);
	Zoom("�}���k/�}EV100", 0, 2000, 2000, null, true);
	Move("�}���k/�}EV100", 0, @-300, @0, null, false);

	CreateTextureEX("�}���k/�}EV200", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("�}���k/�}EV200", Smoothing);
	Zoom("�}���k/�}EV200", 0, 2000, 2000, null, true);
	Move("�}���k/�}EV200", 0, @-300, @0, null, false);

	Delete("�\Ļ��");

	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}EV100", Smoothing);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	Move("�}EV100", 0, @+400, @+288, null, false);
	Request("�}EV200", Smoothing);
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Move("�}EV200", 0, @0, @+288, null, false);

	Move("�}EV100", 500, @-400, @0, Dxl1, false);
	Move("�}����", 300, @0, @-200, null, false);
	Move("�}����", 300, @0, @+200, null, true);

	WaitAction("�}EV100", null);

	CreateColorEXadd("�}ɫ100", 14001, "White");

	OnSE("se����_�z_װ��01",1000);

	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);

	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,true);

	CreateColorEX("�}ɫ100", 14005, "Black");
	Fade("�}ɫ100", 0, 700, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("�}���k/�}EV100", 0, 1000, null, false);
	DrawTransition("�}���k/�}EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("�}ɫ100", 10, "White");

	Wait(300);

	Fade("�}���k/�}EV200", 0, 1000, null, false);
	Shake("�}���k/�}EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se����_늓�_���01",700);

	CreateSE("SEL01","se����_늓�_���01");
	MusicStart("SEL01",0,700,0,1000,null,true);

	CreateColorEXadd("�}���k/�}200", 20000, #99CCFF);
	Fade("�}���k/�}200", 10, 600, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 500, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 700, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 500, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 800, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1290]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2670a00">
��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1300]
��������<RUBY text="����">����</RUBY>��

�������µ���Ѳ���������������䶨���衣
���ִ�����֮���ٴ����������

����ת��
������ת��Դ֮��������¡¡֮���ҡ�

�����������������Ʊ�����������
����������������˽���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1310]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2680a00">
����װ�����ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2690a01">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȫ�����늤��`�����ݩ`��
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SEL01", 1000, 0, null);

	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 20010, "#FFFFFF");

	Delete("�}����/*");
	Delete("�}����/*");
	Delete("�}���k/*");

	Delete("�}����");
	Delete("�}����");
	Delete("�}���k");

	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureSP("�}��", 4000, -440, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_cm.jpg");

	Wait(50);

	FadeDelete("�}ɫ��", 100, false);

	Move("�}��", 300, -380, @0, Dxl2, false);
	Fade("�}��", 300, 1000, null, true);
	CreateSE("SEL01","se����_늓�_���02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("�ץ�}��", 4020, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	CreateTextureEXsub("�ץ�}", 4010, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	SetVertex("�ץ�}", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1320]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2700a00">
����Űε�������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ĥ��ޤ�����
	CreateColorSPadd("�}ɫ��", 30000, "#FFFFFF");

	Wait(10);

	SetVolume("SE*", 100, 0, null);
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateSE("SE01","se����_늓�_���01");
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/resize/ef030_����늴Œi��am.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/resize/ef030_����늴Œi��am.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Delete("�ץ�*");
	Delete("��*");
	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 700, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(500);

//���ӥå����C�򤹤٤Ɣ؉�
	CreateColorSPadd("�}ɫ��", 30000, "#FFFFFF");

	Wait(10);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݻĳh��", 3110, Center, Middle, "cg/ev/ev913_��҆��׷β��.jpg");
	CreateTextureSPover("�}����", 3100, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	SetVertex("�}����", 580, 230);
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�ϱ���");
	Delete("�}ɫ��");
	Fade("�}�ݻĳh��", 0, 750, null, true);
	FadeDelete("�}�ݻĳh��", 500, false);
	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, false);

	Wait(500);

//���o�ݳh�k��
	CreateSE("SE08","se���L_��҆��_����03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݻ���", 18210, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	CreateTextureSP("�}�ݻ�", 18200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");

	SetBlur("�}�ݻ���", true, 2, 500, 30, false);
	Zoom("�}�ݻ���", 0, 1150, 1150, null, true);
	Zoom("�}�ݻ���", 300, 1000, 1000, null, false);
	Shake("�}�ݻ���", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�}�ݻ���", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	WaitKey(2000);

//�����줹��ǻرܩ`��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}��*");
	Fade("�}ɫ��", 0, 750, null, true);
	CreateTextureSP("�}�ݱ���", 17000, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	SetVolume("SE08", 3000, 0, null);
	FadeDelete("�}ɫ��", 650, false);
	Move("�}�ݱ���", 650, @0, @288, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1330]
����Ҫ��
�����������ߡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}�ݱ���", null);

//��һ˲�����쥤������
	CreateSE("SE01","se����_��_��Ġ����02");
	CreatePlainSP("�}��ʧ��һ", 20000);
	CreatePlainSP("�}��ʧ���", 19990);
	SetShade("�}��ʧ��һ", HEAVY);
	SetShade("�}��ʧ���", SEMIHEAVY);
	SetTone("�}��ʧ��*", Monochrome);
	SetBlur("�}��ʧ��*", true, 1, 500, 30, false);
	SetVolume("@mbgm*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��ʧ��*", 300, 1150, 1150, Dxl2, false);
	Fade("�}��ʧ��һ", 100, 0, Dxl2, false);
	FadeDelete("�}��ʧ���", 200, true);
	Delete("�}��ʧ��*");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1340]
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2710a01">
��������
��������������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/013vs2720a00">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1350]
���������סȫ��
������ͼ˦�ѡ���������˦������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1360]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2730a00">
��û�취�ˡ���
������½����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2740a01">
���˽⡭������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	CreateSE("SE01","se���L_����_�z_�ŵ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�ݱ���", 300, @0, @-288, null, false);
	Wait(250);

	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 200, 100, "slide_02_01_0", true);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 100, "slide_02_01_0", true);

	CreateSE("SE01a","se���L_�n��_�zܞ��01");
	CreatePlainEX("�}��д��", 5000);
	Fade("�}��д��", 0, 300, null, true);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("�}��д��", 1000, 0, 60, 0, 0, 1000, Dxl1, true);
	Delete("�}��д��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1370]
���ҽ��䵽���桭��ˤ���ˡ�
�������޷�Ų��˫�ȵĳ�̬����ֻ���ѿ���
���ڵ��档

������ܵ��ѻ��Ļ�������·�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1380]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2750a00">
�������������飡��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2760a01">
����������<?>
{	Wait(500);}
��ֹͣ�ˣ�
������Ҳ��½�ˣ���

//��������
<voice name="����" class="��������" src="voice/ma04/013vs2770a01">
�������Է�������Ҳ�ﵽ�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1390]
��һֽ֮������
��������ء�������أ����˿�����

�����ǣ��Ҳ�û����Ͼȥ��Ȼ��ζʰ��һ������ϲ�á�
����̬���ˣ���Ҫƴ�ָ����ˡ�

���ҵ��ȵ���һ����װ���������Է�һ������
�������´ξ���Ļᱻһ·�Ƶ���;���Ķ԰��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1400]
//��������
<voice name="����" class="����" src="voice/ma04/013vs2780a00">
�����������������״������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/013vs2790a01">
���˽⡪��
����ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1410]
�����и��������Ӧ��
�������ţ�����ĵ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"ma04_014vs.nss"

.//�ץ�����======================================================

..//늴Œi����능�`��
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
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}