//<continuation number="3140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_001.nss_MAIN
{

	$TITLE_NOW = "��";

//�룺�ե饰���ڻ�
	if($����������){$�������ͻ�=true;SetHex();}

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
	#bg026_���ӘSɽ��a_03=true;
	#bg027_���ӘS�u�h���g_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�����o��=true;
	#voice_on_���B�{�Ӻ�=true;
	#voice_on_�[��ͯ��=true;
	#voice_on_���׵�=true;
	#voice_on_�����衩��=true;
//�룺���ڻ�
	$Others_Flag = 0;
	$OthersFav_After = 0;

	$PreGameName = $GameName;

	$GameName = "ma03_002.nss";

}

scene ma03_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma02_024.nss"

//�����ӘSɽ����ҹ
//���£ǣͣ������_

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg026_���ӘSɽ��a_03.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetNwC("cg/fw/nw������.png");

	#voice_on_���B�{�Ӻ�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010010a06">
�������Բ����پܾ����ǵ�Ȱ����
���������챾�ڳ������ҷ���ӭ����Ӧ������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010020a06">
����Ȼ����������Ͽ�չ���˼�ս��������С
ʱ��ͻ��������˵���ɹ��������ƿ�Ȩ��
����Լ��ͬһʱ������ϵ��Ѿ�Ҳ����Ͷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ��µ�

	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	FadeBG(2000,true);

