//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022a.nss_MAIN
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


//�룺�����˘��Ǥ�
	if($ma04_022a_routeFlag==true){$ma04_022a_routeFlag = false;}
	else{$Others_Flag = $Others_Flag+4;SetHex();}

	RouteChicker();

	if($RC_N["���ʥ��`"] < $RC_N["һ��"] && $RC_N["���ʥ��`"] < $RC_N["����֦"] && $RC_N["���ʥ��`"] < $RC_N["����"]){

		SatugaiSystem();
		judgment_of_count();

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
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

		$���쥤���ɚ��� = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";

	}else if($RC_N["һ��"] < $RC_N["���ʥ��`"] && $RC_N["һ��"] < $RC_N["����֦"] && $RC_N["һ��"] < $RC_N["����"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["����֦"] < $RC_N["���ʥ��`"] && $RC_N["����֦"] < $RC_N["һ��"] && $RC_N["����֦"] < $RC_N["����"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["����"] < $RC_N["���ʥ��`"] && $RC_N["����"] < $RC_N["һ��"] && $RC_N["����"] < $RC_N["����֦"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else{

		SatugaiSystem();
		judgment_of_count();

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
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

		$���쥤���ɚ��� = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";
	}

	//����`�ȥե饰���x�k֫���Τ�GameName

//	$GameName = "ma04_022b.nss";
//	$GameName = "ma04_023.nss";


}

scene ma04_022a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_022.nss"

//�����
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ǵġ�
��������Ů��ȷ<RUBY text="������������">���Ǽһ�һ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���øжȻ����ʾ
//�����ʥ��`�ˣ�����
//�����ʥ��`����߂��ˤʤä��饭���ж������Τޤ��M�С�
//�������Ǥʤ���С����`����"ma04_022b.nss"��
//$Another_Flag = $Another_Flag+5;
	$ma04_022a_routeFlag = true;
	$Others_Flag = $Others_Flag+4;

	judgment_of_count();

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.�Υ��`��
scene ma04_022a.nss_Oth
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm04",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����˼����˲�䡣
��<RUBY text="����">����</RUBY>����������

����Ϊ���ղš���
����ɱ���˿�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ؓġ����Ф��塣
	CreatePlainSP("�}�𱳾�", 200);
	CreateSE("SE01","se���L_����_���̤���04");
	SL_leftdown(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}�𱳾�", 600, 6, 0, 0, 0, 1000, Dxl2, false);
	SL_leftdownfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ֵ����ˡ�
��������ɫ����Ů��

������Ӱ�������ơ�

��������Ů�����㵵�ע�����ҵ��۾���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���̤������֡�
	CreateSE("SE01","se���L_����_���̤���05");
	SL_centerout(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}�𱳾�", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	SL_centeroutfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������롣
����Ů�����š�

������˫�ۣ�
��
����˵�ţ�Ϊʲô��

��
��������ΪʲôҪɱ�ҡ�
������������������ô�أ���ô��ϲ���㡣

��
����������������������������İ���

��
�����������������������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/022a0010a00">
�����졣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ�
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}Ѫ", 3000, "#CC0000");
	CreateColorSP("�}Ѫ��", 3000, "#CC0000");
	CreateColorSP("�}�\��", 1000, "#000000");
	CreateTextureSP("�}����", 1100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Wait(10);
	Fade("�}Ѫ��", 0, 0, null, true);
	Fade("�}Ѫ", 1000, 0, DxlAuto, false);
	DrawTransition("�}Ѫ", 400, 1000, 0, 100, null, "cg/data/effect_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������
������<RUBY text="������������">���ɵ������</RUBY>����������

��������ˣ���Ů������˵��
����˵�Ŷ��ҵİ���

��
������������������������ϲ���㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma04/022a0020a00">
�������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������夶����
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}Ѫ", 0, 1000, null, true);
	CreateTextureEX("�}������", 1100, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEX("�}������", 1100, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	Fade("�}����*", 0, 750, null, true);
	CreateSE("SE01b","se���L_����_���̤���05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 0, null, true);
	Fade("�}Ѫ", 1000, 200, DxlAuto, false);
	DrawTransition("�}Ѫ", 400, 1000, 200, 100, null, "cg/data/effect_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��
�������������������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma04/022a0030a00">
��ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������夺����
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}Ѫ", 0, 1000, null, true);
	CreateTextureEX("�}������", 1100, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("�}������", 1100, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	Fade("�}����*", 0, 750, null, true);
	CreateSE("SE01b","se���L_����_���̤���05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 0, null, true);
	Fade("�}Ѫ", 1000, 400, DxlAuto, false);
	DrawTransition("�}Ѫ", 400, 1000, 400, 100, null, "cg/data/effect_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��
�������������������밮�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma04/022a0040a00">
��ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä���
	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}Ѫ", 0, 1000, null, true);
	CreateTextureEX("�}������", 1100, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����*", 0, 750, null, true);
	Fade("�}Ѫ��", 0, 0, null, true);
	Fade("�}Ѫ", 1000, 600, DxlAuto, false);
	DrawTransition("�}Ѫ", 400, 1000, 600, 100, null, "cg/data/effect_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��
�����������������������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma04/022a0050a00">
��ȥ������

//��������
<voice name="����" class="����" src="voice/ma04/022a0060a00">
��ȥ������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/022a0070a00">
��ȥ����������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ф�
//������������`��
	SetVolume("SE*", 100, 0, null);
	PrintGO("�ϱ���", 15000);
	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}Ѫ", 2000, "#CC0000");
	CreateColorSP("�}�\��", 10, "#000000");
	Delete("�ϱ���");
	Wait(10);
	Delete("�}Ѫ");

	SL_centerdam(@0, @0,1500);
	SL_centerdamfade2(10);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/ma04/022a0080a14">
���ǡ���

//���⡿
<voice name="��" class="��" src="voice/ma04/022a0090a14">
���ǣ���

//���⡿
<voice name="��" class="��" src="voice/ma04/022a0100a14">
����������������
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 5000);
	OnBG(100,"bg001_��c_03.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStL(0,true);
	DrawDelete("�ϱ���", 300, 1000, "slide_02_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����վ��Ѫ�����������Ϸ���
��<RUBY text="��������">����һ��</RUBY>��

�����Ǻŷ���Ц�š�
���˿���ͬħ��һ��ش�Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/ma04/022a0110a14">
��ʹ�죡ʹ�죡
�����ҿ�����Ŷ����������

//���⡿
<voice name="��" class="��" src="voice/ma04/022a0120a14">
��̫�����ˡ���
�����ǺεȾ��ʵİ���!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/022a0130a00">
���������Ǻš���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ɱ���ˡ�
������ɱ���ˣ�<RUBY text="��������">���ֶ���</RUBY>��

����ʹ��ɱ�˶����֡�

���⡪��������
��
��ħ��!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/ma04/022a0140a14">
����������������
��������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StL*", 600, @-60, @0, null, false);
	DeleteStA(600,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������ϡ�
����������ء�����ͬ��ϸ������ں�ˮ����Ծһ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(0,true);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 100, 100, "slide_03_01_0", true);
	DrawDelete("�}��ܞ", 100, 100, "slide_03_01_0", true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/022a0150a00">
�������ӡ�������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	SetVolume("SE*", 200, 0, null);


..//������ָ��?
//�Υե����롡"ma04_023.nss"

}


