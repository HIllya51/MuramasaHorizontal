
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01d.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev128_�����ι�_g01=true;
	#bg086_����_01a=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//	$�Yɽ�K��_Flag=true;

	if($�Yɽ�K��_Flag==true){
		$SelectGameName="@->"+$GameName+"_SELECT02";
		call_scene $SelectGameName;
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
	}

}

scene md05_004byoushitsu01d.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01.nss"


//���ƄӤ���


	$byoushitsu01first = false;

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");

	FadeDelete("�}hikaru",500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ҫȥ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����죯����󤭤��ݷ��Yɽ
//��$�Yɽ�K��_Flag�����äƤ�����ϡ��Yɽ���x�k֫�����⤹

}

..//������ָ��
//�����졡"md05_004hazure01.nss"
//�����"md05_004saidenn01.nss"
//���󤭤��ݷ�"md05_004yashiki01.nss"
//���Yɽ��"md05_004urayama01.nss"

//���x�k֫���`��
scene md05_004byoushitsu01d.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("����","����","��լ��","��ɽ");
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
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//�����"md05_004saidenn01.nss"
				$Next_GameName = "md05_004saidenn01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���Yɽ��"md05_004urayama01.nss"
				$Next_GameName = "md05_004urayama01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


scene md05_004byoushitsu01d.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("����","����","��լ��");
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
			ChoiceA03();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//�����"md05_004saidenn01.nss"
				$Next_GameName = "md05_004saidenn01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}

