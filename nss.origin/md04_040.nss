//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_040.nss_MAIN
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
	#bg105_���T�����ڂ�_01=true;
	#bg002_��a_01=true;
	#bg103_���ӘS������ٛg����_01=true;
	#bg104_���ӘS������󴬷���_01=true;
	#bg061_���ӘS�Ǵ����Ta_01=true;
	#ev806_�����}����`�����Σ�_a=true;
	#bg066_���ӘS���ڤΤɤ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_041.nss";

}

scene md04_040.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_039.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg105_���T�����ڂ�_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);

//������

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400010a07">
����������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ز�������ѣ����Ѿ��쵽�ˡ�

�������춥�İ���֮�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md04/0400020a00">
�������⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);
	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(3000, true);

	Wait(500);

//���£ǣͣ��y�ǺŤΆh�����¡��m�йw���ޤǵ��֤��Τޤޣ�
	SoundPlay("@mbgm37", 0, 1000, true);


//����


/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������Ӧ�Ǹ������ҵĿ��⣬�������ʡ���
�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ���

����������֮ҹ��ҰȮŭ�ͣ��¶���������
����ů��Ѩ��ĸ����֮�������߸���ϯ���ޱȰ�������
�����⴩͸����������£�����֮ʨ����ǧͷ¹����
����������ˮ��֮���ѣ�����ͯʰ������̤����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


	CreateTextureEX("�h1", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh01.png");
	CreateTextureEX("�h2", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh02.png");


	Move("�h1", 0, @0, @-80, null, true);
	Move("�h2", 0, @0, @-40, null, true);


	Move("�h1", 600, @0, @-10, Dxl1, false);
	Fade("�h1", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h2", 600, @0, @-10, Dxl1, false);
	Fade("�h2", 600, 1000, null, false);

	WaitKey();


	Fade("�h1", 500, 0, null, false);
	Fade("�h2", 500, 0, null, true);
	Delete("�h*");

//������ҹ �˺����Ƥ�Ȯ���ޤ��ʵ��\�ȹ��Ҥˑ餦��
//���¤����z���H�B������r���ߤθ����޴��˰��餰��
//��ľ©���դ��¤����ޤ줿�{�Ӥώ�ǧ��¹���ʳ����
//�������餮�����ܤ��Ѥ��ӹ���ʰ�ä�̤�ߤĤ֤���

	CreateTextureEX("�h3", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh03.png");
	CreateTextureEX("�h4", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh04.png");
	CreateTextureEX("�h5", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh05.png");
	CreateTextureEX("�h6", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh06.png");


	Move("�h3", 0, @0, @-80, null, true);
	Move("�h4", 0, @0, @-40, null, true);
	Move("�h5", 0, @0, @0, null, true);
	Move("�h6", 0, @0, @+40, null, true);

	Move("�h3", 600, @0, @-10, Dxl1, false);
	Fade("�h3", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h4", 600, @0, @-10, Dxl1, false);
	Fade("�h4", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h5", 600, @0, @-10, Dxl1, false);
	Fade("�h5", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h6", 600, @0, @-10, Dxl1, false);
	Fade("�h6", 600, 1000, null, false);

	WaitKey();

	Fade("�h3", 500, 0, null, false);
	Fade("�h4", 500, 0, null, false);
	Fade("�h5", 500, 0, null, false);
	Fade("�h6", 500, 0, null, true);
	Delete("�h*");

//���ٛg��
//���ӣţ����L
//���εڤ���
	Wait(500);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	CreateSE("���L", "se����_����_�ϑ�01");
	MusicStart("���L", 0, 1000, 0, 1000, null,true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");


	Wait(2500);

	SetVolume("���L", 2000, 0, null);


	SetNwC("cg/fw/nw�����_��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�����_����
<voice name="����㣯�����_��" class="����������" src="voice/md04/0400030e308">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���󴬿�
//���ӣţ����L
//���εڤ���

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);

	CreateSE("���L", "se����_����_�ϑ�01");
	MusicStart("���L", 0, 1000, 0, 1000, null,true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");


	Wait(2500);

	SetVolume("���L", 2000, 0, null);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�M�v܊����
<voice name="����㣯�M�v܊��" class="����������" src="voice/md04/0400040e137">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ӘS

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100, "bg061_���ӘS�Ǵ����Ta_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������֮�˰�������С����ֿ�Ĺ��ɡ���
������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮������
�������������������ʣ�С�����ħ����ճ�Կ�ס���
������������������������С�����ħ���ժ��ñ�ӡ���
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���
����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

	CreateTextureEX("�h7", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh07.png");
	CreateTextureEX("�h8", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh08.png");
	CreateTextureEX("�h9", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");
	CreateTextureEX("�h10", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");
	CreateTextureEX("�h11", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");
	CreateTextureEX("�h12", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");

//��Ȥ�-80���������飫40���Ĥ���λ�ä��{����inc�Ѿ�
	Move("�h7", 0, @0, @-100, null, true);
	Move("�h8", 0, @0, @-60, null, true);
	Move("�h9", 0, @0, @-20, null, true);
	Move("�h10", 0, @0, @+20, null, true);
	Move("�h11", 0, @0, @+60, null, true);
	Move("�h12", 0, @0, @+100, null, true);


	Move("�h7", 600, @0, @-10, Dxl1, false);
	Fade("�h7", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h8", 600, @0, @-10, Dxl1, false);
	Fade("�h8", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h9", 600, @0, @-10, Dxl1, false);
	Fade("�h9", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h10", 600, @0, @-10, Dxl1, false);
	Fade("�h10", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h11", 600, @0, @-10, Dxl1, false);
	Fade("�h11", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h12", 600, @0, @-10, Dxl1, false);
	Fade("�h12", 600, 1000, null, false);

	WaitKey();

//	Fade("�h1", 500, 0, null, false);
//	Fade("�h2", 500, 0, null, false);
//	Fade("�h3", 500, 0, null, false);
	Fade("�h*", 500, 0, null, true);
	Delete("�h*");

	Wait(500);

//���ӣţ����Һϳ�
//���ӣţ������ʑ��L

	CreateSE("SE01", "se����_����_�ϑ�01");
	CreateSE("SE02", "se����_����_������L��02_L");

//���£ǣ�����������
//����
//�������_�o�

	SetVolume("@mbgm*", 1000, 800, null);

/*

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);
	MusicStart("SE01", 2000, 600, 0, 1000, null,true);
	MusicStart("SE02", 2000, 400, 0, 1000, null,true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_��ͻ�M01", 1000);


	CreateTextureEX("������01", 1100, @-750, @-500, "cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	CreateTextureEX("������02", 900, @-850, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("������03", 800, @-850, @-600, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	Fade("������01", 0, 1000, null, false);
	Fade("������02", 0, 1000, null, false);
	Fade("������03", 0, 1000, null, false);

	Zoom("������01", 0, 800, 800, null, false);
	Zoom("������02", 0, 500, 500, null, false);
	Zoom("������03", 0, 250, 250, null, false);

	Move("������01", 300, @400, @0, null, true);
	Move("������01", 300, @-50, @0, null, false);

	Move("������02", 300, @1000, @0, null, true);
	Move("������02", 300, @-50, @0, null, false);

	Move("������03", 300, @1000, @0, null, true);
	Move("������03", 300, @-50, @0, null, false);

*/

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	Delete("�}ɫ100");
	Delete("�}��*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");

	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



//	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d㑷�_�T��_�i��.png");
	CreateTextureEX("������01a", 2000, -20, -385, "cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
//	CreateTextureEX("����飱/������01b", 500,  @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������02b", 350,  @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������03b", 200,  @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������04b", 100,  @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

//	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);
	Fade("����飱/������03a", 0, 1000, null, false);
	Fade("����飱/������04a", 0, 1000, null, false);

	SetVertex("������01a", @-2000, @1550);

	Zoom("������01a", 0, 800, 800, null, true);
	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

//	Move("����飱/������01*", 0, -41, -218, null, true);
	Move("����飱/������02*", 0, -268, -45, null, true);
	Move("����飱/������03*", 0, -429, -206, null, true);
	Move("����飱/������04*", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 2000, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03*";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04*";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	Zoom("������01a", 1500, 1000, 1000, Dxl1, false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\Ļ��");
	SetBlur("����飱/������0*", true, 1, 500, 100, false);
	SetBlur("������01a", true, 1, 500, 100, false);

	Wait(500);

	SetNwC("cg/fw/nw���ӘS�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400050e261">
����ô���£�
�����ϵ�״�����Ծ�����

{	NwC("cg/fw/nw���ӘS�o�T��.png");}
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400060e261">
����������Ϊ�����!?��

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0400070e301">
������������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�¡�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0400080e302">
������������

{	NwC("cg/fw/nw���ӘS�o�T��.png");}
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400090e261">
��ȫ��ȫ�����ˡ������ڵ��Ҳ��ֵ���ɱ��
��<RUBY text="����">��פ��</RUBY>��<RUBY text="�ѷ�">������</RUBY>ȫ����һ�𡭡���

//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400100e261">
��ι���ȳ��˰ɣ�
���������Ե��쳣��̬!!��

{	NwC("cg/fw/nw���ӘS�o�T��.png");}
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400110e261">
������������ָʾ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ʽ�����

	Request("�ץ�����", Stop);
	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	SetBlur("������01a", false, 1, 500, 100, false);
	Fade("������01a", 1000, 0, Axl2, false);
	Move("������01a", 1000, 1000, @0, AxlDxl, false);
	Zoom("������01a", 1000, 2000, 2000, AxlDxl, false);
	MoveCamera("@����飱", 1000, -100, 200, @400, AxlDxl, false);

	Wait(800);
	OnSE("se����_������_����ʽ����", 1000);
	Shake("����飱/������*", 2000, 2, 5, 0, 0, 1000, Axl2, false);

//������
//�����b���y�Ǻ�


	CreateColorSP("��", 3000, "WHITE");
	DrawTransition("��", 2000, 0, 1000, 500, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("����飱/������02a", 350, @400, @0, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");

	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

	Move("����飱/������04*", 0, -85, -420, null, true);
	Move("����飱/������03*", 0, -429, -346, null, true);
	Move("����飱/������02*", 0, -190, -200, null, true);

	Request("����飱/������0*", Smoothing);
	MoveCamera("@����飱", 0, -100, 0, @1000, null, true);

	Wait(1000);

/*
	CreateTextureEX("������02", 1090, @200, @-280, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureEX("������03", 1000, @150, @-500, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	Fade("������02", 0, 1000, null, false);
	Fade("������03", 0, 1000, null, false);
	Zoom("������02", 0, 500, 500, null, false);
	Zoom("������03", 0, 250, 250, null, false);
*/
	DrawTransition("��", 2000, 1000, 0, 500, null, "cg/data/effect_01_00_0.png", false);
	FadeDelete("��",2000,false);
	MoveCamera("@����飱", 2000, -100, 100, @-1000, AxlDxl, true);
	SetBlur("����飱/������0*", true, 1, 500, 100, false);

	Wait(500);

	SetNwC("cg/fw/nw���ӘS�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400120e261">
������������

//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400130e261">
��������������ɫ�����塭������

//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400140e261">
�����ǣ��Ѳ��ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k��h�������`��ֱ�ġ�
	OnSE("se���L_����_��ͻ�M01", 1000);
	OnSE("se���L_����_��ͻ�M02", 1000);


	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	MoveCamera("@����飱", 500, -1000, -300, @500, Axl1, true);

	CreateTextureEX("������01a", 2000, -114, -385, "cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	Move("������01a", 0, @600, @300, null, true);

	CreateTextureEXadd("�k��h��", 5000, @0, @0, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�k��h��", 5000, @0, @0, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�k��h��", 5000, @0, @0, "cg/ef/ef038_�������.jpg");
	Zoom("�k��h*", 0, 2000, 2000, null, true);
	Rotate("�k��h��", 0, @0, @180, @0, null,true);
	Rotate("�k��h��", 0, @0, @180, @-20, null,true);
	Rotate("�k��h��", 0, @0, @180, @10, null,true);

	Fade("������01a", 200, 1000, null, false);
	Move("������01a", 1000, @-600, @-300, Dxl1, false);

	OnSE("se���L_�Х���_�ܩ`�������01", 1000);
	Zoom("�k��h��", 1000, 2500, 2500, Dxl1, false);
	Fade("�k��h��", 200, 1000, null, true);
	Shake("������01a", 1500, 5, 10, 0, 0, 1000, null, false);

	OnSE("se���L_�Х���_�ܩ`�������01", 1000);
	Zoom("�k��h��", 1000, 2500, 2500, Dxl1, false);
	Fade("�k��h��", 200, 1000, null, true);

	OnSE("se���L_�Х���_�ܩ`�������01", 1000);
	Zoom("�k��h��", 1000, 2500, 2500, Dxl1, false);
	Fade("�k��h��", 200, 1000, null, true);

	OnSE("se���L_�Ɖ�_�z01", 1000);

	CreateColorSP("��", 16000, "WHITE");
	DrawTransition("��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("������*");
	Delete("�k��h*");
	Delete("�����*");
	SetNwC("cg/fw/nw���ӘS�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0400150e261">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`��ɢ�A


	OnSE("se���L_�n��_�zɢ�A", 1000);

	CreateTextureSP("���k", 15000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	CreatePlainEX("�}��д", 15000);
	Request("�}��д", AddRender);

	Fade("�}��д", 0, 800, null, true);


	DrawTransition("��", 300, 1000, 0, 100, null, "cg/data/circle_01_00_0.png", false);

	Zoom("���k", 2000, 1200, 1200, Dxl2, false);
	Zoom("�}��д", 2000, 2000, 2000, Dxl2, false);
	Shake("�}��д", 3000000, 1, 1, 0, 0, 1000, DxlAuto, false);
	Wait(1500);
//	Delete("�}��д");


	SetNwC("cg/fw/nw���y���T���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯�y��Ⱥ����
<voice name="����㣯�y��Ⱥ��" class="����������" src="voice/md04/0400160e058">
��������ม�����

{	NwC("cg/fw/nw���y���T���.png");}
//������㣯�y��Ⱥ�¡�
<voice name="����㣯�y��Ⱥ��" class="����������" src="voice/md04/0400170e059">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("��");
	FadeDelete("���k",1000,true);
	FadeDelete("�}��д",1000,true);

//���£ǣ���������



	SetVolume("@mbgm*", 1000, 1000, null);


//����������
	CreateTextureEX("�h01", 5000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh13.png");

//������г�Ц
	CreateTextureEX("�h02", 5000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh14.png");

	Move("�h01", 0, @0, @-40, null, true);
	Move("�h02", 0, @0, @+10, null, true);

	Move("�h01", 600, @0, @-10, null, false);
	Fade("�h01", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h02", 600, @0, @-10, null, false);
	Fade("�h02", 600, 1000, null, true);

	WaitKey();

	Fade("�h01", 500, 0, null, false);
	Fade("�h02", 500, 0, null, true);
	Delete("�h*");

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������з�䣬��Ц���ң���ȴ�¶���������
���ʽ�����֮̾��Ϊ��������������֮Ļ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

	CreateTextureSP("���b02", 1000, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b04", 1000, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b03", 1090, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b01", 1090, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");

	Move("���b02", 0, @0, @-180, null, true);
	Move("���b04", 0, @0, @-60, null, true);
	Move("���b03", 0, @0, @60, null, true);
	Move("���b01", 0, @0, @180, null, true);

	Zoom("���b01", 0, 500, 500, null, true);
	Zoom("���b03", 0, 500, 500, null, true);
	Zoom("���b02", 0, 250, 250, null, true);
	Zoom("���b04", 0, 250, 250, null, true);

	SetBlur("���b*", true, 2, 200, 50, false);

	OnSE("se���L_����_��ͻ�M01", 1000);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b01", 300, $���Ƅӂ���, @0, Axl1, true);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b02", 300, $���Ƅӂ���, @0, Axl1, true);

//	Delete("���b*");

	OnSE("se���L_����_��ͻ�M03", 1000);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b03", 300, $���Ƅӂ���, @0, Axl1, true);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ�=1300+$�ʤ�Ȥʤ�������;
	Move("���b04", 300, $���Ƅӂ�, @0, Axl1, true);

//������

	SetVolume("ͣ��", 1000, 0, null);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("SE*", 1000, 0, null);
	Delete("���b*");

	CloudZoomDelete(0,true);


	OnBG(100, "bg066_���ӘS���ڤΤɤ�_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md04/0400180a00">
������<RUBY text="����">����ʽ</RUBY>����?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���Ͽյ���������Ŀ���ࡣ

���������ڱ仯��
������ɫ�����塪���������ų����׵Ĺ�ԡ�

���������ۼ�����ͬ��������ͬ���ı��졣
������һ�Ρ��ڽ�֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400190a07">
��������Ϥ�ɡ�
����Ȼ�����ǡ��ѡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0400200a00">
������衭����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400210a07">
���ǲ����ǹ�������һһ���ŵġ�
���������ȥ�S��ʱ��
�����ǵ�װ��������Щ�ֽš���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400220a07">
������΢�ı���һ��<RUBY text="������">����</RUBY>��
����ͨ��װ�׻�����Ⱦ��������Ч��������
ʽ��װ�׻ᷴ��������ǿ������ֲ�롰�ѡ���
Ч����һ���ġ���

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0400230a00">
������ΪʲôҪ�������ֽţ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400240a07">
��������Ϊ��Ͷ�����׵���ʱ���ó��ڻ���
һ�����������¡�
����Ȼ��״�Ѿ����ƫ�뵱ʱ�ļƻ�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400250a07">
�����Ⲣ�Ǻ������塣����һ���Է��ķ�����
�ͻ��ˡ��϶��ܰ����ֶ���Ϳ�ũ�����Ĵ�æ��
����ͽв�����׼��֮ս������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0400260a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0400270a00">
������ָ�ӣ��Ǵ����н��ɡ���

//���o����
{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400280a07">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ҵ����ʣ���������һ��ŵ��ͷ��
��
��Ȼ�󡪡���ͬ�����أ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��΢Ц
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0400290a07">
�������ˣ�ʨ�Ӻ𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	ClearFadeAll(0,true);
}

..//������ָ��
//�Υե����롡"md04_041.nss"
