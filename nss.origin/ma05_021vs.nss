//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//�ե饰�����å���
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma05_021vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma05_021vs.nss","Debug_Select",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		if($Return_ma05_021vs == true){}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev925_Ұ̫����Ƭ_f=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#aw_����=true;
	#aw_�y�Ǻ�=true;


//	$Ӣ�۾��K�� = true;
//	$��׉���K�� = true;
//	$ħ������� = true;
//	$һ������ = true;
//	$����֦���� = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

//���ҥ��󚢺��ж�
//�����ʥ��`�øжȤϥ��ʥꥪ���ꥢ״�r�ˤ�äƉ�ӡ�
//��һ�l������֦�΁I���򥯥ꥢ�g�ߤǤʤ��ʤ顢�I��
//���Υ�`�ȱ�Ҫ�����¤��O�����Ĥޤ�ɤ��餫�򤳤�
//���ǚ��������뤤�ϥХå��Ф��ζ��k�ˡ�
//��I��`�ȥ��ꥢ���Ƥ�����Ϥϥ�`�ȱ�Ҫ�����Ϥ�
//���O����

//�룺��ӛ�����ݤ���ӛ�������������ޤ�����090909��
//һ��������֦�I��������Ϥ�һ���κøжȤ������Ϥ��ä����ϡ�Ӣ�۾�
//һ�����桢����֦�������Ϥ�һ���κøжȤ������Ϥ��ä����ϡ�Ӣ�۾�
//����֦���桢һ��������Ϥ�����֦�κøжȤ������Ϥ��ä����ϡ���׉��
//������������һ����������
//����֦���桢һ���������Ϥ�����֦�κøжȤ������Ϥ��ä����ϡ���׉��
//һ��������֦�΁I��`�Ȥ򥯥ꥢ�����I�ߤ����椷�������κøжȤ�������
//���ä����ϡ�ħ����
//����������Хå�

	RouteChicker();

	if($Ichizyou_Flag >= 3 || $Kanae_Flag >= 3 || $Muramasa_Flag >= 3){

		if($RC_N["һ��"] < $RC_N["����֦"] && $RC_N["һ��"] < $RC_N["����"]){
//�룺Ӣ�۾��_��
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}else if($RC_N["����֦"] < $RC_N["һ��"] && $RC_N["����֦"] < $RC_N["����"]){
//�룺��׉���_��
//�룺һ������_�J
			if($һ������ == true){
					$PreGameName = $GameName;
					$GameName = "ma05_022.nss";
			}else{
				$һ������ = true;
				judgment_of_count();
				$Next_deadGame = "ma05_023.nss";
				$GameName = "mz01_001.nss";
			}
		}else if($RC_N["����"] < $RC_N["����֦"] && $RC_N["����"] < $RC_N["һ��"]){
//�룺ħ�����_��
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}
	}else{
//�룺�øжȤ�һ�������¤Ξ顢bad
//$badEnd_Flag = ����������ץ����ж���
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}

}

scene ma05_021vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//�ǥХå��x�k֫��
//	Debug_Select();


