//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_030.nss_MAIN
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
	#bg001_��a_01=true;
	#bg047_�������_�a_01=true;
	#bg023_��Դ̫�μ�_03a=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg023_��Դ̫�μ�_03b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_031.nss";

}

scene md06_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_029.nss"

//��bg001
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 1500, "#000000");

	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 650, @0, @288, Dxl2, false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md06/0300010a00">
����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0300020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1000);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md06/0300030a00">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���쵰��
������Ϊ�ζ����񡪡���Ϊ��α����ߵ��� 
���У��Ǵ�����

����ȴ����Ͳ�Ӧ������������������
���쵰�����ڻ���ʲô�������޴���

��ֻ�ǡ���Ϊʲôû��Ӧ��
���ٿ����뽣�е���ϵ�ǲ��ᱻ�жϵġ�
���ܾ����Զ����������ʧȥ��ϵ��

�����п��ܡ���
���������������ص��޷����Ӧ��

�����ߣ�<k>
�������˿�����ϵ�ķ�Χ��<k>
�����������Ѿ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoIn1(18000,600);
	CreateTextureSPmul("�}���넿��", 16010, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev263_������̤�؞��ѩ܇�.jpg");
	SetTone("�}����", Monochrome);
	EfRecoIn2(300);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0300040a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ȥ����ӿ��Ĳ���֮�С�
�������ܡ������²����ܷ�����

����֮��׷��ȥ��
���Լ���ȥ�ǲ��еġ�Ҳ�����ý��С�����ʲô�ء�

�������ġ���ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md06/0300050a00">
���á�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������һ��˼�����ҷɱ����𳵹����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����·��bg047
	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg047_�������_�a_01.jpg");
	FadeBG(0, true);

	CreatePlainEX("�}��д", 110);

	DrawTransition("�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ǰ��һ�������
����վ������������ܡ�

�����⸽��Ӧ���С���
������������������

���ҵ��ˡ�

����������վ��
�������ų�վȫ�����ܡ�

������������������ʻ����
���û��ᡣ

��·��Ҳû��
�����������Ļ������ڽ����ڻ𳵵��ٶȵ���վ��

�����ҵ��ﳵվ��ͬʱ������Ҳͣס�ˡ�
�����Ŵ򿪡�

�����ǡ����޷���ˡ�
����̫�ࡣ

��Ҫ�ϳ��ĳ˿���һ����ǽ����ڳ�ǰ������ 
�޷��ӽ�������
��
���ɶ񡪡����ڸ�·����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0300060a00">
��ʧ���ˣ���

{	NwC("cg/fw/nw�\�ͣ�.png");}
//������㣯�\��Ů��
<voice name="����㣯�\��Ů" class="������Ů��" src="voice/md06/0300070e130">
����ѽ����ʲô!?��

{	NwC("cg/fw/nw�\�ͣ�.png");}
//������㣯�\���С�
<voice name="����㣯�\����" class="����������" src="voice/md06/0300080e131">
��ι����!!��

{	CreateSE("SE01","se����_�n��_ܞ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, false);
	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0300090a00">
�����м��¡�����

{	NwC("cg/fw/nw�\�ͣ�.png");}
//������㣯�\��Ů��
<voice name="����㣯�\��Ů" class="������Ů��" src="voice/md06/0300100e130">
���ú��ŶӰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��û�취һһ˵����
���������ƿ��������ˣ��Ƽ�����ǰ����

������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�\�ͣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯�\���С�
<voice name="����㣯�\����" class="����������" src="voice/md06/0300110e131">
���쵰!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ�ͻ���w�Ф��줿��
	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}��д",0,500,300,@0,@0,60,Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ͻȻ��������ת��˫�ֳ��ڵ��ϡ�
��
����������ײ����!?

���Ǳ�������̧��ͷ�����Ƕ��������ֻ��س�Ц�ҡ�
��ʲôѽ�����ö��ˡ����쿴���������

����Щ���ʡ�����˵ʲô��
����֪�����ж�ôƴ����

����Ҫ����������һ�ߡ�
���ҿ��������ֶ��롪����֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0300120a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ǿվ����
�����ű�ȥ��

������һ����<k>
{	OnSE("se�ճ�_����_���]���01", 1000);}
�������ţ�ȴ���ҵ���ǰ���ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0300130a00">
������Ա����

{	NwC("cg/fw/nw�Х���܇��.png");}
//������㣯܇�ơ�
<voice name="����㣯܇��" class="����������" src="voice/md06/0300140e105">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������ҵ����������ŷ����̵���ͷ������
��֮�Աǡ�
�������ҵĽ��ǣ��������š�

{	OnSE("se�\��_�Х�_�k܇", 1000);}
�����������ˡ�
�����ı����м����ˣ�����ָָ������Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0300150a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������ˡ�
��ֻ�ܵ���һ�ࡣ

�����м����ӡ�����ʮ������
�������ʱ���ˣ�

��Ϊʲô��������������
��̫û�����ˡ�

��̫�����ˡ�

�������£�����ԭ�¡�
�������¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 600, 0, null);
	SetVolume("OnSE*", 600, 0, null);

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����4000", 4000, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03a.jpg");
	StL(4100, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	StR(4100, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(0, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw�դ�_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/md06/0300160b05">
�����������ɡ�
���Ҳ�����Щ���ӵ��¡���
�������������˵���
��������߶�����

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/md06/0300170b06">
���ţ�
����㣬�����ô������

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/md06/0300180b05">
�������ؼҡ���

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/md06/0300190b06">
���ס���Ҫ�
������������һ���������

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/md06/0300200b05">
���԰ɡ�
���㿴����ʿ���ˡ���Ҳ��ô˵�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);
	Delete("�}����*");
	DeleteStA(0,true);
	CreateTextureSP("�}����4000", 4000, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	StR(4100, @-60, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StCR(4110, @60, @0,"cg/st/st�դ�_ͨ��_˽��.png");

	FadeStR(0,true);
	FadeStCR(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw�դ�_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/md06/0300210b05">
�������Բ���
���������Ƕ��ˣ������쿪ʼ��һֱ��������
�ɣ������Ǵ�Ŷ�û�г��緹�ɡ���

{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/md06/0300220b06">
�������ˣ�
�������ˣ���

{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/md06/0300230b05">
����ʿ���ˡ����Ǹ����������鷳���𣿡�

{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/md06/0300240b06">
���԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����롣�ڶ�Ԓ�饹��
//���òҚ�
	EfRecoIn1(18000,600);
	Delete("�}����*");
	CreateTextureSP("�}����4000", 4000, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03b.jpg");
	DeleteStA(0,true);

	EfRecoIn2(300);

	CreateSE("SE01a","se���L_����_���̤���05");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(1000);


//Ѫ���֤��˰פ�������Τǻ���򤳤����Ф� inc�Ѿ�

	EfRecoOut1(300);

	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}�ţ�100", 4200, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Zoom("�}�ţ�100", 0, 2000, 2000, null, true);

	Wait(1000);

	EfRecoOut2(600,true);

	Wait(3000);

	SetVolume("OnSE*", 650, 0, null);
	SetVolume("SE*", 650, 0, null);

	CreateColorSP("�\Ļ", 20000, "#000000");
	DrawTransition("�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("OnSE*", null);
	WaitPlay("SE*", null);

}

..//������ָ��
//�Υե����롡"md06_031.nss"