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

scene ma03_017.nss_MAIN
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

	$GameName = "ma03_018.nss";

}

scene ma03_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_016.nss"

//���F�eϯ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw�׵�_���d.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170010a08">
��ʲô���̨�ѿ������壡
������������ֶ�������ľ��������𣡡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170020a08">
������ԭ�¡���
����ȻΥ������֮��ѧ��������������������
�ɡ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170030e284">
���ǡ��������ô����
���н����¡�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170040a08">
�������׵����ˣ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170050e284">
���ǡ��ǳ���Ǹ���׵����ˡ�
����ʵ�������辩���̣��¹���ͺ����ᱨ��֮
־΢����ֻ������׷���Լ���˾���������
ҵ�ˡ���

//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170060e284">
�����������ϣ��������������С����׵�����
�ľٶ���
���¹���Ϊֻ�ܶ������м��������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170070a08">
��û���ء�
���Ǿ���������ܵ�����ɣ�����ñ�����

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170080e284">
���ǡ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170090a07">
����ѽ��ѽ��ѽ��
���侲����з�������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170100a08">
����˵˭��з���!?��

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170110a07">
�������»��Ǳ���ˡ�
������������������ø�����ġ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170120a07">
����˵������Ҳ����
����ñ����ڸ�����İɣ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170130a08">
������С����һ�������ڵ��ĵ�����˵ʲô��
��������!!
�����������������!?��������ºú�
������˵!!��

{	FwC("cg/fw/fw�衩���װ_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170140a07">
������������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170150a07">
���ۡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170160a08">
���𡪡�����!!��

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170170a07">
��������������
����Ϊ�Թ�����˵����һ�����Ȥ������Ȼ��
ʹ�Ǹ����Ҳ��������Ϊ���ѡ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170180a08">
����Ų�������Ϊ�����أ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170190a07">
�����𣿡�

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170200e284">
����������һ�£�ܥԽ����
������������������������Щ����ʧ�񡭡���
���ϣ���������������ָ�𣬷���ע�⡣��

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���䤿������
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170210a07">
������
����ʲô��˼������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170220a07">
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��i���������㥭��
	OnSE("se���L_����_������02",1000);

	SetNwC("cg/fw/nw�߼�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170230e284">
�����������ǡ����������ˡ�����
��������ԭ�¡���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170240a08">
����ñ��������°ɡ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0170250e284">
���ǡ����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ˤ������¤���ӣţ�
	OnSE("se����_����_�᤺����01",1000);

	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170260a08">
��������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170270a07">
�������̨���壬��ͦ��Ȥ�
���Ҿ��úܺ�Ŷ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170280a08">
���ߡ�������ˡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0170290a07">
�����Բ��ԡ�
������˵�����<RUBY text="������">����Ȥ</RUBY>������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0170300a08">
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 150, "#000000");
	FadeDelete("�ϱ���", 1000, true);

	Wait(1000);

}

..//������ָ��
//�Υե����롡"ma03_018.nss"