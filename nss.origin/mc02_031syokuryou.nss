
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryou.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg081_�w�д�����Ba_01b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc02_031syokuryou.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031daidokoroz.nss"


//��ʳ�ώ�

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg081_�w�д�����Ba_01b.jpg");
	OnSE("se�ճ�_����_���_��01", 1000);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ʳƷ�⡭����׼ȷ��˵���ǳ����õĲֿ�Ŷԡ�
��װ��ˮ����ľ�䡢�ŷ����ϾƵĳ����ô�������
��һ��Ĳ;ߡ��������þ������Ĵ��ӵȵ�ӳ���ҵ�
������

����ӹ���ɣ���û��ը��֮��Ķ�������
��
����ô����Ҫ��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k��������B��������Ƥ��B���������ܥ�٤��B�����Τ�ȡ��ʤ�

}

..//������ָ��
//��������B����"mc02_031syokuryoua.nss"
//������Ƥ��B����"mc02_031syokuryoub.nss"
//�������ܥ�٤��B����"mc02_031syokuryouc.nss"
//���Τ�ȡ��ʤ���"mc02_031syokuryouz.nss"

//���x�k֫���`��
scene mc02_031syokuryou.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_�w�д�����Ba_01b.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("������","���Ͼ�","��Һ������","ʲô������");
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
			ChoiceA04();
//��������B����"mc02_031syokuryoua.nss"
				$GameName = "mc02_031syokuryoua.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//������Ƥ��B����"mc02_031syokuryoub.nss"
				$GameName = "mc02_031syokuryoub.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//�������ܥ�٤��B����"mc02_031syokuryouc.nss"
				$GameName = "mc02_031syokuryouc.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���Τ�ȡ��ʤ���"mc02_031syokuryouz.nss"
				$GameName = "mc02_031syokuryouz.nss";
		}
	}
}


