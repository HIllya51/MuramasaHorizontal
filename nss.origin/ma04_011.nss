//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_011.nss_MAIN
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
	#bg041_Ƭ������_01=true;
	#bg044_�о�ʩ�O��_01a=true;
	#bg044_�о�ʩ�O��_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�x��=true;

	$PreGameName = $GameName;

	$GameName = "ma04_012.nss";

}

scene ma04_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_010.nss"

//��ܞ�Q
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��˳��ԭ·���ص�;�С�
��������ͻȻ�������ؾ��������˽�

������������ʧ���ˡ�<k>
��
������ǣ������ҵĺ����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma04/0110010a00">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����΍u
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg040_���΍uȫ��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(500);

//���\���⤷���ϥ��`���åȈ�ͨ·��ʹ���ؤ�
//���ɤ��`�󡣑�������Ƥ�����
	CreateSE("SE01a","se�ճ�_��_ľ�䉲���01");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1000,null,false);
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	CreatePlainSP("�}��", 100);
	FadeFR2("�}��",0,1000,600,0,0,30,Dxl2, true);
	Delete("�}��");

//��������顣���⤬̤���z��Ǥ椯��
//�������}�����`���å�����������������ʸ�������
	CreateSE("SE01b","se����_����_�ߤ�01_L");//���ߩ`ע��
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStR(300,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, true);
	SoundPlay("@mbgm21",0,1000,true);

	SetNwC("cg/fw/nw����T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma04/0110020e061">
����������
��������Ļ����ֱϽ��ʩ���������ǽ�פ������
Ҳ������û����ɵ�������ô�����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0110030b02">
��������

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma04/0110040e061">
���ȡ���
������˵����һ�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W���ɤ��㡣
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Fade("�}��", 600, 0, null, false);
	DrawDelete("�}��", 200, 1000, "slide_08_00_1", true);



	SetNwC("cg/fw/nw����T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma04/0110050e061">
����!?��

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0110060b02">
�������ң��ӵ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��ɤ���
	CreateSE("SE01","se����_����_�}����ʿɢ�_");
	MusicStart("SE01",0,1000,0,750,null,true);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	SetVolume("SE*", 1500, 0, null);
	FadeDelete("�ϱ���", 1000, true);
	WaitPlay("SE**", null);

//���о���
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg044_�о�ʩ�O��_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetNwC("cg/fw/nw�о��T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0110070e068">
����������

{	StL(1000, @-60, @0,"cg/st/st���L_ͨ��_˽��.png");
	Move("@StL*", 300, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110080b22">
��ʲô������������ֵ�?!
������ȫ�����ӻ��ˣ���������ʲô�Ϳ�ʼ
�ҽ���������?!��

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110090b22">
������Ҳ����!!��

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0110100e068">
�����ǣ�
���ǣȣѵľ��ٴ��˽�����
Ҫ�����ǹ����о���������

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110110b22">
��ʲ����ô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg042_�ذ�_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

//����̨��������ѩ܇�
	StL(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0110120a12">
�������ٺ١�
�����¿ɺá�����һ�¼������ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0110130a12">
������ס����������Ȼ�����ж�����
�����ҾͿ��Է���ȥ���Լ������������˰ɣ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0110140a12">
���١��١��١�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ӘS���ڡ�ͯ�Ĥ��g
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg045_���ӘS�ǹ������g_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	#voice_on_�x��=true;

	SetFwC("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���x�塿
<voice name="�x��" class="�x��" src="voice/ma04/0110150b21">
��������ˡ�
����֮�����������硣��

{	StL(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300,false);
	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110160a09">
��Ŷ��
�����˰������˰�������

//�������㡣
{	OnSE("se�ճ�_�Cе_�Ԓ02",1000);
	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110170b22">
��ιιι?!
�������н�?!��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110180a09">
����ѽ��ԭ�����������ˡ�
���㻹����ô�о��񰡡���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110190a09">
���о����е���ô���ˡ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110200b22">
������˵��Щ��ʱ�򰡡�������!!
���ǣȣѵ����˵���
��Ⱥ��ӵش������ˡ���!!��

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110210b22">
���⵽������ô���¡�����������?!��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110220a09">
��ŶŶ������

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110230b22">
��Ҫ�Ұ��о��ɹ��������ǣ����������˶�ɵ�ӣ�
��Ҫɱ����Щ����������������ſſ�ļһ�ȥ
�����ҵ������𣡡�����ֻ�Ǵ���ѣ����ȸ���
�����������԰�?!��

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110240b22">
����ƾ���������ҵ�������ô���ܸ߳�����
�����ܸ߳�������Ҳ�������������Լ���
����������Ҳ��������������
����˵���£����и����󣡡�

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110250a09">
���ţ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110260b22">
�����Ͼ��ӹ���������˵��������ȫ����
���������ǵ��Կ��ҿ��ǲ����ˡ������þ�����
��һ�ᣬ�㾡��֧Ԯ��������Ԯ������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110270a09">
���š��������
����ɲ��а�������

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110280b22">
�������ף�
����˵ɶ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110290a09">
���Ҳ��ܺͽ�פ��֮������ִ����������
����Ȼ�˽���ľ���������
�����ܵ÷ָ����ػ����ɣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110300b22">
��ι��
����������ҵ�һ�°�ͺ¿����

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110310a09">
������ֻ��ҧ��������ʱ���ͣ�
���ӣǣȣѵ�Ҫ��
����н���������ɷ��������졣������
������������һ�°ɡ���

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110320b22">
������ͺ¿�ڹ�Щʲô������
������һ�Դ��������������������ͷ��
��ͷһ��������ô����ô������
�ѵ��ҵ��о��ɹ�������Ҳ����ν��?!��

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110330a09">
����ϧ����ϧ����
��ƶɮʵ�ڰ�Ī����������

{	FwC("cg/fw/fw���L_�~��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110340b22">
�����������а취��������������!!��

//�������㡣
{	OnSE("se�ճ�_�Cе_�Ԓ02",1000);//���ߩ`ע��
	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110350a09">
��������

{	StR(1000, @0, @0,"cg/st/st�x��_ͨ��_˽��.png");
	FadeStR(300,false);
	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/ma04/0110360b21">
��������ˡ�
���Ҹ����ݲ�ɡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110370a09">
��Ҳ�á�
��ֻ�ǣ����塭����

{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/ma04/0110380b21">
���ǣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0110390a09">
�����������治����

{	FwC("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/ma04/0110400b21">
�������ǡ�
�����������������泩����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���о���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DeleteStA(0,true);

	OnBG(100,"bg044_�о�ʩ�O��_01a.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st���L_ͨ��_˽��.png");
	FadeStL(0,true);
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetNwC("cg/fw/nw�о��T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0110410e068">
����������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110420b22">
������������һ������
���Ǹ�ͺ¿���ҵ��������ӡ�����

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0110430e068">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	OnSE("se���L_�Ɖ�_����",1000);//���ߩ`ע��

//�����`���å�
	StR(1000, @0, @0,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0110440b02">
��������������ĸ����ˣ���

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0110450b22">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma04_012.nss"