
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

scene mc01_011vsa.nss_MAIN
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
	#ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_011vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����L�A��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 0, @0, @200, Dxl2, false);
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	Zoom("�}�ݱ���", 300, 1500, 1500, Dxl2, false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}�ݱ���");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");
	CreateTextureSP("�}����100", 500, Center, -5000, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Move("�}����50", 0, @0, @-206, AxlDxl, false);
	SetBlur("�}����*", true, 2, 500, 50, false);
	Shake("�}����*", 2160000, 0, 2, 0, 0, 1000, null, false);

//����ܞ�K�������Ȥ�������

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	//$First_Battle_Damage = 1;//�ǥХå���

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

.//�ã��ݳ����������{����
//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,402);
	Wait(16);

	CP_SpeedChange(0,482,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1287,null,false);
	CP_AziChange(0,281,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove("@�}�ձ���", 0, -10, Dxl2, false);

	FrameShake();

	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", false);

//������󡸣ãУ��½���`���_ʼ��
	OnSE("se���L_����_��ͻ�M01",1000);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", false);

//������󡸣ãУ��½���`��٥�`�뤷�ƤҤä��귵�롹
	Move("@�}����50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@�}����50",3000,180,Dxl1,true);
	Delete("@�}����50");

//������󡸣ãУ��½���`��ڥԥå����åפ����½���
	MyTr_Count(300,450);
	CP_SpeedChange(3000,612,null,false);
	CP_HighChange(3000,632,Axl2,false);

	CP_AltChange(3000,-90,Axl2,false);

	Move("�}����100", 4500, @0, -500, Axl2, false);

	Wait(3000);

//������󡸣ãУ��½���`�����ݤ�����Ƶ����ˮƽ�ˡ�
	CP_RollBarMove2(0,0,null,true);

	MyTr_Count(300,511);
	CP_SpeedChange(2000,388,null,false);
	CP_HighChange(2000,715,null,false);

	CP_AltChange(3000,0,null,false);
	CP_AziChange(1000,101,null,false);

	Wait(1000);

//������󡸣ãУ��ϕN��`����ϕN�ʂ䡹
	MyTr_Count(300,441);
	CP_SpeedChange2(2000,411,null,false);
	CP_HighChange2(2000,842,null,false);

	CP_AltChange(2000,7,null,false);

	OnSE("se���L_����_���ϕN01",1000);
	Move("�}����100", 2000, @0, 800, Dxl1, false);
	Zoom("�}����100", 2000, 1500, 1500, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������У������������¡�

�����¶�����Ŀǰ��״����δ���ˣ������ζ�ţ�����
�����п����ǰ�ȫ�ġ�
������ʱ�������Σ��֮��ǰ����������ߣ��Ǿ����
Ҫ��Ϊƽ�ز����ľ����ˡ�

��������������֦С����˵��Ŀǰ�����������վ�����
ô�����ֱ����˽�׷�����״���£���Ȼ�ϵ����ֳ���
Ҳ����û�취���о�Ԯ��
����ָղŵķ�������ѹ����ǰ�ĵ��ˡ�

�������ҵó��˽��ۡ�
��
�������ֿ�ʼ���ġ�

��û�������Ƚ�����Ǹ����ߡ�
�����ҡ���Ҫ���졣

������Щ�Ļ���һ�ж���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("�}�ݺ���", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Move("�}�ݺ���", 0, @-330, @0, null, true);
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 150, 150, null, true);
	Move("�}�ݺ���", 300, @30, @0, null, false);
	Fade("�}�ݺ���", 300, 1000, null, true);

	OnSE("se����_���å��ԥå�_��å�����",1000);
	CockPit_LockSet(@-300,@0);
	CP_LockOnFade(300,"on",false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0010a01">
��������
����������

//��������
<voice name="����" class="��������" src="voice/mc01/011vs0020a01">
���������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0030a00">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ʲô��
��������װ�״��ˡ���

�������ʲô������
�����εġ�����

����ǿ���Ӿ���ϸ�鿴��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å������`���ܩ`�ǥ��`�۩`��ʂ�״�B
//���������k�˸��ơ���h�������`��ȳ��Ƥ��Ƥ���

//������󡸣ãУ�ҕҙ����(���`��)�ݳ���
	CreateSE("SE01","se����_���å��ԥå�_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateEffect("�}�݄���", 2100, 120, 205, 200, 150, "KitanoBlue");
	SetAlias("�}�݄���","�}��/�}�݄���");
	Fade("�}�݄���", 0, 0, null, true);
	Zoom("�}�݄���", 0, 0, 0, null, true);

	Fade("�}�݄���", 500, 900, null, false);
	Zoom("�}�݄���", 500, 2000, 2000, Dxl2, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0040a01">
�����ǡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0050a00">
���������ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�", 18000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	Wait(1000);
	Cockpit_AllFade0();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ڿڡ�
������̹���ڵĶ�������������̹���ڡ�

�����˾�������ʲô��
����ͨ�Ļ��ڣ��������޷�������������Ļ��ڣ�����
�߶��ԣ������㲻�����γɹ�������������

�������ߵ��ж������ر������Ĺ�����������ʲô���£�
���ң����㱻�����ˣ����������Ҳ�ᱻǿ����װ��
���������������ǣ�Ƶ����á�����Ҳ���ڿ�������
�����ǰ���¡�

��������������ô�����ǵ����ġ�����֮��Ҳû���κ�
����֮����
����ȫ����֮���Ǹ��޴���������صģ��и�������
���ܵ�ħ�ڡ�

����ô����Ϊʲô��
��Ϊʲô����Ҫ�ڴ�ʱ�˿̣��ڳ�һ��Ҫʹ��<RUBY text="��������">��������</RUBY>
�ļ����أ�

�����ס�����ʲô������
��������ͨ���ڸ��������˺��𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0060a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���o�������Τޤ�ͻ�ģ����Ф롣�������˱ܣ�

}

..//������ָ��
//���o�������Τޤ�ͻ�ģ���"mc01_011vsaa.nss"
//���Ф롣�������˱ܣ���"mc01_011vsab.nss"

//���x�k֫���`��
scene mc01_011vsa.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("�}�ţ�", 18000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("û�С��ʹ�ͻ����","�С������˱ܣ�");
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
//���o�������Τޤ�ͻ�ģ���"mc01_011vsaa.nss"
				$GameName = "mc01_011vsaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���Ф롣�������˱ܣ���"mc01_011vsab.nss"
				$GameName = "mc01_011vsab.nss";
		}
	}
}