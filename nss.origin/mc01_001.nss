//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_001.nss_MAIN
{

	$TITLE_NOW=" ��������������ƪ���������� ";

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
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_3.nss";

}

scene mc01_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_001.nss"

//�����ң�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg086_����_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ȼ����������˵�˺ܾã�����ʵ����������Ķ���
��û����ô�ࡣ
���ܽ�һ�µĻ�������һ�ű�ǩֽ����д�¡�

����ţ����Ǹ���Ϊ���������ײ�����������˵����ʽ��
�����������кܶ࣬�����ձ�Ȼ��������ͬһ�㡣

��������ʶ���Ǹ��ˣ�����Ϊʲô����������˵����ʽ
�أ�����ȫ�������ԡ�
��������ǿ�����£����Ҷ��ԣ���ȷ���ޱ���Ҫ�ġ�

{ SoundPlay("@mbgm14",0,1000,true);}
��
�����������������Ѳ������������
����������������Զ�أ����Ҷ�ȥ��

��û��
��Ȼ��

��
����������������˭<RUBY text="��������">ɱ������</RUBY>��

����������ʵ��
���ұ���֪����������ʵ��

��������
�����ơ�
���ܾ���
��������

�����������š�
��Ż�³�θҺ��
�����޵�˫���޷��ٿ����κ����
��������˫�ۣ�ֱ������ɺԣ���Ĥ��ʼ�����Ѻۡ�

������Ȼ��
��Ϊ�˾����Լ�����<RUBY text="��������">����ô��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateVOICE("С��","mc01/0010010b33");
	MusicStart("С��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("С��");
	WaitKey($�Еr�g);

	CreateVOICE("С��","mc01/0010020b33");
	MusicStart("С��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("С��");
	WaitKey($�Еr�g);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ܥ����Τߤǥƥ����Ȥϳ����ʤ�
//�����~�ˤʤ�ʤ�Թ൤򓒤�����Ф���
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/0010010b33">
������������������

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/0010020b33">
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 20000, "#000000");

	SetVolume("@*", 2500, 0, null);
	WaitPlay("*", null);
	Fade("�}ɫ�\", 2000, 1000, null, true);

	Wait(2000);

//���ƥ�åפ�˼�路������ inc�h��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\��", 10000, "#000000");
	CreateColorSP("�}�\��", 10, "#000000");
	CreateColorSP("�}�\��", 9990, "#000000");
	Move("�}�\��", 0, -512, @0, null, true);

	CreateTextureSP("�}�ƥ�", 2000, Center, Middle, "cg/sys/Telop/tp_��׉������.png");
	Zoom("�}�ƥ�", 0, 700, 700, null, true);
	Request("�}�ƥ�", Smoothing);

	Delete("�ϱ���");

	FadeDelete("�}�\��", 2000, true);

	WaitKey(2000);

	FadeDelete("�}�\��", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

//�� inc�h�� �ƥ�åפ˰餤��ӛ�ƥ����Ȥ򥳥��ȥ�����
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ⲣ��Ӣ�۵Ĺ��¡�

��������ˣ������Իᱻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//�������ȥ룺װ�א����������׉��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_��׉��.png");
	FadeDelete("�ϱ���", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//���Խ���"mb01_003_3.nss"��
//�����䤡���褦���Ƥ��줿�;������󡣡�����
//�����o�Ϥ�ؤ�С�����һ���l����ؤ�ͤФʤ�ʤ������ޤǤ�
//���U�ɤ��Ƥ���ΤΥե�������w�Ӥޤ�

}

..//������ָ��
//�Υե����롡"mb01_003_3.nss"