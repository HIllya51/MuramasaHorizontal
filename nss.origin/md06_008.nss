//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_008.nss_MAIN
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
	#bg009_�`�}סլ��a_03=true;
	#bg012_�`�}�kǰ���x_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_009.nss";

}

scene md06_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_007.nss"


//��ҹ���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 50, "BLACK");

	OnBG(100, "bg014_�`�}���A��_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm32", 0, 1000, true);

	DrawDelete("�ϱ���", 300, 100, "slide_01_02_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����

����������

����⡢�����������ˡ�

�����Ѿ����������Լ����޿��̡�

����Ϊ��Ϊ�Լ����е�ʹ�ࡣ

���������κ����

����Ҳ��èҲ�ա�
������Ҳ������Ҳ�ա�

�����ʲô���С�

��ʲô��Ҫ�ȴն�����ǿ��

����Ը�ǣ�ʯͷ�ͺá�

���ǰ���

��������ʯͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���kǰ
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateColorSP("�}ɫ�\", 10, "#000000");
	OnBG(100, "bg012_�`�}�kǰ���x_03.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ҫ�ܵ�������

��Υ�����ɵ��ˣ�Ҫ���ܷ����Ʋá�

�����ɡ��������ڸ�ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����Ҋ����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080010e108">
��������˼��
��������ѧϰ�����ࡣ��

//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080020e108">
�����Կ�һ���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("@OnBG*", 1000, 600, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ҿ������

��������ɱ�˵����У���Ӧ�ܵ��Ʋõ��˾������

��������ô�ˡ�

��Ϊʲôû���Ʋá�

��Ϊʲô��û�н����ͷ­���¡�

������˵���Է��˴��������Ǵ���ģ�
������������Ŷԡ�
��������Ҳ֪���������

�������ǽ����������г���������ǰ���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����Ҋ����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080030e108">
���ۣ����Ǿ��˵����࣡
����һ�μ������������ˡ���

//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080040e108">
���ţ�ֻ�ǡ���
����������һЩ���������ƺ�
�����������ķֲ�·���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("@OnBG*", 1000, 300, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ң�Ҫ�����������

���µ����Ҫ��β���������˫��֮�µ����ǡ�
���Ҳ���˵��û�����������λ���������Щ
��������ص�ս�Ҷ���ȥ������Ҫ��β�����

�������⻹�㲻�ϳ���������ɡ�
����ֻ�������ſ���˵���Ҷ����ս��
��ֹ��͡���½��ŷ�޵ġ����ȷ�Ѫ�ꡣ������ֹ
���������������������£�Ҳ��������

��������Ҳ��ͬ����ɱ�ˣ�����ɱ¾��
���ɰ���ǧ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����Ҋ����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080050e108">
�����ڷ���ʲô�𣿡���������
ԭ����ˡ�
����ʵ�������ҵ���ʦ���ڸ���
�����ݻᡣ��

//������㣯���ࡿ
<voice name="����㣯����" class="����������" src="voice/md06/0080060e108">
��ȥ�μӵĻ�˵�������Խ��
���ķ��ա��ţ�һ�����Խ����
������ֻҪ��������Ԫ����
��ô���߰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("@OnBG*", 1000, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ô��������ô����
�������ҵ��

��Ϊʲô�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ܞ�Q

}

..//������ָ��
//�Υե����롡"md06_009.nss"