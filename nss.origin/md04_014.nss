//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_014.nss_MAIN
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
	#bg016_���@a_03=true;
	#bg071_���ӘS���ڏ������_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_015.nss";

}

scene md04_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_013.nss"


//���M�v܊ҹ�ӵأ��m������bg016���M�v܊��ʿ
//���M�v܊��ʿ���⤦һ��
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg020_ɽ�}_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	StL(1000, @0, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	Rotate("@StL*", 0, 180, 0, 180, null, false);
	StR(1100, @0, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");

	FadeStL(500, false);
	FadeStR(500, true);



	SetNwH("cg/fw/ny�i�ڣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�i�ڣ���
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140010e245">
�������𣿡�

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140020e246">
���š������ˡ���

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ���
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140030e245">
����ĺ����డ��
��������˯���ˡ���

//������㣯�i�ڣ���
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140040e245">
����������������ܾ���õ���ҹϮ�ġ���
���춼�����Ǵ�������ˡ�
�����ڿ϶���׼�������ء�����û�в���Ҳ
û����ġ���

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140050e246">
��������ˣ�Ӫ��������ô��û��ֵ���أ���

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ���
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140060e245">
����֪������
����ô֮��Ͱ������ˡ���

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140070e246">
���š�
���ú���Ϣ�ɡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��ꡣ


	OnSE("se����_�n��_ܞ��01", 1000);
	WaitKey(250);
	OnSE("se����_�n��_ܞ��02", 1000);
	DeleteStL(600, false);
	Move("@StL*", 600, @0, @60, Axl2, true);
	Wait(500);

	SetNwH("cg/fw/ny�i�ڣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140080e246">
������ι����

//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140090e246">
����Ҳ���������ֵط�˯������

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ���
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140100e245">
������������

{	NwH("cg/fw/ny�i�ڣ�.png");}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140110e246">
������û�취��
������ô���𡭡���

{	DeleteStR(300, false);}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140120e246">
��ι����������
����������������������������

{	SetVolume("@mbgm*", 1000, 0, null);}
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140130e246">
������
������ʲô����

//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140140e246">
���������ǡ���<RUBY text="�ˣ����">�̵�</RUBY>����

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����\���T
//����ܞ�����룿 inc�Ѿ�
	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 6050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 6100, -100, -344, "cg/bg/bg020_ɽ�}_03.jpg");
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	CreateTextureEX("�}�ݷ���/�}���}", 6200, -750, -465, "cg/st/resize/3d���\_����_�i��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	OnSE("se����_����_�z�i��03",1000);

	Move("�}�ݷ���/�}�ݱ���", 2000, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 2000, -950, @0, Dxl2, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(1500);

	FadeDelete("�}ɫ100", 1000, false);
	FadeDelete("�}�ݷ���*", 1000, true);
	Delete("�}�ݷ���*");

	OnSE("se����_�z_�l����02", 1000);

	StL(1050, @0, @0, "cg/st/3d���\_����_���L.png");
	StR(1000, @50, @0, "cg/st/3d���\_����_�i��.png");
//	Rotate("@StR*", 0, @0, @180, @0, null,true);
//	Move("@StL*", 500, @100, @0, Axl3, false);
//	Move("@StML*", 500, @80, @0, Axl2, false);
	FadeStL(1000, false);
	FadeStR(1000, true);

	SetNwH("cg/fw/ny�i�ڣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140150e246">
����������������

//������㣯�i�ڣ¡�
<voice name="����㣯�i�ڣ�" class="����������" src="voice/md04/0140160e246">
��ʲ����ʲô�ˡ�����

{	NwH("cg/fw/ny���\��.png");}
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/md04/0140170e023">
�������޾��ڡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W



	OnSE("se���L_����_Ұ̫�����01",1000);
	CreateColorEX("�\Ļ��", 3000, "#000000");
	CreateTextureEXadd("һ�W", 15000, @170, @0, "cg/ef/ef010_����б��܉��.jpg");
	Fade("�\Ļ��", 100, 1000, null, false);
	Fade("һ�W", 100, 1000, null, true);
	DeleteStR(0,true);
	OnSE("se���L_����_���̤���05", 1000);
	CreateTextureEX("Ѫ", 16000, @0, @0, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("Ѫ", 300, 1000, null, true);
	Delete("һ�W");
	FadeDelete("Ѫ",1000,true);
	
//���Фä��ꡣ

	OnSE("se����_�n��_ܞ��02", 1000);

	SetNwH("cg/fw/ny���\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/md04/0140180e023">
���𡣡�

{	NwH("cg/fw/ny���\��.png");}
//������㣯���\�¡�
<voice name="����㣯���\��" class="����������" src="voice/md04/0140190e024">
���õġ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ż�
//	CreateColorEX("�\Ļ��", 5000, "BLACK");
//	Fade("�\Ļ��", 1500, 1000, null, true);
	DeleteStA(0,true);
	OnSE("se����_����_�Ż���01", 1000);
	CreateColorSPadd("��", 17000, "#990000");
	CreateColorSPadd("�ң�", 16000, "#ffffcc");
	CreateColorSPadd("�ң�", 15000, "#FFFFFF");
	DrawTransition("�ң�", 0, 1000, 140, 300, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("�ң�", 0, 1000, 150, 200, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("�ң�", 0, 1000, 100, 50, null, "cg/data/circle_08_00_0.png", true);
	WaitKey(500);


//�����ӘS�ƥ饹
	OnBG(100, "bg071_���ӘS���ڏ������_03.jpg");
	FadeBG(0, true);

	FadeDelete("��*", 1500, true);

	Wait(1000);
	FadeDelete("�\Ļ��",1000,true);
	Wait(1000);



	SetNwC("cg/fw/nw���\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/md04/0140200e025">
��ͷ�죬�����ˡ�
����ò�Ƶо�ҹӪ���ܱߴ����ֻ�⡣��

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0140210b37">
�����ˡ�
���������������֡���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0140220b37">
�������ǻ�⡣��

{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/md04/0140230e025">
���ǣ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0140240b37">
�����������ܱ�����˰ɡ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0140250b37">
������ʱ�䡭��
������ȡ�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h���ɩ`��

	CreateColorEX("�}ɫ100", 1500, "BLACK");
	CreateSE("SE03","se���L_�n��_�zɢ�A");

	OnSE("se���L_����_���ُؼ׏��k��01", 1000);
	Fade("�}ɫ100", 5000, 1000, null, false);
	Wait(1500);
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(3000);

	ClearWaitAll(1500, 1500);
/*
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 300, null, "cg/data/circle_11_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 210, 200, null, "cg/data/circle_11_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 220, 100, null, "cg/data/circle_11_00_0.png", true);
	FadeDelete("�Ф�*", 1000, false);

//�����ߣ��Ρ�������ץȤ��Ƅ�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��
������������������һ����һ��
�����������������������ʱ��һ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


}

..//������ָ��
//�Υե����롡"md04_015.nss"