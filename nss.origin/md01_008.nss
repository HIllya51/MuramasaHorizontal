//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_008.nss_MAIN
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
	#bg023_��Դ̫�μ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_009.nss";

}

scene md01_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_007.nss"

//���Y�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg023_��Դ̫�μ�_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080010b30">
�������ˡ�
�����Ů���������Ů����

{	SoundPlay("@mbgm04",0,1000,true);}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080020b30">
��������������ȴ����Ķ���֮������

{	FadeStL(300,false);
	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080030a15">
���š���

{	FadeStR(300,false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0080040a01">
���ǡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080050b30">
����ν���У���������ߡ�
����Ϊս�����ڵĶ�������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080060b30">
���������ȣ���սΪ����
��ս��������Ϊ�η���������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080070a15">
��������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080080b30">
����Ϊ�ƾ٣�
���������壡��

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080090b30">
��ս����ΪѰ���Լ��İ����ƻ����˵İ�����Ϊ��
���������������ı�������

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080100b30">
�����Ƕ��ƣ�
������Ƕ�!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0080110a01">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080120a15">
��������ô����

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080130b30">
���������������Ϊ����ս����
��������ʶս�������
��ս����������ȥ������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080140b30">
������֧��������
������Ϊ����ֹ�������콣��!!��

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080150a15">
���Ǿ��Ǹ��׵�Ŀ�ģ���

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080160b30">
���ǵġ���

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080170a15">
�������Ļ���������ţ�
������Ӹ���ָ���ĵ�·���̳������־����

//������������
<voice name="��������" class="��������" src="voice/md01/0080180a15">
����֮�����⺢�Ӽ��Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0080190a01">
���ǡ����ǣ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080200a15">
���������赣�ģ�ֻ�����ֶ���ͺá���

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080210b30">
���š�
�����ǣ����������ᣬ���ҲҪ����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080220a15">
���ţ����ǣ�
����˵Ҫ�������������𣿡�

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080230b30">
���ǵġ������ǽ�һ����
���ϳ��ͱ�������һ������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080240b30">
���������������ѹ�ƵĻ�������ƽ�����ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080250a15">
��������

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080260b30">
��û������𣿡�

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080270a15">
��û�����飡
��������ָ�������Ľ��У�
�������Ը����

//������������
<voice name="��������" class="��������" src="voice/md01/0080280a15">
��û�к��֮�ǡ�
�����Ѿ����⺢�Ӵ�����ȫ�����ա���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0080290a01">
��������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0080300a15">
�����쿪ʼ���Ͻ�����ɡ���

//������������
<voice name="��������" class="��������" src="voice/md01/0080310a15">
�������ף����׵�Ը����ʹ�ý��У�
���������еĵ��С���
����һ��Ϊ�������Ը������

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0080320b30">
���š�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_009.nss"