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

scene mb03_018.nss_MAIN
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
	#bg049_�������_סլ��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_019.nss";

}

scene mb03_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_017.nss"

//���⡣Ϧ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����һ���˸��֮��
��Ϯ��С���ķ������������û�еó������Ľ��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0180010a02">
���Ӷ����롣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0180020a00">
���ǰ���
�����ǲ�����������½·�ɱ��������������
��ˮ·���϶�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0180030a00">
�����෽�������Ƕ���ľ���Ӧ�úܱ�����
����Զ��Խ�Ϊ��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0180040a02">
��Ҳ����˵������Ӷ��߽����ֱ�������Ĳ�
λ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0180050a00">
��ֻ���������˵Ļ�����ſ��С���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0180060a02">
�����ĵ�ֻ��ʱ���������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0180070a00">
���ǰ�����
���Ƶ����࣬�����������ϣ����һ����������
и���Կվ���Ҳ��©���Ļ������ǿ��Է��У���
��һ��ͻ�Ʒ��ߡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0180080a02">
�����ÿ��Ƿ��ն��𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0180090a00">
������ǵͿշ��еĻ����״��ź�̽����Ѳ�
������Ϊ���ڵ����ϵĹ������У��ܹ�����̽
�ⷴӦ��
������ľ�Ҫ�������ˡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0180100a02">
���������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݱ���", 5000, Center, InBottom, "cg/bg/resize/bg002_��a_02.jpg");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ��ˬ�ʵش�����·�����������ӹ���ɣ�Ȼ����ȴ
�ƿ������ߡ�
����֪Ϊ�Σ�����ֱ���������ӡ�

{	SetVolume("@mbgm*", 3500, 0, null);
	Move("�}�ݱ���", 3000, @0, @560, AxlDxl, false);
	Fade("�}�ݱ���", 3000, 1000, null, false);}
����֮���Һ�һ���Ӷ�������Ϯ��С����
��
���������ֵ���������Ҳ��ÿ�ʼ�ж��˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	WaitAction("�}�ݱ���", null);
	WaitPlay("@mbgm*", null);
	WaitKey(1000);

}

..//������ָ��
//�Υե����롡"mb03_019.nss"