//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_001.nss_MAIN
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
	#bg033_������һ��_01=true;
	#bg051_�Զ��Ҿ��g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_002.nss";

}

scene md02_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md01_037.nss"


//���^ȥ���롣�ӹ�����v�x�������꾰��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	SoundPlay("@mbgm26", 0, 1000, true);

//��CG�ʤ��Τǁ��} inc�Ѿ�
//	CreateTexture("�㏊��", 300, @0, @0, "cg/bg/bg051_�����Ҿ��g_01.jpg");
//	Fade("�㏊��", 0, 1000, null, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	SetNwC("cg/fw/nw����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0010010a00">
����������س���֮ʱ���ڸ���ԭ��һ��
��������֮��������
���Σ��������z���񡣴Σ�����z���񡣡�

//��������
<voice name="����" class="����" src="voice/md02/0010020a00">
�����������ߣ����������������Ҳ����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010030a14">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010040a00">
���Σ���׵�縡֬��Ʃ��ˮĸ֮��ˮ���ߡ�
��ʱ����έ��������֮�������
��������Ħ־��˹ڭ���ȹų���
���Σ���֮�����񡣡�

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010050a00">
���˶�������������������Ҳ����

//����Ϣ
{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010060a14">
�������ꡭ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010070a00">
���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 1000, @0, @0, "cg/bg/bg033_������һ��_01.jpg");
	SetTone("�}����", Sepia);
	Fade("�}����", 300, 1000, null, true);
	Delete("�㏊��");


