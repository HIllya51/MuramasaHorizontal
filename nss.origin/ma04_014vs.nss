//<continuation number="6050">

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

scene ma04_014vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_014vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_014vs.nss","MeimetuSET",true);

//��������ݳ����������i���z�ޤ�������줬��������Τ�ǰ�ե�������i�ޤ��ޤ���
	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//$Ichizyou_Dead = true;
	//$Kanae_Dead = true;

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	if($Ichizyou_Dead == true){
		#ev004_����֦������_b=true;
		#bg005_ɽ��_03=true;
	}else if($Kanae_Dead == true){
		#ev910_��҆����Ԫ���å�=true;
		#bg005_ɽ��_03=true;
	}else{
		#ev004_����֦������_b=true;
		#bg005_ɽ��_03=true;
	}


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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_01";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_01ka";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_02";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_02ka";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_03";
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

		call_scene @->ma04_014vs_ic_Select.nss;

	}else{

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $BasGameName + "_all";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_01";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_01all";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_02";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_02all";
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

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_03";
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

//�����ߣ����xλ���{�����Υե����륲�`��ͩ`��_�������Ƕ��x���ʤ��ȥ�Х�
	Cockpit_AllFade0();

	$PreGameName = $GameName;

	if($һ�����ؤ� == true){
		$GameName = "ma04_014vsa.nss";
		$һ�����ؤ� = false;
	}else if($�۸�ˏؤ��� == true){
		$GameName = "ma04_014vsb.nss";
		$�۸�ˏؤ��� = false;
	}else{
		$GameName = "ma04_015vs.nss";
	}

}

scene ma04_014vs.nss
{

}

scene ma04_014vs.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_013vs.nss"

//�����
//������֦�����ʤ飱����
//���ҥ���ȫ�T����ʤ飱����
//��һ�������ʤ飱����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
//�񣱣���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0010a02">
���ն���������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0020a00">
������һ��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������ʶ����ס�
���������⸽���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0030a02">
��������û�°�?!��

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0040a00">
������������ƽ�����¡���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0050a02">
�����������������ǿɾ���ƽ�����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ǿͱ��ʡ�
���������������ûظ�����仰�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0060a00">
����������̫Σ���ˡ�
�����ڻ�û�л�����
���ٴӵ��ϳ��˴�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0070a02">
���Ҳš�����Ҫ������
�����ܰѴն�����һ�������¡�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0080a00">
����˵ʲô���л�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ҳ����г���������ת��һ�롣
�������ǰ�������״���������������塣

��������ˣ��ڴ��з��ܺ��Ե�������ʹ�õĴ���
δ��̫�����档
��������Ȼ���з������š����ܽ�һ����������
���ֵط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0090a00">
���Ǿ��뿪����ں��ʵĵص�Ǳ����
������
��ѹ��ס�������Ҳȥ��ϡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0100a02">
���͡���������˵Ҫѹ�ơ�
��������״̬����ô���ܡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0110a00">
��û���⡣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0120a02">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0130a02">
����ζ������
����ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0140a00">
��ζ������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0150a02">
���Ӵն��������Ϸ�������
���ս������ζ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������<RUBY text="����">�����</RUBY>��

��ȷʵ��ζ����
����С�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0160a00">
�������⡣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0170a02">
���Ȳ�˵ս�������ܶ����𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0180a00">
������û����Ͼ���ʴ�
�����Ѿ�����ָʾ�����ж�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0190a02">
�����޷���ͬ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0200a00">
������Ҫ���ͬ�⡣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0210a02">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0220a00">
���������Ƿ���ͬ����
���Ҷ�Ҫ���ٵ����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0230a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0240a02">
������������İ���������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0250a00">
����˵Щ���˷�Ц�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ҷ�������
����ʵ�ʲ�û�з���Ц���������³�������ζ����Һ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0260a00">
��˭�������ֵط�<RUBY text="������">���ȵ�</RUBY>��ȥ����
���Ҳ���������������ѹ���򵹡���

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0270a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0280a02">
������Ϊ����
��������ȷ���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0290a00">
�����ԡ��Ǹ��Ӹ������ĵ�ԭ��
����<RUBY text="��������">��������</RUBY>��ȥ��
���˻�������������ȥ���⣬
����ѡ�񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0300a00">
��������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0310a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0320a02">
�������������ˡ�
����ô����Ȼ�����Ҳ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs0330a01">
��������
�����︽��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//��ҕ��ܞ�Q
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ͻȻ�������ڵĴ��������������ҵ�ת�����ߡ�
������½�ľ޴�����������Ϊ�����䵽�˱ȴ˵�
���͵ĵط������԰���״����

���ǳ�����
��һ̨�������䳵�������˶��ŵĹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0340a00">
���������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs0350a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0360a00">
�����������ڽ��е�ҩ������
�ֻ����滻��˵����ߡ�
���������������ָ̻��ٴ��ж���?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs0370a01">
�����������У�
���������ڵ�״̬�ܳ�ȥ��
���ܷ񵽴����ﶼ��˵����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0380a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����䵯ҩ����˵���������ǵõ�����״��
���õ��²ٿ��ߣ����ҵ����ӱ��������˾����ĸ��ҡ�
���ѵ�ֻ�ܶԴ������Թ�ô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0390a02">
���ն�������
����ô�ˣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0400a00">
������һ�����ͳ��������ڽӽ����
�������Ʋ⣬������Ϊ�˲�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0410a02">
�����������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��һ������һ������
����ʹ����רҵ����֪ʶ��
������Ҳ���Զ��׼��ġ�

���̲�ס��Ҫ���ˡ�
�����Ҵ�ס�ˣ���˼���Ĵ���ת�����Եķ���
�����׻�˵����������˼���ķ�ʽ��

���з�Ҫ�滻���ߣ����Ȼ�Ǵ��Ĳ�����
��ͬʱҲ���ҷ���������֪�ĵ��������˵Ĵ���λ��
���Կ��Ƶľ�����ᡣ
�����ܰ���ס���㽫�õ��Ե���ʹ�����ɵĿ����ԡ�

����˵������������Խ���޵�״̬�£�
�ܷ��Ӽ�������Ҳ�Ǹ����⡭��
��������Ψһ��ʤ����

���ҽ���ʶ�������Ӿ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0420a00">
��������Ȼ�ǲ�����
�������ڽ������֡�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0430a02">
�������š���
���ҿ����塣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0440a00">
����Ҫ���������ģ�Ҫ�������ȥ����
������������Դ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0450a02">
����������ʲô��˼����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0460a00">
�����Ǽ�Ұ�����ش��İ��ӷ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0470a02">
�������Ҽǵ��ƺ�Ҳ��
һ�°���˵��������
���ţ������ǡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0480a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����ȷ���Ŵӹ������߳�����Ӱ��
���Լ��̶��ǳ��ϵ�����Ӱ��

�������˿��ھ�������ϵĿ�Ѩλ�á�
������ӡ�������ڡ�

������������Ȼ��Զ������״�������壬
�����������������ˣ����´���ϵ��ˣ�
����������������ʽ���׵����ߡ�
���Ǹ������ѵ��ǽ����߽�һ��ǿ���ı�װ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0490a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0500a02">
���Ǹ��������ӣ�
����������ʲô�أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0510a00">
�����ӡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ҽ����߽�������һ����ָ֮�
�����ӡ������������Ӱɡ�

���Ը�����Ƥ�����ɵ������塣

�����Ǹ�����ڸ�ȡ�����Ķ�����
���ѵ�������Ҫ����Ʒ�𣿡��ַ�����˵�������⣬
�������ڿյ��ϣ�֮��Ҳ����һ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0520a00">
�����С�����ʲô�����ɡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0530a02">
�������ǰ���
�������������ѻ���ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0540a00">
��������
���Ӿ�ǿ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs0550a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�।��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("�}��д", 4900);
	SetShade("�}��д", HEAVY);

	Fade("�}��д", 600, 1000, null, false);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������ۺ��������Ӿ��鱨���������
���Ǹ������ǡ������ơ�һ�ߴ�Լ�������ҡ�

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs0560a01">
��!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0570a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����������޴�Ľ��С�

����ʹ���Լ�Ϊ����������ɽ�֮�֣�
��Ҳ��Ӳٿ������϶������Թ��Ƶ�������

��
�������������������Թ��Ƶ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������ʲô�����ӳ�����ж��������
����Ҳ�����ӡ�ͬ�������ӡ�

��ֻ��һ������
����װ֮�

��������װ�Ķ����ڶ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����B�Ҥ��ӹ��_
//�����B����
	EfRecoIn1(18000,50);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	StC(16100, @0,@0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("�}����*");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	CreatePlainSP("�}��д", 4900);
	SetShade("�}��д", HEAVY);
	EfRecoOut2(50,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ӡ���
���������ӡ�

������������
����������

��Ϊ�˽������<RUBY text="����">��Դ</RUBY>��Ѻ��ȥ�����ڵģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0580a02">
�������Ǹ�����
���ڡ���������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0590a02">
���ն����������ǡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0600a00">
�������ࡣ��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0610a02">
������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0620a02">
���ˡ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0630a00">
����С����
����Ϊʳ���ġ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0640a00">
�����Ǹ�������ת������ȼ�ϡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0650a02">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������ڼ����ľ���ҡҷ������
��˺�Ѽ����ĵ��²�����

���ǲ��Ƿ�ŭ�������ɱ��
֮��ĸ��顣
��Զ����Щ����������������ã��

���������ԡ�
��<RUBY text="����_����������������������">�Ǿ��Ǵ��Ӷ����������ֵĸ���</RUBY>��

��������������
��һ�������Ϊ���ָ���Ľᾧ��

��Ȼ���������־����
����Ӧ�ý���ìͷָ���ǵ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��������������֮�С���
���ݽߵĲк���

��ɱ�����ǵ���˭��
�����ǹ���ô��

�����������

��ǣ���Ź��
����������������

�����������������ˣ���˭��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01a","se����_��_��Ġ����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�����á�
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����վ��������
��̫���ˡ�ֻ��������ܳ�Ϊ������

��������������ţ�����վ����
��������������ţ����ܶ�����

���ҽ��ϵ�����ɢ���ž�ʹ��
����������������

��ÿ����һ�£����ϵ�װ�׶���ȡ���ҵ�������
�����񱻽�סһ�㣬����ʹ��İ�����
����������������

��������
��������
����ȫ������

����Ҫ�����˺ۡ�
����Ҫ�������䡣
��Ҫ���Ǽһ���ӡ����ӡ�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("�}ɫ��", 5000, "#CC0000");
	CreatePlainEX("�}��д�r", 4910);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 500, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ����ϥ�Ǳ�����������
������������Ц�š�

�����ѿ���
�����������л����������ء�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 700, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ������е�ѣ�Ρ�
����ʶ���ʣ��о����ģ����

����ɱ���
�����������ܿ������壬������������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 1000, null, false);}
��
�����������������������ɱ�˷���

����һ��ʧȥ����Щ���������ǰɡ�
�������롣

����һ�±����������Щ���������ǰɡ�
�������롣

��������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ���r", 10000, "#CC0000");
	Fade("�}ɫ���r", 300, 1000, Axl2, false);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);}