..//������ָ��
//ǰ�ե����롡"ma05_020.nss"
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	CreateTextureSP("�}�ţ��τ���", 3030, Center, InBottom, "cg/ev/resize/ev139_�y�򚢺�_al.jpg");
	CreateTextureSPadd("�}�ţ���", 3020, Center, InBottom, "cg/ev/resize/ev139_�y�򚢺�_al.jpg");
	CreateTextureSP("�}�ţ�", 3010, Center, InBottom, "cg/ev/resize/ev139_�y�򚢺�_cl.jpg");
	CreateTextureSP("�}����", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_c.jpg");


	Delete("@�}�ե�");
	Delete("�ϱ���");

	Move("�}�ţ�*", 5000, @0, -65, DxlAuto, false);
	FadeDelete("�}ɫ��", 1000, true);
	Wait(300);
	Fade("�}�ţ��τ���", 1500, 0, null, true);
	Fade("�}�ţ���", 1500, 0, null, true);
	WaitAction("�}�ţ�*", null);
	Wait(500);
	FadeDelete("�}�ţ�*", 1000, true);

	SetFwR("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0010b41">
��ʲô����
����ô����!?��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0020b41">
�������ܣ�
������û�����ܵеù���Ϣ!!��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0030b41">
��Ϊ��!!
������һΪʲô����!?��

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0040a00">
����������ҿ��İ��֡�����

{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0050a00">
���Ǳ�������ն�ϵģ�
���Ǳ�������ɱ����!!��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0060a00">
��������ʧȥ����
�����߰�Ϣ��Ȩ��!!��

{	FwR("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0070b41">
��������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�M��_냇��_�i��01");
	CreateSE("SE01a","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 4000, "#FFFFFF");
	CreateTextureSPadd("�}�ݣţָ�", 3110, Center, Middle, "cg/ev/ev905_����늴œĵ�_a.jpg");
	CreateTextureSP("�}�ݣţ�", 3100, Center, Middle, "cg/ev/ev905_����늴œĵ�_a.jpg");
	FadeDelete("�}ɫ��", 500, false);
	FadeDelete("�}�ݣţָ�", 1000, true);
	Delete("�}����");

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0014a]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0080a00">
����Ұ������ս�񷨡�ѩ����֮���ѡ�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_װ��04");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateSE("SE01L","se����_늓�_���02");
	MusicStart("SE01L",0,1000,0,800,null,true);
	CreateTextureSP("�}��", 3200, -250, -270, "cg/ev/resize/ev905_����늴œĵ�_cm.jpg");
	CreatePlainEX("�}��д", 5000);
	SetBlur("�}��д", true, 2, 500, 30, false);
	Fade("�}��д", 0, 500, null, true);
	FadeDelete("�}��д", 2000, false);
	Zoom("�}��д", 2000, 1500, 1500, null, false);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0014b]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0090a00">
����Ż�����������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1600, 0, null);
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	Fade("�}ɫ��", 2000, 1000, null, true);

//����`�륭��Υ�һ�W
//�������`��
	MovieSESet(20000,"mv��","se����_mv��_늴Œi��_��");
	MovieSEStart(2000);

	PrintGO("�ϱ���", 19000);
	CreateColorSPadd("�}ɫ��", 18000, "#FFFFFF");

	CreateTextureSP("�}����", 100, Center, -970, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");

	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw�཭_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0100b41">
����������������

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0110b41">
����������������
�����¡���̫�����ˣ���

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0120b41">
��������
����Ȼ������Ƕ����

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0130b41">
���������磡�����཭�������磡
���ҳ��ϡ�����������������������!!��

//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0140b41">
���ǺǺǣ�
����������������������������������!!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0150a00">
��������ô���ش��ҵ����⡣
��Ц���཭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0160a00">
���⡪��
�����Ǻ��ںδ�����

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0170b41">
����������
������֮�����ǡ�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0180a00">
���ںδ�!?��

{	FwC("cg/fw/fw�཭_ͨ��.png");}
//���཭��
<voice name="�཭" class="�཭" src="voice/ma05/021vs0190b41">
�����ڡ���
���������������޵ġ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`��ɢ�A
	SetVolume("@mbgm*", 3000, 0, null);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 11100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 11000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}����", 0, 1100, 1100, Dxl1, false);
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}�\Ļ");

	Zoom("�}����", 300, 1250, 1250, Dxl1, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);
	FadeDelete("�}��", 1000, false);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0200a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0210a01">
����������
������Ұ̫��������Ƭ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0220a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ƭ���Σ������äȡ�
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSP("�}�ţ�", 2000, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_f.jpg");
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0230a01">
����������һƬ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0240a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0250a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0260a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0270a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�b_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������ǰ��
����֮�󡪡�

�����Ǳ���ĸ��������ʹһ�㣬����������ȥ��
��Ѱ�ҹ�����䡣

��Ȼ�����ҿ�����ȴ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ӥ��
	CreateSE("SEL01","se��Ȼ_��_��ĵ���");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ʬ���Ұ�����ӡ�

����Ҷ����ˡ�
�����������

����������
������ɽ����

��û��һ����ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0280a00">
������Ϊʲô������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0290a01">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0300a00">
��������Ҳ�����ѵ���
��Ҳ���˺���һ�������顭����

//��������
<voice name="����" class="����" src="voice/ma05/021vs0310a00">
��ɱ��ɽ������
��Ȼ������ɱ��������������˶���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0320a01">
��ɽ����ָȫ����װ����Щ�һ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0330a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0340a01">
���Ǿ͹��ˡ���
���������ϡ���

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0350a01">
����ɽ��֮�����Խ϶ࡣ��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0360a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ȷ��ˡ�
������ɽ��������������������ͬ���������������
����������ӦԶ��ɽ���������ȫ�������ˣ���ζ��ʲ
ô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0370a01">
�������Ƿ������𣿡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0380a00">
���������񣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0390a01">
�����ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0400a00">
���⡭����Ϊɱ����������ܴ����
�̶����񡭡����Ǿ͡�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0410a01">
������
��������ˣ��в���ȫ�𡣡�

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0420a01">
������
����ʬ�����Ƿ��Ϊ���������ɱ���£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0430a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���������������ġ�
��������˺�ɽ��������ֹ��ˡ���������˿���ȥ��
��Ҳ�ǻ����ɱ��ģ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0440a00">
��Ҳ����˵��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0450a01">
��������������ӵ�п���֮����
����Ⱦ��Χ����֮������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0460a00">
��������Ⱦ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0470a01">
���ԡ�
���������������÷��񡪡���

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0480a01">
���̶�������ͨ����������֮��ɢ�����С�
���ʶ������´ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0490a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0500a01">
�����������¹�ȥҲ���й�һ�Ρ�
���ʽ�����������ӡ������

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0510a01">
������������������һͬ��ӡ����
��Ϊ���������������ݣ�����֮����ֹ������
������

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0520a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0530a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0540a01">
������Ǳ�Ѱ���������Ĳٿ��ߣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0550a00">
�������ǰ�����

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0560a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	#aw_����=true;
	#aw_�y�Ǻ�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������Ͱ������ˡ�
����Ϊ������ĸ��������ҵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0570a01">
�������Ѱ����������
������ͬȥ�ɺá���

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0580a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0590a01">
������Ժ��ҡ�
��������������Ҫ�ҡ���������Ҫ�㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0600a00">
�����𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ô�ᡭ��
������Ҫ������Ľ��У�

����û�н���ĸ����ת������֮�⡣
����ȷ��������ԣ����ۺ��ֽ��У��վ�������������
�ѡ������Ǳ����仹�Ǳ��ʲô��ֻ�����ǵ��߰��ˡ�
������ʹ�����ǵ�����е���

���Һ�����⸱�������ֻ�֮�Ӧ����֮�ˣ�����ʹ
�����Ĵն������ⲻ�����롣
��������ˡ�����������˽�����������֮�ࡪ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0610a01">
��û��
����������֮��Ⱦ���������ܲ������ߡ�
���������á��ѡ����ɽ����߻�Ϊ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0620a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0630a01">
���ܲ�Ϊ���������ߣ�����Ψ���������ѡ�
���ʴˡ��������ѡ����ء���

//��������
<voice name="����" class="��������" src="voice/ma05/021vs0640a01">
������������Ȼ�������У��������ۡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0650a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������
����ô���ܷ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//��͎�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0660a00">
�����������ޡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0670a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0680a00">
���Ǽһ�����ô˵�İɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0690a01">
�����ǡ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/021vs0700a00">
��׷����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0710a01">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 1500, 1000, null, true);
	SoundPlay("@msong01_inst",0,1000,true);

	CreateColorSP("�}ɫ�\�r", 2000, "#000000");
	CreateTextureSP("�}�ݳ���", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_b.jpg");
	SetTone("�}�ݳ���", Sepia);

	Wait(5000);

	FadeDelete("�}ɫ�\", 1500, true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180a]
����֮�󣬹������ꡣ
������һֱ��׷Ѱ�⡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݳ��r", 2990, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	SetTone("�}�ݳ��r", Sepia);
	FadeDelete("�}�ݳ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180b]
�����ڸ�������<RUBY text="��������">ȫ���¼�</RUBY>��
����ʼ�����ǳ�Ϊ���Ǻš�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݳ���", 2980, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	SetTone("�}�ݳ���", Sepia);
	FadeDelete("�}�ݳ��r", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180c]
����ʱ�����������
��ʱ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݳ���", 2970, Center, Middle, "cg/ev/ev503_�����i������.jpg");
	SetTone("�}�ݳ���", Sepia);
	FadeDelete("�}�ݳ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180d]
���һٵ���ɢ���ġ��ѡ���
ɱ��ǡ���ǡ��ѡ�<RUBY text="��������">һ������</RUBY>���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݳ�*", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180e]
��Ȼ������
����δ����ֹ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@512,@0,null,false);

	CreateTextureSP("�}�ݱ�", 500, InLeft, InBottom, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	CreateTextureSP("�}����", 1000, -2251, -147, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	Shake("�}����", 3600000, 2, 1, 0, 0, 1000, Dxl2, false);
	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Move("�}�ݱ�", 150000, -487, -288, null, false);
	FadeDelete("�}ɫ�\�r", 1000, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0720a00">
�������´�һ��Ҫ�ɹ���
�����ܡ��������Ѽ�����ɢ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0730a01">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������İ�����š�
���Һͽ��У�����֪����α�ơ�

���������ң����������������ѡ�
����󡪡�������֪�η���ĳ���˴�ȥ���ѡ�

������һ׮ɱ��֮�
������һ׮ɱ��֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma05/021vs0740a00">
���߰ɡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/021vs0750a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, false);
	Zoom("�}����", 2000, 500, 500, null, false);
	Move("�}����", 300, @90, @0, Dxl1, false);
	WaitKey(500);
	Delete("�}����");
	CreateColorEX("�}ɫ�\", 5500, "#000000");
	FadeDelete("�}ɫ��", 2000, false);
	Fade("�}ɫ�\", 3000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���Ҿ��Ǵ�����
�����ֻ�֮���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@m*", 2500, 0, null);

	ClearWaitAll(2000, 2000);

//���ҥ��󚢺��ж�
//�����ʥ��`�øжȤϥ��ʥꥪ���ꥢ״�r�ˤ�äƉ�ӡ�
//��һ�l������֦�΁I���򥯥ꥢ�g�ߤǤʤ��ʤ顢�I��
//���Υ�`�ȱ�Ҫ�����¤��O�����Ĥޤ�ɤ��餫�򤳤�
//���ǚ��������뤤�ϥХå��Ф��ζ��k�ˡ�
//��I��`�ȥ��ꥢ���Ƥ�����Ϥϥ�`�ȱ�Ҫ�����Ϥ�
//���O����



}



function Debug_Select()
{

	Conquest("nss/"+ModuleFileName(),"debug_select",true);

//�ǥХå��x�k֫��
	if($GameDebugSelect == 1)
	{
		SetChoice06(ħ����,Ӣ�۾�������֦����,Ӣ�۾�������֦����,��׉����һ������,��׉����һ������,�Хåɥ����);
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
				ChoiceA06();
				$ħ������� = true;
				$Muramasa_Flag = 3;
				$Kanae_Flag = 2;
				$Ichizyou_Flag = 2;
			}
			case @�x�k֫��
			{
				ChoiceB06();
				$Ichizyou_Flag = 3;
			}
			case @�x�k֫��
			{
				ChoiceC06();
				$����֦���� = true;
				$Ichizyou_Flag = 3;
			}
			case @�x�k֫��
			{
				ChoiceD06();
				$Kanae_Flag = 3;
			}
			case @�x�k֫��
			{
				ChoiceE06();
				$һ������ = true;
				$Kanae_Flag = 3;
			}
			case @�x�k֫��
			{
				ChoiceF06();
//				$Muramasa_Flag = 1;
				$Kanae_Flag = 5;
				$Ichizyou_Flag = 2;
			}
		}
	//�ǥХå���`�ɽ��
	$GameDebugSelect = 0;
	}


}



//������������������������������������������������







