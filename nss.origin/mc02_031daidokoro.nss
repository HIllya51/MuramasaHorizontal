//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoro.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg080_�w�д�����Ac_01a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc02_031daidokoro.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031innsyoku.nss"
//ǰ�ե����롡"mc02_031innsyokuz.nss"


//��̨��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	Wait(100);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������豸�ڷŵ�ʮ�����롣
�����������ǳ�����

�����ڷ���ս���ϳ�����������Ϊ��ǿ�������
������ս��
�������豸�𽥻��Ϊ�����豸�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//С��᪣�����֦���ޤ����ʤ����ϤΤߒ���
//�ӣţ��ߤ����쾮��܈��

if($����֦����_Flag != true){

//�룺��ζ�Τ���ӣŤǤ��뤳�Ȥ�ָ�����ᡢ�ƥ����ȥܥå�����ȥ
	Fade("@box*", 150, 0, null, true);
	OnSE("se�ճ�_����_܈��01",1000);

	WaitKey(2000);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//��`���������ʤ��ä�����׷�Ӥ��Ƥ�������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011a]
//��������
<voice name="����" class="����" src="voice/mc02/031da9999a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011b]
�������̰ں�ս�����ƣ�̧ͷ�����컨�塣
��
�����������

���Ҹոյ�ȷ���������졣
������ϸ˼��һ�£��б���ô����
�����컨���

������λ�ã�����������
����������Ȼ��Щ���⣬��������������ǰ�˷�ʱ�䣬
�һ��ǲ�ȡ�ж��ȽϺá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

//�����ޤ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0012]

�����������������Ҹò�ȡ���ж��ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����i����_���룯�����˻�����룯�޷�ľ��ȡ�룯�ƄӤ���


}

..//������ָ��
//�����i����_���롡"mc02_031daidokoroa.nss"
//�������˻�����롡"mc02_031daidokorob.nss"
//���޷�ľ��ȡ�롡"mc02_031daidokoroc.nss"
//���ƄӤ��롡"mc02_031daidokoroz.nss"

//���x�k֫���`��
scene mc02_031daidokoro.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice04("�򿪱���","��¯����ӻ�","��ȡ��ĥ��","�ƶ�");
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
//�����i����_���롡"mc02_031daidokoroa.nss"
				$GameName = "mc02_031daidokoroa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//�������˻�����롡"mc02_031daidokorob.nss"
				$GameName = "mc02_031daidokorob.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���޷�ľ��ȡ�롡"mc02_031daidokoroc.nss"
				$GameName = "mc02_031daidokoroc.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ƄӤ��롡"mc02_031daidokoroz.nss"
				$GameName = "mc02_031daidokoroz.nss";
		}
	}
}


