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

scene ma03_028.nss_MAIN
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

	SatugaiSystem();
	judgment_of_count();

	if($���������� == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$�ٚ��� = true;
		$GameName = "ma03_029.nss";

	}else if($����֦���� == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_002.nss";
	}else if($һ������ == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_001.nss";
	}else if($�������� == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
//		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_003.nss";
	}else{
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$�ٚ��� = true;
		$GameName = "ma03_029.nss";
	}


}


scene ma03_028.nss
{

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_03.jpg");

	WaitKey();

..//������ָ��
//ǰ�ե����롡"ma03_027vs.nss"

}


scene ma03_028.nss_routeH
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

.//�񥢥ʥ��`������x�k�Έ���
//�񥢥ʥ��`������x�k�Έ���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg038_���`���å�ֱ��_03.jpg");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/0280010a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0280020a01">
������
���������ˡ���

//��������
<voice name="����" class="��������" src="voice/ma03/0280030a01">
����ô�����١���
��ϣ���Ǻ����ܹ�����ȥ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0280040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(0, 2000);

..//�ҥ��󚢺�������ץȤ�
//���ҥ��󚢺�������ץȤ�


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񥢥ʥ��`�x�k�Έ���
//�񥢥ʥ��`�x�k�Έ���
scene ma03_028.nss_routeA
{


	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//���\����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	FadeDelete("�ϱ���",500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������Ŭ����
���Ծ��޷������Ļ����ޡ�

��Ҳ���Բ������
���������Ե��������������Ĵ����벻��֮����

�������ڶԸ���㡾�Т����
��Ϊ����ˣ��������ơ�

��Ψ����ӣ�Ψ��Ч����Ψ�з��ס���
��ѧ�����ƣ��˾�������Т֮һ��Ҳ����
����֮�١�

���Դ˼��⣬������ΪȻ��

��Ȼ������
���������һζ��Т����ʵ�����¶��ԣ��������ɡ�

����Ϊ���ࡣ
���׿�������������Ϊ���޿ɺ�ǡ�

������<RUBY text="����">����</RUBY>��
���ұ���ɱ����·�١�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`���å���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg038_���`���å�ֱ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����·�ٵ���������
����ɫ����������ɢ����Χ����һƬ
���������

������ͫ���ѵ�ӳ�����ҵ���Ӱ��
�����������Ѳ��ڴ˴���

������ǰ���Լ�Ӧȥ�����硣
������ľ�ͷ��
��ǰ��ֻ������һ�˵�����֮����

��������������Ĺ�����
�������ٲ����ط�������

�����P�ڴ˵ģ��������ź���
�������廳ƾ����

���һӵ�����ն�ϡ�
������ȫȫ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤��塣��������������
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}�\��", 10, "#000000");
	Delete("�ϱ���");

	CreateSE("SE01a","se���L_����_�����01");
	SL_down(@0, @0,1000);

	MusicStart("SE01a",0,1000,0,1100,null,false);
	SL_downfade2(10);
	WaitKey(300);
	CreateSE("SE01b","se����_Ѫ_Ѫ���֤�01");
	CreateColorEX("�}Ѫ", 150, "#CC0000");
	Fade("�}Ѫ", 600, 1000, null, false);
	SL_centerdam(@0, @0,1000);
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamfade2(10);
	WaitAction("�}Ѫ", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������һ���������š�
��Ψ���ҵ������������䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ҥ��󥭥�K���ᡢ����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_029.nss"