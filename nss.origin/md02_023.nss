//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_023.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md02_023.nss","md02_023_voicejoint",true);
	Conquest("nss/md02_023.nss","md02_023_voicejointProcess",true);
	Conquest("nss/md02_023.nss","md02_023_comic",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess03",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess02",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess01",true);
	

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
	#bg008_����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_024.nss";

}

scene md02_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_022.nss"

//������
//������ͤΥ��ꥹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg008_����_01.jpg");
	FadeBG(0, true);
	CreateTextureEX("�}st50", 100, Center, InBottom, "cg/rec/stRec_���ꥹͨ��.png");
	CreateTextureEX("�}st100", 100, Center, InBottom, "cg/rec/stRec_���ꥹ�@��.png");
	CreateTextureEX("�}st200", 200, Center, InBottom, "cg/rec/stRec_���ꥹЦ�.png");
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	Fade("�}st50", 300, 1000, null, true);


	Fade("�}st100", 300, 1000, Dxl1, false);
	Fade("�}st50", 300, 0, Axl1, false);
	md02_023_comic(1);

	SetNwH("cg/fw/nyС����ͬ����.png");

//	md02_023_voicejoint();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ã�ʹ�鷺�ͩ`��ãǡ�С����ͬ������
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230010e014">
������С������
{	Fade("�}st200", 300, 1000, Dxl1, false);
	Fade("�}st100", 300, 0, Axl1, false);}
���簡����

