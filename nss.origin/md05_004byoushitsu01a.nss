
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01a.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev128_�����ι�_g01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004byoushitsu01a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01.nss"


	PrintBG("�ϱ���", 30000);

//	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
//	FadeBG(0,true);

	CreateTextureEX("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("�}hikaru", 0, 1000, null, true);
	
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");

//��Ҋ��


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����ݤ��У���Ů

..//������ָ��
//�����ݤ��С�"md05_004byoushitsu01aa.nss"
//����Ů��"md05_004byoushitsu01ab.nss"

}



//���x�k֫���`��
scene md05_004byoushitsu01a.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("������","��Ů");
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
//�����ݤ��С�"md05_004byoushitsu01aa.nss"
				$GameName = "md05_004byoushitsu01aa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//����Ů��"md05_004byoushitsu01ab.nss"
				$GameName = "md05_004byoushitsu01ab.nss";
		}
	}
}

