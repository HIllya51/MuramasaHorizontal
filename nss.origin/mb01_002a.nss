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

scene mb01_002a.nss_MAIN
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
	#bg031_��ᦌm����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$�y�Ǻ�����֦���� = true;
	$����֦���� = true;
	$Kanae_Dead = true;
	$Kanae_Flag = 0;
	SetHex();

	$PreGameName = $GameName;

	$GameName = "mb01_003_1.nss";

}

scene mb01_002a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_002.nss"

//������֦����Έ��ϤΤߡ����Υ��`��

//����ᦌm
//����åɥޥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	CreateSE("SE01","se����_�ҥ���_�Қ�03");//��Դ�_�J���
	CreateSE("SE01a","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}Ѫ", 1000, "#CC0000");
	CreateTextureEXmul("�}��", 200, Center, Middle, "cg/anime/Center/bloodA_6.png");
	Fade("�}��", 0, 750, null, true);
	SetShade("@OnBG*", HEAVY);
	Wait(100);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("�}Ѫ", 600, false);

	Wait(2000);
	SoundPlay("@mbgm15",2000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���䲻��������һ����ױ��硣
�������ٰ��촽��һ������

�������������룬ȴ��֪Ϊ���޷�������

��һ���㲻�������ʡ�
���ұ��Ѿ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mb01/002a0010a03">
�������������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ǵ�Ѫû������������һ˿���ա�
����פ����ξ�૵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mb01/002a0020a03">
�������¡��������������˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������Գ����޳ա�
��������̾Ϣ�Ŀ�Ц��

��<RUBY text="����">Ŀ��</RUBY>�Ѵ�ɡ�
��ȴ�������塪�����������������ڵȴ����Լ���

������ڱ����м���ͽ����һ��ζ�ϣ��ͻ���ϲ�硣
������ֻ��Ц��������Ц��

����ʲô���ƺ�������Ӧ����

��
������ʲô��
����Ϊԭ������Ҫ���������<RUBY text="����">��ʼ</RUBY>��
����ӰѾ����һ����

��
��������ˣ�����<RUBY text="��">��</RUBY>ʵ����ȱ����Ȥ��
������ʱ������������ɡ���

�����ǲ��ǻ����Ļ�������û�и���Ū�˵Ļ����˰ɡ�
��Ҫ��Ϊʲô����Ϊ����������<RUBY text="����">û��</RUBY>��Ū����ͼ��

����ͬ���紵ɢӣ��һ�㡣
�������������µؼ�̤������ˡ�

�����Ƕ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g������霡��|�I���ħ���ǡ�
//��霤��С��������y�ǺŤ�
	PrintGO("�}��д", 1000);
	CreateTextureSP("�}��д��", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	CreateSE("SE01","se���L_�y�Ǻ�_�|�I���ħ����_�k��");//��Դ�_�J���
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}��", 5000, "#FFFFFF");
//	SetTone("�}��д��", Monochrome);
	DrawEffect("�}��д��", 200, "Ripple", 0, 500, null);
	FadeDelete("�}��", 600, true);

	FadeDelete("�}��д", 1000, true);

	CreateColorSP("�}��ܞ", 5000, "#000000");
	DrawTransition("�}��ܞ", 2000, 0, 1000, 300, Axl1, "cg/data/circle_02_00_1.png", false);

	CreateTextureEX("�}���}", 150, Center, Middle, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Fade("�}���}", 1500, 300, null, true);

	WaitAction("�}��ܞ", null);
	Delete("�}��д��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����󡭡�΢΢һЦ�¾�����
����������֦�������档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������ޤ�
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_003.nss"