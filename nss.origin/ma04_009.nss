//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_009.nss_MAIN
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
	#voice_on_�о����L=true;

	$PreGameName = $GameName;

	$GameName = "ma04_010.nss";

}

scene ma04_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_008.nss"

//�񣰣�
//�����΍u�о�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg044_�о�ʩ�O��_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st���L_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

	#voice_on_�о����L=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090010b22">
���������ԣ�
����˵������ʲô����

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090020e068">
���ǡ�
�����Է��ﴦ�����˵ı��桭����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090030b22">
������ʬ񱻹��ʳ���ͻȻ�����ˣ�
����֪���ˡ���ɡ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090040e068">
������������������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090050b22">
��ȱ����Դ�����þ���ļһ
����������ѧѧ�ɡ�Ȼ���أ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090060e068">
���Ƿ��ֲ������������ߡ���

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090070b22">
��ʲô����ԭ���ǻ��˰���
������˭����������ļ����
��������

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090080b22">
����ѽ�����ˡ�
�����ҹص�ȼ�Ͽ���ȥ����

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090090e068">
��������Ѷ�𣿡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090100b22">
��������ô�����������һ����
�������Ǽ������ɵ�ӡ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090110e068">
��������ˡ�����

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090120b22">
���ǾͲ��ð׷������ˡ�
���ҿ�����Ҳ�Ѿ����ù����ˡ�
˵�������ҿ��ֳ������оͻ�ץ�����һ��
������յ�������

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090130e068">
�������˽⡣
����ô�ҾͰ������ķԸ�ȥ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090140b22">
���ţ������ˡ�
���Źְ���������ҵ�һ�¡���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090150e068">
��ʲô����

{	FwC("cg/fw/fw���L_ŭ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090160b22">
��Ϊʲô�Ƿ��ﴦ����˷����������߰���
���������Ǹ���ģ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090170e068">
������������Ϊ��
�����ﴦ�����ľ���һֱ�ͺ���и������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090180b22">
��Ϊʲô����

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090190e068">
��������Ա����Ը�����Ǹ���Ѳ�ߡ�
��˵�ǻ������顣��

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090200b22">
���������ǣ���ʲô�������ں���Ц������

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090210b22">
��ʵ��̫���ں��˸����Ҳ���Ц�㰡������

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090220e068">
�����ź���������ġ���
����˵ֻ�������������ɹ�ɡ�
����Ϊ���ﵽ�׷�����Щ<RUBY text="����">ʲô</RUBY>����Ҳ��֪���ġ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090230b22">
�����ǰ׳���ȥ����
��ȥ���߾����ӡ����еڶ��Σ�
����Ҳ�ý�ȼ�Ͽ⡣��

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090240e068">
�������һ�ת���

{	FwC("cg/fw/fw���L_�֤�.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090250b22">
��������¾����ˡ�
���Ǹ��ӳ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090260b22">
��ֻ�������ͺ��ˡ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090270e068">
�����������ǡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090280b22">
���������ۡ����ޡ������ˡ�
�������㡣�����㡣���¡�ȥ��������

//���о����L��
<voice name="�о����L" class="�о����L" src="voice/ma04/0090290b22">
���������иɾ��ˡ�
���ɻ�ɡ��ÿ���������ô���ˣ�
�ѵ���ó�����������һ���ͺ��ˡ���

{	NwC("cg/fw/nw�о��T.png");}
//������㣯�о��T��
<voice name="����㣯�о��T" class="����������" src="voice/ma04/0090300e068">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma04_010.nss"