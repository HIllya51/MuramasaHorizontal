//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_4.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{

		//$�y�Ǻ�����֦���� = true;

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg033_���Lլ����˽��_01=true;
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
//	$PreGameName = $GameName;

//	���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
//	������֦�����椷�Ƥ������ϡ�"mb01_003a.nss"
//	������֦���������Ƥ������ϡ�"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


	if($�y�Ǻ�����֦���� == true){
		$PreGameName = $GameName;
		$GameName = "mb01_003b.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003a.nss";
	}


}

scene mb01_003_4.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_002.nss"
//ǰ�ե����롡"mb01_002a.nss"

	PrintBG("�ϱ���", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("�}ɫ�\", 100, "#000000");

	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�����ڣ��Ҿ��������֮�ˡ�
���϶������֮�ˡ�

��������
��˭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
//������`�����ؚ�

/*
	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateColorSP("�}�\��", 3000, "#000000");
	StC(3100, @0,@0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStC(0,true);

	Fade("�}��ܞ", 300, 200, null, true);

	WaitKey(300);

	CreateColorSP("�}�ݳ�", 4000, "#CC0000");
	CreateTextureSP("�}��Ѫ", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(100);
	DeleteStA(100,false);
	FadeDelete("�}�ݳ�", 500, true);

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);

	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);

	Delete("�}�\��*");
	Delete("�}��*");
	DeleteStA(0,true);
	FadeDelete("�}��ܞ", 600, true);

*/

//�����ߣ�����֦��`�ȤȺϤ碌�ޤ���
	StC(500, @0, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

	WaitKey(1000);

//������`�����ؚ�
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	CreateTextureSPmul("�}�݄���Ѫ", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("�}����500", 500, true);

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	Wait(12);

	Delete("�}�݄���Ѫ");
	FadeDelete("�}ɫѪ", 3000, false);

	CreateTextureEX("�}�ţ�15", 150, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	CreateTextureSPmul("�}�ţ�׷��", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("�}�ţ�15", 50, 1000, null, true);

	WaitAction("�}ɫѪ", null);


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/mb01/0031500a00">
����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031510a11">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031520a00">
�������ˡ����

{	SetVolume("@mbgm*", 3500, 1000, null);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031530a00">
�������¡���
�������ƴǣ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031540a11">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031550a10">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������K���
//����������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg033_���Lլ����˽��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1500, true);

	WaitKey(1000);
	FadeDelete("�}��ܞ", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�������һ��ǲ��ܽ��ܡ�
���������Ǻ��йص�ɱ¾�����Ҿ�ƣ������

��Ϊ��͵�δ����ս����ɱ����Щ�ѳ���������������
��Χ��
���������ж����ҵ�����������������ʮ��ʹ�ࡣ����
����������

���Һ��������𳤶�û��ǿӲ�������ҡ�
��Ҳû��Ϊ����һ�����ҵĿڡ������ǵ�Ȼ������ĬĬ
��ף�����ƾ���˳��ˡ�

�����ԣ��ǲ����Ҹɵġ��������ܡ�����û��Ҫ������
Ѱ����ȥȷ�ϡ�
�������������������������ˡ�

������������Ȼ�������������ڴ̿�֮�֡���
��
����Ȼ���ǲ��ò����ɱ�������ָʹ��

��������˭ȡ���ң�ִ�������л��ϵ������أ�
����˭��������������𣿡�Ҫ˵��������ܹ��ɵ���
�����ϵ��ˡ���

��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/mb01/0031560a00">
������������

</PRE>
	SetTextEXC();
	if($�y�Ǻ�����֦���� == true){
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else{
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}

//����`�ȷ�᪤ޤ�����֦�����椷�Ƥ������ϤΤߡ���̨�~
..//�룺��`�ȷ���ᡢ����֦����

if($�y�Ǻ�����֦���� == true){

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��������
<voice name="����" class="����" src="voice/mb01/0031570a00">
���ѵ��ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{}


	ClearWaitAll(2000, 1000);

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031580a10">
�����������ڸ�һ�����ˡ�
���治���ס���


{	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031590a11">
���������ˡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031600a10">
����Ҳ�����ˡ�
���������������𡭡���������������������
Χ��û���ı䰡����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031610a11">
���ܱ�һֱ�����������ֳ���Ҫ�á���
�����𡣡�

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031620a10">
��������
�����ˣ��Ƕ�����ν����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031630a10">
���Ͽ�̸̸����ɡ�
����������ô�룿��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031640a11">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//������ָ��

}


//���ե饰���
//������֦�����椷�Ƥ������ϡ�"mb01_003a.nss"
//������֦���������Ƥ������ϡ�"mb01_003b.nss"


//���x�k֫���`��
scene mb01_003_4.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����֦����","����֦����");
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
//������֦�����椷�Ƥ������ϡ�"mb01_003a.nss"
				$GameName = "mb01_003a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������֦���������Ƥ������ϡ�"mb01_003b.nss"
				$GameName = "mb01_003b.nss";
		}
	}
}