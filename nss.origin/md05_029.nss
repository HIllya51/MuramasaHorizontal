//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_029.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_028a.nss"
//ǰ�ե����롡"md05_028b.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("�}�޴��", 1000, Center, Middle, "cg/ev/ev253_�|�I��դ��ڂ�.jpg");

	Delete("�ϱ���");


//������
	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/0290010a14">
����һ�ʡ�
���Ǹ���������飬���۷������£�
����һֱ�ػ����𡭡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������
���ⶫ�����������ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�޴��",1000,true);

//��֩�륷�륨�åȣ�
	CreateColorSP("�}ɫ�\", 2000, "#000000");
	CreateStencil("�}�ޥ�����",1200,center,InBottom,128,"cg/st/3d����֩��_���.png",false);
	SetAlias("�}�ޥ�����","�}�ޥ�����");
	CreateColor("�}�ޥ�����/ɫ��", 1200, 0, 0, 1024, 576, "White");
	Fade("�}�ޥ�����/ɫ��", 0, 500, null, false);
	SetShade("�}�ޥ�����", HEAVY);
	Fade("�}ɫ�\", 100, 0, null, true);

	WaitKey(1000);
	
	FadeDelete("�}�ޥ�����/ɫ��", 1000, true);

//	Fade("�}ɫ�\", 2000, 1000, null, true);

//���x�k���϶�����

}

..//������ָ��
//���϶���"md05_029a.nss"
//���񶨡�"md05_029b.nss"



//���x�k֫���`��
scene md05_029.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("�}�޴��", 1000, Center, Middle, "cg/ev/ev253_�|�I��դ��ڂ�.jpg");

	FadeDelete("������", 1000, true);


//���x�k֫
	SetChoice02("�϶�","��");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//���϶���"md05_029a.nss"
				$GameName = "md05_029a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���񶨡�"md05_029b.nss"
				$GameName = "md05_029b.nss";
		}
	}
}