//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_014.nss_MAIN
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

	$GameName = "mc03_015vs.nss";

}

scene mc03_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_013.nss"


//���������֣�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg022_ɽ��a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��".1500.true);

//��ѩ܇�
	StL(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140010a12">
������������

//�������á������å�����
//�����`���o���Υ�����

{	OnSE("se�ճ�_�Cе_�o��ͨ��03", 1000);
	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140020a12">
�����󣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140030a12">
���ţ�����ѩ�������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140040a12">
���ԡ������Ҳ�����ˡ�
���ܲ�����ͨһ�µ���ȥ����
���٣��١������ˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140050a12">
���ţ�������<RUBY text="������">�ǣȣ�</RUBY>������Ҳ�����˰ɡ�����



//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140060a12">
������������
������������ô���ء���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140070a12">
����ɻ�û����Ŷ����
���٣��ٺٺٺ١�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140080a12">
������������������<RUBY text="������">���ǵ�</RUBY>���͡�
��С��Щ����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140090a12">
����������˵�ꡣ
�������������������쵰����


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0140100a12">
��<RUBY text="������">����Ŷ</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"mc03_015vs.nss"