//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_010vs.nss_MAIN
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
	#ev946_�����֣ӥ��å������`_a=true;
	#ev946_�����֣ӥ��å������`_c=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;



	if($mc01_010vs_�����ˏؤ���==true){
		if($First_Battle_Defense == true){
//�������ˏؤ��롸�����ʧ������"mc01_010vsb.nss"
			$PreGameName = $GameName;
			$GameName = "mc01_010vsb.nss";
		}else{
//�������ˏؤ��롸������ɹ�����"mc01_010vsa.nss"
			$PreGameName = $GameName;
			$GameName = "mc01_010vsa.nss";
		}
	}else if($mc01_010vs_ӭ���Ĥ�){
//��ӭ���Ĥġ�"mc01_010vsc.nss"
		$PreGameName = $GameName;
		$GameName = "mc01_010vsc.nss";
	}

}

scene mc01_010vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_009vsa.nss"
//ǰ�ե����롡"mc01_009vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//������
//���ϕN����`�뤷�����·�ܞ���ԥå����å�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");
	CreateTextureSP("�}����100", 500, Center, -5000, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Move("�}����50", 0, @0, @-206, AxlDxl, false);
	SetBlur("�}����*", true, 2, 500, 50, false);
	Shake("�}����*", 2160000, 0, 2, 0, 0, 1000, null, false);

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ�����;
	}

	//SetFont("����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $�����饤���{����);Wait(32);

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,920,null,false);

	CP_HighChange(0,1824,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,0,null,false);

//������󡸣ãУ��ϕN��`���_ʼ��
	OnSE("se���L_����_��ͻ�M01",1000);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", false);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	Move("@�}����50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@�}����50",3000,180,Dxl1,true);
	Delete("@�}����50");

	MyTr_Count(500,450);
	Move("�}����100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);

	OnSE("se���L_����_���ϕN01",1000);
	Move("�}����100", 2000, @0, 800, Dxl1, false);
	Zoom("�}����100", 2000, 1500, 1500, Dxl1, true);

	WaitKey(600);

//������󡸣ãУ������ݳ���
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("�}�ݺ���", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Move("�}�ݺ���", 0, @0, @-70, null, true);
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 150, 150, null, true);

	Move("�}�ݺ���", 300, @0, @-30, DxlAuto, false);
	Fade("�}�ݺ���", 300, 1000, null, true);

	CockPit_LockSet(@0,@-100);
	OnSE("se����_���å��ԥå�_��å�����",1000);
	CP_LockOnFade(300,"on",true);

	WaitKey(600);

	CreateTextureEX("�}��", 17000, Center, -290, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Move("�}��", 4000, @0, -40, DxlAuto, false);
	Fade("�}��", 1000, 1000, null, true);

	Cockpit_AllFade0();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ת�����壬�ٴ�����˶��š�
���������������ͷ��β�Ĺ���������ϴ���Щ�ڽ�
�Եĸо�������Ȼ����ʲô���࣬���Ƕ����ڽ̶�����
�񶨵Ĵ���֮�������չ�֡�

��������˭�ڲٿ���������ء�
����Ȼ�ӽ��д��������������Ӧ����Ů�ԣ���������
������ĸ߰����Ҵ���Ī���Ļ���������޷��϶�����
�Ƿ�ΪŮ�ԡ�ֻ��ȷ�����ƺ���̫���ǡ�

����ܳ������ŵĵ������������ͬ���Ķ�����
��
��������������ת�Ļ�������Ҫ����

����������ת����Զ�ڴ���֮�¡�
����Ȼ�߶��������ڵ������У�����һֱ������������
��ȥ�Ļ�������������һ������ת��

�������ߵ�̫���Ի��У�����������ó�С�Ƕȷ�ת��
��������ƣ��ǿ���ռȡ�Ȼ����ڶԷ�׼����֮ǰ����
չ��������
������Ҫ����һ�ŵ㷢�ӳ�������ô��

���ڶ��غϸ����Ӧ�ԡ�
���������ɸ߾���������������������ɵ�ս������ֱ
���ͳ��˹�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k�������ˏؤ��룯ӭ���Ĥ�
//��һ��Ŀ������x�k�ʤ顸�����ʧ�����ء��Ǥʤ���С�������ɹ�����

..//������ָ��
//�������ˏؤ��롸������ɹ�����"mc01_010vsa.nss"
//�������ˏؤ��롸�����ʧ������"mc01_010vsb.nss"
//��ӭ���Ĥġ�"mc01_010vsc.nss"


}



//���x�k֫���`��
scene mc01_010vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("�}��", 17000, Center, -40, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�᳹����ս��","ӭ��");
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
//�������ˏؤ��롸�����ʧ������"mc01_010vsb.nss"
				$mc01_010vs_�����ˏؤ��� = true;
		}
		case @�x�k֫��
		{
			ChoiceB02();
//��ӭ���Ĥġ�"mc01_010vsc.nss"
				$mc01_010vs_ӭ���Ĥ� = true;
		}
	}
}