�������ն�������
�����������ʹ����Զ��ĥ�㣬
���������������ò�����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������}��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#CC0000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0660a02">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0670a02">
��������������ô���أ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//��һ�������}
	CreateSE("SE01b","se����_����_�᤺����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0680a00">
�����¡���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0690a02">
����������ô�죿��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0700a00">
��ǰ�С�
��նɱ�ǹ���ȳ������ǡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0710a02">
��ƾ������壬���ǲ����ܵġ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0720a00">
���Ǿ��ò����ܳ�Ϊ���ܡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0730a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0740a02">
���������ˡ�
������Ҫ��Щʲô�أ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0750a00">
����һ���˾͹��ˡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0760a02">
��������������
���˽��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StL*", 300, @30, @0, null, false);
	DeleteStL(300,false);

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//���O��һ��
	WaitAction("@StL*", null);

	StCR(1000, @90, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StMR*", 300, @-60, @0, DxlAuto, false);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0770a00">
��������ʲô����

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0780a02">
�����Ǹ�����ȳ����ӡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0790a00">
���㲻�еġ���

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0800a02">
������Ҳ�����С���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0810a00">
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0820a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���ҵ���һ����Ҳ�����в��ӽ���
����ɱ��ĸ��顣
��������һ�������潫���߻����˹�����

��һ��������ͬ���̺���ɱ�⡣
������������˵������������ɱ���ҡ�

���̶̼��룬
������һ�����а�����ŶԷ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0830a00">
������
�����۷���ʲô���Ҷ�������㡣��

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0840a02">
���Ҳ���Ҫ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0850a00">
���Ϻ��ȵĻ����ҾͰ���ɱ������

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0860a02">
���õġ�
���鷳�������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0870a00">
�������ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����³�����仰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0880a00">
�������������

//��Ц���������ʣ�
{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0890a02">
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//��һ�ȥ֥�å�������
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ı�����򵥵Ĳ��ԡ�
�������ж�������˵����³ç��ǿ��ͻ��֮�⣬
������Ѱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);
	FadeDelete("�}ɫ�\", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma04/014vs0900a00">
����ȥ����ʱ�䡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0910a02">
������ʱ��ô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0920a00">
������Ҳ�����ܡ��ܿ���
��֪�ҷ����ڵء�
������<RUBY text="��">����</RUBY>����һ��ʱ��
����������ս�����ơ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0930a02">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0940a00">
�����ʱ���ڣ���ȥ���Ǽһ�Ķ��֡�
����ʽ���㡣����������Ҫ
��������ע�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ָ�ŷ�����ɽ�ľ޴�����������˵��
���ⳡ���������������²۵ĺ�ʱ����

����һ��ȴ�������µ��׿��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0950a02">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0960a00">
�����ڼ䣬�һ���ȡ�ָ���
ͬʱ̽Ѱ���˵����㡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs0970a02">
�����㣿
����ʲô�����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0980a00">
���С�
���ղŵĲ�����ҵ�У���û���������ڽ���
���Ƶ�ص���Ʒ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs0990a00">
���з���Ҫ��װ�ǵ���ʽ�ģ������޿����ɡ�
��û�е�أ�������������ĳЩ������
��ȡ���ܡ�
����ҪŪ�������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1000a02">
������������һ�㡭����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1010a00">
�����ܵõ���������ͷ����
�����������������뵽����죬
����ʵĶԲߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����������˵���Ժ����ѣ�����˵���ƹ���ˤ��
����Ҳ����Ͷ��·��
���뷨�����׾�ӣ����Լ����Ȼ�ˡ�

��������ȷ��Ҫ�صĲ��ԡ�
�����������񾭵��ˣ������޷����Է��Ӱɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1020a02">
���˽��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�������}��ȥ
	DeleteStA(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1030a00">
���ȵȡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1040a02">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1050a00">
����Ҫȥ�ġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1060a02">
�����̿�ʼ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��������Ů�ѵ��Ѿ�����ô��
���Ҳ�������뵽��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1070a01">
������һģһ��������<RUBY text="����">Ů��</RUBY>�������Ը�
����ģ��ǳ����ơ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1080a00">
������
����˵��ʽ���㣬��������ζ��
����ô�����ӹ�ȥ����

//��������
<voice name="����" class="����" src="voice/ma04/014vs1090a00">
������޶ȵ���װһ�°ɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1100a02">
����װ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//����҆��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	FadeDelete("�ϱ���", 500, true);
	WaitPlay("@mbgm*", null);
	FadeDelete("�}��ܞ", 500, true);

	SoundPlay("@mbgm36",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����ս�⼤������Ҳ������ô˵��

��ս���������ǹ�������������ˡ�
��������˵����������������������������Ϊ��
�����Ǳ��Ӹ������ְ��

������֮ǰ�����Żİ��µ�ͬ�鲻ͬ��
��������������ս������ζս���Ⱥõ��ˡ�

����������⡣����������ʲô���˵ģ�
�����۱���ô��̵�װ���ػ���
��ԡǹ���������鶼�����¿־塣
�����ӵ�����Ŀ��������ΪҲ�����������к�����ϵ��

��ͬ�������������֮��չ����ս��������ͷ������β��
��Ҳ������Ǿ��޽��еĺõ��֡�
������ʹ��ˣ��������Ҳ�޷���
��������սʿ�����е�ϲ�á�

����ϣ�����ջص����ӵ���ߡ�
��������ս���ϵ�Ը��ֻ����һ����

�����������������ڷ��ֵ�����Ӱ��ʱ��
��������һ��־�ĺ���Ͱ��ĵ�ů���ϵķ硣
����������������ͬʱ������ƽ����������

������������
�������������飬���ڿ�ʼ�ˡ�

��������������֮�󣬾��ܻؼ��ˡ���

����ȷ������Ұ�߽���<RUBY text="������">��˸��</RUBY>�ĺ�ɫ��
����̾��һ����֮��
����ʼ�����������ޱ�����ҵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ӥ�������҆��
	CreateSE("SEL01","se���L_��҆��_�Ƅ�02_L");
	MusicStart("SEL01",0,1000,0,500,null,true);
	SetFrequency("SE01", 2000, 1000, Dxl2);
	CreateTextureEX("�}�ţ֣�", 4010, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}�ţ֣�", 2000, 1000, null, true);

//���h�TȺ
	CreateSE("SE01a","se����_�z_�l����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 4030, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	CreateTextureSP("�}��", 4020, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	WaitPlay("SE01a", null);
	WaitKey(1000);

//���k��
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01b","se���L_��҆��_����05");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 3000, 1000, Axl2, true);

	$�Еr�g=RemainTime("SE01b");
	WaitKey($�Еr�g);

	WaitKey(500);

	WaitPlay("SE01b", null);

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����ƬҹĻ���ⳡ���桪��
���ն����������һ���������������˽��ж��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1110a01">
�������ƺ���ʼ�˰�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1120a00">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���޴����ε����߻ع�ͷ������ر�
��ʼ�����
������Σ�յ�ʱ����

����Ӱ����˵�ǽ�����ߡ�
���������ʮ�룬�����̽�����
��ܿ��ܷ��ּ����޷��������ҷ���

����������֪��һ���<RUBY text="��������">���µľ�</RUBY>�ɡ�
���Ǽһ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1130a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1140a01">
�����ں�ڣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1150a00">
����������
���Ҳ�û��ڡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1160a00">
��һ���������Σ�ա�
�����İ���Ҳ�Ǳز����ٵġ�Ϊ�˸�����ս����˴򵹣�
���ӿ��پ������������ŵ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1170a00">
�����һ�룬����Ψһ��ѡ��
����������·����ֻʣ�¹�ִ������
ǿ��ʵʩ���ռ��͵���ս��������ĥ
�����е�������һ��·����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1180a01">
���ǰ�����
�����ǣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1190a00">
�������䲻��ڡ�
�����Ҹе��߳ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1200a00">
��֮�������벻�ò�����һ��������״����
���仰˵��Ҳ�������������㡣
������е��߳ܡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1210a01">
��������Ҫ���Ա��������С�
��ϸ�ĵ��ˣ���Ż������ô˵�ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1220a00">
����Ҫ˵�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1230a01">
������
����������˵��<RUBY text="��������">״����ͬ</RUBY>������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1240a00">
���š��ǰ���
��״����ͬ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1250a00">
�����ǲ�����Ϊ��ô��Σ�ѣ�
�Ϳ����Լ�̫����
�����ǿ���һ���Լ�������ƵĴ��ڡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1260a01">
���ǰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1270a00">
���������߳ܡ���Ҫ��������߳ܣ�����ס����
��ƾ�����ֳ�̬�����Ǹ���������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1280a01">
���ǰ�����
�����ǵ���������������

//��������
<voice name="����" class="��������" src="voice/ma04/014vs1290a01">
����������ȥȡ��Ұ̫���ɡ�
����ʣ�µ��������ѡ��ƻ�������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1300a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������������ʹ��˻�������
��֮ǰ����ȫ����װ״̬ȥ��ս��
ȴ�����Ѵ���֮���ش���ˡ�

�������Ĳ��������������ѧ������������
�������⵽����Ϊʲô�ء�

���Ա�һ�����Ǻź�<RUBY text="��">����</RUBY>����
�����״���<RUBY text="������">Ƿȱ��</RUBY>ʲô�ء�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1310a01">
����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1320a00">
����֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����ڿɲ��Ǳ���ã�����ʱ��
���ҽ�ע�⼯�������һ������������ս��״����

�����뿴�ơ�
�������Լ�Ӧ��׼�ĵ������㡣

������һ�������ӳ���ʱ�䡣

�������������Ѿ�<RUBY text="������">�е���</RUBY>��
������ǷȱĳЩ��������ȷ�ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1330a01">
�����������ش�Ҳ���ԡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1340a00">
��ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1350a01">
����Ů���п��������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1360a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1370a00">
���ܵͰɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1380a01">
������Ů��������ĩ·��ʱ�򡭡�
��������ô���أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1390a00">
��ʲô��ô�졣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1400a01">
��������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1410a00">
������
�����������£���ʹ��ս�ܴ졣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1420a00">
�����ԣ��һ���ֻ�۱�ֻ�ۡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1430a01">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1440a00">
���Ҷ�������Ҳ˵��ͬ���Ļ���
������ͬ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1450a01">
����������
���������������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1460a00">
����ô���ò��ã��Ǽһ��Ѿ�<RUBY text="������">������</RUBY>�жϡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1470a00">
�������Դ�Ϊǰ���������ԣ�
�������ж��ġ���˶��ѡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1480a01">
��������ô��
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 700, 0, null);

//��һ��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 100, "slide_01_03_0", true);
	WaitPlay("@mbgm*", null);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_03_0", true);

//���|��
	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	CreateTextureEXadd("�}�ݻ�҆��", 3011, -280, -270, "cg/ev/resize/ev909_��҆��_bl.jpg");
	CreateTextureSP("�}�ݻ�҆", 3010, -280, -270, "cg/ev/resize/ev909_��҆��_bl.jpg");
	SetVertex("�}�ݻ�҆*", 450, middle);
	Fade("�}�ݻ�҆��", 0, 500, null, true);
	Zoom("�}�ݻ�҆��", 1500, 1200, 1200, null, false);
	Shake("�}�ݻ�҆", 2160000, 4, 0, 0, 0, 1000, null, false);
	FadeDelete("�}ɫ��", 150, true);
	MFlash(5,20);
	FadeDelete("�}�ݻ�҆��", 1000, false);

	Wait(800);

//��������ľ�����S���������
	CreateSE("SE01a","se��Ȼ_ɭ_ľ�������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Delete("�}�ݻ�҆*");

	CreateSE("SE01a","se���L_�n��_�nͻ01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 0, 20, 0, 0, 1000, Dxl2, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1490a02">
��������
�����⡭���һ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE02","se���L_�|��_�C�v�|����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(5,20);

//��װ�פ����������󤫤󤫤�
	CreateSE("SE02a","se���L_�|��_����04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1500a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE03","se���L_�|��_�C�v�|����02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(5,20);

//��װ�פ����������󤫤󤫤�
	CreateSE("SE03a","se���L_�|��_����04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//��ľ��ꎤ��Ӥ��z�ࡣ���`�á�
	SetVolume("SE01", 600, 0, null);
	SetVolume("SE02", 600, 0, null);
	SetVolume("SE03", 600, 0, null);

	CreateSE("SE04","se����_����_���S02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	WaitPlay("SE03", null);
	Delete("@MF*");

	DrawDelete("�}�\Ļ", 200, 100, "slide_01_03_1", true);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 10, 0, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1510a02">
���ȡ���
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��������װ��
	StL(1000, @30, @0,"cg/st/stһ��_���L_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����ͷ��֨���졣
������Ϊֹ���з��ĵ�ҩ��δ���ݽ������У�
�ɼ�ʹ����Ҳ�ѳ��������ˡ�

���һ������Լ��õ�<RUBY text="����">���</RUBY>��ʱ����˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);

	EfRecoIn1(18000,600);
	OnBG(16000,"bg043_���΍uɽ��_03.jpg");
	StR(16120, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoIn2(300);

	SetFwC("cg/fw/fw����_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1520a00">
�������ô����ĸ�˿������������
ģ��װ�׻��Ķ�������

//��������
<voice name="����" class="����" src="voice/ma04/014vs1530a00">
����Ȼ�޷�����һ����������������
��Ҳ�����ڰ��ְ��š���������ô��Ϊ�ġ�
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}��", 17000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateTextureSP("�}��/�}����", 17000, Center, Middle, "cg/bg/bg043_���΍uɽ��_03.jpg");
	Move("�}��/�}����", 0, @0, @-288, null, true);
	Rotate("�}��/�}����", 0, @0, @180, @0, null,true);
	Zoom("�}��/�}����", 0, 2000, 2000, null, true);
	SetShade("�}��/�}����", SEMIHEAVY);

	CreateTextureSP("�}��/�}�����}װ��", 17100, -490, -340, "cg/st/resize/stһ��_���L_�Ʒ�lm.png");

	Move("�}��/�}�����}װ��", 3000, -550, @0, DxlAuto, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	Wait(300);

	SetFwC("cg/fw/fwһ��_Ц�a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0621]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1540a02">
����������ӯ��
�����������Ҳ���������˶�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1550a02">
������ͬʱ���Ҿ�����Ҳ���Ƿǳ��ι̡�����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 300, 0, 1000, Dxl2, true);
	Delete("�}��");

	StL(16110, @30, @0,"cg/st/stһ��_���L_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_�a��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0622]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1560a00">
��ʵ��ǿ�Ⱥ���ȷ��
�������ߵ�̫��֮�£����²���һ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1570a00">
��Ӧ�ÿ��Է�ס��ǹ�ӵ�֮��ġ���
������֪����ά�ֶ�á���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1580a00">
��˵���˾������Ұ�ο��
����̫����������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1590a00">
��������ֻ��Ϊ���ṩ���ֶ�����
����Ȼ˵������޶ȣ�����������޶�
���ﲻ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);
	CreatePlainEX("�}��д", 1100);
	SetShade("�}��д", MEDIUM);
	EfRecoOut2(600,true);
	SetVolume("@mbgm*", 2000, 1000, null);

	CreateTextureEX("�}�݄���һ��", 4100, -90, -330, "cg/st/resize/stһ��_���L_�Ʒ�lm.png");
	Move("�}�݄���һ��", 10000, @0, -90, DxlAuto, false);

	Fade("�}��д", 1000, 1000, null, false);
	Fade("�}�݄���һ��", 1000, 750, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
�����ֶ�������
�����һ�����������ֶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��д", 500, false);
	FadeDelete("�}�݄���һ��", 500, true);

	CreateSE("SE01a","se����_����_�᤺����01");
	StL(1000, @-30, @0,"cg/st/stһ��_���L_�Ʒ�.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStA(300,true);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1600a02">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @200, @0, Dxl2, false);

	WaitKey(50);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("�}�ݱ���", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	DrawDelete("�}ɫ�\", 200, 100, "circle_01_00_1", false);

//���|��
//�������󤫤��`��
	CreateSE("SE02a","se���L_�|��_�C�v�|����02");
	CreateSE("SE02b","se���L_�|��_����04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	CreateTextureEX("�}��", 6000, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
����ս����
���ն������ĵ��ˣ������һ����ս����

����������Ĵ��Ӵܣ��ô�������Ķ�������
���������һ����Ϊ�˴ն�������������

����һֱ׷���������
������������޶Ȼ�������޶����£�������ν��

����Ϊ����������
���������ų�Ϊ�����İ취��

������ǣ������һ����˵��<k>
{//���ڶ�Ԓ��һ����������������åȒ���
	SetVolume("SE*", 500, 300, null);
	Fade("�}��", 500, 1000, null, false);}
�������������֮��̬��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 6500, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, true);

//���|��
	Delete("�}��");
	Delete("�}�ݱ���");
	DeleteStA(0,true);

	SetVolume("SE*", 3000, 1000, null);
	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1610a02">
����������
���������ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������󤫤���
	CreateSE("SE03a","se���L_�|��_����04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��ģ��װ���޷���ȫ����ס�ĳ���������͸�����ڣ�
�����ڹ���䡣
��ž��ž������첻ʱ������У�Ҳ����ĳЩ�������ѵ�
�����������������ɡ�

��ÿÿ����������������ԡ���ӵ��ͱ�ø��Ӷ��ء���
����Ϊװ�����ڱ�����������ô��
�������ǰɡ�

�������һ���������⡣
�����Ĵ��ӱܶ�أ���ȴ����¶����ţ�רע��
�Լ�����������ע���ְ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE04","se���L_�|��_�C�v�|����02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MFlash(5,20);

//����������
	CreateSE("SE04a","se���L_�|��_����04");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
���������������뽣���ܵ�������
����Ź��Ŀ��ʱ��޶��¡�
������ȫ��Խ�����������͵�ʹ�෶Χ��

�����ǡ���
��Ҫ������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1620a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
��Ϊ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE05","se���L_�|��_�C�v�|����02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MFlash(5,20);

//������������
	CreateSE("SE05a","se���L_�|��_����04");
	MusicStart("SE05a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1630a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
�������ɡ�
��
��������ǰ�ն�����ͻȻ�������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|���|��
	CreateSE("SE06","se���L_�|��_�C�v�|����02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(5,20);

//�������󤫤��󤫤��󤫤���
	CreateSE("SE06a","se���L_�|��_����04");
	MusicStart("SE06a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1640a02">
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
��
���������������һ���Ѿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE07","se���L_�|��_�C�v�|����02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MFlash(5,20);

//�������x���ŏ�
	CreateSE("SE07a","se���L_�|��_��������02");
	MusicStart("SE07a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1650a02">
�����ڳ����﹥����
���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE08","se���L_�|��_�C�v�|����02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MFlash(5,20);

//�������󤫤���
	CreateSE("SE08a","se���L_�|��_����04");
	MusicStart("SE08a",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
�����塱����֮�����
��Ȼ����ȴ��<RUBY text="��">��</RUBY>һ��������ԭʼ��Ʒ���Ǻϡ�

Ҳ������ô˵�����������塱��Ϊ���������αװ��
���õ��ˣ�Ӧ���ǽ�ȫ�ġ�
��������Ϊ�������װ�Σ������������Լ���֦���ϣ�
�������ͬ�ڱ��ܣ������˲ž��������ɡ�

�������ơ�
�����������߲��ɴ�ҵ��

���������ơ�
������Ӧ�Կ��޼������͡�Ӧ�Կ��Ϊ��֮־��

��������֪������
�����������ˡ��������޹ص��������壬
ֻ�������ڷ��֮�ϡ�

�����������һ����ͬ��
�����һ��<RUBY text="����������������">��֪����һ��֮ǰ</RUBY>��<RUBY text="����������">���Ѿ����</RUBY>��

��Ҳ���������Ƕ�Ҫ�����
����ֱ�ط���š�

�������κ��˶�Ҫ��ȷ�ط���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE09","se���L_�|��_�C�v�|����02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MFlash(5,20);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1660a02">
��������������
�����ҿ��ڰɡ�������

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1670a02">
�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE09a","se���L_�|��_�C�v�|����02");
	MusicStart("SE09a",0,1000,0,1000,null,false);
	MFlash(5,20);

//�������󤫤���
	CreateSE("SE09aa","se���L_�|��_����04");
	MusicStart("SE09aa",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 5000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
����֮��������Ҫ�ع��ɡ�
���侫�����·���䷽����

�����о���
�����һ������Ϊ�Լ������˳�����

�����е�·��
����ն�����������Ϊ��ָʾ�˳�����

�����һҪ�ء�
�����ɴ���ɡ�

�����һ��ʧȥ������Ϊֹ����ǿ�����������������磬
Ȧ���ڷ��˷�Χ�ڵĶ�����
��<RUBY text="������">��ʼ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
	CreateSE("SE10","se���L_�|��_�C�v�|����02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MFlash(5,20);

//���ߤ�
	CreateSE("SE11","se����_����_�ߤ�01_L");
	MusicStart("SE11",0,1000,0,1000,null,true);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("@MF*");
	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 1000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	DrawDelete("�}�\Ļ", 300, 100, "circle_01_00_1", true);

	CreateTextureEX("�}��һ��", 1100, -240, -30, "cg/st/resize/stһ��_���L_�Ʒ�l.png");
	Move("�}��һ��", 3000, -340, @0, DxlAuto, false);
	Fade("�}��һ��", 1000, 650, null, false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1680a02">
����Ҫ���ࣩ

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
����ʹ���г�ֳ�����ս����
����һ���棬���һ��ȴ�������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1690a02">
���ұ���ӭ�Ӹ����ս����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
��ֱ����Ϊ����֮��
�����Ӽ��ҡ����Ӳпᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1700a02">
����ôһ�����������
���ҿ���������ӭ�Ӹ���ս���Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
���ǵġ�
�����������ֶ�������֮ʱ��

�����һ���������������ϣ��������̡�

�������塣
�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2500, 0, null);
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
��
��������������������֮����顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1710a00">
�������ҿ����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1720a01">
���������Ǹ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1730a00">
���š�
����<RUBY text="������">��Դ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
����ϸ�ȣ�����ɫ��Ϳ�ǣ�������ĵͿշ��У�
����������������Ϊȡ��ȷ��Ҳ�ķ��˲���ʱ�䡣
���������²���ֱ��������ģ�ϸ�ߡ�

���Ǿ����ǹ���������;����
����������ƶ������ԣ�Ψ�������������������֡�
������<k>ԭ����ˡ��⸽���ĵ����е�Դ�壬
���߾�������<RUBY text="��������">���л���</RUBY>����ôһ��������ˡ�

��ֻҪ���Ǹ��жϾͺá�
�����һ��������Ťתս�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1740a01">
��Ҫ��ô�죿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1750a00">
����������Ϯ�������»ᱻ�ǲ�������ֹ��
�������ҵ��ǵ�������λ���ڵ��˵�
���ǡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1760a00">
�����Խ���͵Ϯ��
�����Ƶ������󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�ɥ쥤��ӣ�
	CreateSE("SE01","se����_��x_��҆��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1770a01">
��������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1780a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//����҆��
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev909_��҆��.jpg");

	DrawDelete("�}�\Ļ", 200, 100, "slide_01_01_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
�����Ͻ��ӵ������������ľ϶��ĵ��ˡ���
���Ѿ�ʮ������ˡ�

�����ﲻ����������������������ͼ���С�
��Ҳ��������ǰһս���ѽ�����ƣ�����ˡ�

����ʹ��ˣ�������ô���ˡ�
�������꣬����������������Ż�¸С�

��
��������������������������
�����������������������ɡ�

{	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",2000,900,0,900,null,false);}
�����ߴ��ĵ����ţ����û�ǹɨ���š�
�������һ���ߡ���Ӱ�����������������ӿ��ˡ�

��
��������������������ؼҰ���

{	CreateSE("SE01a","se���L_�|��_�C�v�|����02");
	MusicStart("SE01a",0,850,0,800,null,false);}
���������ջ��ǵ�����뽹����ĥ�ţ�
��׼�������ߵķ������ɨ�䡣
��û��һ���ӵ����С�ֻ����ľ�����У�
�ӵ���ɭ�������һ�����ߡ�

��
��������������������һ�㣬��һ�㡪��

{	CreateSE("SE01b","se���L_�|��_�C�v�|����02");
	MusicStart("SE01b",0,750,0,700,null,false);}
��θҺ��ֱ������
����ǿ�н��ǹ��ڿ�ɬ��Һ���ʻ�ȥ��

��ͬʱ��������ת���������ٴ�ɨ�䡣
�������������һ����ֱ�ر�ĺ��ߡ�

��
�����������������ᣬ���ᣬ���ᡪ��

{	CreateSE("SE01c","se���L_�|��_�C�v�|����02");
	MusicStart("SE01c",0,700,0,600,null,false);}
�����������
��ɭ���б����������Σ���ɫ��Ӱ��û������
û���κ��谭��Ұ֮��������ϡ�

���ٴε�ת���з��������
������һ���ߡ�

����ǰ������ס����æת���ص�Ӱ����Լ�ɼ���
��Ӱ�������Ľ�֮�С�

��<RUBY text="����">�Ľ�</RUBY>��

����ǹ��ƽ��ľ���ڵر��ϻ������ߡ�
����Щ���������Ľ��Ρ�

�����˾������С�

��
����������������������������
�������������������������ڡ���

{	SetVolume("SE*", 2000, 0, null);}
���Դ���������þ�����׷���ϵĵ����Ƕ�ô���ѣ�
����һֱ�����ţ���ͣ�ȴ��ţ�����ץס�˻��ᡣ
�������ٴ�ӿ�ϵ�θҺ�µ��űߡ�

��
�����������������������ڽ����ˡ�

{	CreateSE("SE02","se����_�z_�l����02");
	MusicStart("SE02",0,1000,0,750,null,false);}
����î���˾����������塣
����װ���ػ�����������ʲô���õģ��İ��µ����塣

{	CreateSE("SE02a","se����_��x_��҆��01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainSPadd("�}��д", 4999);
	Zoom("�}��д", 600, 1300, 1300, Dxl2, false);
	FadeDelete("�}��д", 800, false);}
����ȡ������

���⡪��
��ʹ���Ľ�֮�е���ľһ˲֮�ڶ������ˡ�

�����Ѳ������κοɹ�����֮��Ŀյ��С�
����ɫ��Ӱ������ԭ�ء�

��
����������������������ôһ�������ܻؼ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//���o�ݳh
	CreateSE("SE01a","se����_�z_�l����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���k��ʂ�
	CreateSEEX("SE01b","se���L_��҆��_����02_L");
	MusicStart("SE01b",3000,1000,0,1000,null,true);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1100, 1100, null, true);
	Shake("�}����", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
�����ս�����ʾ���������ս����
���Բ��������ս���е��������꣬
��ȴƽ����ά����˼����

���������������ˡ�
����ս���������Ǳ�Թ�Լ��Ĳ��ң�������֪��
�Լ���߾ʹ����ű������Ӳ��ҵ��ˡ�

�����ĵ��˾�����ˡ�
���Ե�����˵�����ǵ�֮������ֵ�<RUBY text="սʿ">ְҵ���¼�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//��һ��
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�ץ���*");
	Delete("�}��*");
	Delete("�}�ţ�*");
	OnBG(100,"bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_���L_�Ʒ�.png");
	FadeStL(0,true);

	DrawDelete("�}�\Ļ", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1790a02">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	Delete("�}�ţ�*");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);

	DrawDelete("�}�\Ļ", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs1800a01">
������?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1810a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k��һ�����ؤ룯�۸�ˏؤ���
..//�x�k��һ�����ؤ룯�۸�ˏؤ���

//��һ�����ؤ� "ma04_014vsa.nss"
//���۸�ˏؤ��� "ma04_014vsb.nss"

}


scene ma04_014vs.nss_all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
//�񣱣���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	StCR(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");
	StL(1000, @-30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(50);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	Wait(50);

	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs1820a03">
����Ȼ�������������ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1830a00">
��������ξ?!��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1840a02">
���ն���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs1850a04">
����ѽ��ѽ����ƽ����������̫���ˡ�
�����������������⸱��̬��
���ֻ���Щ��̫Ӧ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
����������ʶ����ס�
�����ǻ����⸽���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs1860a03">
����ѽ���⵽������ô��!?
������ô�����ֵط���
�����ӹ����ء�������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs1870a03">
���ѵ��ǰ���ǮŪ�����𣿡�

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1880a02">
������ǰ��״������Ѿ��������ʲô��������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs1890a04">
������治���ˡ�����
������һ��������������ʿ�о���
������ʿ���󣬿��ǻ�����
����������ʿ���ϰ����ǵ�Ŷ�����ն����ˡ���

{	FwC("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1900a02">
���в������������������ǹ��㰡��
������������ô�����ⶼ�����ŷ�����
Զ����Щ�¶�Ҫ���صĴ��°ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1910a00">
����������������������޶��£�
����<RUBY text="��������">������ʿ</RUBY>��һ���ݿ���˵��ʮ�����С���

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs1920a04">
��ԭ����ˣ���

{	FwC("cg/fw/fwһ��_��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1930a02">
������Ҳ����˵��Ȥ����ʱ�򣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
��ȷʵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��������
<voice name="����" class="����" src="voice/ma04/014vs1940a00">
�����������ֵط���Σ�ա�
ս����δ������
����Ѹ�ٴӵ��ϳ��롣��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs1950a03">
�����ҿ�������Ŷ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs1960a00">
��Ϊ�Ρ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs1970a02">
�������޷������������еػ�ȥ����
�����ܰѴն�����һ�����������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs1980a04">
������ԭ��֮һ��
����������״���������������塣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs1990a04">
���Ҳ���Ϊ�з������׷���������
���ص����ϣ��������������Դ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
������ԭ����ˡ�
����Ҳȷʵ��

�������Ǳ���ƺõ�Ȧ�ף���Ϊ����Ȧ�׵��˻���ӵ�
������ʹ�õĴ�ֻ�����뷨̫�����档
�����������ŷ����Ŀ����Ժܴ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//��������
<voice name="����" class="����" src="voice/ma04/014vs2000a00">
���Ǿ����뿪����ں��ʵĵص�Ǳ����
������
��ѹ��ס�������Ҳȥ��ϡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2010a03">
����˵�õ��򵥡�
������ս���Ҵ��¶������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
�������ˣ�
������������ҹ��ķ���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2020a03">
��ʵ���������Ǽһ���ʵ�㣬
�Ǽ���̫���׵��£������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2030a00">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2040a02">
��ʲô���
������ô����ô������
���ж༬�ֵ���һ���������ס���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2050a03">
����������ֽ�ϻ���
��û�е�ҩ�Ĵ��ڣ�����ȥ����
ǿ���ų��Ƴɵ����ϣ�׷��ʽ�ӵ���������Զ��
����������Դ׷���ء�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2060a03">
���Ȳ�̸��ɶȣ��Ǹ�����������
�����Ľᾧ��
��˵ʵ��������Ϊ�ǲ����ܵ�ǹƥ��
����ĵ��֡�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2070a02">
������������˵������ʲô����
����ʹ�õ�ҩ�Ĵ�����ʲô��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2080a03">
���Ҳ�֪����
���������ȷʵ�������ҩ
��ĳ�ֶ�������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2090a03">
���������ˡ������������ҽţ�������ţ�
�����Ǹ����ڸ������˰ɣ�
���������ܵ����������˺�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2100a00">
���������ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2110a03">
����֪���������ֺͽ��Ѿ�����
�����ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2120a00">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2130a04">
��������֪���ˡ�
���Ǳ�<RUBY text="����">����</RUBY>�˰ɣ��ն����ˡ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2140a04">
��������ǰ��ͺ�������
����̱ǵ�ζ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2150a00">
���������˶��ѡ���

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2160a04">
�������趼��˲��ȼ�մ���ʱ�����ɢ��
����ζ�����Ҽǵ�����������
������״����ȷʵ�������ð�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2170a02">
������!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2180a00">
�����޴󰭡�
��ƾ�轣�е�����������
������ָ��ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2190a03">
�����ǣ����Ȼָ������ʹ�����
�Ǽһ�ս���ɣ�
���������Լ���ʤ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2200a00">
����Űɡ���

{//�����餫��
	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2210a03">
����ô���м���ʤ���أ���

{//��ꓐ�
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2220a02">
��ι������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2230a00">
��ʮ�����ҡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2240a03">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2250a00">
�������µ���ݣ���������
�����������ɱ����
����Ȼ��񣬵�ȷ�����巽����˵��
��Щ���㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2260a00">
���ް���
������Ҫ��׹�Ǹ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2270a04">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2280a02">
����ô������
����Ϊ������ȷ�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2290a00">
�����ԡ��Ǹ��Ӹ������ĵ�ԭ��
����<RUBY text="����">����</RUBY>��ȥ��
���˻�������������ȥ���⣬����ѡ�񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2300a00">
��������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2310a02">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2320a03">
�������������ˡ�
�����ǣ��������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2330a03">
�������ִ���ں��Ǹ��������ս����
�⡪����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs2340a01">
��������
�����︽��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҕ��ܞ�Q
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
��ͻȻ�������ڵĴ��������������ҵ�ת�����ߡ�
������½�ľ޴���������
��Ϊ�����䵽�ȴ˵ظ��͵ĵط������԰���״����

���ǳ�����
��һ̨�������䳵�������˶��ŵĹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��������
<voice name="����" class="����" src="voice/ma04/014vs2350a00">
���������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs2360a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2370a00">
�����������ڽ��е�ҩ������
�ֻ����滻��˵����ߡ�
���������������ָ̻��ٴ��ж���!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs2380a01">
�����������У�
���������ڵ�״̬�ܳ�ȥ��
���ܷ񵽴����ﶼ��˵����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2390a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
�����䵯ҩ����˵���������ǵõ�����״��
���õ��²ٿ��ߣ����ҵ����ӱ��������˾����ĸ��ҡ�
���ѵ�ֻ�ܶԴ������Թ�ô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2400a02">
���ն�������
����ô�ˣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2410a00">
������һ�����ͳ��������ڽӽ����
�������Ʋ⣬������Ϊ�˲�������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2420a04">
���⡭��
����ɲ���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2430a03">
������������ֹҲ�������ˡ�
������������΢�ӽ�һЩ�ͺ��ˡ�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2440a02">
�����ǹ����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2450a03">
��û�в�׽�����ʱ�䡣
�����ң��Ǹ�������ľ��΢��ذ��¡���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2460a03">
�����գ����˽��ҷ�λ�ø�֪����֮�⣬
���κγ�Ч����

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2470a02">
���ɶ񡭡�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2480a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
����Ȼ��Ҳͬ����Ҫ���
����ת��һ�롣

���з�Ҫ�滻���ߣ����Ȼ�Ǵ��Ĳ�����
��ͬʱҲ���ҷ�����
������֪�ĵ�������֮�˵Ĵ���λ�õľ�����ᡣ
�����ܰ���ס���㽫�õ��Ե���ʹ�����ɵĿ����ԡ�

����˵������������Խ���޵�״̬�£�
�ܷ��Ӽ�������Ҳ�Ǹ����⡭��
��������Ψһ��ʤ����

���ҽ���ʶ�������Ӿ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2490a03">
��������Ȼ�ǲ�������
���ղŴ�����̨�ϱ�ж�µ��ǵ��ְɡ�
������ͦ��ġ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2500a02">
�����ǻ�������������᲻�ᷢ����ը����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2510a04">
���ܿ�ϧ��
��ֻƾ��ǹ��һ������û���ܷ�����ը�ġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2520a02">
������Ҳ�ǰ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2530a03">
�����˴ӹ������������ˣ�
����ͷ�����·���λ�á�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2540a00">
��������ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
���Ҽ�æ���¡�

������������Ȼ��Զ������״�������壬
�����������������ˣ����´���ϵ��ˣ�
����������������ʽ���׵����ߡ�
���Ǹ������ѵ��ǽ����߽�һ��ǿ���ı�װ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2550a02">
����˵��������
����ô����������ܿ��尡����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2560a03">
����Ϊ�Ҿ���ʳ������ͺ��ܲ�Ŷ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2570a02">
��ʲô��˼������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2580a04">
��ȷ����߰���������ά�������ĳ���
�ֶ�Ŷ��
����Ϊʿ��������������Ȼ��֪ʶ�ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2590a03">
�����⣬�����ǲ�Ҫ��ͫ������ȥ��������
������Ҫ���������Ķ��������������������
�������������뿴�ĵط�Ҫʹ����⿴����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2600a02">
���ס�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2610a03">
�������Կ��ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2620a02">
��������ʹ����⡭����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2630a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2640a02">
��ʲô�������Ǹ������ƵĶ�������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2650a03">
���������ӡ�����
��������˵�����Ǹ��ǣ����Ӱɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
���ҿ��������ӡ�
���Ը�����Ƥ�����ɵ������塣

�����Ǹ�����ڸ�ȡ�����Ķ�����
���ѵ�������Ҫ����Ʒ�𣿡��ַ�����˵�������⣬
�������ڿյ��ϣ�֮��Ҳ����һ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2660a03">
�����������ʲô����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2670a00">
�����ǡ���
������������ʲô�������ѻ��š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2680a04">
�����������Ⱑ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2690a03">
���š���
��������ʲô�ء�������Ҳ��ĳ����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2700a04">
������ɴ������˼�ǡ���
���᲻������ĩ��˦������صĶڻ�װ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2710a03">
����ô���°�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2720a02">
���ҵ����������ڸ��ַ��涼�ܿ��¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2730a00">
��������
���Ӿ�ǿ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs2740a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�।��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("�}��д", 4900);
	SetShade("�}��д", HEAVY);

	Fade("�}��д", 600, 1000, null, false);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
������ۺ��������Ӿ��鱨���������
���Ǹ������ǡ������ơ�һ�ߴ�Լ�������ҡ�

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs2750a01">
��!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs2760a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
�����������޴�Ľ��С�

����ʹ���Լ�Ϊ����������ɽ�֮�֣�
��Ҳ��Ӳٿ������϶������Թ��Ƶ�������

��
�������������������Թ��Ƶ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
����������ʲô�����ӳ�����ж��������
����Ҳ�����ӡ�ͬ�������ӡ�

��ֻ��һ������
����װ֮�

��������װ�Ķ����ڶ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����B�Ҥ��ӹ��_
//�����B����
	EfRecoIn1(18000,50);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	StC(16100, @0,@0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("�}����*");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	CreatePlainSP("�}��д", 4900);
	SetShade("�}��д", HEAVY);
	EfRecoOut2(50,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
�����ӡ���
���������ӡ�

������������
����������

��Ϊ�˽������<RUBY text="����">��Դ</RUBY>��Ѻ��ȥ�����ڵģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2770a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2780a04">
��������С�㣿
����ô�ˣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2790a03">
�������ࡣ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2800a04">
��������������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2810a02">
������ʲô���ࣿ��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2820a03">
���Ǹ�������װ�������ࡣ
��������������������<RUBY text="��������">�ݽ�����</RUBY>�Ĳк�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2830a03">
��������װ����������еģ�
�������ǲ��Ͽ޺��ĺ����ǡ���

{//������
	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2840a02">
��������������������

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2850a04">
�������ǣ���������
��ԭ�����ԭ����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2860a04">
������ʳ������
��Ϊ�����Ǹ�������ʣ�������������ڵģ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2870a03">
����ϸ˼��һ�£����뷨��ʵ������Ȼ����
�����л�����װ���ߵ�������ά����ת����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2880a03">
����������������Ļ���ֻҪ��������
�Ϳ�������
��������ô���õ��뷨��������ǿ���ƥ����
�ü����������ķ����ˣ������𣡡�

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2890a04">
���Ǹ��������������Ǹ���Ű�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs2900a02">
����������
��������ͦ���ĵİ���������������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2910a04">
�����ǵ�ȷ�ܿ���Ŷ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2920a03">
���ǰ����ǳ��ǳ��ء�����

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2930a04">
�����簮��ʹ��������һ�㡣��

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2940a03">
����������֮�У�
Ҳ�����ϵ����á���

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2950a04">
�����ɱ�������ޱ��Ҹ��ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2960a03">
����ݶ����������ĸ�¶����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2970a04">
�����ֵò����ˡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs2980a03">
�����ò����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs2990a04">
����������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3000a03">
���Ǻǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
��������������֮�С���
���ݽߵĲк���

��ɱ�����ǵ���˭��
�����ǹ���ô��

�����������

��ǣ���Ź��
����������������

�����������������ˣ���˭��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01a","se����_��_��Ġ����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�����á�
	CreateSE("SE02","se����_�z_�l����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
����վ��������
��̫���ˡ�ֻ��������ܳ�Ϊ������

��������������ţ�����վ����
��������������ţ����ܶ�����

���ҽ��ϵ�����ɢ���ž�ʹ��
����������������

��ÿ����һ�£����ϵ�װ�׶���ȡ���ҵ�������
�����񱻽�סһ�㣬����ʹ��İ�����
����������������

��������
��������
����ȫ������

����Ҫ�����˺ۡ�
����Ҫ�������䡣
��Ҫ���Ǽһ���ӡ����ӡ�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("�}ɫ��", 5000, "#990000");
	CreatePlainEX("�}��д�r", 4910);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 500, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ����ϥ�Ǳ�����������
������������Ц�š�

�����ѿ���
�����������л����������ء�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 700, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ������е�ѣ�Ρ�
����ʶ���ʣ��о����ģ����

����ɱ���
�����������ܿ������壬������������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 1000, null, false);}
��
�������������������������ɱ�˷���

����һ��ʧȥ����Щ���������ǰɡ�
�������롣

����һ�±����������Щ���������ǰɡ�
�������롣

��������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ���r", 10000, "#990000");
	Fade("�}ɫ���r", 300, 1000, Axl2, false);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);}
�������ն�������
�����������ʹ����Զ��ĥ�㣬
���������������ò�����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������}��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#990000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1200]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3010a02">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1210]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3020a02">
�������������ô���أ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//��һ�������}
	CreateSE("SE01b","se����_����_�᤺����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1220]
//��������
<voice name="����" class="����" src="voice/ma04/014vs3030a00">
�����¡���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3040a02">
���������ô�죿��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3050a00">
��ǰ�С�
��նɱ�ǹ���ȳ������ǡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3060a02">
��ƾ������壬���ǲ����ܵġ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3070a00">
���Ǿ��ò����ܳ�Ϊ���ܡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3080a02">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3090a02">
���������ˡ�
������Ҫ��Щʲô�أ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3100a00">
����һ���˾͹��ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3110a02">
���ն�����������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3120a03">
����������Ҳ��äĿ����Ҳ�գ������ڸ�����Ȥ
�Ļ���������ν�����������ˡ�
������������£�Ҫ����λ��
���������أ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3130a04">
���϶���ֹ�ն�����һ���ɡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3140a02">
�����졣
�����ǲ�����Ҫ������������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3150a03">
�����ع��ġ�
����Ȼ��������ô����ʹ��ļһ
����Ҳ������һ�����е�����λ���ﻥ����
һ�����Ǽһ���š���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3160a03">
���������Լ��ж��ɡ�
�����ǣ��š��������ٻ����˽�һ��
�Է�������ô�������Ǽһ�ս����
Ҳ�����Ч�ʰɡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3170a03">
�����̶Ȼ�����Ҫ�ġ�
����Ҳ������Ϊ�����Ե��ж���ʹ
���������Ǹ��������ɵ�
��λ��ʹ�౻�ӳٵø��ðɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3180a00">
��������

{//������¤��ΤƤ�褦��
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3190a00">
��������㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3200a03">
���ð�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3210a02">
�����ǻ������Ϊ�ġ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3220a04">
����ѽѽ���������ô˵�ź��ء�
���µ���񣬱�����αװ��
�Ŷ��ж���ʵ�������ǵ�������
Ư�����ķ������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3230a04">
��������֧����ı��ű���
����Щ��ǿ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3240a03">
���ǰ�������Ҳ�³����ΰ���
������ʱ��Ͳ�Ҫ�Ž�����֮���ˣ�
����ÿ���˶������Լ��ķ�ʽ����ǿ��ĵ��ˣ�
����������ˣ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3250a02">
�������ҿ�û�л�ʤ�����İ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs3260a01">
��ͬ�С�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//��һ�ȥ֥�å�������
	CreateColorEX("�}ɫ�\", 15000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1230]
����ս���Ŵ������¡�

��һ��
������=��������Ǳ��������
���ָ�������

������
�������ʱ���ڣ�����֦��������Ķ��֣�ͬʱ�ж�
��Դ�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤������h
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @60, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	StCR(1000, @-60, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1240]
//��������
<voice name="����" class="����" src="voice/ma04/014vs3270a00">
����Դ�ߡ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3280a03">
����Ϊ��ʮ����ϸ�������ƺ���ʩ�����Բʣ�
���ѷ��֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1250]
����ĸ����Ľ�פ��ʿ��˵�꣬����ָ�˹�ȥ��
������ͼ��ʼ�뿪½�صĹ�����²���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1260]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3290a03">
�������������·��ĵر�֮������һ��<RUBY text="����">����</RUBY>��
�Ǹ�����������ص�һϵ����Ȥ������
���������õ����������ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3300a00">
��ԭ����ˡ�
����������Ϊ�ṩ�����ĵ��ߣ�
ȷʵ�ܺ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1270]
��׷���Ŵ����ξ�����ߡ�
�����յ�ָʾ�����߼���������ϸһ��������ǿ
������һ����״��Ӱ�ӡ�

��������Ҫ���弫�����ѣ�������������Ƴ���Ч����
����ѭһ��׼�򣬶Դ��Ϳշ��еĵ��ˣ���Ҫ���Ͽս���
Ϯ����������ǰ��սʱ��ȫûע�⵽��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1280]
//��������
<voice name="����" class="����" src="voice/ma04/014vs3310a00">
���������ɴ����ڲص�ء�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3320a04">
����֪��û�ܿ��������������ĵ���أ�
���ǿ��ǵ����ض���Χ��������һ����Ϊǰ���
��ȱ�㣬�������Ľ���ء����ţ�
Ӧ�þ�������ԭ��ɡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3330a02">
�����ǰ����ѵ�������Ƶ���ľ��֮����
�������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3340a03">
���������߲��������ġ�
����������ζ�����
�����������������·�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3350a03">
�����¡���
��������������ǿ�͵Ķ�����ά�Ƴɣ�
����������������ж���˺�ѵر�
�������ƶ��İɡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3360a03">
�����������Դ�ڵ���һ������ƶ���
���Դ������һ���ĵ��¶�
���ڵ�Դ��֮��Ķ�����
�������߾������������ģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3370a00">
��������룬�Ϳ�������ˡ�
����Щ��ֵ�<RUBY text="����">��ӡ</RUBY>Ҳ��˵�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3380a04">
���ǵ����Ĵ��϶�����ɵ�
�ۼ��ɡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3390a02">
������������
����ô��ֻҪ���Ƕ�����ն�ϣ�
�Ͳ���ʹ����ֵĴ���֮���˰ɣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3400a03">
���ǰ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3410a00">
�����ǣ���ξ��
������������жϵ����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1290]
���������Ʋ���ȷ���Ǹ�����Ƕ�����ά�Ƴɣ�
�����뽣��װ�׵��ʵؾͺ����ơ�
������̫�����⣬������һ���˺۶��޷�������

����ʹ�õ�⣬Ҳ�û��������Ӱɡ�
����Ȼ���Ҳ���Ϊ����״���£���ʹ������������
�ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1300]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3420a03">
��������
���ţ�������ͷ��Ȼֱ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3430a03">
�������ص��ġ���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3440a02">
�������������ս�Ĵ�ǰ�ᰡ��
����Ȼ�ᵣ��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3450a03">
����ѽ��ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1310]
����ξЦ��������Ҷ������������û������ȷ�𰸣�
��������ʼ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1320]
������
��һ�������ֵ��Ϻ����ĵ�������������״����
��ʱ�뾰��������֦�������硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1330]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3460a02">
��Ҫ��ô�������磿��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3470a04">
�������С�����ߵ����
����С��Ҳ����ͬ���Ķ�����
��Ȼ��Ч��Χ��խ�������⵺��ʹ�ã����ӡ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3480a04">
���ն������ء���
������û��ʱ�����������
��������Ľ��С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3490a00">
���ǵġ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3500a04">
��������ͷ���һ�����޲���š�
����Ȼ���е����ߣ����е����ߵ綼����յ���
���Ը���ûʲô���ܿ�̸��
ֻ���򲻵��ѣ��ҲŻ�ʹ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1340]
�����ǵ�Ȼ�ġ�
����Ȼ������Щ���㣬��Ҳ��ǵ��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1350]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3510a02">
������ô��
����Ȼ��ҰӦ�ò�����������ҹ�
��֪�ܿ������ٶ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3520a04">
����ֵͦ���ɻ�İ���
��������ִ��ˣ�����Ϊ��
����Ŷ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3530a02">
��Ϊʲô����

{	CreateSE("SE01","se���L_�|��_������01");
	MusicStart("SE01",0,1000,0,700,null,false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3540a04">
����Ϊ������<RUBY text="��������������">���Ӿ�</RUBY>����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3550a02">
����Ȼ�����ֶ�����������ó�����!?��

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3560a04">
���д�С���ڵ�ʱ������Ǹ������
���ҵ����ԴҲ���ޡ�
���ţ������������֮�ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3570a04">
����������ֻ��˵������ȥ��
����һ������֮�ڣ������ܽ��к��������䡣
�����򲻿ɹ�����������ȷ��ʹ�ã�
�����ɵ��ó��ɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3580a02">
���������ˣ��������á�
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3590a04">
���ͽ����Ұɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs3600a02">
����ô���ն�������
����������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);
	Wait(50);
	DeleteStR(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1360]
��һ��˵��󣬾������˵�����
�������̴ӽ������

��ʮ���������λ�õߵ��ˡ�
����Ϊ�����̴�ע�⵽һ��ÿ��һ����
ǰ�������ƫ�ƴ�Լһ�ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1370]
���ġ�
������=��������ͻϮ��
��ѹ�Ƶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�룺�񣱣��ߣ��˺���

}


scene ma04_014vs.nss_ka
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
//�񣱣���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	StCR(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(100);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1380]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3610a03">
����Ȼ�������������ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3620a00">
��������ξ?!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3630a04">
����ѽ��ѽ����ƽ����������̫���ˡ�
�������������������⸱��̬��
���ֻ���Щ��̫Ӧ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1390]
����������ʶ����ס�
�����ǻ����⸽���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1400]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3640a03">
�������������ˡ���
���������̬������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3650a03">
�����ڰ���������ʿ�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3660a00">
�������𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3670a03">
����Ȼ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3680a00">
�����������ԡ���

{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3690a03">
����˵��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3700a04">
����С�㣬�������״��ˡ���

{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3710a03">
����ʹ�������������ƣ���Ҳ����Ŷ��
����������������൱��ѽ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3720a00">
��������⡣��

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3730a04">
����˵��Ҳͦ���ҵġ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3740a00">
������Ҫ���ǣ����������ֵط���Σ�ա�
ս����δ������
����Ѹ�ٴӵ��ϳ��롣��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3750a03">
�����ֻ��ҿɲ��������
���ס���˿�����������
�����ҷ�����Щ��̸��
��Ҳ�޷������Ļ�ȥ������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3760a00">
��Ϊ�Ρ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3770a03">
����Ϊ��Ⱦ�������
���ҵ����񡣡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3780a00">
��������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3790a04">
����ҲҪ���䡣
������״���������������塭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3800a04">
���Ҳ���Ϊ�з������׷��������ߡ�
���ص����ϣ��������������Դ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1410]
������ԭ����ˡ�
����Ҳȷʵ��

�������Ǳ���ƺõ�Ȧ�ף���Ϊ����Ȧ�׵��˻���ӵ�
������ʹ�õĴ�ֻ�����뷨̫�����档
�����������ŷ����Ŀ����Ժܴ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1420]
//��������
<voice name="����" class="����" src="voice/ma04/014vs3810a00">
���Ǿ����뿪����ں��ʵĵص�Ǳ����
������
��ѹ��ס�������Ҳȥ��ϡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3820a03">
����˵�õ��򵥡�
������ս���Ҵ��¶������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1430]
�������ˣ�
������������ҹ��ķ���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1440]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3830a03">
��ʵ���������Ǽһ���ʵ�㣬
�Ǽ���̫���׵��£������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3840a00">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3850a03">
��û�е�ҩ�Ĵ��ڣ�����ȥ����
ǿ���ų��Ƴɵ����ϣ�׷��ʽ�ӵ���������Զ��
����������Դ׷���ء�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3860a03">
���Ȳ�̸��ɶȣ��Ǹ�����������
�����Ľᾧ��
��˵ʵ��������Ϊ�ǲ����ܵ�ǹƥ��
����ĵ��֡�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3870a04">
��������ʹ�õ�ҩ�Ĵ���ô��
���������ְ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3880a03">
���������ȷʵ�������ҩ
��ĳ�ֶ�������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3890a03">
���������ˡ������������ҽţ�������ţ�
�����Ǹ����ڸ������˰ɣ�
���������ܵ����������˺�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3900a00">
���������ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3910a03">
����֪���������ֺͽ��Ѿ�����
�����ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3920a00">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3930a04">
��������֪���ˡ�
���Ǳ�<RUBY text="����">����</RUBY>�˰ɣ��ն����ˡ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3940a04">
��������ǰ��ͺ�������
����̱ǵ�ζ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3950a00">
���������˶��ѡ���

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs3960a04">
�������趼��˲��ȼ�մ���ʱ�����ɢ��
����ζ�����Ҽǵ�����������
������״����ȷʵ�������ð�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3970a03">
��������ѽѽ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs3980a00">
�����޴󰭡�
��ƾ�轣�е�����������
������ָ��ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs3990a03">
�����ǣ����Ȼָ������ʹ�����
�Ǽһ�ս���ɣ�
���������Լ���ʤ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4000a00">
����Űɡ���

//�����餫��
{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4010a03">
����ô���м���ʤ���أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4020a04">
����С�㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4030a00">
��ʮ�����ҡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4040a03">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4050a00">
�������µ���ݣ���������
�����������ɱ����
����Ȼ��񣬵�ȷ�����巽����˵��
��Щ���㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4060a00">
���ް���
������Ҫ��׹�Ǹ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4070a04">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4080a03">
�������������ˡ�
�����ǣ��������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4090a03">
�������ִ���ں��Ǹ��������ս����
�⡪����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4100a01">
��������
�����︽��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//��ҕ��ܞ�Q
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1450]
��ͻȻ�������ڵĴ��������������ҵ�ת�����ߡ�
������½�ľ޴�����������Ϊ�����䵽�˱ȴ˵ظ��͵ĵط������԰���״����

���ǳ�����
��һ̨�������䳵�������˶��ŵĹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1460]
//��������
<voice name="����" class="����" src="voice/ma04/014vs4110a00">
���������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4120a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4130a00">
�����������ڽ��е�ҩ������
�ֻ����滻��˵����ߡ�
���������������ָ̻��ٴ��ж���?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4140a01">
�����������У�
���������ڵ�״̬�ܳ�ȥ��
���ܷ񵽴����ﶼ��˵����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4150a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1470]
�����䵯ҩ����˵���������ǵõ�����״��
���õ��²ٿ��ߣ����ҵ����ӱ��������˾����ĸ��ҡ�
���ѵ�ֻ�ܶԴ������Թ�ô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1480]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4160a04">
���ն����ˣ�������ô�ˣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4170a00">
������һ�����ͳ��������ڽӽ����
�������Ʋ⣬������Ϊ�˲�������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4180a04">
���⡭��
����ɲ���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4190a03">
������������ֹҲ�������ˡ�
������������΢�ӽ�һЩ�ͺ��ˡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1490]
����Ȼ��Ҳͬ����Ҫ���
����ת��һ�롣

���з�Ҫ�滻���ߣ����Ȼ�Ǵ��Ĳ�����
��ͬʱҲ���ҷ���������֪�ĵ��������˵Ĵ���λ��
���Կ��Ƶľ�����ᡣ
�����ܰ���ס���㽫�õ��Ե���ʹ�����ɵĿ����ԡ�

����˵������������Խ���޵�״̬�£�
�ܷ��Ӽ�������Ҳ�Ǹ����⡭��
��������Ψһ��ʤ����

���ҽ���ʶ�������Ӿ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1500]
//��������
<voice name="����" class="����" src="voice/ma04/014vs4210a00">
�����������ڽ��е��ֽ���ô��
����ֱ���Ǹ�<RUBY text="������">��ֿ�</RUBY>������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4220a04">
���Ͼ���Ҫ������ô��
����С�ڡ�
���϶������൱�������ɡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4230a00">
�����Լ��ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4240a03">
����
���������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4250a03">
�����˴ӹ������������ˣ�
����ͷ�����·���λ�á�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4260a00">
��������ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1510]
���Ҽ�æ���¡�

������������Ȼ��Զ������״�������壬
�����������������ˣ����´���ϵ��ˣ�
����������������ʽ���׵����ߡ�
���Ǹ������ѵ��ǽ����߽�һ��ǿ���ı�װ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1520]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4270a04">
��������
����ѽ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4280a04">
��������ʲô�ء���
���Ǹ�<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4290a03">
���������ӡ�����
��������˵�����Ǹ��ǣ����Ӱɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4300a00">
������������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1530]
���ҿ��������ӡ�
���Ը�����Ƥ�����ɵ������塣

�����Ǹ�����ڸ�ȡ�����Ķ�����
���ѵ�������Ҫ����Ʒ�𣿡��ַ�����˵�������⣬
�������ڿյ��ϣ�֮��Ҳ����һ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1540]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4310a03">
�����������ʲô����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4320a00">
�����ǡ���
������������ʲô�������ѻ��š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4330a04">
�����������Ⱑ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4340a03">
���š���
��������ʲô�ء�������Ҳ��ĳ����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4350a04">
������ɴ������˼�ǡ���
���᲻������ĩ��˦������صĶڻ�װ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4360a03">
����ô���°�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4370a00">
��������
���Ӿ�ǿ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4380a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�।��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("�}��д", 4900);
	SetShade("�}��д", HEAVY);

	Fade("�}��д", 600, 1000, null, false);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1550]
������ۺ��������Ӿ��鱨���������
���Ǹ������ǡ������ơ�һ�ߴ�Լ�������ҡ�

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1560]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4390a01">
��!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1570]
�����������޴�Ľ��С�

����ʹ���Լ�Ϊ����������ɽ�֮�֣�
��Ҳ��Ӳٿ������϶������Թ��Ƶ�������

��
�������������������Թ��Ƶ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1580]
����������ʲô�����ӳ�����ж��������
����Ҳ�����ӡ�ͬ�������ӡ�

��ֻ��һ������
����װ֮�

��������װ�Ķ����ڶ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����B�Ҥ��ӹ��_
//�����B����
	EfRecoIn1(18000,50);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	StC(16100, @0,@0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("�}����*");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev122_�R��������҆��.jpg");
	CreatePlainSP("�}��д", 4900);
	SetShade("�}��д", HEAVY);
	EfRecoOut2(50,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1590]
�����ӡ���
���������ӡ�

������������
����������

��Ϊ�˽������<RUBY text="����">��Դ</RUBY>��Ѻ��ȥ�����ڵģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1600]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4410a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4420a04">
��������С�㣿
����ô�ˣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4430a03">
�������ࡣ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4440a04">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4450a04">
����˵ʲô����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4460a03">
���Ǹ�������װ�������ࡣ
��������������������<RUBY text="��������">�ݽ�����</RUBY>�Ĳк�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4470a03">
��������װ����������еģ�
�������ǲ��Ͽ޺��ĺ����ǡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4480a04">
������������

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4490a04">
��Ŷ������������
��ԭ����ˣ�ԭ����ˣ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4500a04">
������ʳ������
��Ϊ�����Ǹ�������ʣ�������������ڵģ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4510a03">
����ϸ˼��һ�£����뷨��ʵ������Ȼ����
�����л�����װ���ߵ�������ά����ת����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4520a03">
����������������Ļ���ֻҪ��������
�Ϳ�������
��������ô���õ��뷨��������ǿ���ƥ����
�ü����������ķ����ˣ������𣡡�

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4530a04">
���Ǹ��������������Ǹ���Ű�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4540a03">
����ѽ��
�������Һ�Ȼ�е��ǳ�
��졣��

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4550a04">
������ɴ��Ҳһ������С�㡣��

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4560a03">
���Ǻǡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4570a04">
���Ǻǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1610]
��������������֮�С���
���ݽߵĲк���

