//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_036.nss_MAIN
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
	#bg113_�k�Υ۩`��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_001.nss";

}

scene mc02_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_035.nss"

//�����k�h��
//�����Υ��
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 19900, "#FFFFFF");

	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/ev/ev174_����׏�Ͷ��.jpg");
	CreateSE("SE01","se���L_�Ɖ�_���k09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("�ϱ���");
	Fade("�}ɫ��",2000,0,null,true);

	WaitKey(1500);

	CreateSE("SEL01","se����_����_����᤯01_L");
	MusicStart("SEL01",1000,1000,0,900,null,true);

	WaitKey(2500);

	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw�����_��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯Ļ������
<voice name="����㣯Ļ����" class="����������" src="voice/mc02/0360010e270">
��������������������


{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯Ļ���¡�
<voice name="����㣯Ļ����" class="����������" src="voice/mc02/0360020e271">
���ǣ�����ʲô����
���ǵ�����ʲô��!!��


{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯Ļ���á�
<voice name="����㣯Ļ����" class="����������" src="voice/mc02/0360030e272">
�����ް����ӷ����ް����ӷ𡣡�


{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯Ļ���ġ�
<voice name="����㣯Ļ����" class="����������" src="voice/mc02/0360040e273">
���ǡ�������ʧ�ˡ���
�������ֳ���ʧ�ˡ�����


{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯Ļ���š�
<voice name="����㣯Ļ����" class="����������" src="voice/mc02/0360050e274">
���󡪡����£��������н���
������������ô���¡�����������ô
���¡���!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360060a06">
��������������������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360070a06">
��������ͻȻ����ϵʱ��
�������²��Ƿ����ˡ�����


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360080a06">
���������������
���Դ�����ؾ�����ˡ�����Щ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 10000, 0, null);

//������
	PrintGO("�ϱ���", 20000);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg113_�k�Υ۩`��a_01.jpg");
	StR(1000, @0, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	FadeDelete("�ϱ���", 1000, true);

	CreateSE("SE02","se����_����_�᤺����01");
	StL(1000, @-60, @0,"cg/st/st����_ͨ��_˽��.png");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360090b49">
��ʨ����ʨ�Ӻ�
��Ϊ����ͣ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360100a06">
���������ϵ��¡�����


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360110b49">
�������ܣ����������ֳǡ���
����󡪡���Ȼ��ˣ���


//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360120b49">
����������Ϊ!?
���������������֡�������Ļ��!!��


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360130a06">
����������������
�����£������̿�����֮�׼�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360140b49">
������������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360150b49">
���ǡ�����Ϊ������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360160a06">
�����˽�פ����Ϊ����


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360170b49">
��ʲô!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360180a06">
��������Ϊ�����׵�֮���ͱ�����
����פ�����Դ�ɨƽ�����ޣ�
�۶᱾������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360190b49">
������������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360200b49">
���ǡ������ѡ���
���������ѡ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360210a06">
�����ǣ���פ��δ�ܵóѡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360220b49">
��ʲô����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360230a06">
����������֮����
���������ɰ��ϵ��������ڴˡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360240a06">
������֮���죬ʨ�Ӻ𻤼��ڴˡ�
�������ް��������֮��ڡ�����
��׷���ڴˡ���


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360250a06">
���������ºS�����н��ڡ�
�����������޾�δ���𣡡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360260b49">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360270a06">
�����£�
������ʨ�Ӻ𣬶������¾�����������



//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360280a06">
�����ԣ�
��������¶�Ҫ��������֮���裬��ס����֮
��أ���


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc02/0360290b49">
������������֮����𡣡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360300a06">
���ǣ���


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc02/0360310a06">
���˿̡���ǰ����򣡡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¥ѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//��������ݳ�����ע�����˱ܡ�
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("�ϱ���");

	CreateColorSP("�}ɫ�\", 1, "#000000");

	FadeDelete("�ϱ���",1500,true);

	WaitKey(1000);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("����80", 30, Center, Middle, "cg/sys/title/�����ȥ뱳��.png");
	Move("����80", 0, 20, 0, null, false);
	Move("����80", 200, -20, 0, null, false);

	OnSE("se���L_����_��ꪏ���01", 1000);
	CreateTextureEX("����81", 32, Center, Middle, "cg/sys/title/���񥿥��ȥ�logo.png");
	Fade("����81", 300, 1000, null, false);
	
	CreateTextureSPadd("�}����500", 31, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Rotate("�}����500", 0, 180, 0, 180, null, true);
	Move("����81", 0, 600, 40, null, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"mc03_001.nss"