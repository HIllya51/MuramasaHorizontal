
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01d.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg055_ɽ�\������_01=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName

	if($md05_���LĿ == true || $md05_���LĿ == true){
		call_scene @->md05_004urayama01d_01.nss;
		if($ͬ����==""){
			if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
			else{$SelectGameName="@->"+$GameName+"_SELECT";}
		}else if(!$ͬ����){
			if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
			else{$SelectGameName="@->"+$GameName+"_SELECT";}
		}else{$SelectGameName="@->"+$GameName+"_SELECT";}
		call_scene $SelectGameName;
	}else if($�y�Է�_Flag && $�yĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���I�Է�_Flag && $���IĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���Է�_Flag && $��Ŀ��_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		call_scene @->md05_004urayama01d_01.nss;
		if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
		else{$SelectGameName="@->"+$GameName+"_SELECT";}
		call_scene $SelectGameName;
	}


}

scene md05_004urayama01d.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004urayama01.nss"


//���ƄӤ���
//���ե饰���

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A�K�˥ե饰��ȫ�Ƥ��äƤ���
//��$�y�Է�_Flag��$�yĿ��_Flag��$�����Է�_Flag��$����Ŀ��_Flag
//��$���I�Է�_Flag��$���IĿ��_Flag��//��$�����Է�_Flag��$����Ŀ��_Flag

..//������ָ��
//�Υե����롡"md05_004start02.nss"


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ե饰δ�����r

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ȥ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}


//���x�k���󤭤��ݷ�����

..//������ָ��
//���󤭤��ݷ�"md05_004yashiki01.nss"
//�����졡"md05_004hazure01.nss"



//���x�k֫���`��
//�ե饰δ�����r
scene md05_004urayama01d.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��լ��","����");
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
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}