��ɱ�����ǵ���˭��
�����ǹ���ô��

�����������

��ǣ���Ź��
����������������

�����������������ˣ���˭��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄӣ���åɥ����ȥ�åɥ���
	CreateSE("SE01a","se����_��_��Ġ����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//�����á�
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1620]
����վ��������
��̫���ˡ�ֻ��������ܳ�Ϊ������

��������������ţ�����վ����
��������������ţ����ܶ�����

���ҽ��ϵ�����ɢ���ž�ʹ��
����������������

��ÿ����һ�£����ϵ�װ�׶���ȡ���ҵ�������
�����񱻽�סһ�㣬����ʹ��İ�����
����������������

��������
��������
����ȫ������

����Ҫ�����˺ۡ�
����Ҫ�������䡣
��Ҫ���Ǽһ���ӡ����ӡ�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("�}ɫ��", 5000, "#990000");
	CreatePlainEX("�}��д�r", 4910);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 500, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ����ϥ�Ǳ�����������
������������Ц�š�

�����ѿ���
�����������л����������ء�

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 700, null, false);}
��
����������������������ʹ��ɡ�

��ǰ��һ������е�ѣ�Ρ�
����ʶ���ʣ��о����ģ����

����ɱ���
�����������ܿ������壬������������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);
	Fade("�}ɫ��", 300, 1000, null, false);}
