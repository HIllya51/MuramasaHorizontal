//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_045.nss_MAIN
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
	#bg051_�Զ��Ҿ��g_01=true;
	#ev005_�ؤ���줿��=true;
	#ev139_�y�򚢺�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_046.nss";

}

scene md02_045.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_044.nss"


//���^ȥ�ե�å���

	PrintBG("�ϱ���", 30000);
	CreateColorEX("�ۥ磻��", 5000, "WHITE");
	Fade("�ۥ磻��", 0, 1000, null, true);



	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg051_�Զ��Ҿ��g_01.jpg");
	CreateTextureSP("�}����200", 2100, 600, InBottom, "cg/st/st���L_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}����300", 2200, 150, InBottom, "cg/st/st����_ͨ��_˽��.png");
	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("�ϱ���");
	EfRecoIn1(18000,100);
	FadeDelete("�ۥ磻��",0,true);

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md02/0450010b52">
�����������˶ϰɡ���

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md02/0450020b52">
���������õġ�����Ң�ʹն��ҵ���Ե��
���������ȥ�жϰɡ���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md02/0450030a11">
������ԭ���ҡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoIn1(18000,300);
//�������

	Delete("�}����*");
	CreateTextureSP("�}����400", 3000, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ҡ�
<voice name="����" class="����" src="voice/md02/0450040b52">
��������Ң��
����������ôն�֮����Ҳ��������
�������Ϸ���ǰ����

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md02/0450050a11">
����������������

//�����L��
<voice name="���L" class="���L" src="voice/md02/0450060a11">
���ն�һ�ҡ���
�����й⣬�Ͱ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ�ե�å��塣�y����

	EfRecoIn1(18000,300);

	Delete("�}����*");

	CreateTextureSP("�}����500", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");


	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw�y_������.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���y��
<voice name="�y" class="�y" src="voice/md02/0450070b46">
��������Ͱ������ˣ�������
�������ˡ������ǵ�Լ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	EfRecoOut1(300);
	Delete("�}����*");
	CreateColorEX("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");
	Fade("�ۥ磻�ȥ����ȣ�",0, 1000, null, true);
//	Delete("Memory_cover");

	EfRecoOut2(100,true);


}

..//������ָ��
//�Υե����롡"md02_046.nss"