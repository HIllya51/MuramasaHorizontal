
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsa.nss_MAIN
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

scene mc01_021vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vs.nss"

//�񄇼�
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}��", 1000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Delete("�ϱ���");

	CreateTextureEX("�}�ݣ�", 1100, -300, InTop, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}�ݣ�", 0, 750, 750, null, true);
	Move("�}�ݣ�", 0, @0, @-160, null, true);

	Move("�}�ݣ�", 3000, @0, @-80, DxlAuto, false);
	Fade("�}�ݣ�", 1000, 500, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ӿ�ʼ����֮ǰ�����̵ܽ�����ֶ������ɣ���Ұ��
���ļ��ɡ���
����������ͷ���и������ľ�ֻ�������

��һ���������ɣ�������������ɾ�����ȫ����ʷ����
�������ڶ��������ڵ�����ս������õ�ȫ���ɹ�����
�˻����ϵ��Գ�����
�����Ӵ��֪ʶ֮�У��ض������������������ĶԲߡ�

{	FadeDelete("�}�ݣ�", 300, false);}
���������öԲ���ѡ������
�����������޷�����������ס̫����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}�ݣ�", null);

//���x�k���϶Σ��¶Σ�����


}

..//������ָ��
//���϶Ρ�"mc01_021vsaa.nss"
//���¶Ρ�"mc01_021vsaa.nss"
//�����ࡡ"mc01_021vsab.nss"


//���x�k֫���`��
scene mc01_021vsa.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("�}��", 1000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("�϶Σ��ٵ�������","�¶Σ��������£�","����");
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
			$mc01_021vsaa_�϶�=true;
//���϶Ρ�"mc01_021vsaa.nss"
				$GameName = "mc01_021vsaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
			$mc01_021vsaa_�¶�=true;
//���¶Ρ�"mc01_021vsaa.nss"
				$GameName = "mc01_021vsaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
			$mc01_021vsaa_����=true;
//�����ࡡ"mc01_021vsab.nss"
				$GameName = "mc01_021vsab.nss";
		}
	}
}