��
�������������������������ɱ�˷���

����һ��ʧȥ����Щ���������ǰɡ�
�������롣

����һ�±����������Щ���������ǰɡ�
�������롣

��������

{	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ���r", 10000, "#990000");
	Fade("�}ɫ���r", 300, 1000, Axl2, false);
	FadeFR2("�}��д�r",0,850,300,0,0,50,Dxl3, false);}
�������ն�������
��������Ը���ʹ����Զ��ĥ���㣬
������ϣ������Եò�����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������}��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#990000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1630]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4580a03">
���������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1640]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4590a03">
��������������ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������һ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1650]
//��������
<voice name="����" class="����" src="voice/ma04/014vs4600a00">
�����¡���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4610a03">
����ѽ����ֲ���
�������޷�����������Ĵ𰸰ɣ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4620a00">
�����ڵ��¡�
����Ҫնɱ�Ǹ�����ȳ������ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4630a03">
��ƾ�������壬������ô������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4640a00">
��������ͷ��Ȼֱ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4650a03">
���ǺǺǡ�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4660a00">
���뷢Ц�����㣬��������
�������ÿ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4670a03">
����������Ҳ��äĿ����Ҳ�գ������ڸ�����Ȥ�Ļ���
������ν����
������������£�Ҫ����λ��
���������أ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4680a04">
���϶���ֹ�ն�����
һ���ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4690a00">
������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4700a03">
������������������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4710a00">
��<RUBY text="�������">�����������</RUBY>��
��<RUBY text="�����������������">����ĸȮ</RUBY>����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4720a03">
����ѽ�����䵭��
�����Ǹ���������Ц����ѽ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4730a04">
����ɲ��а����ն����ˡ�
�����ɵ�����ø�����һЩ����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4740a00">
�����ʡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ꡣ�n܈��
	CreateSE("SE01","se����_��_�n܈��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1660]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4750a03">
���ǺǺǡ���
�������Ǹ���ô���أ����ţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4760a04">
������Ϊ����Ҳ��������
��Ϊ��
�����������Զ���Ŀ�սʿ���д��
���������Ƚ������ɡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4770a03">
��Ҳ�ǰ���
�����ǣ��š��������ٻ����˽�һ��
�Է�������ô�������Ǽһ�ս����
Ҳ�����Ч�ʰɡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4780a03">
�����̶Ȼ�����Ҫ�ġ�
����Ҳ������Ϊ�����Ե��ж���ʹ
���������Ǹ��������ɵ�
��λ��ʹ�౻�ӳٵø��ðɣ����������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4790a00">
��������

{//������¤��ΤƤ�褦��
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4800a00">
��������㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4810a03">
���ð�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4820a04">
����ѽ��ѽ����
������ô˵�أ��ܾ�������֮��ո�������
�������֮��Ķ�����
��һ˲֮�䶼������ɢ�ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4830a04">
����˵��Щ�������Ǵ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs4840a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//��һ�ȥ֥�å�������
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1670]
����ս�����������°��š�

��һ��
����������������Ǳ��������
���ָ�������

������
�������ʱ���ڣ�����֦��������Ķ��֣�ͬʱ�ж�
��Դ�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤������h
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1680]
//��������
<voice name="����" class="����" src="voice/ma04/014vs4850a00">
����Դ�ߡ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4860a03">
����Ϊ��ʮ����ϸ�������ƺ���ʩ�����Բʣ�
���ѷ��֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1690]
����ĸ����Ľ�פ��ʿ��˵�꣬����ָ�˹�ȥ��
����ͼ��ʼ�뿪½�صĹ�����²���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1700]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4870a03">
�������������·��ĵر�֮������һ��<RUBY text="����">����</RUBY>��
�Ǹ�����������ص�һϵ����Ȥ������
���������õ����������ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4880a00">
��ԭ����ˡ�
����������Ϊ�ṩ�����ĵ��ߣ�
ȷʵ�ܺ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1710]
����׷���Ŵ����ξ�����ߡ�
�����յ�ָʾ����������������ϸһ��������ǿ
������һ����״��Ӱ�ӡ�

