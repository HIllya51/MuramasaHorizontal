//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_007.nss_MAIN
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

	$GameName = "ma04_008.nss";

}

scene ma04_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_006.nss"

//��ҹ�κ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070010a12">
�������ţ��ǵġ�
���ȴ�Ŵ�̽��һ�����������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070020a12">
��û�ж�����
������û�л�æ���ˣ�
������û�а��ż�ǿ��������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070030a12">
���ǡ���
����ֻ���е㣬Ԥ������ˡ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070040a12">
���������޷��ڴ��Ը������ˡ���
�����ǡ���ȷ��
�������ס����ҵ����Ρ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070050a12">
�������һ�����취��
����Ȼ����ɽ�ۻ�������ô����;������
�һ��������취������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070060a12">
���١��١��١�
���벻�õ��ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ץĥá�
	OnSE("se����_���å��ԥå�_��å�����",1000);

	StR(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070070a12">
��������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070080a12">
�������Ѿ������Ⱑ��
���ٺ١�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070090a12">
�����ˡ���
����Ȼ��ˣ���ֻҪ���þ���ͺ��˰ɣ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0070100a12">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

//���ǣȣѡ����`���åȈ̄���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg029_���`���å�����̄���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StL(1000, @0, @0,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStL(300,true);

	SetFwH("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070110b02">
������������

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070120e004">
���ģ������������𣿡�

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070130b02">
���š�
���������鷢չû�ܰ�����Ԥ�ڰ�����

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070140e004">
��˵���ײ����ǻ��ֺ��ӡ�
���Լ�˵���Ļ���һ���������������

//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070150e004">
���������˻���ʲô�����뷨����
������ȥ�������ּһ��

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070160b02">
����������������ô����

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070170e004">
������ʧ���ˡ���

{	FwH("cg/fw/fw���`���å�_��˼.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070180b02">
��������

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070190b02">
������ѩ���ʧ��Ҳ��Ҫ����
����������������ʧ��
��ֻ�ǡ�����

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070200b02">
�������޵ı�����
����ɫ���ߡ�����

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..//����֦����r�Τ�ͨ�^
//������֦����Έ��ϤΤߴ�̨�~�������Έ��Ϥ��w�Ф�

if(!$Kanae_Dead){
	SetFwH("cg/fw/fw���`���å�_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0039]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070210b02">
�����������ξ��

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{SetFwH("cg/fw/fw���`���å�_����.png");}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070220b02">
�����ʯ���뾡�������
����Ҳ��Ϊ��<RUBY text="����򡤣��������">ΰ������</RUBY>��

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070230b02">
�������治�á���
������ѩ��������أ�

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070240b02">
����ϵ��ũ������
���������������̼�������

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070250e004">
���ǡ���

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070260b02">
�����С�
���������鱨<RUBY text="����">����</RUBY>�ഫ���

{	FwH("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0070270b02">
��<RUBY text="��������">׼������</RUBY>����

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/ma04/0070280e004">
�������ǣ���

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma04_008.nss"