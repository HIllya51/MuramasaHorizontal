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

scene mc02_001a.nss_MAIN
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

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//������Ԓ�ǚ�������
	//�r����Ф򚢺���"mc02_002a.nss"
	//�c��һ���򚢺���"mc02_002b.nss"
	//$GameName = "mc00_001.nss";

	if($�r����К��� == true){$GameName = "mc02_002a.nss";}
	else if($һ������ == true){$GameName = "mc02_002b.nss";}

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene mc02_001a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_001.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm34",0,1000,true);
	CreateTextureSP("�}����20", 0, Center, Middle, "cg/bg/bg078_���`������ʷ�͢_01.jpg");
	StR(1800, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
{Delete("�ϱ���");}
<voice name="���w" class="���w" src="voice/mc02/001a0010b56">
�����ţ�����ɱ����װ�����ֻ�·�١���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//��С���
//������Ԓ�ǚ�������
//�r����Ф򚢺���"mc02_002a.nss"
//�c��һ���򚢺���"mc02_002b.nss"

//���x�k֫���`��
scene mc02_001a.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	OnBG(100,"bg078_���`������ʷ�͢_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�r����Ф򚢺�","�c��һ���򚢺�");
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
//�r����Ф򚢺���"mc02_002a.nss"
				$GameName = "mc02_002a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�c��һ���򚢺���"mc02_002b.nss"
				$GameName = "mc02_002b.nss";
		}
	}
}