��������Ҫ���弫�����ѣ�������������Ƴ���Ч����
����ѭһ��׼�򣬶Դ��Ϳշ��еĵ��ˣ���Ҫ��
�Ͽս���Ϯ����������ǰ��սʱ��ȫûע�⵽��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1720]
//��������
<voice name="����" class="����" src="voice/ma04/014vs4890a00">
���������ɴ����ڲص�ء�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4900a04">
����֪��û�ܿ��������������ĵ���أ�
���ǿ��ǵ����ض���Χ��������һ����Ϊǰ���
��ȱ�㣬�������Ľ���ء����ţ�Ӧ�þ���
����ԭ��ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4910a00">
�����ǣ����ֶ����Ĵ��ڣ�Ϊ��û��
���ж����ɲ����谭�ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4920a03">
���������߲��������ġ�
����������ζ�����
�����������������·�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4930a03">
�����¡���
��������������ǿ�͵Ķ�����ά�Ƴɣ�
����������������ж���˺�ѵر�
�������ƶ��İɡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4940a03">
�����������Դ�ڵ���һ������ƶ���
���Դ������һ���ĵ��¶�
���ڵ�Դ��֮��Ķ�����
�������߾������������ģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4950a00">
������������룬�Ϳ�������ˡ�
����Щ��ֵ�<RUBY text="����">��ӡ</RUBY>Ҳ��˵�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs4960a04">
���ǵ����Ĵ��϶�����ɵ�
�ۼ��ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs4970a00">
�����ǣ���ξ��
����ȷ��ֻҪ�ж��������ߣ��з�ս���ͻ�
����ȼ�������

