//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_019vs.nss_MAIN
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

scene mc01_019vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_018vs.nss"
//ǰ�ե����롡"mc01_018vsa.nss"

	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}�ݺ���", 100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 125, 125, null, true);
	Move("�}�ݺ���", 0, @-256, @-60, null, false);
	FadeDelete("�ϱ���", 500, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���϶Τ˘������¤ؔؤ�i���룯�¶Τ˘������Ϥؔؤ�i����


}

..//������ָ��
//���϶Τ˘������¤ؔؤ�i���롡"mc01_019vsa.nss"
//���¶Τ˘������Ϥؔؤ�i���롡"mc01_019vsb.nss"

//���x�k֫���`��
scene mc01_019vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}�ݺ���", 100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 125, 125, null, true);
	Move("�}�ݺ���", 0, @-256, @-60, null, false);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ڳ��϶����ƣ�����ն��","�ڳ��¶����ƣ�����ն��");
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
//���϶Τ˘������¤ؔؤ�i���롡"mc01_019vsa.nss"
				$GameName = "mc01_019vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���¶Τ˘������Ϥؔؤ�i���롡"mc01_019vsb.nss"
				$GameName = "mc01_019vsb.nss";
		}
	}
}

