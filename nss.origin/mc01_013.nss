//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_013.nss_MAIN
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

	$GameName = "mc01_014vs.nss";

}

scene mc01_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_012vs"


//������֦������
//��������ǰ
	PrintBG("�ϱ���", 30000);

	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);

//�������Фˡ�������Ϧĺ��r�Ǥ������ޤ��͡��Ȥ���Τǡ���α�����ʹ�ä��Ƥ��ޤ��� inc�Ѿ�

	OnBG(100, "bg056_���L�����Tǰ_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm06",1000,1000,true);
	Delete("�ϱ���");

	FadeDelete("�\Ļ��", 1000, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130010a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130020a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣���å��ä�
	OnSE("se�ճ�_ʳ��_���å��ä�",1000);

	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��a.png");
	FadeStR(300, true);
	
	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130030a03">
����л�������

{	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130040a04">
��Ҫ�����𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130050a03">
���ǰ���
��ʱ��ɲ������޵ġ���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130060a04">
���쵽��ĺʱ���˰ɡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130070a03">
���������ǵģ���ô���ֵ����˰���
����Ȼ����ҵ���Լ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130080a04">
����ظ��˶����Լ�������ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130090a03">
��������Ϊ���ȡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130100a04">
���ź����ǣ���������ƺ��������Դ�С��Ϊ
���Ķ���ת����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130110a03">
�����𣿡�����̫�ź��ˡ�
����ô�ҵ�Ϊ�˳�Ϊ�������ģ������½�����
���ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130120a04">
������Ų��������Ҳ�޷��ɡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130130a03">
���ǰ���
�����ڻ��Ǵ������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦��˽��������ȥ�Х�
	DeleteStR(200, true);

	OnSE("se����_����_�𤭤�02", 1000);

	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����衿
<voice name="����" class="����" src="voice/mc01/0130140a04">
������������ʥҲһ���𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130150a03">
���ѵ���������ˡ�
��������������ڲ�����
��Ʒ�ʿ��ǻ�����ʧ��Ӵ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130160a04">
����ô���������ڴ������õ���ɫ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0130170a03">
������Ҳ�ǣ�����ͷ����㴦���ˡ���

{	OnSE("se����_����_�i��03_L", 1000);
	DeleteStR(300, false);
	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0130180a04">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc01_014vs.nss"