//��������
<voice name="����" class="����" src="voice/ma04/014vs4980a00">
�����������ֶΡ�
������������жϵ����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1730]
���������Ʋ���ȷ���Ǹ�����Ƕ�����ά�Ƴɣ�
�����뽣��װ�׵��ʵؾͺ����ơ�
������̫�����⣬������һ���˺۶��޷�������

����ʹ�õ�⣬Ҳ�û��������Ӱɡ�
����Ȼ���Ҳ���Ϊ����״���£���ʹ������������
�ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1740]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs4990a03">
��������
���ţ�������ͷ��Ȼֱ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5000a03">
�������ص��ġ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5010a00">
��������ô˵�����ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5020a03">
���Σ����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5030a00">
���ڹ��������������û�����ö�
��һ�仰�������𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5040a03">
������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1750]
����ξЦ��������Ҷ������������û������ȷ�𰸣�
��������ʼ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1760]
������
���������˵��Ϻ����ĵ�������������״����
��ʱ�뾰��������֦�������硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1770]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5050a00">
�����緽��Ϊ�Σ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5060a04">
�������С�����ߵ����
����С��Ҳ����ͬ���Ķ�����
��Ȼ��Ч��Χ��խ�������⵺��ʹ�ã�
���ӡ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5070a04">
���ն������ء���
������û��ʱ�����������
��������Ľ��С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5080a00">
���ǵġ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5090a04">
��������ͷ���һ�����޲���š�
����Ȼ���е����ߣ����е����ߵ綼����յ���
���Ը���ûʲô���ܿ�̸��
ֻ���򲻵��ѣ��ҲŻ�ʹ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1780]
�����ǵ�Ȼ�ġ�
����Ȼ������Щ���㣬��Ҳ��ǵ��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1790]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5100a00">
�����Ǽ�ʹ�����˵�����Ҳ��һƬ�ڰ���
�������ܽ����ư���ס���֣�˵ʵ��
����Щ���ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5110a04">
�������õ��ġ�
����������<RUBY text="��������������">ҹ�Ӿ�</RUBY>�����������������
�������ó�����Ʒ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5120a00">
����������
����Ȼ��ӵ�����ֶ������鷳��Щ�ó�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5130a04">
���д�С���ڵ�ʱ������Ǹ������
���ҵ����ԴҲ���ޡ�
����ô��ף�����˲�¡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1800]
�������̴�˵�꣬���뿪�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1810]
���ġ�
������=��������ͻϮ��
��ѹ�Ƶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�룺�񣱣��ߣ��˺���

}


.//�񣱣��ߣ�
//�񣱣��ߣ�
//�룺�����ص㣨13A,13C��
scene ma04_014vs.nss_01
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//���F�ڡ�ɭ��Ǳ����
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1820]
������Ȼ�󡣴˿̡�
���Ҹ�����ڲ�ľ�У�һ�������ȴ�
ʱ��������

��������ȣ��Լӱ�<RUBY text="����">��Ч</RUBY>�ķ����ָ��������ĵ��
���ٴο�ʼ�ж���
�������صط����ڵͿգ�Ť�����ӡ���һ��һ��
�������뵽��Ѱ�������ʳ������

��������Ŀ��������������С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1830]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5140a00">
��������
���ָ�״����Ρ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5150a01">
���԰����ꡣ
������Ҫһ��ʱ�䡣��

//��������
<voice name="����" class="��������" src="voice/ma04/014vs5160a01">
�����ֺ�������������޷��κõ�
�����������ٿ������ҽ��ܹ�������
�����һ������������Ӧ��Ҳ�������ơ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5170a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5180a01">
��ֻҪ�ڵر��ϱ��ϰ����Χ�ţ�
��û�б��ź�̽�鷢�ֵķ��ա�
����Ϊ���ھ�ֹ����������ɢ��̫��������
�����й����������Դ̽�飬��û�¡���

//��������
<voice name="����" class="��������" src="voice/ma04/014vs5190a01">
����������Ҫ��������ʱ�䡣
��ֻ�������Ż��������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5200a00">
��������֪����
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1840]
���Ҵ��������ͬʱ��
���Ǹ�������Ҳ�С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1850]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5210a01">
�����������ס�
�����Ǹ����ͷֻ���ڽ���Ѳ�����ѡ�
�����ĵ�����Ҳֻ��Ѳ����������

//��������
<voice name="����" class="��������" src="voice/ma04/014vs5220a01">
�����ԡ������ż�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5230a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1860]
�����������ԡ�
��������ڳ嶯���ܳ�ȥ�������û���ܻ���ˡ�
��Ȼ���������ξ�ľٶ�����ҪΪ�ҵ�³ç֮��
�򵥵ģ���ȷ�Ǻ����ǡ�

���ұ���ȴ���ʤ��ʱ����
�������ף���ȴ�ܲ��ͷ���

