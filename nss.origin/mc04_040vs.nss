//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_040vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
	//CP_AllSet("�Х���");

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

	CP_AllDelete();

	$GameName = "mc04_041vs.nss";

}

scene mc04_040vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_039.nss"

	PrintBG("�ϱ���", 30000);

	CreateColorSPadd("�}ɫ100", 18000, "WHITE");
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
//	SetBlur("�}����50", true, 1, 800, 200, false);
	Request("�}����50", Smoothing);

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);
	Move("�}��", 0, @0, @-50, null, true);
	SetBlur("�}��", true, 1, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);

$��`�ץ�`�֥ʥå����� = "@�}��";
$��`�ץ�`�֥����ࣲ = 30000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

/*
	Move("�}��", 1000, @100, @0, null, false);
	WaitAction("�}��", null);
	Request("�ץ�����", Start);
	WaitAction("�}��", null);
*/
	Request("�ץ�����", Start);


	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	CP_HighChange(500,500,null,false);
	CP_SpeedChange(500,500,null,false);
	MyLife_Count(500,472);
	MyTr_Count(500,325);

	Cockpit_AllFade2();

	Delete("�ϱ���");

	Wait(1000);
	BGMoveAuto("@�}����50",1);

	MoveFFP1("@CP_LockOff",30000);
	//MoveFFP2("@CP_LockOn",30000);

	FadeDelete("�}ɫ100", 2000, true);


	Wait(500);

//���ۥ磻�ȥ���
//�����L���`����ꡣ�Х���������
//���£ǣ�
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/040vs0010a03">
���²����֣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������š�

���ն�����̫���޴���
��̫���޿ɾ�ҩ��

��������ֻҪ����һ������ͺá�
��
���Լ��Ĳ��ң�

���ն�����������մ��Ѫ�ȡ�
�����ǣ�����˵������������

����ֻ�����Ǳ����˽�����ǿ����ͷ�϶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/040vs0020a03">
����ô�����µ����֣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Żں������ߣ��������������š�

��ֻҪ���ڱ����Լ�����ݣ����������ʻ�����ֹͣս����
�����ܾ���������Ҳ��������ݿ־壬��������׳�������

������������֦ɱ�����ĸ���������飬Ҳ���϶�Ϊ�Լ�
�����Ρ�
��
����ʲô��Ц��

��ֻҪ�������������Լ��Ĵ�ͺã�
��ֻҪ����Լ��Ѿ��߾�ȫ�������ͺã�

������û��������Ҳû�й�ϵ����
����Ϊ���Ŭ�����ˡ���Ϊ����ս������Ż����Ѫ�ĵز���
�Լ�����ݿභ�����Լ�Ҳ�����ϵĻ�Ҫ��ô�졣

��Ϊʲô��ƫҪ�϶��Լ���һ�ж����޼�ֵ�ģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/040vs0030a03">
���Ų���ɱ�㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��Ҫ��ɱ�Ļ����൱�ڳ����������޴��뷨��

�����൱�ڳ��ϴն��������޼�ֵ������������������һ
�����ᡣ

�����С�
���޷���������������������ˡ�

���޷�ԭ������������

���޷����ܡ�
����ô���ܽ��ܡ�

��Ӧ����������˻���ȥ����ñ�˭��Ҫ�Ҹ��Ŷԣ�
��������ǰ��������ʹ���൱��ϲ�ã����ɷ�˵��һ����
Ӳ�������ͺã�

��Ȼ���ڼ�ʮ��󣬰������������Ҫ��ȥ֮ʱ��������
���ǹ�ȥ�������߶�����������˵��
������������������������ɱ���ɣ�����
�������ƻ�����ɡ�

����������
��Ҫ�����������Ļ������ｫ���ôʹ�찡��

������������
���������ͺá�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveFFP1stop();
	MoveFFP2stop();

//���՜ʥ֥��
//	FadeF4("�}����50", 0, 1000, 10000, 0, 0, null, false);
	FadeF4("@CP_LockOff", 0, 1000, 3000, 0, 0, null, true);
	FadeF4("@CP_LockOff", 0, 1000, 10000, 0, 0, null, false);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/040vs0040a03">
��ɱ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������ɱ����
����������ȥ��

��
����������������������֦��
�����������������뿴���ն�����������

��������ħ���ڣ�
�������Լ���ɱ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���£ǣͤ�ä���ե��`�ɥ����ȡ�������ޤǴ���
	CreateSE("SE��å�����","se����_���å��ԥå�_������02");
	SetVolume("@mbgm*", 6000, 0, null);
	FadeF3("@CP_LockOff", 0, 1000, 4000, 0, 0, null, true);

//���՜ʶ��ᡣ�k��
	Move("@CP_LockOff", 1000, 485, 220, AxlDxl, true);
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	Move("@CP_LockOn", 0, 485, 220, null, true);
	CP_LockOnFade(100,"on",true);

	Wait(1500);

	ClearFadeAll(100, true);
	CreateSE("SE01","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_AllDelete();
	Wait(3000);
	SetVolume("SE*", 1000, 0, null);
	Wait(2000);


}

..//������ָ��
//�Υե����롡"mc04_041vs.nss"


