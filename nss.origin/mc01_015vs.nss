//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_015vs.nss_MAIN
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
	#bg076_�����¾���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_016vs.nss";

}

scene mc01_015vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_014vs.nss"

//�������¡��T��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg076_�����¾���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	CreateSE("SE01","se����_����_�᤺����01");
	StL(1000, @-60, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, Dxl2, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw�v��꠱�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�v��ꠣá�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/015vs0010e204">
������ǹ���;��ѣ�
����Ϯ��!!��


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣġ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/015vs0020e205">
������ȥ����ȥ��������!!
�����˹��ƴ��Ŵ��˽���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����犤��󤫤󤫤󡣤Ф��Ф����ˤ��ߤ�ؤ�ӣš�
	CreateSE("SE02","se����_����_�o���B01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("@StL*", 300, @60, @0, Axl2, false);
	DeleteStL(300,true);

	WaitKey(1000);

	StR(1000, @-60, @0,"cg/st/st����֦_ͨ��_˽��b.png");
	Move("@StR*", 2000, @60, @0, DxlAuto, false);
	FadeStR(300,false);

	Wait(300);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0012]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/015vs0030a03">
����ѽ����ѽ����ѽ��
�����������൱���ɧ���˰�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/015vs0040a03">
������ô���ظ���ô���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��ɤ��������_��
	CreateSE("SE01","se����_����_�}����ʿɢ�_");
	CreateTextureEX("�}�����}һ", 1100, Center, InBottom, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}�����}��", 1110, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureEX("�}�����}��", 1120, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	Rotate("�}�����}��", 0, @0, @180, @0, null,true);
	Request("�}�����}��", Smoothing);

	Move("�}�����}*", 0, @-256, @0, null, true);
	Move("�}�����}һ", 0, @-90, @0, null, true);
	Move("�}�����}��", 0, @-185, @0, null, true);
	Move("�}�����}��", 0, @185, @0, null, true);

	MusicStart("SE01",1000,1000,0,1000,null,false);

	Move("�}�����}��", 300, @60, @0, null, false);
	Fade("�}�����}��", 300, 1000, null, true);

	Move("�}�����}��", 300, @-60, @0, null, false);
	Fade("�}�����}��", 300, 1000, null, true);

	Move("�}�����}һ", 300, @90, @0, null, false);
	Fade("�}�����}һ", 300, 1000, null, true);

	SetNwC("cg/fw/nw�v��꠲��L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�v��꠲��L��
<voice name="����㣯�v��꠲��L" class="����������" src="voice/mc01/015vs0050e211">
���������Ǹ�Ů����!?��


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣá�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/015vs0060e204">
��ȫ����ǹ��ϣ���


{	NwC("cg/fw/nw�v��꠲��L.png");}
//������㣯�v��꠲��L��
<voice name="����㣯�v��꠲��L" class="����������" src="voice/mc01/015vs0070e211">
���ã��ֶӺ��ţ�
���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 1000, 0, null);

//����������
	CreateSE("SE00","se���L_�|��_�}��������02");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}��*");
	FadeStA(0,true);

	CreateTextureSP("�}���|��ʿһ", 1060, InLeft, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1050, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1040, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1030, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1020, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1010, Center, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}���|��ʿ��", 1000, InRight, InBottom, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");

	SetVertex("�}���|��ʿ*", center, bottom);
	Zoom("�}���|��ʿһ", 0, 1110, 1110, null, true);
	Zoom("�}���|��ʿ��", 0, 1080, 1080, null, true);
	Zoom("�}���|��ʿ��", 0, 1030, 1030, null, true);
	Zoom("�}���|��ʿ��", 0, 970, 970, null, true);
	Zoom("�}���|��ʿ��", 0, 940, 940, null, true);
	Zoom("�}���|��ʿ��", 0, 920, 920, null, true);
	Request("�}���|��ʿ*", Smoothing);

	Move("�}���|��ʿһ", 0, @-180, @0, null, true);
	Move("�}���|��ʿ��", 0, @-220, @0, null, true);
	Move("�}���|��ʿ��", 0, @-110, @0, null, true);
	Move("�}���|��ʿ��", 0, @110, @0, null, true);
	Move("�}���|��ʿ��", 0, @240, @0, null, true);
	Move("�}���|��ʿ��", 0, @180, @0, null, true);

