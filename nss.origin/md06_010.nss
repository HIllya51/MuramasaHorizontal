//<continuation number="730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_010.nss_MAIN
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
	#bg007_��m��·a_03=true;
	#bg001_��d_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_011.nss";

}

scene md06_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_009.nss"

//�����⡣bg049
	SoundPlay("@mbgm32", 0, 1000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 10000, "BLACK");

	OnBG(100, "bg049_�������_סլ��a_03.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	DrawDelete("�\", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ϊ�Σ����š�

��Ϊ�Σ����ߡ�

//�����ߣ����ʥꥪ����
//�������Ϻ΄I���Τ�����
���˵ؾ����Ǻδ���

���޴�֪����

���ܾ��ã����ǲ���֮�¡�

���ƺ���֪���������������жϡ�

��Ҫȥ�һؼ����𡭡�

�����������ͺá�
������Ҳ΢�������

����ȥ������

��׸�����˷������ɡ�

��û���϶���������

�����ǣ��˵��Ǻδ���

��������ʶ�ֺ����δ������

�������ڡ�
��ȥѯ��һ�°ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����E��
//��������
<voice name="����" class="����" src="voice/md06/0100010a00">
�������ˡ�
������Ѱ���ҵļ��䣬��֪����ʲô�𣿡�

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100020e109">
��������ô����ʱ��������
�лΣ�������!?
����Ȼ�ǿ��ɷ��ӡ�����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100030e110">
�������ƻ��������Ӳ�����
�����������ʲô!?��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100040e227">
�����ǵģ�
������Ҳ��Ѳ���Ƿ��п��ɷ��Ӱ�����

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100050e228">
���ƻ������ļһ�һ�����֣�
���Ǿ������ץ�񡭡���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100060e109">
������������ץ���ɡ�
�������Ѳ鷸���𣡡�

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100070e227">
����˵����Ĳ�������
���������ǣ���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100080e110">
������ƭ�ˡ�
���������ǵĻ�������˭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������š�
���ƺ���Ϊ����������

������ҲΧ����ʮ�ˣ���Ϊæ��������
˭����Ͼ�˼��ҵ����ʡ�

�����С�
���������������������������ķֲ�·�ڡ�

��һ��Ҫ��������һ�£�Ȼ���������������
�����û�����֧���������Ԫ��

��ȫ����Ϊ�˱������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0100090a00">
��������һ��·��
��ͨ����������䣬���������֮������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100100a00">
��������һ����ȥ�����ˡ�
��Ҳ������Ѱ�����ҡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100110e227">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100120e228">
���㾿��������
�����ۣ�һ��Ƴ�ζ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100130a00">
����ô�����ء�
������û���˺�������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100140e110">
������ι���������������
���˹�������˭������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100150e109">
����֪����
���Լ����Թ����İɣ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100160e228">
��ι������һ
��������˼������������æ�š���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100170a00">
�������æ����
���Ҳ�֪���Լ�Ϊʲô���š���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100180a00">
������λ֪����
��ϣ�����ߴͽ̡���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100190e110">
���������˻���ô����������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100200e109">
����������������������ν��
����֮������Ⱥ�һ
�����������ŵ��°�����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100210e227">
����˵�����ǡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100220a00">
������ô�ˣ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100230e228">
����ѽ�����㿴������̮�����Ǳߵĺ����ˡ�
�����ƻ��󣬾�û���ɺ��˰�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100240a00">
��ԭ����ˡ������ɲ��С�
����������Ϊ�����޷��ɺӵĻ���
�ò��ӻ����׶ɹ����Ϳ������𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100250e228">
��������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100260e227">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100270e110">
�������������������в��ɻ�ȱ�Ķ���������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100280e109">
������Ϊ�����������ˡ�
�����⳥����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100290e227">
���⳥������ô����������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100300e109">
�������⳥�Ļ�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100310a00">
���ò��ӡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100320e227">
�����ӣ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100330e109">
���Ͱ�����ȫ�����ȥ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100340a00">
���ò��ӡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100350e227">
���ò���!?��

//�����ߣ������Ϥ碌����
//���l��Ԓ���Ƥ���裡
//���äƤ�������аħ�����餢�ä����ФäƤ�
//�E�ÒB��!!��
{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100360e109">
�����ں�˭˵������
����˵��̫�����ˣ���һ��ȥ���ƹ�!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100370a00">
����������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100380e109">
��˵�ľ����㣡 ���������ģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100390a00">
����û������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100400e109">
����ô�����Ѿ������˰ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100410a00">
����ѽ��
���������𡭡�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100420a00">
������Ӧ������һЩ�������
һ���ľٶ��ȽϺðɡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100430e109">
���Ѿ�����!!��

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100440e110">
��ι��������ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100450e109">
��֪���ˡ�
���������ã���ֻ˵һ�Ρ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100460a00">
��ʲô����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100470e109">
�����Ǹ���˵����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100480e110">
��������������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100490e109">
��֪������
�����ˣ������ǣ������⳥���ǹ�������ط���
ѡһ���ɣ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100500e227">
��������������˵�Ի�����
����˵������û���ƻ�����������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100510e109">
��˭�����ǣ�
��������ô˵�����Ƕ��ܰ��£���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100520e227">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0100530a00">
���벻Ҫ���ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100540e109">
�����ˣ������һ�ߴ���ȥ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100550a00">
�����С�
�����ܳ��ܡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100560a00">
��������ҡ���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100570e110">
��ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100580a00">
�����ǲ�Ӧ�û���ָ��
�����Ҿ����ˡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100590a00">
���������ѵ����ҡ�
�����Ҳ��ԡ�Ǵ���Ұɣ��ͷ��Ұɡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100600e227">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100610e228">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100620a00">
�������ˡ�
����ƾ���Ǵ��á�ɱ����Ҳ����ν����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100630a00">
�����ԡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100640a00">
���������ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��������
//���ա���줿��
	CreatePlainEX("�}��д", 4900);
	CreateColorEX("�\Ļ��", 5000, "#000000");
	OnSE("se����_�n��_ܞ��03", 1000);

	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Fade("�\Ļ��", 200, 1000, null, true);

	WaitAction("�}��д", null);
	Delete("�}��д");

	CreateTextureSP("��줿�´�", 2010, Center, InBottom, "cg/bg/resize/bg001_��d_03l.jpg");
	CreateTextureSP("��줿��", 2000, @0, @0, "cg/bg/bg001_��d_03.jpg");

	Move("��줿�´�", 10000, @0, -120, DxlAuto, false);
	FadeDelete("�\Ļ��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ҹ�ձ��������

��������
�����ѵ�������

������Ϊʲô��������

�����ˡ�
���Ǳ����߻��ġ�

�����Ǹ������ļһ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0100650a00">
����������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0100660a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��줿�´�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����Ц��
�����������ˡ����ǿ�Ц������

��Ц���ڵ���ֱ�����
�����Ӻ��ۡ���ΪЦ�ù���������

���ǰ�������Ц��
��ֻ������

����˵���⣿

��Ϊʲô�㡭��
��Ϊʲô��Ҳ���������ҷ��顣

��Ϊʲô������һ���ߣ�

��Ϊʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(2000, 1000);

//��Ԫ�Έ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100, "bg049_�������_סլ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100670e110">
������ι��
����һ��ô���ã���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100680e109">
����ô���á�������ô֪������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0100690e227">
������������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0100700e228">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100710e109">
�������ɶ�
���ܾ��ñ�úܻ�������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0100720e110">
����Ҳ���á�
����������͵���Ϊֹ�ɡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0100730e109">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md06_011.nss"