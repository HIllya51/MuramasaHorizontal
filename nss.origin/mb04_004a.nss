
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004a.nss_MAIN
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
	#bg054_�����Ҽ���b_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mb04_004a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_004.nss"
//ǰ�ե����롡"mb04_004bb.nss"

//�񤳤Τޤޔؤ�
//�����Ф���`��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}�ݱ���", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��նɱ����
��նɱ��

��նɱа��
���Ȼ���ĸ��

�������һ��ʤ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	SoundPlay("@mbgm28",3000,1000,true);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040510b40">
��û������������������
��������ȷ�ġ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040520b40">
����Ϊն��а�񡪡�
������ȫ��ȷ������֮�٣���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040530a00">
����������û��
��ֻ���������ʵ�ġ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040540a00">
�����ԡ���
������㹻�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ۥ磻�ȥ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 1000, "#FFFFFF");
	FadeDelete("�ϱ���", 2000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ȫ������ˡ�<k>
������Ҳ�Ѿ�����������������С�

������ȴ������������ͽȻ�ġ�

���β��ú�ͻ�������
������֮�󣬸���ʲô����
��
�������ң��Ѿ������ˡ�

���Ѿ�û���Ի�

����ô���ҵ����ˡ���
��������������֮�˰���ȥ��

�����������һͬս������Ů��
�������Һ���������һͬ��Ϊһ������֮�����ˡ���

�����һ������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(5000, 5000);

//�������ȥ��

}

..//������ָ��
//�Υե�����