//���Ѥ���
	OnSE("se�M��_���ߥ���_Ź��01", 1000);

	WaitKey(1000);
	SetNwC("cg/fw/nw��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md02/0010080a14">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010090a00">
����úõ����ҽ�����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010100a14">
����Ҳ���ǲ���Ŭ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010110a00">
������ô˵Ҳ��ͳ���˵ĺ�̣��ն�����Ů��
�������¼���Ҳûѧ�ã��Ժ�ɻᶪ��Ŷ����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010120a14">
������ˡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010130a00">
����ѧ���ᷳΪֹ���޷����ա���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010140a14">
��ȫ��Щ����񻰡���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010150a00">
��������Ȼ����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010160a14">
��ż��Ҳ����Щ��ͬ�ġ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010170a00">
��Ҫ�ǹ���������Ļ�������ѧ������ȥѧУ
����ʦ�ú�ѧ�ȽϺá���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010180a14">
��������Щ�һ��˵�̡�
��ֻ���Թ��Ե�˵��
��������˼�����û�����ġ���

//���⡿
<voice name="��" class="��" src="voice/md02/0010190a14">
����Ȼ�������������������˯�ˣ�
����������Щ�һ��������
��û������˯�ˡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010200a00">
������������ĳɼ��Ż����������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ�

	OnSE("se�M��_���ߥ���_Ź��01", 1000);

	SetNwC("cg/fw/nw��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md02/0010210a14">
�����ء���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010220a00">
����Ҫ����Щ�һ�������˵���ƺ���ʦ��
��һ����ҪӦ����ô���˺ܲ����׵ġ�
��Ҫ���Ÿ�л������ȥ���ΰ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ�
	OnSE("se�M��_���ߥ���_Ź��01", 1000);

	SetNwC("cg/fw/nw����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0010230a00">
���������ң��ҵĽ���ɲ���ҡ��������

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010240a14">
����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010250a00">
������������

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010260a14">
��˵�����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010270a00">
��������

//��������
<voice name="����" class="����" src="voice/md02/0010280a00">
����˵��ʲô���أ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010290a14">
���š�����

//���⡿
<voice name="��" class="��" src="voice/md02/0010300a14">
��˵Щ��������Ĺ�����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010310a00">
���������ģ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010320a14">
���š���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010330a00">
��˵���񻰣������ĸ�����
��������̫��ı仯��
��ֻ��������ֲ�ͬ���ѡ���

//��������
<voice name="����" class="����" src="voice/md02/0010340a00">
��������ô˵�ƺ��е���֡�����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010350a14">
�����磿��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010360a00">
������ϣ���񻰡���
����������ǻ��粻��ģ�
֮����д�ء�ڤ���Ͱ������ŵ�����
����ҹ�������Ӱ���ҹ��������������

//��������
<voice name="����" class="����" src="voice/md02/0010370a00">
�������������������պͺ��󡣡�

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010380a14">
��ŶŶ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010390a00">
�����ɣ�����Щ���ƵĶ�������

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010400a14">
����ȫ��һ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010410a00">
��������
���ţ����ݽ��Ͳ�ͬ�ɡ�����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010420a14">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010430a00">
������<RUBY text="����ŵ˹">���</RUBY>֧�����磬
<RUBY text="����">���</RUBY>��Ϊ�����ӣ�
���°ٱ۾��˼����۾��ˡ�
���������������ǣ�������������ڤ������

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010440a14">
�����֡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md02/0010450a00">
��֮����Ȼ<RUBY text="����ŵ˹">���</RUBY>��<RUBY text="����">���</RUBY>
����ʮ��̩̹���񡭡�
�����Թ������նԴ����˵�������
������̩̹�����״򵹡���

//��������
<voice name="����" class="����" src="voice/md02/0010460a00">
�����ʮ��������С�ĵܵ�<RUBY text="����ŵ˹">ũ��</RUBY>�����ˡ�
����������Ҳ�Ƿ��˺͸�����ͬ��������
ͬ�������Լ����ӽ��¡���

//��������
<voice name="����" class="����" src="voice/md02/0010470a00">
��������Ӿ���<RUBY text="��˹">����</RUBY>��
������Ϊ����������ӭ����ȫʢʱ�ڡ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010480a14">
����Ȥ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010490a00">
�����𣿡�

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010500a14">
����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010510a00">
�����С�����Ϊֹ��
���ص����¼ǵ�ѧϰ�ϡ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010520a14">
��������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010530a00">
�������´ΰɡ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010540a14">
���ޡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010550a00">
������Ҳû�á���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010560a14">
������Ҫ���ʡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010570a00">
��ʲô����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010580a14">
��<RUBY text="��������">����ŵ˹</RUBY>��<RUBY text="����">����</RUBY>�ǽ���ˣ�
Ȼ�����˺��ӵİɣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010590a00">
���š���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010600a14">
��������ŵ˹�Ǹ��������İɣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010610a00">
�������ǰ�����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010620a14">
��ĸ�ӽ�飿��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010630a00">
������������

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010640a14">
���������ǲ������𣿡�

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010650a00">
�����಻���ԡ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010660a14">
����Ϳ����ˣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010670a00">
����Ҳ����ķ���İɡ���

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010680a14">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0010690a00">
����������ѧϰ����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010700a14">
���õġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣���ä���
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, -240, -460, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw��_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md02/0010710a14">
�������౳��ĸ�׶���ȡ���ף�����Υ���˷���
��������ķ�����ķ�����ˡ��
�����������Ҫ�����ˡ�֤������ǿ��������
��Խ�˶��������񡣡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010720a14">
����Ϊ�񣬾��ܽ��ҵ�����<RUBY text="������">������</RUBY>��
���������ƻ������ܽ�ű��˷������ĸ��ס�����

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0010730a14">
��û���κ��������͸��׾�������棡
�����ܽ���ĸ�����ߵĸ��׶��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ȥ
	EfRecoOut1(300);
	Delete("�}����*");
	SetTone("������", Monochrome);

	CreateColorSP("�}ɫ�\", 5000, "#000000");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ס�
�����ס���

��<RUBY text="����������">�����׶��</RUBY>��
����������˵����

���Ǿ������Ը����
���⡣

������û����ʵ����
����ĸ��ױ�<RUBY text="��������">Ĩɱ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺���Ҥ�����
	EfRecoIn1(18000,600);

	Fade("�}ɫ�\", 0, 0, null, true);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg051_�Զ��Ҿ��g_01.jpg");
	CreateTextureSP("�}����200", 2100, 600, InBottom, "cg/st/st���L_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}����300", 2200, 150, InBottom, "cg/st/st����_ͨ��_˽��.png");

	EfRecoIn2(300);
	WaitKey(1000);

//����ȥ

	EfRecoOut1(300);

	Fade("�}ɫ�\", 0, 1000, null, true);
	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ױ������˵���
������޷���Ϊ���ף���������֮��������

�����ǲ��Ǹ��׵ı��⡣
������������ķ�����δ���ϸ�����Ϊ�˸��������¡�

�����գ����������ڷ���
�����ԣ������޷��Ը��׵���������档

��Ҳ����˵����ĸ��ױ�������������ᡣ
����������׶���Ϊ������ƻ���
��������������ȷʵ���Ե÷��
�����е���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0010740a00">
����Ң���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����˼������Ϊ�������Ǹ��˵Ŀ��ա�

��������֮�����ﵽ�׻���
�������뷨�������أ�
������𣿡����뿪����

�������֪�����Ը������к����뷨��
��Ϊ��ظ���������Ը������Ϊ�����Ǻš���
���ĸ�ס��������硢��Խ�����Ϊ��
����Ҫ����֪�������Ѵﵽ���µı�����

���������롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md02/0010750a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���Ҳ��ǣ�Ӧ�������롣

����ʱ���һ�û���������������
��������䡣�����޷���Ϊ���͡�
���ջ��ǽ���ĸ���Ĩɱ����
���½�����������̬�������ҵľ�����ɡ�

���Ҹ�˼��ʲô��
���Ҹ���ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md02/0010760a00">
���ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ۥ磻�ȥ�����

	CreateColorEX("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");
	Fade("�ۥ磻�ȥ����ȣ�",3000, 3000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

//��ClearWait��ClearFade���Ȥɤ����Ƥ�һ˲�\�����Ƥ���Τǡ��Τ�ʹ�ä����K��� inc�Ѿ�

}

..//������ָ��
//�Υե����롡"md02_002.nss"