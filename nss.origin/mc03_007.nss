//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_007.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_008.nss";

}

scene mc03_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc03_006.nss"

//��ҹ
//�������ɽ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	OnBG(100, "bg022_ɽ��a_03.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);

	SoundPlay("@mbgm35", 0, 1000, true);

	SetNwC("cg/fw/nw������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070010e309">
������������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070020e310">
������������


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070030e311">
������������


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070040e309">
��Խ��Խ���˰�������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070050e310">
����Ϊ�Ѿ�����ʮ�����˰�����


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070060e311">
������ĽѲ�ߵ���Щ�һ
���ܶ�һ���������ɺܶ�ɡ���


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070070e310">
������ȥ���໻һ�¸�λ�ɣ�
����Щ�һһСʱҪ���źӱ��������Ρ���



{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070080e311">
�������ǻ������˰ɡ���


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070090e309">
��������ʮ���Ӿ��ܻ����ˡ�����һ�¡�
�������������Ǹ��һﻹ������������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070100e310">
��ֻ�����ǽ���֣��Ǽһﲻ���ǻص�������
�˰ɣ�
������˳���ٿ�����ʲô�ġ���


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070110e309">
��֮��ȥ������������Щ�˰ɡ�
���������ģ����������һֱ��פʪ�غ��ˡ���


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070120e311">
���Ҿ��ã������ֻ����ʱ�Ƚϳ���
����������һ��ѹ�������ײ��������͡���


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070130e310">
��˵����Ҳ�ǰ���
���Ǽһ����ں����ܰɡ���


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070140e311">
����Ϊ�Ǻͽ�פ����ս����������


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070150e309">
��������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070160e310">
���೤��
����Щ<RUBY text="�ʣ���£����">Ӣ����ʿ</RUBY>����Ļ����𣿡�


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070170e309">
�������ġ���
����Щ�һ�������ֳ�<RUBY text="����������">����Щʲô</RUBY>��
������Ҳ֪���ɡ���


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070180e310">
����Ȼ��˵�ˣ�
���������������󲻳���������


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070190e309">
�������ֳ��˹����ļһ��Ƕ�������˵����˵
�������Ƕ�ը���ˡ�
����˵�����˶����������𡭡�
Ҫ�������εĻ�����Ҳϣ��������������


//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070200e309">
�������ϴ��˶��Ƽݻ���ˣ����Ѿ���������
����Ц�������˰ɡ�
����������ս������ս���Ѿ���ʼ�ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��@Ϣ

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070210e310">
������������


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070220e311">
��<RUBY text="����">���</RUBY>���Ϊս���𡣡�


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070230e309">
����ô˵�ء�
���Դ����н����Ը��ǡ���Ҳ�п���������
���ȳ�������������Ǳߡ���



{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070240e311">
�������ȽϺ��ء���


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070250e309">
�����𣿡�


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070260e311">
���Ҳ�Ը���ڻ��ս����
���������ҵĹ��硣��


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070270e310">
����Ҳ��ô�롣�೤Ҳ�ǡ�
���Ҿ��󲿷ֶ��ǰɡ���


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070280e309">
���š���
��ȷʵ�ǰ���
��˭����ϣ���Լ��Ĺ��緢��ս���ء���


//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070290e309">
����ʹ��ˣ���������Ҳֻ��Ӧս�˰�����


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070300e311">
��������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070310e310">
���������䡣��


//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070320e310">
��������һ�ߣ����źӱ�Ҳ���԰�����


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070330e309">
��������һ�¡�
���ܿ�͡�����


//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070340e309">
����������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070350e310">
���೤����


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070360e309">
���ղ���û��������ֵ���������


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070370e310">
����������
�����𣿡�


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070380e311">
����������֪������


{	NwC("cg/fw/nw������L.png");}
//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070390e309">
���Ǹ�����������ʲôӲ��ײ�����ϵ���������
���Ǵ���𡣡�



//������㣯�������L��
<voice name="����㣯�������L" class="����������" src="voice/mc03/0070400e309">
�����������Է���һ��
������������ȥȷ��һ�¡���


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070410e310">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������������

	OnSE("se��Ȼ_��ľ_̽��02", 1000);

	WaitKey(1000);

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070420e311">
������û���˰�����


{	NwC("cg/fw/nw�������.png");}
//������㣯����������
<voice name="����㣯��������" class="����������" src="voice/mc03/0070430e310">
��û���ˡ����ɣ���


{	NwC("cg/fw/nw�������.png");}
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070440e311">
���೤����
�����һ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
	WaitKey(1000);

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070450e311">
���೤����


//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070460e311">
�������ף�
����ô�ˡ���


//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070470e311">
��ι���೤ȥ�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
	SetVolume("@mbgm*", 2000, 0, null);
	WaitKey(1000);

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070480e311">
������ι����


//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070490e311">
����ô���£�
������������������һ��׽Ū�Ұɡ�����



//������㣯�������¡�
<voice name="����㣯��������" class="����������" src="voice/mc03/0070500e311">
��ι������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������

	OnSE("se��Ȼ_��ľ_̽��01", 1000);

	WaitKey(300);

//��һ�W
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	DeleteStC(100,false);
	OnSE("se���L_����_�����02",1000);
	Fade("�}����500", 100, 1000, null, true);
	FadeDelete("�}����500", 500, true);


//��Ѫ
	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	FadeDelete("�}ɫѪ", 1000, false);

	CreateTextureEX("�}�ţ�15", 11000, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");

	OnSE("se����_Ѫ_�����01", 1000);

	Fade("�}�ţ�15", 1000, 1000, null, true);
	Delete("�}����500");
	Fade("�}�ţ�15", 1000, 0, null, true);
	FadeDelete("�\Ļ��",1000,true);

	WaitAction("�}ɫѪ", null);

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
<voice name="����㣯��������" class="����������" src="voice/mc03/0070510e311">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф��󡣱�ʿ�����

	OnSE("se����_�n��_ܞ��04", 1000);

//��ѩ܇�
	StL(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300, true);


	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0070520a12">
������������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0070530a12">
���٣��٣��١�
���Ǿ���΢����һ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_008.nss"