//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031gameover.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	mc02_FlagDef();

	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	if($�ҥ�ȴ_�J == true){
		call_scene��@->mc02_031gameoverhint01.nss
		$PreGameName = $GameName;
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
		$�ҥ�ȴ_�J = false;
		$GameName = "mc02_031start.nss";
	}else{
		$GameName = "mz00_000.nss";
	}

	if($�ҥ��Ҋ�ޤ� == true){
		call_scene��@->mc02_031gameoverhint02.nss
		$�ҥ��Ҋ�ޤ� = false;
//		$GameName = "mc02_031start.nss";
	}else{
//		$GameName = "mz00_000.nss";

	}

}

scene mc02_031gameover.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_032time.nss"


//�񥲩`�४�`�Щ`
//�����`�४�`�Щ`�ã�
	PrintBG("�ϱ���", 30000);

//�룺�F״���ߩ`�ʤ�
//	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
//	Fade("�}����100", 0, 1000, null, true);
	CreateColorSP("�}ɫ100", 50, "BLACK");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CreateSE("SE01","se����_������_�����ʑ��L_L");
	MusicStart("SE01",500,1000,0,1000,null,true);


	FadeDelete("�ϱ���", 500, true);
	SetVolume("@mbgm*", 2000, 0, null);

	Wait(1000);

	SetVolume("@SE*", 4000, 0, null);

	FadeDelete("�}����100", 4000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ַ��н��ж��ٿ�ʼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����_���룯�����ȥ뻭��ˑ���
//�����_���ե饰���ڻ����ơ�̽���_ʼ
//�񥿥��ȥ�������ȥ��

}


scene mc02_031gameoverhint01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_032time.nss"


//�񥲩`�४�`�Щ`
//�����`�४�`�Щ`�ã�
	PrintBG("�ϱ���", 30000);

//�룺�F״���ߩ`�ʤ�
//	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
//	Fade("�}����100", 0, 1000, null, true);
//	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
//	Fade("�}����100", 0, 1000, null, true);
	CreateColorSP("�}ɫ100", 50, "BLACK");

	FadeDelete("�ϱ���", 100, true);

//090409�Σ��ҥ��׷��
//�����_�����x�k�Ǥ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ܿ������Ƶ���ʾ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k���ҥ�Ȥ�Ҋ�룯�ҥ�Ȥ�Ҋ�ʤ�
//��ҥ�Ȥ�Ҋ�ʤ����ե饰���ڻ����ơ�̽���_ʼ

}

scene mc02_031gameoverhint02.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_032time.nss"


//�񥲩`�४�`�Щ`
//�����`�४�`�Щ`�ã�
	PrintBG("�ϱ���", 30000);

//�룺�F״���ߩ`�ʤ�
//	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
//	Fade("�}����100", 0, 1000, null, true);
//	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
//	Fade("�}����100", 0, 1000, null, true);
	CreateColorSP("�}ɫ100", 50, "BLACK");

	FadeDelete("�ϱ���", 100, true);

//��ҥ�Ȥ�Ҋ��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ʾ��
���ص���㼫��Σ�գ����Բ��ܻ�ȥ��
���õĻ���ֻ���˷ѵ�ʱ�䣬���õĻ����ǣģţ��ġ��ţΣġ�

����ʾ��
���������ӵĳ�ʶ��ͨ�á�
����ϻ�����Ҫ���ϳ�����޴���Ϊ��

����ʾ��
�����������Ķ�������żȻ������²��ܷ��֡�
ż�������������Ҷ�ʹ�������ҡ������ʹ����¶
��������֮��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�ե饰���ڻ����ơ���̽���_ʼ
//090409�Σ��ҥ��׷�Ӥ����ޤ�

	ClearFadeAll(1000, true);



}

..//������ָ��
//�Υե�����

//���x�k֫���`��
scene mc02_031gameover.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�}ɫ100", 50, "BLACK");

	FadeDelete("������", 0, true);


//�����ȥ뻭��ˑ���
//���x�k֫
	SetChoice02("���¿�ʼ","����");
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
//�����_����
				$�ҥ�ȴ_�J = true;
//				$GameName = "mc02_031start.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������ȥ뻭��ˑ���
//				$GameCircle=0;
		}
	}
}

//���x�k֫���`��
scene mc02_031gameover.nss_SELECT2
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�}ɫ100", 50, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����ʾ","������ʾ");
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
				$�ҥ��Ҋ�ޤ� = true;
		}
		case @�x�k֫��
		{
			ChoiceB02();
		}
	}
}




