//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_042.nss_MAIN
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
	#bg027_���ӘS�u�h���g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_043.nss";

}

scene md04_042.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_041.nss"


//���u�h���g��
//���ɤ��ɤ���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	CreateSE("�ߤ�", "se����_����_�ߤ�02");
	MusicStart("�ߤ�", 0, 1000, 0, 1000, null,false);

	WaitKey(1500);
	SetVolume("�ߤ�", 1000, 0, null);

	StR(1000, @0, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStR(300, false);


	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420010a08">
��ͯ�Ĵ��ˣ���

{	StL(1000, @0, @0, "cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300, false);
	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420020a09">
���׵����ˡ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420030a08">
������������ʲô��!?
���ⳡ���ҡ��������ǡ�����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420040a09">
�������Ǻ��ڳ���������
�������Ĵ�ɱ¾���ƺ����Բ�֪��������
����ӷ����ˡ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420050a08">
��������ô�ᡪ������������!?��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420060a09">
����Ȼ��������������Կ������ƺ�����Ч����
�����ڵ�ָ��ϵͳ��Ȼ�ٻ�����˵�������ɾ�
�ˡ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420070a09">
����ͬ�����Ǻ��������Ӧһ�㣬����ʽҲʧ
ȥ�˿��ơ�
���վ��ۿ�ҲҪ�����ˡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420080a08">
������ʨ��ʨ�Ӻ�������?!��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420090a09">
������������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420100a09">
���Ѿ�������Ѷ����

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420110a08">
��������������������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420120a08">
����ô������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420130a09">
���׵����ˡ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420140a08">
���ǡ��ǵġ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420150a09">
�����ϵ��¾Ͱ������ˡ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420160a08">
������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420170a08">
������������˼�ǣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420180a09">
����˼��
��ƶɮҪ���Ͽ�ȥ��һ�ˡ���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420190a09">
��ȥ���Ǻ����Ĺ���������Ǻ�һս������

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420200a08">
������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420210a08">
���������У� 
��̫Σ���ˣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420220a09">
����Σ�գ�Ҳ����������ң����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420230a09">
�������������ֳǡ����������޵Ķ��ǡ�
��û��������ӵĵ�ѡ�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420240a08">
��������Ȼ��ˣ��������ս��
����ô˵��Щʧ�񣬵���ս���Ǻ���ȹ��
���±���ͯ�Ĵ��˻������Ϊ�ʺϡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420250a09">
���׵����˵����µ���ƶɮ���Ϻ����޷��󼰵�
�ɡ�
�����ƶɮ������������ǡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420260a09">
��������ˣ���ϣ���׵��������ڰ��ϵ���
��ࡣ��

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420270a08">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420280a09">
���ټ���ƶɮ��Ҫһս����

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420290a08">
��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420300a09">
�������������������������޵У�
���Ը��ҵ���������ͬ��������һ�����ɵ�
�������Ǻţ���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420310a09">
����ϧ����ϧ��
�����δ�����аԵ�����˵��
����ʲô���°��ߡ���

{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420320a09">
���ǡ��ǡ��ǺǺǡ�����
��������η����ӱܴ���Ļ�����
ƶɮ֮�����Ҳδ��̫С����!!��

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420330a08">
��ͯ�Ĵ��ˡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420340a09">
�����ض��ԡ�
���޷���ƶɮ��һ�������������

{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420350a09">
���׵����ˣ�����Ļ���Ϊƶɮ���ơ�
���԰���ħ����<RUBY text="֤��">�׼�</RUBY>�¾ƣ�
��������һ������

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0420360a09">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ƥ���

	OnSE("se����_����_�i��09", 1000);

//	Move("@StL*", 300, @-50, @0, DxlAuto, false);
	DeleteStL(500,true);

	Wait(1000);

	SetFwC("cg/fw/fw�׵�_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0420370a08">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1500, true);
	Wait(1000);

}

..//������ָ��
//�Υե����롡"md04_043.nss"