�������һ˲�䡣�ڷ������ŵ�ʱ��֮�С���
���ĵ�ȷȷ��һЩ��������<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤���
	CreateSE("SE01","se����_Ѫ_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 5000, "#990000");
	FadeDelete("�}ɫѪ", 200, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1870]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5240a01">
����������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5250a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5260a01">
��������Ѫ�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5270a00">
�������⡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5280a01">
����������ٵġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5290a00">
����������
���һ�С�ĵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ԥ���`���|����װ�פˏ��������
	CreateSE("SE01","se���L_�|��_����02");
	MusicStart("SE01",0,750,0,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1880]
�������ղ����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1890]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5300a00">
��������ξ��ʼ�ж��ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5310a01">
���ǰ���
����Ȼ��ȫû�����á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1900]
����ô���ܻ������á�
��ֻ�������͸��ٳ��׵��ſ���һ�л������ߵ�װ�ס�
���Ҷ��ֻ�����װ�ס�

����������С���г��ڣ�����ûϣ����

������Ҫ��������˳�ν��Ҳ˿�����Կ��š����Ա���
�Ķ�����ת����
��ǹ��Ϯ�������Ŵ����ξ���ڷ�λ��
�����׶��ǹ��һ����׼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ԥ����Ԥ����
	CreateSE("SE02","se���L_�|��_����02");
	CreateSE("SE02a","se���L_�|��_����01");
	MusicStart("SE02",0,750,0,800,null,false);
	Wait(50);
	MusicStart("SE02a",0,750,0,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1910]
���������Ų�ǹ����������
���ӵ�������������һ�㣬������������ѣ�
�����۶��ٸ�����ӣ���������㡣
������ȫ����ʹ����Ч���������������Ӷ�һ�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1920]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5320a01">
������Ŀ�겻�ǵ���ô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/014vs5330a00">
����Ҫ������������ʵĵص㣬��������һ����
�Ҽǵ�����������ô˵�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1930]
������������յаɡ�

�����ǣ���ʹ���������˾��õľѻ��㣬
ǹ�����������Ӧ��Ҳ����һԾ������
�������ںδ�������������ǻᱻ������

��������ά�ĵ�Դ����װ����ȣ����������
���������Ƿ����ǹ�ľѻ��̶ȵ�ͷ�أ�
���Ǹ���������ʡ�
���ټ��ϣ���������������������

����Ȼ��һ�������Ҫ�����ö࣬
���Ǿޱ�Ҳ���ڷ��еġ����ߵ�ȻҲ���������
��ͬ�����ٶ��ڷ��ơ�
���������������ѻ����ֶ�����

����ξ��������Ⱥ������������Ҫ��
��ֻ��������
����������˵����û��Ԥ֪�������͸���������
�ѻ��ɹ���

��������ʵ���Ҫ�����ĸ��ң���λŮ�Խ�У
�ִ������ʹ�����Ǻ��ء�
���������ǻ����׳����Լ�����Ϊ������
��������������£���������������δ��̫�١�

���һ��Ǳ����������Լ���Ѱ���߰ɡ�
��������̫��Ҫ�ж϶�����άҲ�������⡣

�����Ǹ������������ϰ���
��ֻ��ʹ�õ�Űε�������������

����֮�󣬻���Ҫʹ������̫֮���������ƻ�����װ�ף�
���ٿ��߱Ƴ�����
����Űε���Ҫ���ľ޴����������ӵĵڶ���
�Ƿ��ܷ��ӳ����Թᴩ�ؼ׵������ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1940]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5340a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1950]
�����������Ų���������
�������ﻹ�ǲ�ͣ�ڴ���

����������ξ�ܹ�ʵ���Լ������ԣ��������ж�
�Ļ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����̨
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 1000, "slide_01_03_0", true);
	DrawDelete("�}��ܞ", 200, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1960]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5350a04">
�������޷�ȷ�ϳ����Ǹ�����֮���
�з�������
����ȷʵ�������ڡ���һ�����֣�
������֪ͨ��������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5360a04">
����е����������˵��������ɳ�����
ѵ�����ص�ɽ����������ô���ⰵҹ�
���޷����䷢�ֵġ�
���������Լ�С�ġ���

{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5370a03">
���˽⡣
���Ժ������硣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���
//�����
//���ҥ���ȫ�T����ʤ飱���ߣ���
//������֦�Τߤʤ飱���ߣ���

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...//�񣱣��ߣ���
//�񣱣��ߣ���
//�룺ȫ�T����
scene ma04_014vs.nss_01all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//��������
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1970]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5380a02">
��ȷʵ�������������ˡ���
����������𣿡�

{	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5390a04">
����Ȼ�ˡ�
���ղ�����ҲĿ������������ô����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5400a02">
����������������������ʻ���ս������
�ɣ����ղ��Ǹ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5410a04">
������ʹ�������󼶱�����
�������첻��ս�����㿴����ô����
��������������Ĺ��Ǳ������ˡ�
��������ľ�����Ż������Ϊ�䱦�ɡ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5420a04">
����Ȼ��Ұս���������ˣ���������սĿ��Ϊ�Σ�
���������ֲ�ȱ��Ĳ���
�������ʹ�ðɡ�
���㿴�����ڵ�����ڷ��ո�����������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5430a02">
�������ⲻ��˵��
�����������ֲ����𣿡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5440a04">
��������������̫���ˣ�����
�����뷨̫���ֹ��ˡ�
������Ϊ��ʵ��������Ϊĳ�����ɶ�
��ʱ��Ը������Ͷ��ս������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5450a04">
����֪���������±����أ�������
���������ء���
���⻹�����޷���ȷ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


....//������ָ��
//��scene��"13_3"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...//�񣱣��ߣ���
//�񣱣��ߣ���
//�룺����֦�Τ�����
scene ma04_014vs.nss_01ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//��������
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1980]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5460a04">
����ô����
����Ԯ���׺�ʱ������أ���

//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5470a04">
��<RUBY text="��������������������">���Ǵ����Ѳص���ʱ��</RUBY>��
������˭ʤ˭�ܣ�������һ��������ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



....//������ָ��
//��scene��"13_3"

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣��ߣ�
//�񣱣��ߣ�
//�룺13_2A,13_2C�����ص�
scene ma04_014vs.nss_02
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ɽ�Ф�����֦
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg005_ɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 1000, "slide_01_02_1", true);
	DrawDelete("�}��ܞ", 200, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1990]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5480a03">
��������ζ����ɵ������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�
	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(500);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2000]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5490a03">
��Ҫ������Χ��
���ҷ���ȫ�󷽰�ȫ��Ҳ��ȫ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ƚ����˥������ä��ŏ�
	CreateSE("SE01a","se���L_�|��_�C�v�|����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 300, 0, null);

	MFlash(50,3);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5500a03">
���������ڿɲ����������¶���
ʱ��ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�
	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("SE01","se����_����_�ߤ�01_L");
	SetVolume("SE01a", 2000, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,true);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("�}�ݱ���", 4000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	DrawDelete("�}�\Ļ", 200, 100, "slide_01_03_1", true);
	SetVolume("SE*", 20000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2020]
����ս�ж�
���ʵ����Ǹ����ͷ���������

���ڴ�ս��
��ʹ�з�װ�ױ��������Լһ���׵İ��ݣ���
�б��ľ���ʩѹ����ʹ�������ء���ë������

���з�ս��
��һ������ǹ��ֱ�ӻ��У����ɻ����ҷ���

��ս����
��һ����һ
��
����ע����

��ע�����ϴδ�ս֮ǰ������Ӣ���������˼���
Ӣ�����͵Ĺ����ȣ��ش���һ������һ����
���һ����ս����ʼ֮ǰ��ʿ���ͻ������
���Զ��ⷢ���������һ����һ���˴�Ч�¸õ�ʡ�

���ж�����
��������ʵ��

���ж�˼��
������������ǿ�Ķ������ֲֳ�ǹ�ľѻ�������

������
�����Ͱɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(500);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5510a03">
��̫��������
��������������������Ҫ����ôһ���Σ�
��άҲ��˹�ٷ�������������������?!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ä��ŏ�
	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//���ߤ�
	CreateSE("SE01a","se����_����_�ߤ�01_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("�}�ݱ���");
	DrawDelete("�}�\Ļ", 200, 100, "slide_01_03_1", true);
	SetVolume("SE01a", 1000, 0, null);

//���Ĥ�������������󤺤����
	CreateSE("SE02","se���L_����_�饤�ե�Ĥ�4��");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}�ե�å����", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}�ե�å����", 100, false);

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5520a03">
����������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ĥ���롣
	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//���Ĥ�������
	CreateSE("SE02","se���L_����_�饤�ե�Ĥ�01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}�ե�å����", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}�ե�å����", 100, false);

//���ߤ롣
	CreateSE("SE02a","se����_����_���S03");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("�}�ݱ���", 4000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	DrawDelete("�}�\Ļ", 200, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2050]
����������֦���޴���֮��

����Ҳû��ʲô�ر��������
��������Ϊ���������˵������������Ȼ
��������

��������֧�����˵�Ѫͳ֮�ˣ�Ӧ������
��������ȷ�ķ������ֹ���Ϊ���˵ĵ䷶��
�ֱ���������������֮��
�����һ�����߹�ĵ�λ���ܵõ����ϡ�

���˷Ѳ���Ȩ����һζ�����ھƳ�������Ҳ�ã�
���������ս����Ž�ʿ��������ս����
���Լ�ȴ���ڰ�ȫ�Ĺ��������Ҳ�գ�
���Ƕ�û�ʸ���������ľ�η���̷

��ϯ������ġ�������֮����������������֮�е�
��������ˣ���ûʲô��ֵģ�Ҳ�������
��ӲҪ˵�Ļ�����ֻ��һ���̾����˼��еİ���
�⵽������

�����ְ�ض�һζ̰ͼȨ���Ĺ��壬��ֻ����������
�����档
�����ԡ���

����Ϊ��������������֮Ѫ�ļ̳��ߡ�
�������ҽ����󽫴���λ��������֮��Ů����֦
���޲�Ҫ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2060]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5530a03">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ĥ�
//���Ĥ��������
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(10);
	Delete("�}�ݱ���");
	Delete("�}ɫ��");

	MFlash(50,3);

	CreateSE("SE01b","se���L_�|��_�C�v�|����02");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2070]
���᳹����ʹ����
������Ѫ֮���Ρ�

���е��������塣
�������������������񸴳�

������ɡ�

������
������
����֮̾ѪҪ�ɵ�����Ѫ������!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5540a03">
��ߴ����ߴߴߴ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������x���ŏ�
	CreateSE("SE01a","se���L_�Ɖ�_���k04");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("�}��д", 900);
	Zoom("�}��д", 0, 1100, 1100, null, true);
	Fade("�}��д", 0, 500, null, true);

	FadeDelete("�}��д", 1000, false);
	Shake("�}��д", 1000, 20, 30, 0, 0, 1000, Dxl2, true);

//���ߤ�
//���٤�Ҋ��餷������������ɽ픣�
	CreateSE("SE01a","se����_����_�ߤ�01_L");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	CreateTextureSP("�}�ݱ���", 4000, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_03.jpg");
	DrawDelete("�}�\Ļ", 200, 100, "slide_01_02_0", true);
	SetVolume("@m*", 2000, 0, null);
	SetVolume("SE*", 600, 0, null);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2090]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/014vs5550a03">
�������������
���⸽����ͦ����ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����̨
//�������ꥢ�ࡤ�ƥ������Υ���ȥ�Х����ॢ���
//�����ܤ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 1000, "slide_01_03_0", true);
	WaitPlay("@m*", null);
	DrawDelete("�}��ܞ", 200, 1000, "slide_01_03_0", true);


...//���
//�����
//���ҥ���ȫ�T����ʤ飱���ߣ���
//������֦�Τߤʤ飱���ߣ���


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..//�񣱣��ߣ���
//�񣱣��ߣ���
//�룺ȫ�T����
scene ma04_014vs.nss_02all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2100]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5560a02">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5570a04">
��������С��<RUBY text="������">��ʼ��</RUBY>��
��Ӧ�û�ܾ��ʰɡ�����
��Ŀ�Դ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5580a02">
���������ǰ���
������ܳɹ��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5590a04">
�����ڵ����𣿡���ִ��ˡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5600a02">
���Ҳ�̫�˽�ǹе��
����������������õ�����Ҫ�ò�ǹ
�䴩�Ǹ����յ��ߣ��Ƿǳ�����
���¡���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5610a04">
�����ǻ��ƣ����ǲ����ܡ�
��������ô�붼�����ܡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5620a02">
��ι�����š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5630a04">
�������ص��ġ�
������ֻҪ���߲����谭����С�����׼��
�;�����Ź�Ŀ�ꡣ��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/014vs5640a02">
����׼������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("�}ɫ�\", 10000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);


//���񣱣��ߣ��ä˾@�A�����񣱣��ߣ��˥����ף�������ԭҪ�_�J
//�룺��������Ǥ�����13_5���ƄӤˤʤ�ޤ���

....//������ָ��
//��scene��"�����ߣ�"

}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..//�񣱣��ߣ���
//�񣱣��ߣ���
//�룺����֦�Τ�����
scene ma04_014vs.nss_02ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2110]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5650a04">
����ʼ�˰���
����С�㡭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5660a04">
����������������������Ʒ�ɡ�
��ֻ���ڴ�С�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2120]
������Ҫ���ڰ�����ƶ��Ҵ��б���ɫ�ļ�ϸ֮��
һǹ��ϡ�
������ɴ����Ȼ֪�����Ƕ�ô���ѵ��¡�

����֪�����ǲ����ܵ����顣

�����ǣ�����֪����һ���¡�
���������������ˡ�

������ɴ���˽�<RUBY text="����������">��������֦</RUBY>��
����˭���˽⡣Ҳ��ȱ��˶��˽�ø��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2130]
//�����衿
<voice name="����" class="����" src="voice/ma04/014vs5670a04">
������֥ŵ��۽���Ϊ��ʵ��
��<RUBY text="����">ħ��</RUBY>���ɴ˵���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("�}ɫ�\", 10000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);

....//������ָ��
//��scene��"�����ߣ�"
//�룺�񣱣��ߣ����Ƅ�

}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣��ߣ�
//�񣱣��ߣ�
//�룺13_5A,13_5C����
scene ma04_014vs.nss_03
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����҆��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 200, 100, "slide_01_03_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2140]
���������ݵĹ����������°�������̬��

��Ļ������פ����û����ʶ���źŵ��Ǹ�
���ɫ�����ƺ������Ѿ���
��ƾ��һ��ǹ��³ç����ս���İ��£���ֱ��
��ǹ����ħ��֮���ˣ����˵�����˭��

����Ȼ�����δ��ȷ�������ˣ���������λ����
���˰ɡ�ͬ����Żİ�����з����ߵ�ս����
����ʼ���ն���Զ���������Է��Ǿ�ʽ����С�
������װֻ�����������С��̫������δ����ǹ�ڡ�

����������ǰ����֮ʱ���������Ž��ж����������⣬
����������Ӱ�������ǵ���������ʱ��
ͬ����߹�������¡�
������������Ǹ���Ӱ��

��Ϊ�������ڻİ��µ�װ����ǰ����Ӧս֮ʱ��
����Ӱ����������ͬ�飬���������
��ʼ�����³ç���ж��ء�
���ⲻ�������Ʋ⡣

������ȷ�ϳ�ɫ��������ǰ��ս��������
�޴����ˡ��Է���ʹ���׹��Ҳ��������
��������˵�Է����α������ڻ��ж��Ի��ţ�
������˲����������ʡ�

���Է����ԳƵ����쳣��̣������ҷ������ݽ�
��ͬʱ������Ҳ�����䲢��ʧ��ɽ�ţ�
��������ζ�ŶԷ�Ҳ�������ˡ�
���ڲ�����Ҳδ�ܵ�Ϯ������һ��Ҳ֤���˴��¡�

������֮�󣬵��﾿������ˡ���
�����������ˣ�����������Ϊ���ˡ��������
�õ�ǿ����װ�����޷���Ѱ��һλ������
������塣

�����������������ǲ����ܵġ�
�����ӵĻ��������İ��µ�ɲ�Ǿͻ���ô���ˡ�
�����ǰ�������ı֮�µı��Զ�û���ӵ����ǽ�����
�����ڵ�ϴ���Ҳ�����β�����߰ɡ�

������Ҳ�ѿ�͸�ҷ��Ų��ٶۡ�
���Է�Ӧ��֪�������Ǽ����׵��¡��ɶԷ�ȴ
�Ծɼ�����ս��

����˵���������˾����Ǻη���ʥ��������֮��
��Ŀ������Ϊ���ء�
���ǵġ�������û��Ŀ�ġ�

��ͻ�������س��ֲ��ƿ�ס�о������������´������
��פ����У���������ⷽ����쳣������Ϊְҵ����
������������Ȥ����һ��֪����Щ�ɡ�
�������ⶼ����Ҫ��

������Ϊ���Լ���Ŀ�ģ����������İ���ս����
��<RUBY text="����">����</RUBY>���Ѿ��Ż�������ʼ�����Щ����ӵ���

��Ϊ�Σ�
����Ȼ��Ϊ�������߽��лָ���������ʱ�䰡��

��Ϊ��Ҫ<RUBY text="��������">����ʱ��</RUBY>��
���Է��޷�ĬĬǱ������������ʲô��

������<RUBY text="��������">�ȷ�����</RUBY>�ˡ�����֪�Լ���ǹ��ȫ�����á�
������Ϊ�Σ�

����������Ϊ���İ�����������Ϣ���޷������ĵ���
������ߡ�
�����Ա���Ҫ�����������룡

����ô��
���������ںδ���

���ѻ����������˴��š�
�����ߵ���Ǳ���ںδ���

���ڵ�һ���ܵ�ǹ���ĸ�������

�����⣬û����Ȼ�ǽ���һ��ǹ�ʹ��������İ���
���ŵ�ʿ����һ����ʱ�����������������
�ж���
���Ը�������ʱ���ʿ����˵����ǰ����ѽ��Ϊ�Σ�

���Ǿ���Ϊ�ָ���ϵ����߳���֮ʱ��׼����
�����Ʋ��ֳɶ��������������ơ����ѻİ�������
������߱�¶��������������λ���ϣ�

����������׼�����㡪���Ǹղŵ���������
�������Ǿ��������ع������ˡ�<k>
��
��������Դ�ߣ�

����Ȼ��������ɫͿװ������������˳�ʱ��Ľ�ս�ˡ�
�ᱻ����Ҳ�޿ɺ�ǡ�
���յе�ʿ��Ϊ�������߸����ڹ�����Դ�ߣ���������
�Լ���

���б�է��һ������������λ�ս������ȷ�е�ָ���ԡ�
�İ������ڱ�����ĳ������
����ô����Ȼ��ˡ���

������������˼���ɣ�
����Ϊ�о�����������������������ںδ�!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2149]
���������µ��ǣ��������������⣬
�������Ʋ�����ʵ����Զ��
����������ʮ��أ��ڶ�εķ�������ⷢ���Լ�
��׹��֮��������תΪ����ٿ��ߡ�

  ����Ϊ�������������������Ż����������ɡ�

��������Ρ�
�������ڿ���׼��<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnBG(100,"bg022_ɽ��a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("�}�ţ�");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_0", true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2150]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5680a00">
������ʲ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5690a01">
�������������ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���֤��`�󡣰k��ʂ�
	CreateSEEX("SE01a","se���L_��҆��_����02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1100, 1100, null, true);
	Shake("�}����", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();
	Wait(2000);
	WaitKey(3000);


//���֥�å�������
	SetVolume("SE*", 3000, 0, null);
	CreateColorEX("�}ɫ��ܞ", 10000, "#000000");
	Fade("�}ɫ��ܞ", 3000, 1000, null, true);
	Delete("�ץ���*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2160]
//���ƥ����Ⱥ������ʾ
��
��������<PRE>�ԣ�� ������������桡
������������"�ԣ��졡���䡡������".</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\��", 10000, "#000000");
	Delete("�}ɫ��ܞ");

//���е�ѥ�ɥå������
//������֦���ۥ��åȤ��뤷�Ĥ�
//���������Ǥ��ۤȤ狼��ʤ��褦��

	CreateSE("SE021","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE021a","se���L_����_���ϕN01");
	MusicStart("SE021",0,1000,0,1000,null,false);
	MusicStart("SE021a",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ԫ", 5100, Center, Middle, "cg/ef/ef038_�������.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 1, @180, @0, @0, null,true);
	CreatePlainEXadd("�}��", 5110);
	SetBlur("�}��", true, 2, 500, 60, false);
	SetVertex("�}��", right, bottom);
	Zoom("�}��", 0, 3000, 3000, null, true);
	Fade("�}��", 0, 700, null, true);
	Delete("�}ɫ�\��");
	Zoom("�}��", 300, 1000, 1000, null, false);
	Shake("�}��", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("�}��", 200, true);

	Wait(300);

	CreateWindow("�}��", 5000, 0, 96, 1024, 384, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateSE("SE01","se����_��x_�k��03");
	CreateColorSP("�}��/�}��ɫ", 10010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 10020, -145, -200, "cg/ev/resize/ev909_��҆��_m.jpg");
	CreateTextureEXover("�}��/�}�ݣţָ�", 10110, -203, -217, "cg/ev/resize/ev004_����֦������_bm.jpg");
	CreateTextureSPover("�}��/�}�ݣţ�", 10100, -203, -217, "cg/ev/resize/ev004_����֦������_bm.jpg");
	Fade("�}��/�}�ݣţָ�", 0, 500, null, true);
	MoveFFP1("@�}��/�}�ݣţ�",1000);
	MoveFFP2("@�}��/�}�ݣţָ�",5000);

	CreateColorSPadd("�}��/�}��ɫ��", 10200, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1500,null,false);
	Zoom("�}��", 200, 1000, 1000, Dxl2, true);
	FadeDelete("�}��/�}��ɫ��", 100, true);

	WaitKey(500);

	$SE�ѥ�ɥå���_ma04_014vs=se����_��x_�Х���_�ѥ�ɥå���01;
	$SEʸ�w��_ma04_014vs=se���L_�Х���_�ܩ`�������01;

	CreateSE("SE022","$SE�ѥ�ɥå���_ma04_014vs");
	CreateSE("SE022a","$SEʸ�w��_ma04_014vs");
	CreatePlainSP("�}��д", 20000);
	MusicStart("SE022",0,800,0,1200,null,false);
	MusicStart("SE022a",0,800,0,1200,null,false);
	CreateTextureSP("�}��Ԫ", 11100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 1, @180, @0, @0, null,true);
	CreatePlainEXadd("�}�ݏr",11100);
	SetBlur("�}�ݏr", true, 2, 500, 60, false);
	Zoom("�}�ݏr", 0, 3000, 3000, null, true);
	Fade("�}�ݏr", 0, 700, null, true);
	MoveFFP1stop();
	MoveFFP2stop();
	Delete("�}��");
	Delete("�}��д");
	Zoom("�}�ݏr", 300, 1000, 1000, null, false);
	Shake("�}�ݏr", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("�}�ݏr", 200, true);

	Wait(300);

	CreateSE("SE023","$SE�ѥ�ɥå���_ma04_014vs");
	CreateSE("SE023a","$SEʸ�w��_ma04_014vs");
	CreatePlainSP("�}��д", 20000);
	MusicStart("SE023",0,700,0,1300,null,false);
	MusicStart("SE023a",0,700,0,1300,null,false);
	CreateTextureSP("�}��Ԫ", 11100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("�}�ݏr",11100);
	SetBlur("�}�ݏr", true, 2, 500, 60, false);
	Zoom("�}�ݏr", 0, 3000, 1500, null, true);
	Fade("�}�ݏr", 0, 700, null, true);
	Delete("�}��д");
	Zoom("�}�ݏr", 150, 1000, 1000, null, false);
	Shake("�}�ݏr", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("�}�ݏr", 100, true);

	CreateSE("SE024","$SE�ѥ�ɥå���_ma04_014vs");
	CreateSE("SE024a","$SEʸ�w��_ma04_014vs");
	CreatePlainSP("�}��д", 20000);
	MusicStart("SE024",0,800,0,1200,null,false);
	MusicStart("SE024a",0,800,0,1200,null,false);
	CreateTextureSP("�}��Ԫ", 11100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("�}�ݏr",11100);
	SetBlur("�}�ݏr", true, 2, 500, 60, false);
	Zoom("�}�ݏr", 0, 1500, 3000, null, true);
	Fade("�}�ݏr", 0, 700, null, true);
	Delete("�}��д");
	Zoom("�}�ݏr", 150, 1000, 1000, null, false);
	Shake("�}�ݏr", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("�}�ݏr", 100, true);

	CreateSE("SE025","$SE�ѥ�ɥå���_ma04_014vs");
	CreateSE("SE025a","$SEʸ�w��_ma04_014vs");
	CreatePlainSP("�}��д", 20000);
	MusicStart("SE025",0,900,0,1100,null,false);
	MusicStart("SE025a",0,900,0,1100,null,false);
	CreateTextureSP("�}��Ԫ", 11100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("�}�ݏr",11100);
	SetBlur("�}�ݏr", true, 2, 500, 60, false);
	Zoom("�}�ݏr", 0, 3000, 3000, null, true);
	Fade("�}�ݏr", 0, 700, null, true);
	Delete("�}��д");
	Zoom("�}�ݏr", 150, 1000, 1000, null, false);
	Shake("�}�ݏr", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("�}�ݏr", 100, true);

	CreateSE("SE026","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE026a","se���L_����_���ϕN01");
	CreateSE("SE026b","se���L_����_�z��������03");

	MusicStart("SE026",0,1000,0,1000,null,false);
	MusicStart("SE026a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�݄���", 6000, 8, -614, "cg/ef/ef044_��c.png");
	CreateTextureEX("�}�ݻ�҆", 5500, -90, -540, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateTextureSP("�}��Ԫ", 5100, Center, Middle, "cg/ef/ef038_�������.jpg");
	Request("�}��Ԫ", Smoothing);
	CreatePlainEXadd("�}��", 5110);
	SetBlur("�}��", true, 2, 500, 60, false);
	SetVertex("�}��", right, top);
	Zoom("�}��", 0, 3000, 3000, null, true);
	Fade("�}��", 0, 700, null, true);
	Delete("�}ɫ�\��");
	MusicStart("SE026b",0,1000,0,1000,null,false);
	Fade("�}�ݻ�҆", 0, 500, null, true);
	Shake("�}�ݻ�҆", 300, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}�݄���", 300, 3000, 3000, Dxl2, false);
	Rotate("�}�݄���", 300, @0, @0, @3600, Dxl2,false);
	Zoom("�}��", 300, 1000, 1000, null, false);
	Shake("�}��", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("�}�݄���", 200, false);
	FadeDelete("�}��", 200, true);

//�����`�֥�Ͼ�
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 2000, "#FFFFFF");
	CreateTextureSP("�}��", 300, -46, -1260, "cg/ef/resize/ef026_���ñ���extl.jpg");
	CreatePlainEXadd("�}��д", 1000);
	Fade("�}��д", 0, 1000, null, true);
	SetBlur("�}��д", true, 2, 500, 60, false);
	Delete("�ϱ���");
	CreateSE("SE031a","se���L_�Ɖ�_���k05");
	CreateSE("SE031b","se����_��x_�k��03");
	MusicStart("SE031a",0,1000,0,700,null,false);
	MusicStart("SE031b",0,1000,0,1000,null,false);
	Zoom("�}��д", 800, 2000, 2000, Dxl2, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}��д", 1000, false);
	FadeDelete("�}��ܞ", 1400, true);

//����҆��
	CreateSE("SE041","se���L_��҆��_ܞ��01");
	MusicStart("SE041",0,1000,0,1250,null,false);
	CreateTextureSP("�}�ݏr", 3000, -175, -30, "cg/ev/resize/ev910_��҆����Ԫ���å�m.jpg");
	CreatePlainSPadd("�}��д", 3100);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1000, 1000, Dxl2, true);
	Fade("�}��д", 300, 0, null, false);
	DrawDelete("�}��д", 300, 1000, "effect_01_00_0", true);

	SoundPlay("@mbgm12",0,1000,true);

//���ޤ��ܥ��������⤤��󤫡�
//�룺�����ɥ����ͩ`��ץ�`��ϣ�����������Ȥνyһ����Ҫ�ʤ��ᣩ
//��`���¤Υ����Ĥ��ޤ�����
	SetNwC("cg/fw/nw�����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2170]
//������㣯�����_���ߡ�
<voice name="�����_����" class="��������" src="voice/ma04/014vs5691z00">
����������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	DrawDelete("�ϱ���", 200, 100, "slide_01_03_0", true);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2180]
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5700a01">
������ն����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2190]
���ۿ�������ڿھ�Ҫ��������֮ʱ��
��˺�Ѳ�ɫ�ڰ��ļ��⽫��Դ��Ҳ
�ж��ˡ�

��������֦С��Ĺ����ɡ�
����Ȼ��֪��������ʲô��Ҳ��֪���Ǿ���
��ʲô�����ܶ���֮���ǵȴ��Ѿõĺû��ᣡ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2200]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5710a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/014vs5720a01">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ���ڄӡ����ĩ`��
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 6000, "#FFFFFF");
	CreatePlainEXadd("�}��д", 5000);
	Fade("�}ɫ��", 250, 1000, null, false);
	Fade("�}��д", 100, 1000, Dxl2, false);

	SetVertex("�}��д", 750, 90);
	Zoom("�}��д", 100, 1250, 1250, null, true);

	WaitAction("�}ɫ��", null);

	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ�\", 5100, "#000000");
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

//����˥��`չ�_
//��������ݳ�����҆���ؓ�����Ƥ���Τǥѥ��¤��Ƥޤ����������ѩ܇�Ҫע�⡹

	Cockpit_AllFade(300,432,0);

	CreateSE("SE01","se����_���å��ԥå�_������04");
	$�Еr�g=RemainTime("SE01")-1000;
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 500, 1000, "slide_05_00_0", true);

	CP_IHPChange(300,5,null,false);
	CP_PowerChange(30,500,null,false);
	CP_AziChange(1000,100,AxlDxl,false);

	Wait(1000);

	FadeDelete("�}ɫ��", 1000, true);

	Wait(1000);

	CreateSE("SE02","se���L_����_�z_�ϵ�������01");
	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ��", 11000, "#FFFFFF");

	FrameShakeSt(150);

	CP_SpeedChange(300,513,Dxl2,false);
	MyTr_Count(100,445);

	CP_HighChange(1000,982,Dxl2,false);
	CP_AltChange(300,70,Axl2,false);

	Fade("�}ɫ��", 150, 1000, null, true);

	Wait(800);

	CreateTextureSP("�}�ݿ��б���", 5010, Center, -4930, "cg/bg/bg202_�����ݳ�����ɽa_03.jpg");
	CreateSurfaceEX("�}��������", 5000,1000,"@�}�ݿ��б���");
	Fade("�}��������", 0, 1000, null, true);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	Move("�}�ݿ��б���", 1300, @0, -4780, Dxl2, false);

	Delete("@OnBg*");
	FadeDelete("�}ɫ��", 1000, true);

	WaitAction("�}�ݿ��б���", null);

	CP_AltChange(4000,0,DxlAuto,false);
	Move("�}�ݿ��б���", 3000, @0, -5080, AxlDxl, false);

	Wait(3000);

	MoveFFP1("@�}�ݿ��б���",7500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2210]
