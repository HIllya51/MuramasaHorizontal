//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_061.nss_MAIN
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
	#bg063_���ӘS��������_02=true;
	#bg084_�w�д�Ş��_01=true;
	#bg026_���ӘSɽ��b_02=true;
	#bg025_�ӵ�ɽ�}��ɭc_02=true;
	#bg013_�`�}���c_02=true;
	#ev236_������դ΄���_a=true;
	#ev236_������դ΄���_b=true;
	#ev236_������դ΄���_c=true;
	#ev236_������դ΄���_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_062.nss";

}

scene md04_061.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_060.nss"


//�����ڡ�����
	PrintBG("�ϱ���", 30000);

	OnBG(100, "bg063_���ӘS��������_02.jpg");
	FadeBG(1000, true);

	FadeDelete("�ϱ���",2000,true);

	Wait(1000);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md04/0610010a00">
��������������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0610020a01">
��������ʧ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��Ş��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(100, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	SetFwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610030e008">
����ʧ�ˣ���

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610040a13">
������������������������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//�룺���ʥꥪ�˱ܡ�090511��
//�����硢���ڣ�
//�������Ƥ��ޤ�����������׏��⡢�y�ǺŤ⡹
//�����ߣ��ƥ����ȥ��`�Щ`�Τ������λ���{��
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610050e008">
���̡����ڣ�������ʧ�ˡ�
�������Ƕ����׵��������Ǻš���

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610060a13">
������Ŷ����

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610070e008">
���ף���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610080a13">
����û����ʧ��
�����Ǳ����<RUBY text="����������">��С�ĺڵ�</RUBY>����

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610090a13">
������ͨ����������ߵ���Խ���ޣ��Ӷ�ʹ��
������������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610100e008">
������������

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610110e008">
���ǡ��Ǿ���˵ʧ���ˡ����𣿡�

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610120a13">
��������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610130a13">
���ǳɹ��ġ���

{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610140a13">
���Ǹ��������еĺڵ㣬
��<RUBY text="������������������������">�����ŵ������ĵķ���׹��</RUBY>!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ӘS�h��
//���Ǥ��򤳤����˹�����������Ϥ���
	SoundPlay("@mbgm01", 0, 1000, true);


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("�ⴵ���Ϥ�ǰ", 15000, 0, 0, "cg/bg/bg026_���ӘSɽ��a_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ�ǰ�e��", 15000, 0, 0, "cg/bg/bg026_���ӘSɽ��a_02.jpg");

	CreateTextureEX("�ⴵ���Ϥ���", 15000, 0, 0, "cg/bg/bg026_���ӘSɽ��b_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ���e��", 15000, 0, 0, "cg/bg/bg026_���ӘSɽ��b_02.jpg");
	SetBlur("�ⴵ���Ϥ���e��", true, 2, 300, 100, false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	WaitKey(500);

	Fade("�ⴵ���Ϥ�ǰ�e��", 1500, 1000, null, false);
	Shake("�ⴵ���Ϥ�ǰ�e��", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("�ⴵ���Ϥ���*", 0, 1000, null, true);

	OnSE("se����_������_�����Ϥ�������", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg026_���ӘSɽ��b_02.jpg", false);
	Delete("�ⴵ���Ϥ�ǰ");
	Delete("�ⴵ���Ϥ�ǰ�e��");
	FadeF4("�ⴵ���Ϥ���e��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("�ⴵ���Ϥ�02b", 600, false);

	WaitKey(2000);


//���ڶ�Ԓ��ɽ
//��ɽ픤�������

/*
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg025_�ӵ�ɽ�}��ɭc_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
*/


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("�ⴵ���Ϥ�ǰ", 15000, 0, 0, "cg/bg/bg025_�ӵ�ɽ�}��ɭb_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ�ǰ�e��", 15000, 0, 0, "cg/bg/bg025_�ӵ�ɽ�}��ɭb_02.jpg");
	Request("�ⴵ���Ϥ�ǰ*", Smoothing);
	Zoom("�ⴵ���Ϥ�ǰ*", 0, 1500, 1500, null, true);
	Move("�ⴵ���Ϥ�ǰ*", 0, @0, @-120, null, true);

	CreateTextureEX("�ⴵ���Ϥ���", 15000, 0, 0, "cg/bg/bg025_�ӵ�ɽ�}��ɭc_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ���e��", 15000, 0, 0, "cg/bg/bg025_�ӵ�ɽ�}��ɭc_02.jpg");
	SetBlur("�ⴵ���Ϥ���e��", true, 2, 300, 100, false);

	Move("�ⴵ���Ϥ�ǰ*", 2000, @200, @0, null, false);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	WaitKey(500);

	Fade("�ⴵ���Ϥ�ǰ�e��", 1500, 1000, null, false);
	Shake("�ⴵ���Ϥ�ǰ�e��", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("�ⴵ���Ϥ���*", 0, 1000, null, true);

	OnSE("se����_������_�����Ϥ�������", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg025_�ӵ�ɽ�}��ɭc_02.jpg", false);
	Delete("�ⴵ���Ϥ�ǰ");
	Delete("�ⴵ���Ϥ�ǰ�e��");
	FadeF4("�ⴵ���Ϥ���e��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("�ⴵ���Ϥ�02b", 600, false);

	WaitKey(2000);

//���`�}�h����
//��������������������

/*
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg013_�`�}���c_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
*/

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("�ⴵ���Ϥ�ǰ", 15000, 0, 0, "cg/bg/bg013_�`�}���a_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ�ǰ�e��", 15000, 0, 0, "cg/bg/bg013_�`�}���a_02.jpg");

	CreateTextureEX("�ⴵ���Ϥ���", 15000, 0, 0, "cg/bg/bg013_�`�}���c_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ���e��", 15000, 0, 0, "cg/bg/bg013_�`�}���c_02.jpg");
	SetBlur("�ⴵ���Ϥ���e��", true, 2, 300, 100, false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	WaitKey(500);

	Fade("�ⴵ���Ϥ�ǰ�e��", 1500, 1000, null, false);
	Shake("�ⴵ���Ϥ�ǰ�e��", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("�ⴵ���Ϥ���*", 0, 1000, null, true);

	OnSE("se����_������_�����Ϥ�������", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg013_�`�}���c_02.jpg", false);
	Delete("�ⴵ���Ϥ�ǰ");
	Delete("�ⴵ���Ϥ�ǰ�e��");
	FadeF4("�ⴵ���Ϥ���e��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("�ⴵ���Ϥ�02b", 600, false);

	WaitKey(2000);

//���w��Ş��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�ⴵ���Ϥ�*");
	OnBG(100, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	Wait(500);

	SetFwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610150e008">
�����������Ϸ�����â������

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610160e008">
�������������ǡ���ˮ��������

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610170a13">
������ŶŶ������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����


	CreateColorEXadd("��", 25000, "WHITE");

	OnSE("se����_�z_���٥�_�ҤӸ��",1000);

	Fade("��", 1000, 1000, null, true);

//���ۥ磻�ȥ���

	Fade("��", 500, 0, null, true);

	SetNwH("cg/fw/ny�ǣȣ���ξ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610180e008">
��������!?��

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610190e008">
���̡����ڣ�
���ҵ��֡����ҵ����ҵ����ҵ��֡�����

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0610200e008">
��������һ������
��������������Ҳ!?��

{	FwH("cg/fw/fw�������_�Zϲ.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610210a13">
������̫�˲����ˡ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣�������դ΄���
//��I���ڤ������Ҋ�Ϥ��륦����ա��Ϥ���Ҋ����


	CreateColorEXadd("��", 25000, "WHITE");
	Fade("��", 500, 1000, null, true);

	CreateTextureSP("�}����100", 15000, @0, @0, "cg/ev/ev236_������դ΄���_a.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 3, 500, 200, false);

	Wait(500);

	Zoom("�}����100", 1800, 1000, 1000, Dxl2, false);
	Fade("��", 1500, 0, null, true);

	Wait(500);

	SetFwH("cg/fw/fw�������_�Zϲ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610220a13">
�����â����
���������������֮ˮ������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610230a13">
�����ǽ��е�Ԫ�ء���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610240a13">
������ŶŶ����
��һ�ж���ˮ��һ��������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610250a13">
������<RUBY text="����������">������ˮ��</RUBY>����

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610260a13">
�����ؾ������ж�����һ���̡���
��ֻҪ��������Ũ��Ĺ�ˮ�С�������������
��������ػ�Ϊ<RUBY text="����������">���һ����</RUBY>����

{	FwH("cg/fw/fw�������_�Zϲ.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610270a13">
�������������֮������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610280a13">
����Ȼ������𡭡���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610290a13">
�������<RUBY text="Kristallnacht">ˮ��֮ҹ</RUBY>�����ࡣ��

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610300a13">
��<RUBY text="Adolf">��Ԫ��</RUBY>Ӣ��������
�����Ǹ�������֮��ʾ���㣬����ȷ�ġ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610310a13">
����������ң�����ȷ�ġ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610320a13">
���ҵ����룬
�����������������ȷ�ġ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣����㤫��ˮ����

	OnSE("se����_�z_�ҤӸ��01",1000);
	Fade("��", 1000, 1000, null, true);

	CreateTextureSP("�}����200", 16000, @0, @0, "cg/ev/ev236_������դ΄���_b.jpg");
	Wait(500);

	Fade("��", 600, 0, null, true);


	SetFwH("cg/fw/fw�������_�Zϲ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610330a13">
�������ˡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610340a13">
���ҿ����ˣ��񣡡�

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610350a13">
�������澡ͷ�����Ľ�������������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610360a13">
���������ģ����ҡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610370a13">
�����������ģ����ҡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610380a13">
��ð����ģ����ҡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610390a13">
�������ֶ�����ķ���롤�ܰ�˹��
  Ϊ����������������!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�ˮ�����M��

	OnSE("se����_�z_�ҤӸ��02",1000);
	Fade("��", 1000, 1000, null, true);

	CreateTextureSP("�}����300", 17000, @0, @0, "cg/ev/ev236_������դ΄���_c.jpg");
	SetBlur("�}����300", true, 2, 500, 50, false);

	Wait(500);


	Fade("��", 600, 0, null, true);


	SetFwH("cg/fw/fw�������_�Zϲ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610400a13">
��ŶŶ����������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610410a13">
�������簡����

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610420a13">
����ʱ��������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610430a13">
���ƽ������������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0610440a13">
��ʤ�����������򡪡��ꡪ��!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����֣���ȫˮ����

	OnSE("se����_�z_װ��04",1000);
	Zoom("�}����300", 220, 2000, 2000, Axl2, false);
	Fade("��", 200, 1000, null, true);


	CreateTextureSP("�}����400", 18000, @0, @0, "cg/ev/ev236_������դ΄���_d.jpg");

	Wait(1000);

	Fade("��", 1000, 0, null, true);

	Wait(2000);

//���ۥ磻�ȥ�����

	OnSE("se����_���ͥ륮�`�ŗ�",1000);

	CreateColorEXadd("��", 25000, "WHITE");
	Fade("��", 3000, 1000, null, true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	Wait(2000);

}

..//������ָ��
//�Υե����롡"md04_062.nss"