//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_015vs.nss_MAIN
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

	//$Ichizyou_Dead = true;
	//$Kanae_Dead = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($Ichizyou_Dead == true){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$PreGameName = $GameName;

	$GameName = "ma04_016vs.nss";

}

scene ma04_015vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_014vs.nss"
//ǰ�ե����롡"ma04_014vsa.nss"
//ǰ�ե����롡"ma04_014vsb.nss"

//�����
//���ҥ���ȫ�T����ʤ飱����
//������֦�����ʤ飱����
//��һ�������ʤ飱����

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_015vs.nss_all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

//��һ�����Ф���

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0010a02">
������ʲô?!��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0020a04">
���Ƿ�����
��������Ȼ���ϵ����ǻ������
Ҳ֪��һ���з������������Ǿͻ���֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����҆��
	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}��", 3000, -20, -160, "cg/ev/resize/ev909_��҆��_m.jpg");
	Move("�}��", 6000, @0, -60, DxlAuto, false);
	Fade("�}��", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0030a04">
��̫���ˡ�
�����ﻹ���ţ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0040a02">
���Ǽһ���׼��������˰�?!��

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0050a04">
���������ڵĴ�С��Ҳͬ�����޷�����
��������ȥ��������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0060a02">
����ô��?!
����ϵ�ն�����������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0070a04">
��������������������ɴ��ǰȥ��
�����С�㣬������Խ�����������ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0080a02">
����������
�����ǣ���ȥ����ʲô��!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0090a04">
��������Ϊ�ɡ�
�����õ��ġ������ϵ�������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0100a02">
��ιιι����
����ȵȡ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0110a04">
���ٻᡣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ夤�`�󡣤��ä������롣
//�����夿��������
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("@StL*", 150, 0, 5000, Axl2, true);

	CreateSE("SE01a","se���L_����_���Ƅ�03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0120a02">
�����£�������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0130a02">
����������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0140a02">
������ʲô�����Ǹ����š���
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�}ɫ�\", 15000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

..//������ָ��
//�Υե����롡"ma04_016vs.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_015vs.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//������װ��һ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	StL(1000, @0, @0,"cg/st/stһ��_���L_�Ʒ�.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0150a02">
�������ף�
����������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0160a02">
��ʲô����
��������ô�ˣ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0170a02">
����������������
��Ҳ����˵������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󡣻�҆��
	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}��", 3000, -20, -160, "cg/ev/resize/ev909_��҆��_m.jpg");
	Move("�}��", 6000, @0, -60, DxlAuto, false);
	Fade("�}��", 1000, 1000, null, true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0180a02">
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/015vs0190a02">
��ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�Ĥ�������
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(5,20);

	CreateSE("SE02a","se���L_�|��_����04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�}ɫ�\", 15000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

..//������ָ��
//�Υե����롡"ma04_016vs.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_015vs.nss_ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0200a04">
������������
������ʱ�򡭡���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/015vs0210a04">
�����á�
��������ȥ����С��͡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @60, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);
	Move("@StL*", 300, @-60, @0, Dxl2, true);

//���ФҤ�`�󡣼��ߡ�
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("@StL*", 150, 0, 5000, Axl2, true);

	CreateSE("SE01a","se���L_����_���Ƅ�03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�}ɫ�\", 15000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

..//������ָ��
//�Υե����롡"ma04_016vs.nss"

}