���Ұ����ڵ�����ע�뱳��ķ����ƽ�����
������任Ϊ�����뿪½�ء�
�����������˵�������ģ�ȴ�����е��˸���ƽ���ĺ���
��������ʧ���С�������״��������������Ӱ�컹�ܴ�

������Ҳ����ս���ˡ�
��������������������֮�¡��������Ϊ����֮��
���ص���ע�˰ɣ��ҽ���΢�õ��ָ������ֲ��޷�����
����Ŷ�����ס�˷������ơ�

������Ҳû�����ˡ����ֶ������ã������ֽ��ڡ�
��������ͨ�����߽�����ͨ�Ľ�����
�ǲ��ɷ����ҷ����ڲ���״����
������ֻ��ӳ����֮һ�����ѡ��������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����҆�¡���å�����
	Move("�}�ݿ��б���", 2000, @0, @-288, DxlAuto, false);
	Wait(2000);

	CreateWindow("�}��", 8000, 347, 173, 410, 230, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 0, null, true);
	CreateEffect("�}��/�}���愿��", 9000, 0, 0, 1030, 580, "KitanoBlue");
	SetAlias("�}��/�}���愿��","�}��/�}���愿��");
	CreateTextureEX("�}��/�}�݄�������", 8000, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEX("�}��/�}�����}װ��", 8100, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	Zoom("�}��/�}�����}װ��", 0, 500, 500, null, true);
	Fade("�}��/�}�����}װ��", 0, 500, null, true);
	Fade("�}��/�}�݄�������", 0, 250, null, true);

	CreateSE("SE01","se����_���å��ԥå�_��å�����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2220]
���ӵ���ľٶ��ɿ����Է��Ļ��ҡ����������һ��
�����ķ��򣬴������ʹ��̽����ܣ�
ͬʱ��ͼ���Ƕ�ǹ����׼Ŀ�ꡪ��<k>�汿��
�Ѿ����ˡ����������ξ��״��Ҳ����ı䡣

�������Ǹ�ʿ��Ӧ�ò��������һ��ġ�
���Ǹ�����Ĵ���ߡ���Ȼ�������������ѵ�Ҳ�����
һͬ���ж���ô��

��һ˲֮ǰ��վ��������Ե���ң�
���ֻ��һ���Ϳ�ֱ���з������Ŀ�϶��
���ҿ����ˡ���ǰȷ�Ϲ��Ĳٿ��ߴ��λ�ã�

�����ǶԷ�ȴ��ӭ����
�����ξ��˵�ע������ն�����Լ�������˹���
ĳ������ȥ�ˡ���������Σ����״����

�����ʱ����
��Ҫ�ڴ˾���ʤ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_��å����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��", 300, 0, 0, Dxl2, true);
	Delete("�}��");

//��ͻ�M
//����`����äȤäƤȤ���
	SetVolume("SEL*", 300, 0, null);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSPadd("�}����", 3100, -590, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -590, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);

	Delete("�}�ݣӣ�");
	Delete("�}ɫ�\");
	Delete("�}�ݿ���*");
	Delete("�}��������*");
	MoveFFP1stop();

//������󡸣ãУ������ȤΥե�����Ǥ�ãФ���Τ����������ˤ��ޤ���
	Cockpit_AllFade0();
	FadeDelete("�}ɫ��", 100, false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2230]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5730a12">
����˼����ҹ������ͥǰ���Ϊ˭����
δ����¶͸���£��κμ�������ϡ���
��ע�⣺���Ը��輿���Ρ�����ƿ�������ѡ���
����һ��ɽҰũ����һ�����컨���Ĺ��£�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ũ�ʽ�o�T����ѩ܇��˘���������z��Ǥ��ީ`����
//��������زĴ_�J����������ʤΟo�����ɤɤ�����Σ����Ȥꤢ�����ũ�ʽ�o�ǌ��꡹
	PrintGO("�ϱ���", 30000);
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	Cockpit_AllFade0();
	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2240]
����������?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݣӣ�", 100, Center, Middle, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
	Move("�}�ݣӣ�", 0, @0, @-72, null, true);
	Zoom("�}�ݣӣ�", 0, 200, 200, null, true);
	SetBlur("�}�ݣӣ�", true, 3, 500, 50, false);
	Request("�}�ݣӣ�", Smoothing);
	Move("�}�ݣӣ�", 600, @0, @-20, DxlAuto, false);
	Fade("�}�ݣӣ�", 600, 1000, null, true);

	SetFwL("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2250a]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/014vs5740a12">
������������Ϊ����˱��飡
��������������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text2250b]
//��������
<voice name="����" class="����" src="voice/ma04/014vs5750a00">
�����ǡ���?!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
//��һ�ϴ���Ϥ������������`��
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE01a","se���L_����_Ұ̫�����02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}�ݣӣ�", 400, 1500, 1500, Axl2, false);
	Move("�}�ݣӣ�", 100, @0, @-20, null, true);
	Move("�}�ݣӣ�", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("�}ɫ�\", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se���L_����_��ꪏ���02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ԫ", 10020, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Request("�}��Ԫ", Smoothing);
	Rotate("�}��Ԫ", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("�}��", 10030);
	Zoom("�}��", 0, 1250, 1250, null, true);
	SetBlur("�}��", true, 3, 500, 200, false);
	FadeDelete("�}��", 800, false);
	Shake("�}��", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

..//������ָ��
//�Υե����롡"ma04_015vs.nss"


}

//���x�k֫���`��
scene ma04_014vs_ic_Select.nss
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm12",0,1000,true);

	Cockpit_AllFade0();

	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);

	FadeDelete("������", 1000, true);

//���x�k֫
	SetChoice02("�ػ�һ��","�᳹�Լ���ְ��");
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
//һ�����ؤ롡"ma04_014vsa.nss"
			$һ�����ؤ� = true;
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�۸�ˏؤ��롡"ma04_014vsb.nss"
			$GameName = "ma04_014vsb.nss";
			$�۸�ˏؤ��� = true;
		}
	}
}

.//�ץ�����======================================================

..//����ʹ�
function MeimetuAction()
{
	CreateProcess("�ץ�������", 5000, 0, 0, "MeimetuSET");
	SetAlias("�ץ�������","�ץ�������");
	Request("�ץ�������", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@�}����", 800, 1000, null, true);
	Wait(200);
	Fade("@�}����", 800, 0, null, true);
	Wait(200);
	}

}