//��������ݳ�������֦���Ĥ��زĤ��x���Ƥ�����
	CreateWindow("�}��", 10000, 588, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 10010, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 10020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 11000, Center, InBottom, "cg/st/st����֦_���_˽��a.png");
	Move("�}��/�}�����}װ��", 0, @280, @0, null, true);//���ߩ`ע�⣺��λ��


	MusicStart("SE00",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//��һ����ġ��Ѥ�Ѥ�Ѥ�
	CreateSE("SE01a","se���L_����_�饤�ե�Ĥ�4��");
	CreateSE("SE01b","se���L_����_�饤�ե�Ĥ�4��");
	CreateSE("SE01c","se���L_����_�饤�ե�Ĥ�4��");
	MFlash(50, 100);
	MusicStart("SE01a",0,1000,0,850,null,false);
	Wait(10);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(10);
	MusicStart("SE01c",0,1000,0,1150,null,false);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/015vs0080a03">
������ô���أ�
{	FwC("cg/fw/fw����֦_��Ц.png");}
������ô��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦������
//��ɫ��ܞ���ե�`����
//���ե��`�ɥ����ȡ��ե��`�ɥ���
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	Delete("@MF*");

	CreateSE("SE01","se����_������_���������k");
	CreateEffect("�}����", 10000, 0, 0, 1024, 576, "NegaPosi");
	SetAlias("�}����","�}����");
	Fade("�}����", 0, 0, null, true);

	MusicStart("SE01",0,1000,0,2000,null,false);
	Fade("�}����", 200, 1000, Dxl2, false);
	DrawTransition("�}����", 200, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

	Wait(500);

	FadeDelete("�}����", 600, true);

	CreateSE("SE02","se���L_�|��_�����}��01");//���ߩ`ע��
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw�v��꠲��L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�v��꠲��L��
<voice name="����㣯�v��꠲��L" class="����������" src="voice/mc01/015vs0090e211">
������ʲô!?��


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣá�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/015vs0100e204">
���ף�
��������ô���ľ���ȴȫδ���С���!?��


{	NwC("cg/fw/nw�v��꠲��L.png");}
//������㣯�v��꠲��L��
<voice name="����㣯�v��꠲��L" class="����������" src="voice/mc01/015vs0110e211">
��һ��һȺ������������������׼��
�����������!!��


{	Zoom("�}��", 300, 1000, 1000, Dxl2, false);
	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/015vs0120a03">
�����ź���������֣����ˡ�
���������ֵ����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Ф�Ф�Ф�Ф�
//��һ��
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE01a","se����_�n��_ܞ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateSE("SE02","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE02a","se����_�n��_ܞ��05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE02a",0,1000,0,1000,null,false);

	CreateSE("SE03","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE03a","se����_�n��_ܞ��05");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateSE("SE04","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE04a","se����_�n��_ܞ��05");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	CreateSE("SE05","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE05a","se����_�n��_ܞ��05");
	MusicStart("SE05",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE05a",0,1000,0,1000,null,false);

	CreateSE("SE06","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE06a","se����_�n��_ܞ��05");
	MusicStart("SE06",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Shake("�}���|��ʿ��", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿ��", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿ��", 300, false);
	Fade("�}ɫ��", 80, 0, null, true);
	MusicStart("SE06a",0,1000,0,1000,null,false);

	CreateSE("SE07","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE07a","se����_�n��_ܞ��05");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 11000, "#FFFFFF");
	Wait(20);
	Shake("�}���|��ʿһ", 300, 2, 1, 0, 0, 1000, null, false);
	Move("�}���|��ʿһ", 300, @10, @60, Dxl2, false);
	FadeDelete("�}���|��ʿһ", 300, false);

	Wait(80);

	MusicStart("SE07a",0,1000,0,1000,null,false);
	Delete("�}��*");

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStR(0,true);

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/015vs0130a03">
���������ˣ�����ȡʤ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�i��08");
	MusicStart("SE01",0,1000,0,750,null,false);

	Move("@StR*", 300, @-300, @0, null, false);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ClearWaitAll(1000, 0);

..//������ָ��
//�Υե����롡"mc01_016vs.nss"

}