{	FwH("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230020a00">
�����硣��

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹͨ��.png");
	FadeStC(200,false);
	Fade("�}st200", 350, 0, Axl1, false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230030e014">
�����䰡����

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230040a00">
����Ϊ�Ƕ��졣��

{	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230050e014">
��������ѩ�𣿡�

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230060a00">
���������ˡ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹЦ�.png");
	md02_023_comic(3);
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230070e014">
��ѩ�������ء���

{	FwH("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230080a00">
���ǡ���

{	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230090e014">
��������ƮƮ�����͡���

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230100a00">
��������

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹ�@��.png");
	md02_023_comic(1);
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230110e014">
������
���������������Ҳ˵����ร���

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230120a00">
��������

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹŭ��.png");
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230130e014">
����������Ե����ʱ����µ���м��
����Щ��м�������������������Ӵ����

{	FwH("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230140a00">
��������������������

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹͨ��.png");
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230150e014">
��һ����������
����Ӧ��Ҳϲ��������ĸ�㡣��

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹŭ��.png");
	md02_023_comic(2);
	FadeStC(300,false);}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230160e014">
��������ô�����������ǲ��ǲ�̫���
�����أ���

{	FwH("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230170a00">
������˵ʲô����

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹЦ�.png");
	md02_023_comic(1);
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230180e014">
������˵�������Ǹ�С���أ�
������������ĸ�������ţ�����������

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹͨ��.png");
	FadeStC(300,false);}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230190e014">
��С����������أ���

{	FwH("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230200a00">
������ô����Ҳ������

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹЦ�.png");
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230210e014">
����ô���������ѩ��
���ţ������ѩ�Ļ���һ��ԳԿ�Ӵ��
����ܺóԵģ���

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230220a00">
��������������������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se�ճ�_��_�����Q��02", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ҴӸող����µ�λ����վ��������
������ͬѧ���֣������ǣ�š�

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StC(1000, @0,@0,"cg/rec/stRec_���ꥹ�@��.png");

	md02_023_comic(2);
	FadeStC(300,false);
	SetNwH("cg/fw/nyС����ͬ����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230230e014">
������С��������ô�ˣ���

{	SoundPlay("@mbgm31", 0, 1000, true);
	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230240a00">
�����ˡ�
����ʲôҲ��Ҫ���롣��

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230250a00">
������Ϊֹ��Ҳһ���кܶ�ʹ��ɡ�
��������û��Ҫ���ò�����˼����

//��������
<voice name="����" class="����" src="voice/md02/0230260a00">
����Ϊ����������Ĵ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ꥹŭ��.png");
	md02_023_comic(2);
	FadeStC(300,false);
	NwH("cg/fw/nyС����ͬ����.png");}
//������㣯�ҥ���ġ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0230270e014">
��������������

{	FwH("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md02/0230280a00">
�������߰ɡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);
	Delete("�}st100");
	Delete("�}st200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������ǰ���������˽Ų���
����ȥ������ʦ����ɣ����ò������������¡���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);

..//������ָ��
//�Υե����롡"md02_024.nss"

}


function md02_023_voicejoint(){

	CreateProcess("md02_waitvoice", 150, 0, 0, "md02_023_voicejointProcess");
	SetAlias("md02_waitvoice","md02_waitvoice");
	Request("md02_waitvoice", Start);

}

function md02_023_voicejointProcess(){

	Wait(2600);

	Fade("@�}st200", 300, 1000, Dxl1, false);
	Fade("@�}st100", 300, 0, Axl1, true);

	$md02_iris = true;

}


//md02_023_comic(Process)
function md02_023_comic($���ꥹ����){

	if($���ꥹ���� == 1){
		CreateTextureEX("�}co", 1000, 328, 60, "cg/ef/co16_�ݤ��Ĥ���.png");
		Request("@�}co", Smoothing);
		Move("@�}co", 0, @+40, @+40, null, true);
		SetVertex("@@�}co", 100, 100);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess01");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}else if($���ꥹ���� == 2){

		CreateTextureEX("�}co", 1000, Center, 15, "cg/ef/co10_�����������.png");
		Request("@�}co", Smoothing);
		SetVertex("@�}co", center, 100);
		Zoom("@�}co", 0, 1, 1, null, true);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess02");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}else if($���ꥹ���� == 3){

		CreateTextureEX("�}co02", 1000, 370, 70, "cg/ef/co19_����.png");
		Move("@�}co02", 0, @0, @+20, null, true);
		Request("@�}co02", Smoothing);

		CreateTextureEX("�}co01", 1000, 342, 20, "cg/ef/co18_����.png");
		Request("@�}co01", Smoothing);
		SetVertex("@�}co01", center, 100);

		SetVertex("@�}co02", 100, 100);
		Zoom("@�}co02", 0, 500, 500, null, true);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess03");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}

	Request("md02_Coming", Disused);

}

function md02_023_ComicProcess03(){

	Fade("@�}co02", 300, 1000, null, false);
	Zoom("@�}co02", 300, 1000, 1000, DxlAxl, false);
//	BezierMove("@�}co02", 500, (@0,@0){@-10,@0}{@+20,@0}{@-20,@0}{@+10,@0}(@0,@-20), null, false);

	Wait(280);

	Fade("@�}co01", 200, 1000, null, false);
	Rotate("@�}co01", 250, @0, @0, @+10, null,true);
	Rotate("@�}co01", 500, @0, @0, @-20, null,true);
	Rotate("@�}co01", 250, @0, @0, @+10, null,true);

	Wait(200);

	Fade("@�}co*", 500, 0, null, true);


	Delete("@�}co01");
	Delete("@�}co02");

}

function md02_023_ComicProcess02(){

	Fade("@�}co", 300, 1000, null, false);
	BezierMove("@�}co", 500, (@0,@0){@0,@+100}{@0,@-100}(@0,@0), Dxl1, false);
	Zoom("@�}co", 500, 1000, 1000, Dxl1, true);

	Rotate("@�}co", 300, @0, @0, @15, AxlDxl,true);
	Rotate("@�}co", 600, @0, @0, @-30, AxlDxl,true);
	Rotate("@�}co", 300, @0, @0, @15, AxlDxl,true);

	Wait(100);

	Zoom("@�}co", 600, 1, 1, Dxl1, false);
	Fade("@�}co", 300, 0, null, true);

	Delete("@�}co");

}

function md02_023_ComicProcess01(){

	Move("@�}co", 150, @-30, @-30, Dxl1, false);
	Zoom("@�}co", 150, 1500, 1500, Dxl1, false);
	Fade("@�}co", 100, 1000, null, true);

//	OnSE("serec_�M��_���ߥ���_�ԥԥ�",1000);

	Fade("@�}co", 100, 0, null, true);
	Fade("@�}co", 100, 1000, null, true);
	Fade("@�}co", 100, 0, null, true);
	Fade("@�}co", 100, 1000, null, true);
	Fade("@�}co", 100, 0, null, true);

	Delete("@�}co");

}

