
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_018vs.nss_MAIN
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

scene mc03_018vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_017vsa.nss"
//ǰ�ե����롡"mc03_017vsb.nss"

//�񤽤δ�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����", 5010, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateColorSP("�}ɫ�\", 5005, "#000000");
	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ev/resize/ev502_�����i��Ƭ��lm.jpg");
	Rotate("�}��", 0, @0, @180, @0, null,true);
	Delete("�ϱ���");

	FadeDelete("�}����", 1000, true);
	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ô����������
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k������A�У��ҤȤޤ��x��

}

..//������ָ��
//������A�С�"mc03_018vsa.nss"
//���ҤȤޤ��x�ѡ�"mc03_018vsb.nss"

//���x�k֫���`��
scene mc03_018vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ev/resize/ev502_�����i��Ƭ��lm.jpg");
	Rotate("�}��", 0, @0, @180, @0, null,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("������ս","��������");
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
//������A�С�"mc03_018vsa.nss"
				$mc03_018vs_BSFlag = "����";
				$GameName = "mc03_018vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���ҤȤޤ��x�ѡ�"mc03_018vsb.nss"
				$mc03_018vs_BSFlag = "�x��";
				$GameName = "mc03_018vsb.nss";
		}
	}
}