//���{�Ӻ�
//���ƥ�åף��S�����������B�{�Ӻ𡡸o܊�н�

	StC(1000, @0, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

	CreateColorEX("�}��ܞ", 3000, "#000000");

	CreateTextureEX("�}�ӣ�", 3000, Center, Middle, "cg/st/resize/st�{�Ӻ�_ͨ��_�Ʒ�l.png");
	Move("�}�ӣ�", 0, @-170, @200, null, true);

	Fade("�}��ܞ", 600, 600, null, false);
	Move("�}�ӣ�", 600, @-30, @0, DxlAuto, false);
	Fade("�}�ӣ�", 600, 1000, null, true);

	CreateTextureSP("�}�ƥ�", 5000, Center, @-40, "cg/sys/Telop/tp_���B�{�Ӻ�.png");
	Move("�}�ƥ�", 0, @150, @0, null, true);
	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	PrintGO("�ϱ���", 50000);
	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	StC(1000, @0, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);


	SetFwR("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010030a06">
������Բ���������������ʮ���������Ż���
�ݲ��и���
��������š���Ұϲ����Ҳ���������Բ��Ĵ�
��������������ʱ�����С���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010040a06">
���������Ҫ��ԱҲ�����ս����������
Ͷ������Щ�����
�����Զ��ԸԲ�һ���Ѿ����߽��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o��
//���ƥ�åף����l���I����λ�������o�ϡ�Ԫ���o܊��

	DeleteStA(300,true);
	WaitKey(500);
	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeStC(300,true);

//	CreateTextureSP("�}�ƥ�", 2000, Center, @-40, "cg/sys/Telop/tp_�����o��.png");
//	Move("�}�ƥ�", 0, @150, @0, null, true);
//	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//	WaitKey(2000);

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeStC(300,true);

	CreateColorEX("�}��ܞ", 3000, "#000000");

	CreateTextureEX("�}�ӣ�", 3000, Center, Middle, "cg/st/resize/st�o��_ͨ��_˽��_l.png");
	Move("�}�ӣ�", 0, @-190, @170, null, true);

	Fade("�}��ܞ", 600, 600, null, false);
	Move("�}�ӣ�", 600, @-30, @0, DxlAuto, false);
	Fade("�}�ӣ�", 600, 1000, null, true);

	CreateTextureSP("�}�ƥ�", 5000, Center, @-40, "cg/sys/Telop/tp_�����o��.png");
	Move("�}�ƥ�", 0, @100, @0, null, true);
	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	PrintGO("�ϱ���", 50000);
	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

	SetFwR("cg/fw/fw�o��_ͨ��.png");

	#voice_on_�����o��=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010050a05">
������֧�����ң���������������Ĵ���Ӧ
����������
����Щ������ˡ���

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010060a06">
��������һ����
������ȫ�����������ݳ����ջ٣��Ѿ����˴�
�ݲ����Ļĵء���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010070a05">
�����á�
�������ˡ���

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010080a06">
���ǣ���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010090a05">
���������ˡ���
�����꣬��Ȼ����������Υ�Ŀɺ�֮ͽ��
��������������촦�����쳣�п�����

{	FwR("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010100a05">
��һ���Ҳ��������̱�����֮�ԡ���
�Ǻǣ�ȴҲ�����į������˼�顣
��˼����񶾣�Ҳ����һ����Ȥ����

{	#voice_on_�[��ͯ��=true;
	NwR("cg/fw/nw������.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010110a09">
����������
��������Ҳ��˵�������ԵĻ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//�������֤ʤ��Ȥ��ꤵ��룡��

//��ͯ��
//���ƥ�åף��źӹ������[��ͯ�ġ��o܊�н�

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStC(300,true);


//	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
//	FadeStC(300,true);

	CreateColorEX("�}��ܞ", 3000, "#000000");

	CreateTextureEX("�}�ӣ�", 3000, Center, Middle, "cg/st/resize/stͯ��_ͨ��_˽��a_l.png");
	Move("�}�ӣ�", 0, @-190, @160, null, true);

	Fade("�}��ܞ", 600, 600, null, false);
	Move("�}�ӣ�", 600, @-30, @0, DxlAuto, false);
	Fade("�}�ӣ�", 600, 1000, null, true);

	CreateTextureSP("�}�ƥ�", 5000, Center, @-30, "cg/sys/Telop/tp_�[��ͯ��.png");
	Move("�}�ƥ�", 0, @100, @0, null, true);
	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	PrintGO("�ϱ���", 50000);
	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	StC(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

//	CreateTextureSP("�}�ƥ�", 2000, Center, @-40, "cg/sys/Telop/tp_�[��ͯ��.png");
//	Move("�}�ƥ�", 0, @150, @0, null, true);
//	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fwͯ��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010120a09">
��ǰ����һ��Щ�����ͷ���˵ʲô��Բ���
�׼��������������������Դ�ι���Ļ�������
��ҹ���ߡ�
�������ö��䶼Ҫ������Ŷ����

{FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010130a09">
����һ�����ˣ�������˵�ˡ�
����ѽ������������ͷ�۵Ĵ��˰�����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010140a05">
��ͯ�ĺ��кγ����ԡ�
����Ҳ���ס���һ���ε����д̣�����
�ݻ�һ˲֮�󣬴����뷨�Իḡ��ˮ�档
��ǰ��δ��˿��ǹ�����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010150a05">
���ҷ�����֮ʱ׷������������֮ʱ��������
�������ֱ�������������ԡ�����ʵ������
��Ϊ֮�������ζ��޷����㡣��

{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010160a09">
��������ˣ��˲Ż᲻ͣ��׷�����㣬������
�����ҡ�
����������֮�������ľ���죬���д󳹴���
�ľ��磬���������������ô�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010170a09">
������Ϊ��˵Ļ�����ҹ��Ĵ��¡�
���������Ե�˵����ȫ���ԣ�
�����Ժ�Ҳ�����������ȥ����

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010180a06">
����������ʲô��������

{	FwR("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010190a05">
����в���ͯ�ĺ��С�
���ǺǺǡ�����

{	#voice_on_���׵�=true;
	NwR("cg/fw/nw������.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010200a08">
������������ô˵����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���׵�
//���ƥ�åף�С�����������׵����o܊�н�

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

	CreateColorEX("�}��ܞ", 3000, "#000000");

	CreateTextureEX("�}�ӣ�", 3000, Center, Middle, "cg/st/resize/st�׵�_ͨ��_�Ʒ�_l.png");
	Move("�}�ӣ�", 0, @-190, @250, null, true);

	Fade("�}��ܞ", 600, 600, null, false);
	Move("�}�ӣ�", 600, @-30, @0, DxlAuto, false);
	Fade("�}�ӣ�", 600, 1000, null, true);

	CreateTextureSP("�}�ƥ�", 5000, Center, @-30, "cg/sys/Telop/tp_���׵�.png");
	Move("�}�ƥ�", 0, @100, @0, null, true);
	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	PrintGO("�ϱ���", 50000);
	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	StC(1000, @0, @0,"cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

//	CreateTextureSP("�}�ƥ�", 2000, Center, @-40, "cg/sys/Telop/tp_���׵�.png");
//	Move("�}�ƥ�", 0, @150, @0, null, true);
//	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010210a08">
�������ض������ķ�Ļ��ʵ������˵��ȫ��
ɨ����
������Ҫ��ϲ�������״��ˡ���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010220a05">
���š�
����Ҳ�����ˡ���

{	FwR("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010230a08">
���������ˣ�
����ε�ս���Ტδ����̫��Ĺ��ס�����

{	FwR("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010240a06">
��˵��û��
�������ε���·���򲹸���������һ�ζ�û��
���͵�ǰ�ߡ���

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010250a08">
���ǡ�����Ҳ��û�취���°���
����·����Ļ�ɵ��λ���ը���˰���
�����ʱ�䣬���Ƕ��Ѿ������������䣬
��������Ӧ��û������ġ�����

{	FwR("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010260a06">
�����Ǳ�����
�����ּһ��ж��پͻ������١���ô����
û�������ء���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010270a06">
����и��Ӧ�еľ��䣬��������ʮ���ش󡣡�

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010280a08">
���ء�����

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010290a06">
����Ȼ������Ҫ���и�����Ҳ����΢��һ����
�ǻ�����ڵ��Դ���Σ����׵���
�����Ǻ��׵������Ѿ����Ҿ��ò�����Ŀ����
�޿����ˡ���

{	FwR("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010300a08">
�����������Ҳ���!?���ӡ���Ȼ˵���������
�ᣬ�ǷǷǳ�����!?
��������ˡ��������ֻ�Ǹ��ҳ���������Ϊ��
�����׷Ź�����!?��

{	FwR("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010310a06">
�������������׷Ź���Ҳû��ϵ��
����������Ļ����������ô��۸߰�
��˼��׼������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010320a06">
��ʲôʱ���С�
���������һս�Ļ�����ʱ���㡣��

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010330a08">
��ʲ��ʲ��ʲ������

{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010340a09">
���������ˣ��׵����ˡ�
�����侲���������°ɡ���

{	FwR("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010350a08">
�����ǣ�ͯ�Ĵ��ˣ�
���������ղŵĻ��˰ɣ�������Ϊ������ֱϵ
����ڳ����ԣ�
�����Ѿ����췴�˰ɣ����Ͻ���ն�ס�����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010360a05">
����������

{	FwR("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010370a08">
���������״��ˡ�����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010380a05">
�������޹������Իῼ����
�����˴�ս�ۣ�����������������ʱ���ѹס
���ҵ�ʨ�Ӻ����з��������֮����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010390a05">
��������Ȼ���Ҫ���������������  

{	FwR("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010400a08">
�������ǣ��ǡ���

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010410a06">
���ߡ�����

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010420a08">
���ء�����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010430a05">
��ʨ�Ӻ���������һ�㡣
����Ȼ�����������Խ��ǳ��ڶ�������壬����
�������б��ǽ�����������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010440a05">
����ػ����겻������

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010450a06">
���˽⡣
���������ġ���

{	FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010460a09">
�������������ˣ���������ô�о����Ǻ��¡�
��΢������Ҳû�µ�û�µġ�
������һֱ�ñ�������������ͣ�ˣ��ܾ��ã�
�Ǽ��鷳�°�����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010470a05">
��������

{	#voice_on_�����衩��=true;
	NwR("cg/fw/nw������.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010480a07">
������˵����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
//���ƥ�åף�ܥԽ�����������衩�衡�o܊�н�

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStC(300,true);

	CreateColorEX("�}��ܞ", 3000, "#000000");

	CreateTextureEX("�}�ӣ�", 3000, Center, Middle, "cg/st/resize/st�衩��_ͨ��_�Ʒ�a_l.png");
	Move("�}�ӣ�", 0, @-250, @270, null, true);

	Fade("�}��ܞ", 600, 600, null, false);
	Move("�}�ӣ�", 600, @-30, @0, DxlAuto, false);
	Fade("�}�ӣ�", 600, 1000, null, true);

	CreateTextureSP("�}�ƥ�", 5000, Center, @-30, "cg/sys/Telop/tp_�����衩��.png");
	Move("�}�ƥ�", 0, @70, @0, null, true);
	DrawTransition("�}�ƥ�", 1000, 0, 1000, 105, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	PrintGO("�ϱ���", 50000);
	OnBG(100,"bg027_���ӘS�u�h���g_03a.jpg");
	StC(1000, @0, @0,"cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

//	CreateTextureSP("�}�ƥ�", 2000, Center, @-40, "cg/sys/Telop/tp_�����衩��.png");
//	Move("�}�ƥ�", 0, @150, @0, null, true);
//	DrawTransition("�}�ƥ�", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("�}�ƥ�*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010490a07">
���ѱ��巽�漫�߸��Ե�һ��ͳ��������
�Ϳ��ϵ��ĸо��������������ǰɣ�
����ү��Ҳ�������డ����

{	FwR("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010500a08">
������˵ʲô��
��ƽ��������״������鷳�ģ���ô������
���?!��

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010510a07">
����������ô�ˣ���

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010520a06">
�����������׵��������û��ʲô����
���������Ȳ��ɱ�Ҳ����������������
��������ô������

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010530a07">
����Ҳû��ѡ�񰡡�
���ҵ�Ӫ��������֪���İɡ��������뵺
ͻ������ض���
�������͵���򣿡���˵ʲô������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010540a07">
����·���У���·���ߺ�·����ô�ң�
�����޷����͡�
��������Ļ��͸�������c�K�㻹��
̨��ʮ���˵ȥ�������˵�������˵����

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010550a08">
��˭��˭����˭������c�K��!?��

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010560a06">
����������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010570a06">
������˵Ҳ��֪����������ˣ�
��취��ȥ����ͳ˧������һ��֮��
�����񰡡�����衣
��ʵ���ϣ�ͯ�Ĵ��˶������˳�������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010580a07">
��Ҫ��Ҳ��������
���Ų�Ҫ�������ˡ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010590a07">
����������Ѿ�������ʰ���ˡ�
���Ҳ�����⡣����һ���ˡ���

{	FwR("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010600a06">
���㡭����

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010610a07">
���������������������ȵúܡ�
��ʨ�Ӻ𰡡���Ҳ����ʲô��û��������

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010620a06">
��˵�ѡ�
�������Ƕ�ǰ�߻��Ǻ��ڶ�û���������׵�
�㵽������Щʲô����

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010630a07">
��������������

{	FwR("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010640a08">
����������
������ɶ������

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010650a07">
������ϱ����ſ��������ۡ�
����д�Ķ�������Ա���巢������ѽ��
���û̫�󷴸�Ҳ����Ϊ���������΢ӵ������
��ε��¼�����

{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010660a09">
���ǣ��ǡ�
���������ˣ��������������ۣ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010670a07">
�����������ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//���Ф��á�
//���Υ٥��ʾ

	CreateColorEX("�}��Ļ", 1500, "#000000");

	OnSE("se�ճ�_���_�����01",1000);//���ߩ`ע��
	Fade("�}��Ļ", 150, 750, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������Űɱ��<k>
��
���Բ������ڻ���������������ң�ӭ����ɱ����һ�嵳��Ľ�֡�
��˵���ڷ�������µĲ����Ѵ��ã�����������������ڵ����ǵ�ʹ�࣬
�����޷����Ʊ��˵�������

�����������޵ķ�ŭ�Ͳ����ƺ��н�ǿ�����ơ� 
��ϣ����ҵ�һ�¡�Թ�޹����ܵõ�ʲô���෴��
����Ӧ��˼���������Ϊ�����ػ���֯��Ļ����
Ϊ��Ҫ��ȡ�������ж������ҽ��Ϊ�����������������ľٶ���
���Ǹ����͵ľ�ȥ���ͣ��Ӷ�Ϊ�����º�ƽ��ϵ��Ŭ��������

�������Ļ���ɱ���Բ�������¼��Ͳ��ᱻ�����������磬
������Ϊ������˩����������������Ϊ�������Űɱ����
Ҳ����Ϊ�Ҹ�ʱ���Ŀ��˱����̰ɡ���
������Ϊ�������ǻ��ŵ��˵����񣬻ر��Բ����˱�������֮����

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��Ļ", 1000, true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010680a05">
������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010690a06">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010700a07">
����ô����
�������������Ĵ�λ�۵㡣��

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010710a06">
�����ﰡ?!��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010720a08">
��ֻ�����������ƶ���!!��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010730a07">
������û�ǻ��¡�
�������

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010740a09">
���¹�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010750a07">
�������˷�Ц����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010760a06">
��ͯ�Ĵ��ˣ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010770a08">
��˵��������ȫû��ϵ��!?
������Ϊ�����˷�Ц��д����!?��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010780a07">
��ֻ�������������Ѿ�������
����������ֵ�ʱ������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010790a08">
����ֱĪ�������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010800a06">
������ǰ�ԡ��㻹��ʲôҲ�����ˡ�
��������Ҳ��Ҫ����
�����ԵĻ�������Ҳ��Ҫ������Ҳͣ�˰ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010810a07">
����ү�ӡ�
����Щ�������ļһ��۸��˰�����

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010820a05">
���������ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010830a06">
����Ȼ�������ղ���ô˵,���������˰���
����غ�Ļ�������š���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010840a08">
����֮����û���ӵļһ�����ȥ���ǣ�
Ȼ����ձ�ֽ�ɡ����״��ˡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010850a05">
�����ˡ�ʨ�Ӻ��׵���
��Ҫ�Բ��������֮��̫��ë��á���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010860a06">
��������Ȼ���������ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010870a07">
����ë��á���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010880a06">
�����졣��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010890a08">
��ȥ�����㡣��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010900a07">
����ү�ӣ���Щ�һ�Υ�����ɱ���аɣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010910a09">
�����˺��ˡ�
������������������ⲻȥ�������Ļ�˵���
��ƶɮ����һ�����õ�����ɡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0010920a05">
������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0010930a07">
�������̳��󱬷��ˣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010940a09">
�����ǲ��ǡ�
��ǰ���ã��õ�ĳ�����ڷ���һ��ׯ
ȫ����¼����鱨�档��

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010950a06">
��������������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0010960a08">
�����õ��£��������еİɣ���ͯ�Ĵ��ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010970a09">
�������ӽǣ��ᷢ��û�б�����õ����ˡ�
����һ�������ɾ������ȫ��ɱ����
������Ů���٣����ս�Ϊ��Ĭ��ʬ������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0010980a09">
������˵���¼���������������ԣ�������
�����Ǻš����ֵ�֤��Ӧ�ò����д���

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0010990a06">
���������Ǻţ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011000a08">
���ⶼ�ڼ����ˡ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011010a05">
��Ŀ���鱨�أ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011020a09">
���ָ�����һ��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011030a05">
��û��ô����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011040a09">
���������ŵ��ǡ�
�������ɸ���ס��������˵������ɫ�����ǣ�
���ж�������ģ��ִ����￪ʼ�Ǻ������ϵ�
���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011050a07">
����֮�����˼���ǣ�
û�����������ɱ¾�ֳ��԰ɣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011060a09">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011070a06">
����ô�޴��ĶԻ���������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011080a07">
��һ��Ҳ���޴���
����˵�����ļһ�ȫ���������¶��ѡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011090a06">
�����ﲻ���ˣ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011100a07">
�����������ǰ�����������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011110a08">
���������Ǹ�Ц��״���𣿡�

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011120a07">
����ѽ����ֻ��Ц�ˡ�
��˭����ô��Ϊ�ɣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011130a07">
����ҥ���Ѿ��ڹض���ɢ��ȥ��
һ�������жӱ����Ǻ�ȫ���ˡ�
����Ȼ�������ڰ��Ű��ɼ��ȶ���������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011140a07">
������ʵ�Ǽٵġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011150a07">
��������֪����ʵ����һ���жӣ�����һ��<RUBY text="��">��</RUBY>�ӣ�
������Ц������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011160a08">
������������

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011170a06">
��ȷʵ��
����ʮ������߽���һ������ն��ɱ��ô����
�ߡ����ǹŴ��񻰻��Ƿ��ӵ����룬���޿��ܡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011180a09">
���ƹ���˵��ک��������Ҳ������˰ɡ�
����ѽ��Ϊ�����ֶ���������ڴ���������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011190a08">
���ǵ����Ǻη���ʥ��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011200a07">
�����������սᡢ�������в����ҽ�����ʧ��
���������������������Ҳ�𿴡�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011210a08">
����ʲô������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011220a07">
����ɸ����ı�ǡ�
��ħ�����ٵ�һ�ڡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011230a08">
�������š�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011240a07">
����˵���ѡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011250a08">
����Ȼ��˵?!��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011260a07">
���ۡ����˾�Ȼ���ˣ�
����Ȼ���������ļһ
���˵˵���ֻ���äĿ���ˡ�
֮���ڱ𴦴�����ǻᶪ�����档��

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011270a08">
����Ҫɱ���㡭����

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011280a09">
�����ˣ����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011290a06">
�����¡���̬��Ȼ��Ϊ�Ͼ���
�������ڵ�Ӧ�����ǲ���ġ�����Ϊ�ý�
��ģ��������֮��һ����Ϊ�����ˡ�
�����Ӧ�Բ��ǡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011300a05">
���š�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011310a07">
���Ǽһ���Ȼ�����������ˣ����϶���
һ˲�������˰ɡ�����
��̫�����׵����а��ˡ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011320a08">
���׳��ǿ϶��ġ��ߡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011330a05">
��ͯ�ĺ��С�
��ʨ�Ӻ��������Σ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011340a09">
����˵��
���Ժ���Ϊ��Ҫ��ʩ����һ��
�޿ɺ�ǡ�����

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011350a06">
������˵ʱ�������𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011360a09">
�����ǡ�
��Ļ���Բ�����·������Ϊ���֣�
Ͷ����˶����������
�������飬�����ֽ׶Ρ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011370a05">
��ɿ��������
�������еķ�Ļ���ӡ��Լ��ǣȣѡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011380a06">
���������ĵ����л��ɳ�
���������Ҳ����û�е��ġ�
��Ҫ�ǽ������Ǻš���֮����Ҳ���Ǽ�������ѡ�
��������һЩҲӦ������������𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011390a09">
���������Ƚ���ĸ����档�ж��������ֻ���
���ѡ�������ʨ�Ӻ���ˡ���Ӧ��
û�����ǣ����Ǻ����ѵ��ܺ���
�����������ǰɣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011400a06">
��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011410a09">
�������޵���Ҫ���ˣ���פ��Ҳ�ܵ������𺦡�
���ǵ���㣬���������ǳ�Ϊ���
�������鷳�£�
�ǲ�����Щ�������ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011420a06">
������ԭ����ˡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011430a08">
�����ǣ�ͯ�Ĵ��ˡ�
��Ҫ�������޽������ڣǣȣѵ����ǺŻ����Ļ���
������Ļ��ӵ��ͳ�δ��������֤���𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011440a09">
�����������Ļ�Ҳ�Ѱ졣
������Ч���Ļ���ͽ�͡�����Ч���ã���Ҳֻ��
��ŭ��פ�����ѡ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011450a09">
��������<RUBY text="��������">��ȫ֧��</RUBY>��ͻ���ļһ��ǣ�
�������������֧������ǿ����
����Ӧ�����ǺŶ�ƣ��֮ʱ�������ǣȣ�
���ر������������е�ë���Ȼ�𣿡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011460a08">
������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011470a05">
�����á���ͯ�ĺ���֮���⡣
���������Ǻŵ��������ֽ�֮���ƶԸ����ӡ�
���ڲ����Ƿ�����Ӧ�Բ��𣬾�������ʵ��
��ȫ֧���Ŀ���ɡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011480a06">
���ǡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011490a09">
����������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011500a08">
������Ӹ������ԡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011510a05">
�����������𣿡�ʨ�Ӻ𡣡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011520a06">
����������û�С�
������һ�㡭���������Ҳ�ǳ����⡣��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011530a05">
����˵����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011540a06">
���������Ǻţ��ڹض�����Ȧ�ڣ�
û�б��״�̽�⵽һ�Ρ�
����<RUBY text="����">�Ƿ�</RUBY>�����Ǽһ�ӹض�֮������Ƚ��׵�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011550a08">
���ԵͿ��ﺽ�������״�Ŀ����ԡ�������û�С�
��Ҫ�������Ļ���û�������۷���Ҳ����֡���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011560a07">
���ڹض�ʲô�ط����֣�Ȼ���ֻ�ȥʲô�ط���
�����״ﲻ�����ǹض������أ�
Ҫ��ȫ����׷�ٵĻ���
����ͼ��˰�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011575a09">
����Ա�;����е�����ϡ�
Ҫ���״��޷�����ʹ��������ߵĻ���
����Ϊ����
��Ŀǰ���߾�ȫ������Ҫ�ط����䱸����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011580a06">
��ȷʵ������йض�ȫ�������ܼ��ӵ��״
�����������ʰ��
��������û�������Ķ�����Ӧ��˵��
����û�õ����Ҳ����ֵġ���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011590a06">
����Ϊ������<RUBY text="��������">����עĿ</RUBY>�ġ�
���������ˡ������������Ҳ�޷����ġ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011600a05">
��������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011610a06">
����ȥ�й����ο����Ǽһ��ڷ����ֳ�
������յı��档
��������½�ֳ���Ŀ��һ��Ҳû�С�
��ʵ����֡���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011620a09">
����������
��������½֮�ʲ����ĺ������Լ����̵Ĺ켣��
���൱����ĵط�Ҳ����ȷ�ϵ���
������ˡ���ȴ����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011630a08">
��Ҳ��ֻ�ǽ�����Զ�����̵���ɽ�ж��ѣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011640a06">
������ض���Զ�����̵���ɽ����ָ��Զ��
����Ȼ�������С������ĵط���
���ɵ������ص�����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011650a06">
�����޳ɹ���
��û�з����κκۼ�����

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011660a08">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011670a05">
��ͯ�ĺ��С������θ��룿��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011680a09">
���޷���⡣ȷʵ��ʨ�Ӻ������˵�ģ�
ȷʵ���ɡ���
��Ȼ���Է��ǳ�Խ��ʶ�Ĺ��
����Ӧ��������Ȼ�ı�׼ȥ��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011690a05">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011700a07">
����ô��
��˵����ֻ�Ǽ��ܼ򵥵���Ŷ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011710a08">
����ͱ���ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011720a07">
���ǡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011730a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011740a06">
������������
���������ʲô��˵�ľ�˵�ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011750a07">
�������𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011760a06">
���š���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011770a08">
���˷�ʱ����ѡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011780a07">
�����޷������������ܰ���
����ѽ����˵�����Ǽ򵥵��뷨���ѡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011790a07">
��Ҳ��ֻ����Ϊ���Ǻ�����½�ĳ�����
�Ǹ���ʹ��������Ҳ����Ϊ��ĵط��ɣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011800a08">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011810a07">
������˵����ľ�ڸǵ�ɭ��֮�С�
�������Ļ�˭Ҳ�����������˰ɡ���

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011820a06">
��������˵����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011830a08">
���㰡����
�������ĵط���Ҳ�������ֳǡ�
�ض��ľ���פ�ͻ��ء���
����˵ֻ����ȹ������ɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011840a07">
��Ҳ�ǰ���
��������������������������������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011850a05">
����������������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011860a09">
����������������

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011870a06">
����������ʲô����

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011880a08">
����������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011890a07">
����������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011900a08">
���ȡ��ȡ������£�
������ô˵���͵���˵�����˵��е�
����˭����������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0011910a05">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0011920a09">
�������Ǻǡ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0011930a08">
���ġ�������
�����ף�����Ϊ��ʲô������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011940a06">
����������衣
����ղŵķ��ԡ�����ʲô���ݡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011950a07">
����
��������óԡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0011960a06">
���ú���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011970a07">
���������������ǣ����������Ĺ�����˾���
��Ҫ��Ȼ�Ļ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011980a07">
�����š�����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0011990a07">
����Ȼ���⻹�������õĺá�����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012000a06">
�������Զ�����˵��ѡһ������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012010a07">
������ѡ�ԡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012020a06">
����˵������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012030a07">
�������ǣǣȣ��𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012040a06">
������������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012050a09">
����������ԭ����ˡ�
����Ϊ����Ľ�פ����˾�
Ҳ��������������롣��

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012060a09">
�����ǺŻ������У�
���˿���Ҳ���������֡�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012070a07">
������˵����ǣȣ���Ļ����ֵĻ���
������������Ǻűض��ڹض������
��½��ǰ��Ҳ��û�������˰�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012080a07">
�����Ǻ��¼�ʵ���ǣǣȣѵ��±���ʵ��ô����

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012090a06">
�����������������
�������Ļ��������Ǻš��ľݵ��ں��ϰɡ�
����������Ժܸߡ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012100a08">
���������Ȧ���״��̫ƽ�󽢶ӷ�����
���˾����������������
�����ǣ�����衣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012110a07">
���ţ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012120a08">
����פ��Ҳ�ܵ����ǺŵĻ�������
������ô˵������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012130a07">
����������
���㰡����ô��֪���ʣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012140a08">
��ʲ��ʲô��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012150a07">
��Ϊ�˱ܿ����ɶ�װ�ɱ����ߣ�
�ⲻ���ټ򵥲�������ı��
������ƽʱ��Ҳ�������𣿡����̶ֳȵġ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012160a08">
��������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012170a06">
��������Ȼ��
��߱ɱ�ֵܣ�
��ȡ�̳�Ȩ����˵�Ļ����ǲ�һ������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012180a07">
��û�е�����˵�ɡ�
���������ҡ���Ӣ�������ȫ�������ʡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012190a07">
��������Сʿ����һ�����õ�Ҳ��ʹ��������
����������������ʵ���±�����ʹ�ΰ��񻯡���
ı��Ļ��ͳ�����ļ��ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012200a07">
������Щ�һ���˵��
�Ǳ��˵�Ц��£��������ɣ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012210a08">
�������ԡ�������
��ȷʵ����������

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012220a06">
����һ������
���ֽ׶εıϾ�ֻ�Ǵ��⡭����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012230a07">
���š����ԳԵ�����ô����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012240a06">
������㡣
���������ˡ���������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012250a09">
���ղŲ�������˵�Ļ�����Ƿȱ��ȷ�ĸ��ݣ�
���ܶ�ط������Ͽɡ�
���������ʵ�Ļ������β��ܻ��Σ�ա�����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012260a05">
������
�����벻���ı䡣��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012270a05">
��������ȫΪ��פ������ı��
����������ˣ����ȸ���Ը���Ӧ�ǣǣȣ����塣
�������侳���޷���˴�֡���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012280a05">
���������ǣȣ������������
֦ҶҲ���ܿ��ή��
���������ǡ��ᱲ֮�����ں����
��Ըֻ��һ������������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012290a05">
��<RUBY text="������">������</RUBY>������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012300a09">
��������
��Ϊ�������ޣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012310a06">
��Ϊ�����ݴ�ͣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012320a08">
��Ϊ�˸��׵����£���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012330a07">
���治������ү�ӡ�
���Ű��Ű�����

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012340a08">
���㿴�³��ϰ�?!
��Ҫ�Ե��⵽ʲôʱ�򣡡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012350a07">
����������ˡ�
���ǣ��������⡣��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012360a08">
��������̸��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012370a07">
���������㳳���ˡ�
����Ҫ�����ֳ������հ����ú����˼�˵������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012380a08">
����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012390a09">
������Ҫ�����⣿��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012400a07">
������Ҳ�����ڡ�
���������΢��Щ��䴫�š���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012410a07">
������ɫ���ߡ����¡�
��֪���𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012420a06">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012430a09">
����ɫ֮�����ǳ�ɫ��
���⵽�ף���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012440a07">
����ǿ������
����������ս����<RUBY text="�����">Ӣ��</RUBY>����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012450a08">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012460a07">
����˵������Ӵ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012470a08">
������ȫ�����Ŷ��
���Ǽһ��ڸ�ʲô����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012480a07">
����˵�ˣ�������С���壬
������ǿ�������֮�䰡��
���ȣ�������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012490a08">
��˭�Ƕ���������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012500a07">
�����������ޡ�
�����У���Щ<RUBY text="��������">������Ա</RUBY>�ǡ���

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012510a05">
����������˵�����Ĵ����Ի���
����֮���ߵ������𣿡�

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012520a07">
���Զԡ���֪����������
���������ߴ򵹺��ֲ�֪���١�
�����׻��Ǹ���˵������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012530a07">
�����ǣ����д�˵�ɣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012540a08">
����������
�������ı��档��

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012550a06">
������Ҳ���ǲ����ܡ�
�����¹��������������������¼��У�
Ҳ�кܶ����֮������

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012560a06">
��Ҫô��˽����Ҫô�����ǺŸɵģ�
���޲�����������ˡ���
���ǳ�ɫ����Ҫ����Ĵ��ڣ�
�����е�������Ҳ�������С���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012570a09">
����������������
���ղű���ģ���ȫ����Ĵ��ӵĵط��١���
������������Ӣ�۴��˵ĵ����¡���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012580a08">
���������Ǻŵ���Ϊ�ɣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012590a09">
�������Ǹ���׵����ˡ�
�����Ǵ��ӱ��ƻ�ǰһ�յ��¡�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012600a09">
��ƶɮ�Ĺźӹ������յ�����ǲ�ٵ����硣
˵����һ���������������ߣ���ʻ���ɫ�Ľ��У�
�Ǽһ���ǣȣѵ�Ѳ���
һ�������淴�ж�ʲô�ġ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012610a05">
��Ŷ��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012620a09">
������Ҫ����Ԯ��
������ֵ�Բ����Ҳ��ɿ���֮ʱ��
û�п�����ᣬҲ�������ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012630a06">
��ͯ�Ĵ��ˣ�ʧ���ˡ�
������Ϊ��֪ı����ͨ����
��Ӧ��������Щ����ˡ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012640a08">
���������⳼��֮����
����΢Ҳ���һ���Լ���������˵������

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012650a09">
����ѽ��ѽ��ȷʵ������˵����ȫ��������
ƶɮҲ��ʡ����
����Ҫ˵��ڵĻ����������ŵ�����Ҳ���еġ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012660a06">
����ʲô����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012670a09">
���Ǹ���ǲ�ٰ�������ͶԸ��εص�ɽ�ǳ�ִ�ţ�
���ݾ�Զ�Ĺ�����أ�����ɳ��ܶ౦ʯ��
�����������룬��Ϊ���Ӧ�ÿ�������

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012680a09">
��֪���в�ͨ�������Է��ھ�
��ô˵�ء������˰���
����Ȼ��Ϊ��ʿ���е��ô�����

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012690a06">
�������������뷢����׬������
��ͦ���ֶε����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012700a09">
��˭֪����ʱ������Ҳ�޴ӵ�֪�ˡ�
�������������˾���֪������ô����ֵļһ
�����ڹź�Ҳ��û��˭���������ı��档��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012710a07">
��������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012720a08">
����ɫ���߰�������

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012730a05">
������������˼��
���ǡ���ͯ�ĺ��У���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012740a09">
���ǡ�������ﻹ����ʵ����֪�����£�
�����跳���˰ɡ�
�����ҡ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012750a09">
��Ҫ�ǳ�ɫ���������<RUBY text="��������">������Ա</RUBY>Ҳ�Ĵ���ɱ�Ļ���
�����Ǽһ�����Ǹ������Ƶģ��ǣǣȣѡ�
��Щ�һ����ʰ�İɡ���

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012760a05">
��ʨ�Ӻ𡣡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012770a06">
����ͬͯ�Ĵ��ˡ�
�������������Ĵ��Թ㲼�£�
�����Ӣ�۵���Ը���ߣ�
������Щ�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012780a09">
������������ô��Ĳ�����
������������״���£�
���ɶ����ڵĹ���Ҳ�ǲ��еġ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012790a06">
���ǵġ�
������Ϊ��������ǿ�����ִ󷬵ľ������ƣ�
�Բ��ȷ��ӵĽҷ�Ӧ��֮ǰ���ӳ��ס���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012800a05">
���š��˽�����С�
���׵�������ȥ����
Ҳ�������´����
��������������ơ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012810a08">
���ǣ����״��ˡ���

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012820a07">
����ѽ�������ˡ�
����ү�ӡ��������˰ɣ���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012830a05">
������Ҳ�ԡ�
������û���������⣬���յĴ��̾͵��ˡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012840a09">
����ѽ�����ˣ��Եȡ�
��ʨ�Ӻ���ˣ��Ǽ�����������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012850a06">
��������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012860a08">
���Ǽ��£���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012870a07">
�������������������ڴ��񱾼ҵĻ�Ȩ�̳У�
����������ϻ���������
����������˵���ɣ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012880a07">
���Ǹ���ô���ˣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012890a06">
�������Ǹ��¡�
���պ���˵����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0012900a09">
������������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012910a08">
��ʲô������ҵ�����һֱ�����
������ͳ������
����ô�ˣ�����Ȼ�ı������ˣ�
��Ҫ����֦��飬��ȡ�����𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//�룺�ܥ����ʤ�
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012920a06">
�������ꡭ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0012930a08">
����������Ц����
����Ҫ����������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0012940a07">
�����鲻�ð���
���ƺ�����ʲô���õ��£���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012950a06">
������������

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012960a05">
����������
����ϸ״��Ҳ�������ˣ�
���в���Ҳ������ǿѯ�ʡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012970a05">
���Ǽ��¾͸�������ɡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0012980a06">
���ǳ���л���İ��š���
����ʤ�̿֡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0012990a05">
����ҹ�͵��ˡ�������λ�ˡ�
�����������ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0013000a09">
���ǡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0013010a07">
���ޣ����ˡ�
����ү�ӣ�ʱ�������𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0013020a06">
�����ó�ʱ��������衣
�����˵ĵ��ʱ������Ѿ����ڣ�
�óƺ����ɰ��ϡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0013030a06">
������ҲҪ�ƺ����ɴ��˰ɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0013040a07">
������
����ûʲô�İɡ����ܴ��ڻ����и���
ʱ������ʱ�����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma03/0013050a06">
������һ����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0013060a05">
�����ˣ����ˡ�ʨ�Ӻ�
�������ɶ��Բ�����ǽ��һ��Ĵ��ڡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0013070a05">
������֮���������������ֻ�в���衣
������걲��δ�����棬���ĸм�į��
���ǿ��Բ���ȥ�������ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0013080a07">
���ð����Һ���Լ��Ҫ�������ء�
��ȥ֮ǰ˳����ȥһ�ˡ�
������һ�δ󽫾�����Ҳ��������

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma03/0013090a05">
���Ǻǡ�
����Ҫ̫������������Ȼ�⺢�Ӻ����ɥʧ��ĸ��
������úõسɳ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0013100a07">
���õġ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0013110a08">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0013120a07">
���ţ�����ôһ����Ȥ����
���׵��常����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0013130a08">
��û��ûʲô������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma03/0013140a09">
����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_002.nss"