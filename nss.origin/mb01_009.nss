//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_009.nss_MAIN
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
	#bg013_�`�}���a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_010.nss";

}

scene mb01_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_008.nss"


//���`�}��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg013_�`�}���a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mb01/0090010a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������뽣����Ϊһ�塣

�����������Զ��
��Ҳ���ۼ�ͬ���������ͬ��������

���ʴˣ���Ҳ�����ˡ�
��������֮����

������
������ɱ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mb01/0090020a01">
������������


//��������
<voice name="����" class="��������" src="voice/mb01/0090030a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}�ϰ�ܞ", 5000, "#000000");
	CreateColorSP("�}��ܞ", 100, "#000000");
	StL(1000, @0, @150,"cg/st/3d������ţ��_���.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @150, @0,"cg/st/3d����֩��_���.png");
	FadeStA(0,true);
	FadeDelete("�ϱ���", 1500, true);
	WaitKey(1000);
	FadeDelete("�}�ϰ�ܞ", 1500, true);

	SoundPlay("@mbgm19",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������д˴��š���

��������͵���λ���ٶ���ʦ���������ڣ�����ͬһʦ
�š�
�����Ƕ�չʾ��׿Խ�ĲŻ�����������������������
������������������ȴ��ȫ��ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}�\Ļ", 1500, "#000000");
	CreateTextureEX("�}�ݴ���", 2000, Center, Middle, "cg/st/resize/3d����֩��_���m.png");

	Fade("�}�\Ļ", 500, 750, null, true);

	Move("�}�ݴ���", 0, @254, @60, null, true);
	Move("�}�ݴ���", 5000, @0, @-120, null, false);
	Fade("�}�ݴ���", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041a]
��������Ʒ���ӣ����Լ��ı��켫Ϊ�Ը������Դ�ʦ��
��̬�ȶ��ܰ�����
�����Ҵ���ֻ�ѽ��ٵ���ɱ�˵�����������̰����׷��
����Ӳ����ǿ��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitFade("�}�ݴ���", null);
	FadeDelete("�}�ݴ���", 500, true);

	CreateTextureEX("�}������", 2000, Center, Middle, "cg/st/resize/3d������ţ��_���ex.png");
	Request("�}������", Smoothing);
	Zoom("�}������", 0, 600, 600, null, true);
	Rotate("�}������", 0, @0, @180, @0, null,true);

	Fade("�}�\Ļ", 500, 750, null, true);

	Move("�}������", 0, @-254, @-360, null, true);
	Move("�}������", 5000, @0, @120, null, false);
	Fade("�}������", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041b]
������������Ʒ�и��У��Ը��Ƚ������۶�˭�������
��
������������Ϊ��������֮����������������Ҫǿ��
������߱��������ص㡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitFade("�}������", null);
	FadeDelete("�}������", 500, true);

	FadeDelete("�}�\Ļ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041c]
��һ�죬ʦ�����������Ӵ򵶡�
���������ǰѵ���ú󣬲��ں��С�

���������Ȱѵ����ں��С�
������һ���������Ҷ˳�����£������˵��⡣

�����˾��ȵ��ǡ�
������Ҷ����ֻ�ǲ��ں��еĵ��ϣ���˲����Ϊ��Ƭ��
������Ϣ��Ư��������

��Χ�۵ĵ����Ǿ�̾�������������䵶���˵ķ����ȶ�
�Ծӣ���������
��ʦ��һ��δ�����������������Կ���

������һ���֮�󣬺͸ղ�һ��������������ҶƯ�˹�
����
�����˶���Ϣ���ӣ��뿴һ�����ڵĵ��Ƿ��ܹ�չ�ֳ�
�����ƥ�еķ�����

��Ȼ������Ҷһ�ӽ��������������ܰ�ı����򣬺���
�����˳�����¡�
�����ܷ������ٴζ�һ�������ڵĵ�ʼ��û��նһƬ��
Ҷ��

��ʦ��˵��

��������ν������նӦն֮�����ն��Ӧն֮���Ϊ
���м�Ʒ��
������Ҫ���ף�ն����Ҷ֮����ԶԶ������ҶһƬδն
֮���ڡ���

������ʦ����˵��
��������Ϊ���µ�һ���ױ�����磬����������Ϊ����
���������������񣬺������۰��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��
������������������֮˵��

�����������ڲ��ǳ���ͬһʦ�š�
�����ߵĵǳ���������Զ��

���ⲻ���Ǻ���������ʿ��׫�Ĺ��°��ˡ�
��
�����������²��ò�˵���ⷴӳ�˴��������ڵĲ�����
�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_010.nss"