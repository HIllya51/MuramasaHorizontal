//<continuation number="330">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_001.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg008_����_01=true;
	#bg015_�`�}·���Y_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_002.nss";

}

scene mb04_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_022.nss"

//��������·��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSP("�}ɫѪ", 1000, "#CC0000");
	CreateTextureSPsub("�}�ݱ���", 3000, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");
	OnBG(4000,"bg009_�`�}סլ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm29",0,1000,true);

	SetNwC("cg/fw/nw����T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯����T����
<voice name="����㣯����T��" class="����������" src="voice/mb04/0010010e028">
��Ӵ�����Ϻá���


{	NwC("cg/fw/nw����T��.png");}
//������㣯����T�¡�
<voice name="����㣯����T��" class="����������" src="voice/mb04/0010020e029">
�����Ϻá����������治���ء���


{	NwC("cg/fw/nw����T��.png");}
//������㣯����T����
<voice name="����㣯����T��" class="����������" src="voice/mb04/0010030e028">
���ţ���ȷ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȫ��˥�åɥޥ��������Фäȡ�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("�}�ݱ���", 1000, true);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������񣬱�Ӧ�Ǹ������ҵĿ��⣬�������ʡ���
�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

	WaitKey(1000);

	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh01.png");
	CreateTextureEX("�}�����֤����", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh02.png");

	Move("�}������������", 0, @0, @-20, null, true);
	Move("�}�����֤����", 0, @0, @+20, null, true);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֤����", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);

	SetNwC("cg/fw/nw����T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����T����
<voice name="����㣯����T��" class="����������" src="voice/mb04/0010040e028">
��������������������


{	NwC("cg/fw/nw����T��.png");}
//������㣯����T�¡�
<voice name="����㣯����T��" class="����������" src="voice/mb04/0010050e029">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//���硣ѧУ������
//�����䤬��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSP("�}ɫѪ", 1000, "#CC0000");
	CreateTextureSPsub("�}�ݱ���", 3000, Center, Middle, "cg/bg/bg008_����_01.jpg");
	OnBG(4000,"bg008_����_01.jpg");
	CreateSE("SEL01","se����_����_ѧУ�ν���01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm22",0,1000,true);

	SetNwC("cg/fw/nw�̎�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯Ů�̎���
<voice name="����㣯Ů�̎�" class="������Ů��" src="voice/mb04/0010060e124">
��ι�����ְ�����
���������Ͽ�ʱ�䣡��


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У���
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010070e091">
��ι��������ȥ�����氡����


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У¡�
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010080e092">
����ȥ�ﵺ�Ұɡ���


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯŮ��
<voice name="����㣯��ͯŮ" class="������Ů��" src="voice/mb04/0010090e090">
����ʦ�������ϲ�������


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У���
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010100e091">
�������ﵺ�ң�
���������ȥ���Ұ�����


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�Уá�
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010110e093">
��������⡣���Ǵ��α��ˡ���


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У¡�
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010120e092">
����Ϊ���Һ���Ǯ����
��ȥ���е��ĳԵġ���


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У���
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010130e091">
��˵��û������


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯŮ��
<voice name="����㣯��ͯŮ" class="������Ů��" src="voice/mb04/0010140e090">
����ʦ����Ҫ�ϲ���������


{	NwC("cg/fw/nw�̎�.png");}
//������㣯Ů�̎���
<voice name="����㣯Ů�̎�" class="������Ů��" src="voice/mb04/0010150e124">
���������ǵġ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȫ��˥�åɥޥ��������Фäȡ�
//�����䤬�䤬�Ԥ��ä�ֹ�ޤ�
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("�}�ݱ���", 1000, true);


/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������֮ҹ��ҰȮŭ�ͣ��¶���������
����ů��Ѩ��ĸ����֮�������߸���ϯ���ޱȰ�������
�����⴩͸����������£�����֮ʨ����ǧͷ¹����
����������ˮ��֮���ѣ�����ͯʰ������`̤����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

	WaitKey(1000);

	CreateTextureEX("�}�����֍���ҹ", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh03.png");
	CreateTextureEX("�}�������¤���", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh04.png");
	CreateTextureEX("�}������ľ©��", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh05.png");
	CreateTextureEX("�}�����֤�����", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh06.png");

	Move("�}�����֍���ҹ", 0, @0, @-60, null, true);
	Move("�}�������¤���", 0, @0, @-20, null, true);
	Move("�}������ľ©��", 0, @0, @+20, null, true);
	Move("�}�����֤�����", 0, @0, @+60, null, true);

	Fade("�}�����֍���ҹ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�������¤���", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������ľ©��", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֤�����", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);

	SetNwC("cg/fw/nw�̎�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯Ů�̎���
<voice name="����㣯Ů�̎�" class="������Ů��" src="voice/mb04/0010160e124">
��������������������


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯ�У���
<voice name="����㣯��ͯ�У�" class="����������" src="voice/mb04/0010170e091">
��������������������


{	NwC("cg/fw/nw��ͽ��.png");}
//������㣯��ͯŮ��
<voice name="����㣯��ͯŮ" class="������Ů��" src="voice/mb04/0010180e090">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//��һ���ͥ��ҹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSP("�}ɫѪ", 1000, "#CC0000");
	CreateTextureSPsub("�}�ݱ���", 3000, Center, Middle, "cg/bg/bg033_������һ��_03a.jpg");
	OnBG(4000,"bg015_�`�}·���Y_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetNwC("cg/fw/nw�ӹ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯�׃���
<voice name="����㣯�׃�" class="������Ů��" src="voice/mb04/0010190e283">
�����ӡ����ӡ�����


{	NwC("cg/fw/nwĸ�H.png");}
//������㣯ĸ�H��
<voice name="����㣯ĸ�H" class="������Ů��" src="voice/mb04/0010200e248">
����������һ���˳���ô�ࡣ
���ְֵ��Ƿݶ�Ҫ����Ե��ˡ���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯�׃���
<voice name="����㣯�׃�" class="������Ů��" src="voice/mb04/0010210e283">
��������


{	NwC("cg/fw/nw���H.png");}
//������㣯���H��
<voice name="����㣯���H" class="����������" src="voice/mb04/0010220e236">
��������û��û�¡�
���ְֲ����ˡ���


{	NwC("cg/fw/nwĸ�H.png");}
//������㣯ĸ�H��
<voice name="����㣯ĸ�H" class="������Ů��" src="voice/mb04/0010230e248">
��������ô��������
��ż��ҲҪ��������һ�㡣��


{	NwC("cg/fw/nw���H.png");}
//������㣯���H��
<voice name="����㣯���H" class="����������" src="voice/mb04/0010240e236">
������������


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯�׃���
<voice name="����㣯�׃�" class="������Ů��" src="voice/mb04/0010250e283">
����������������
���ְֲ�����������


{	NwC("cg/fw/nwĸ�H.png");}
//������㣯ĸ�H��
<voice name="����㣯ĸ�H" class="������Ů��" src="voice/mb04/0010260e248">
�����ɣ������Ӷ���ô˵�㡣��


{	NwC("cg/fw/nw���H.png");}
//������㣯���H��
<voice name="����㣯���H" class="����������" src="voice/mb04/0010270e236">
������������������������𣿡�


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯�׃���
<voice name="����㣯�׃�" class="������Ů��" src="voice/mb04/0010280e283">
���š���


{	NwC("cg/fw/nwĸ�H.png");}
//������㣯ĸ�H��
<voice name="����㣯ĸ�H" class="������Ů��" src="voice/mb04/0010290e248">
��ι����


{	NwC("cg/fw/nw���H.png");}
//������㣯���H��
<voice name="����㣯���H" class="����������" src="voice/mb04/0010300e236">
�����ǲ�������������Ŷ��
����������Ϊ�����㣬
���Բ������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȫ��˥�åɥޥ��������Фäȡ�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("�}�ݱ���", 1000, true);


/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
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

	WaitKey(1000);

	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh07.png");
	CreateTextureEX("�}���������ο�", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh08.png");
	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh09.png");
	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh10.png");
	CreateTextureEX("�}������ľ©��", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh11.png");
	CreateTextureEX("�}�����֪���ӻ", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh12.png");

	Move("�}������������", 0, @0, @-100, null, true);
	Move("�}���������ο�", 0, @0, @-60, null, true);
	Move("�}������������", 0, @0, @-20, null, true);
	Move("�}������������", 0, @0, @+20, null, true);
	Move("�}������ľ©��", 0, @0, @+60, null, true);
	Move("�}�����֪���ӻ", 0, @0, @+100, null, true);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}���������ο�", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������ľ©��", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֪���ӻ", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);

	SetNwC("cg/fw/nw���H.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯���H��
<voice name="����㣯���H" class="����������" src="voice/mb04/0010310e236">
������������


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯�׃���
<voice name="����㣯�׃�" class="������Ů��" src="voice/mb04/0010320e283">
������������


{	NwC("cg/fw/nwĸ�H.png");}
//������㣯ĸ�H��
<voice name="����㣯ĸ�H" class="������Ů��" src="voice/mb04/0010330e248">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_002.nss"