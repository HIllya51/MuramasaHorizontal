//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_020vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_020vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_020vs.nss","MeimetuSET",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		//$Ichizyou_Dead = true;
		//$Kanae_Dead = true;
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev124_���΍u���Շ�_a=true;
	#ev124_���΍u���Շ�_b=true;
	#ev124_���΍u���Շ�_c=true;
	#ev503_�����i������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma04_021.nss";

}

scene ma04_020vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_019.nss"

//��ҹ��
//�����ȥ�������
//�����y����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(2000);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}��", 2000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞02.jpg");
	Wait(50);
	FadeDelete("�}ɫ��", 1000, true);

//��С���
//��I������Έ��Ϥ���ͨ���M�Ф�����������Ҫ����ԭ�_�J

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��һ������
//�����Υ��`��һ����������ϤΤ�

..//if_start
if(!$Ichizyou_Dead){
//��һ��

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/020vs0010a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}
..//if_end

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������֦����
//��С���
//�����Υ��`������֦��������ϤΤ�

..//if_start
if(!$Kanae_Dead){

//������֦������
	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/020vs0020a03">
�������Ǹ��ǡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/020vs0030a04">
����������װ�ף�
����С�㣬���㣡��

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead){
		TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else{
		TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}
}
..//if_end

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������Ҫ����ԭ�_�J
.//�룺������ݥ���Ȥ��O��

//���������ǣȣ�

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs0040a01">
����������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0050b02">
��ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0060a00">
����������!!��

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead && $Kanae_Dead){
		TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else{
		TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	}

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_02_01_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��˲ʱ��
��ÿ���˶�������ա�

�������쿴��
���·�������˭�´�ľ�������һ�㡣

�����ǿ����ˡ�
���ǿ����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ�ħ����
	SoundPlay("@mbgm37",2000,1000,true);

//�����y����
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞02.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞02.jpg");
	Zoom("�}��", 0, 1100, 1100, null, false);
	Zoom("�}����", 0, 1300, 1300, null, false);

	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//����ƥ����ȥ饤�����������餴�`��
	CreateSE("SE01a","se���L_�y�Ǻ�_��ƥ����ȥ饤��");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 3100, Center, -950, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞tl.jpg");
	CreateTextureSP("�}��", 3000, Center, -950, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞tl.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Move("�}��*", 200, @0, -1050, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���ʤ󤫤����`���Ȥˤʤä����ĩ`�����خ�
	CreateSE("SE02","se���L_�Ɖ�_�󱬰k01");
	MusicStart("SE02",0,1000,0,700,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	SetVertex("�}��*", center, bottom);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 5000, 1200, 2000, Dxl2, false);
	Shake("�}����", 5000, 0, 0, 20, 0, 1000, Dxl3, false);

	WaitKey(1000);

	Fade("�}ɫ��", 3000, 1000, Axl1, true);

//����
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg002_��b_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0070a14">
��������
�������е����������ˡ���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0080a14">
����֮��<RUBY text="��������">��ʧ����</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����΍u���x�ޥåס����΍u���ʤ���
//���ԥá��������ä�λ�ä�㾀�Ǳ�ʾ
	CreateTextureEX("�}�ţ֣�", 4000, Center, -490, "cg/ev/resize/ev124_���΍u���Շ�_al.jpg");
	Fade("�}�ţ֣�", 700, 1000, null, true);

	WaitKey(300);

	CreateTextureSP("�}�ţ֣�", 4010, Center, -490, "cg/ev/resize/ev124_���΍u���Շ�_bl.jpg");

	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Fade("�}�ţ֣�", 0, 0, null, true);

	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Fade("�}�ţ֣�", 0, 0, null, true);

	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Delete("�}�ţ֣�");

	WaitKey(1000);

	//SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0090a15">
��������������

//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0100a15">
���������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0110a14">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥá��ޥå��Ϸ���ʸӡ��ʾ��
//�����݂Ȥ�ʳ���z��Ǥ��뽭�΍u
	Move("�}�ţ֣�", 3000, @0, -150, DxlAuto, true);

	WaitKey(1000);

	//SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0120a15">
�����<RUBY text="����">�뵺</RUBY>�ˡ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0130a14">
��ŶŶ��
����ģ���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0140a14">
���ɵ���Ư������
�����Ǹ����𣿡�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ֣�", 3980, Center, Middle, "cg/ev/ev124_���΍u���Շ�_a.jpg");
	FadeDelete("�}�ţ֣�", 1000, true);

	CreateTextureSP("�}�ţ֣�", 3990, Center, Middle, "cg/ev/ev124_���΍u���Շ�_b.jpg");
	CreateTextureSP("�}�ţ֣�", 3980, Center, Middle, "cg/ev/ev124_���΍u���Շ�_c.jpg");
	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Fade("�}�ţ֣�", 0, 0, null, true);

	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Fade("�}�ţ֣�", 0, 0, null, true);

	Wait(700);
	Fade("�}�ţ֣�", 0, 1000, null, true);
	Wait(700);
	Delete("�}�ţ֣�");

	Wait(700);
	FadeDelete("�}�ţ֣�", 300, true);

	//FwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0072]
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0150a15">
�����ǵġ���š���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0160a14">
����֮ƽ��������á�
���������������������С����ʧ�˵Ļ���
��̫��ϧ���أ���

{	//FwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0170a15">
������Ҫ��ô˵�Ļ�����С��������Ŀȫ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������x
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������ĶԻ���������û�б�Ĵʿ������ݡ�
���𶯣����ǳ�����Ҽ����о��������ֶ�����


���ܸо����ģ�ֻ����Χ��һ����һ˲����ʧ�����ģ�
���µ�ɥʧ�С���
��Ȼ������һ˲����<RUBY text="����������������">ȴʲô��û�иı�</RUBY>��
���øо�����ʵ���˺ܴ�Ĳ��

�����
���������������������ܱߵ����������޵������ֳǣ�
�ȸղ�<RUBY text="��������">��������</RUBY>��һ���󡭡�

������������ˡ���ʵ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0180a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������̫��η�壬�Ҽ�����Ҫʧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs0190a01">
��������������
��������������

//��������
<voice name="����" class="��������" src="voice/ma04/020vs0200a01">
���Ǹ��������ǡ���
��������<RUBY text="������">���ľ</RUBY>һ���𡭡�����

//��������
<voice name="����" class="��������" src="voice/ma04/020vs0210a01">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������Ľ��д���Ҳ����������
�����Լ�Ҳ�޷�����Լ���˵�����顭��
������������ȥ�������ĸо���

�������������飬��ô���ܡ�
��
����ʹû��˵���ڣ����뽣�е��뷨Ҳ��ͬ��

��������ǣ���<RUBY text="����">�Ǹ�</RUBY>�Ĺ��м��ܣ���������
��ʵ�ֵ����󣬲�������
���ܹ��Ʋ����Ҳ�ͽ��˶����ˣ�����Ĳ�������
���޷�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0220b02">
������ʲô����
���ղţ�����ʲô���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����������ƺ�Ҳ�޷�����أ�������������
���Ǳ����꾫��ס�ĸо����ҿ������ı�����һ˲��
���ͣ�Ȼ��޴�������ͷ�����ܿ��Ƶ�ת��ȥ�������ܡ�


�������µ�ʿ��Ҳ����˰ɡ�
�������ܹ��ش�ָ�ӹٵ����⣬�������ܹ���������
ָ�ӹ�һ�����ж���

����һ����������������ľ��ﶨ������ĳһ��ķ���
��������ͬ��<RUBY text="��������">����޴�</RUBY>�������ֳǡ�

����������֮��Ҳ�����ǵõ�������Ѱ��Ĵ𰸡�

�����Ĳ��£���Ҫ���ϼ��롣

������˵����
������������ƽ��ʱ�̡�

��Ҳ�����ʲô����������Ҳ�����ʲô����������
���˲������ӡ����ʧ����
�������ʱ�䡣

�����޷���ص�ʱ�䡣
�����ġ������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������AȾ��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}�ݛAȾ", 4100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);
	FadeDelete("�}�ݛAȾ", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���������ˡ�
���ַ�����ģ���ɫ�綾��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160a]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0230b02">
������ʲô��
����������װ��ͨ�š�������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	CreateTextureEX("Gin_song01", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh01.png");
//������г�Ц
	CreateTextureEX("Gin_song02", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160b]
����������Ӧ�Ǹ������ҵĿ��⣬�������ʡ���

�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

	CreatePlainSP("�}��д", 6000);
	Delete("Gin_song*");
	FadeDelete("�}��д", 1000, true);

//���AȾ
	CreateSE("SEL01","se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}�ݛAȾ", 4100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);

//�􍹤�ҹ��
	CreateTextureEX("Gin_song03", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh03.png");
//���¤����z��
	CreateTextureEX("Gin_song04", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh04.png");
//��ľ©���դ���
	CreateTextureEX("Gin_song05", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh05.png");
//�������餮����
	CreateTextureEX("Gin_song06", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh06.png");
//��������ζ
	CreateTextureEX("Gin_song07", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh07.png");
//�����οֲ�
	CreateTextureEX("Gin_song08", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh08.png");
//�������Ά�����
	CreateTextureEX("Gin_song09", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");
//���������Ť�
	CreateTextureEX("Gin_song10", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");
//������ӻ��Ұ���Y����
	CreateTextureEX("Gin_song11", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");
//�����ޤ���Τʤ�
	CreateTextureEX("Gin_song12", 5600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");

	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����������֮ҹ��ҰȮŭ�ͣ��¶���������

����ů��Ѩ��ĸ����֮�������߸���ϯ���ޱȰ�������

�����⴩͸����������£�����֮ʨ����ǧͷ¹����

����������ˮ��֮���ѣ�����ͯʰ������̤����

�������������֮�˰�������С���擴�Ĺ��ɡ���

������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮������

�������������������ʣ�С�����ħ����ճ�Կ�ס���

������������������������С�����ħ���ժ��ñ�ӡ���

��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���

����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//���k������
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SEL01","se����_����_�ϑ�01");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}�ݛAȾ", 4100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	CreateColorSP("�}ɫ�׏r", 10000, "#FFFFFF");
	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev003_�y�Ǻ��¼�����`����.jpg");
	CreateTextureSPover("�}�ݸ�", 4001, Center, Middle, "cg/ev/ev003_�y�Ǻ��¼�����`����.jpg");
	Zoom("�}�ݸ�", 0, 1500, 1500, null, true);
	DrawEffect("�}�ݸ�", 31600000, "LowWave", 30, 30, null);
	FadeDelete("�}ɫ�׏r", 30, true);

	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);
	Delete("�}�ݛAȾ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������

�����������������
������û���ǻ۵ģ�Ұ�޵ġ�

������ɱ�⡣
�����̶��⡣
�����̺��⡣

������û���κ����ʡ�
��û���κ���������Ķ�����

���ܴ�͸һ�е��ײ�֮�裬�������������ܳ�����
�������ǲ������ࡣ

��������˫��վ����Ƥ��Ϊ����Ƥë��������ӵ�л���
������Ұ�ޡ�
��������Ұ�ޡ�

���ǣȣѵ����ⲿ�ӣ���Ϊ����Ⱥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0240b02">
����������
������ʲô?!��

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0250b02">
��ͣ����!!
��ͣ�£�������ǣ���

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0260b02">
����������?!
��<RUBY text="����������������">���Ǳߵ���ͬ����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|���Ȥ���ͬʿӑ���Θ���
	CreateSE("SE01","se����_����_������L��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MFlash(30, 8);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ǣ�����������
�����ֵ��ҵ����⹥�������ر�����

��һЩ�����û���ǹ��ͬ�ŵĶ���������һͨ��
��Ȼ���ֱ�����ʻ����ս����ѹ��

����ս����ǰ������ͬ�ͻ������ڶ�׼��
��Ȼ����������ڵ�֮ǰ���п������ӽ��ڿڣ�����
���ž����Ȼ��ը��

��������׼��ս��ʼ��û��ע�⵽�����ӣ����ϵؽ���
�������ɢ�䡣
����Ȼ�������в��˻����Ըߵ����ߡ��������׻�����
һ���䴩�������ַ�Ļ���

��һ�｣�дӿ���ˤ�䣬������ͬ��ֻ��ãȻ��ע����
���ı��硣
�����ǲ�δ���Ұ�ޡ�

��ֻ�б���Ӳ��װ���������������ǡ���
���������С�������У�Ʒ��ȫ���������Ĵ�����

��ͽ�͵ط�����ָ��Ŀ���������������˵����Щ��
֮������ά���侲���ˡ�
��������ˣ�������ɫ������Ұ�޿�������<RUBY text="����">���</RUBY>�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("Gin_song15", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh15.png");
	CreateTextureEX("Gin_song16", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh16.png");
	CreateTextureEX("Gin_song17", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh17.png");
	CreateTextureEX("Gin_song18", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh18.png");
	CreateTextureEX("Gin_song19", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh19.png");
	CreateTextureEX("Gin_song20", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh20.png");
	CreateTextureEX("Gin_song21", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("Gin_song22", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("Gin_song23", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh23.png");
	CreateTextureEX("Gin_song24", 5100, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������漣��ʥ������������ܿܿ����֮�񡣡�

���S��֮���İ����������������İ���һ��ͬ���ӵס���

�����������Ĺ�������ȡ������������ڷ���֮�С���

����������Ӥ�������֮ѪΪĸ�飬ʳ֮��ҹ���ø�Ϊʼ����

�����������������޸裬�ص���Ц��ƣ����Թ�ޡ���

���������������⵻�棬���Է�ŭ�������ϲ�á���

�����뽣����֮������װ�������֮��������

��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ���

��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���

����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������������Ŀ�⣬Ұ���ǵ��ų�Ѫ���۾�б����
��������˾��
���·�Լ����һ��أ�����ͬ���Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0270b02">
����?!
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������˵ʲô�ء�
���������������ε�һ�������������������
��ǰ���������׸��ú������������ֹ�ء�

�����ǹ�����Ϊ��������߰��ĳ��ԣ�Ȼ����ʵ������
�Ļ��ᶼδ����������
��Ψһ�ܳƵ��ϰ�ο���ǣ�����������·������������
һ��ʵ��

������˵ʲô���ı䲻�ˡ�
������˵ʲô������ЩҰ�޶��������塣

���޷��ı䡣
������ȭ�뵶�Լ�Ǧ���Ļش�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����҆�¤��|�ĳh��
	CreateSE("SE01","se���L_�|��_�C�v�|����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Wait(30);
	Delete("�}ɫ��");
	MFlash(30, 8);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������ð��ǹ�ֵ��ꡣ
���������������������

������������������Ҫ���ڵ���Щ���������
���ҵ���ҧ֮ʱ��
���������е��������ź���˼���ء�

{	CreateSE("SE01a","se���L_�|��_����04");
	MusicStart("SE01a",0,1000,0,1250,null,false);}
������װ�׺��������ؽ�һ����ӵ�������ȥ��
��
��Ȼ��һ������<RUBY text="��������">��������</RUBY>�ɡ�

���Ӿ���ĳ�Ĭ�У������������޿���й��Թ�
���޷����κ��ˣ��κεط���й�ķ���

��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0280b02">
������������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0290b02">
����������һ���𡭡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0300a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//���y�Ǻš�������ݳ���
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}�ݛAȾ", 4100, -240, -970, "cg/ev/resize/ev952_�y�Ǻŵǈ�_l.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, -240, -970, "cg/ev/resize/ev952_�y�Ǻŵǈ�_l.jpg");
	SetShade("�}�ݛAȾ", MEDIUM);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1250, 1250, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);
	Delete("�}�ݛAȾ��");

	Move("�}�ݛAȾ*", 10000, @0, -240, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������
��������
�������֡�

����ȷ��Ϊ�¹���Ƭ�Ľ�����
�������ħ����Ϊ����η��Ľ�����
�������˷���Ϊ�����ܻ�Ľ�����

�����ǹŴ����������������
����������Ϊʵ֤������ױ�֮������֮˺��ʹ��Ͼ�
֮�

����������֪�������Ļ��롪��
��
��Ȼ����������֪���������ı��ء�

�����������ڴˡ�

����֮��ò��
��ħ֮���䣬
������֮�⣬

��ȫ���߱���
�������������ڴˡ�

����ôΪ��Ҫ���ɡ�
��Ϊ��Ҫ��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš����㤭�`��
	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se����_냇��_�z�ǈ���02");
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}��", 4100, -240, -240, "cg/ev/resize/ev952_�y�Ǻŵǈ�_l.jpg");
	Delete("�ϱ���");
	Wait(30);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("�}��ܞ", 100, true);
	SoundPlay("@mbgm01",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����Ǻţ�
�����Ĺ�ԣ������ڴˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_04_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_04_01_0", true);

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0310b02">
������һ��
������һ��

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0320b02">
�������Ǻš���!!
���������ҵ�ͬ���ٻ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ϊ�ǣȣѵĽ�У����Ȼ���꾡�����Ų�֪�����Ǻ�
�¼��ɡ�
���ǳ�������֮�е��������������״����ȫһ�°ɡ�


����������������ĺ�У����Ǻ�����󷽵ص��˵�ͷ��
�������ǵġ������ۺ�ʱ�����κ��˵��κ����۶�����
�����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0330a14">
��û��
����Ȼ�����ǵ������ҳƺ�������ȷ������
֮�⣬���˱����԰���֮������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0340a14">
��ͬ������˵���ǵ�������
���ǵġ�<RUBY text="����������">������֮��</RUBY>��<RUBY text="��������">�������</RUBY>����

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0350b02">
������֮���?!��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0360a14">
������������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0370a14">
�����Ǹ��Լ����ֽſ��ϵļ�����
���ҽ��䣬�������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0380b02">
��Ϊʲô!!��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0390a14">
��������Ϊ�����赲�˹�ĵ�·��
������Ҫ���ƣ��ƻ������𡣡�

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0400b02">
����������һ����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0410a14">
������������
������������Ϊ�������ɵġ���ᡱ����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0420a14">
������������ǡ��˵����硱����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0430a14">
��ȫ�������顣
���ù���ֽ�����𡣡�

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0440b02">
������һ���������𣡡�

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0450a14">
����Ҳ��
��������������Ե������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0460a14">
���������ɵĻ���������ĺ�ͼ�ɣ�
����֮���������Լʮ��֮��ƽ��ǧ�ס���

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0470b02">
��������ô�ˣ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0480a14">
�������ϵ�½�������Լһ����ǧ��ƽ��ǧ�ס�
����һ�³����Ļ�����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0490a14">
������������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0500a14">
��������������

{	//FwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0510a15">
��������ǧ����򡣡�

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0520a14">
���ԣ�
�������ǽ�֮����������ǧ����򱶡���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0530a14">
����ô�ڼ����ϣ��ղŽ�֮������Ҫ����
��ǧ����������Ż������ڹ��������
����ô����û��ɣ���

{	FwC("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0540b02">
������������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0550b02">
���㡭�����������
�����ӡ�������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0560a14">
����Ϊʲô��ô�򵥵Ļ�����������ء�
��Ӣ���˶�����û�и����𣿡�

{	//FwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0570a15">
����Ҫ˵�����ˣ�������
��������û������ʸ񡣡�

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0580a14">
���ѵ�����������ʧ����´�½��
����
�����ŵ������������ڣ���

{	//FwC("cg/fw/fw����Ů��ρ_ͨ��.png");
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma04/020vs0590a15">
���������������ġ�
��������һ��������˵�ŷ���ʵ�Ļ�����ʱ��
�󲿷��˵ķ�Ӧ������������
��������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0600a14">
����������ʵ��
����˵ʲô����ѽ����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0610a14">
���ң�
��<RUBY text="������">������</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0620a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš�����ä��ݳ����
	CreatePlainSP("�}��д", 5000);
	CreateSE("SE01","se����_����_�z�i��04");
	StR(1100, 0, -305,"cg/st/3d�y�Ǻ�_����_���Lb.png");
	FadeStR(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ���`��ʤ�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev101_�ץ��`��_a.jpg");//���ߩ`ע��
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	DeleteStA(0,true);
	FadeBG(0,true);
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ���`��ʤ�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev133_����������_a.jpg");//���ߩ`ע��
	SetShade("�}����", NOMORE);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	//StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	StR(1100, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���⡣
���ҵġ�������<k>���á�

����Ӷ������ľޱ����ƣ�����ľ���
�����ܲ�����չ��Ѫ��ʢ��Ҳ������ҡ��
��Ȼ������С����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0630a00">
���⡭����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0640a14">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������ѿڶ����ģ����е��Ǹ����֡�
��������ת��������������ҡ�

��û�н����Ļ��
����������ɫ����Ӱ��

����ȥ�����ݴ�ʱ�ѱ�Ѱ������
��һ��Ҳ�Ҳ�������

����Ҳ�������������
�����ݵĳ�Ĭ���������˵����˸���ͷ�Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0650a14">
��ʹ�ࡣ
�����ơ�
�����ա���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0660a14">
��Ȼ����������δ��������־����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0670a14">
���ǳ��ã�
������߿�����Ŷ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����������ꡣ
��������˵����Щ������ζ�Ļ���ղŲ����ǵ�һ�Ρ�


��Ȼ�����Ҳ����ס�
������˵ʲô�ء���˵ʲô�ء�

����Ȼ����
����Ȼ���������ġ�

�����ǲ�ͬ�ġ�
����<RUBY text="������">���ǹ�</RUBY>��

�����ã��Ѿ�����
���Ѿ�ʧȥ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0680a00">
��Ϊʲô������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0690a14">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��������һ���޴����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0700a00">
��Ϊʲô�����裿��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0710a14">
�����㶼��ô˵�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�������ֱ�Ťһ���������

�������Լ��ķ���û���Ծ������ӡ�
���������ǵ�Ȼ��<RUBY text="��������">�������</RUBY>���Ƿ��衣

����������������塣����֪���ġ�
�����һ��ǲ��ᣬ����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0720a00">
����Ϊ<RUBY text="��������">��������</RUBY>��
���������𣿡�

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0730a14">
������������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0740a14">
����û�з���Ŷ����
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0750a00">
�����ڷ��衣
���㲻���ڷ����𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1250,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���Ҷԣǣȣѵ�ʿ���ǡ���������ʿ����������ָ�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma04/020vs0760a00">
���������ǣ�
�������������<RUBY text="��">��</RUBY>�յ��ˣ���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0770a00">
������Ϊ�㷢���ˣ����������ص���
����Ҳ�����ˣ�
���������İ�?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����������ָ�ķ�����ɫ������Ʈ�������档
�������ҽе�ս����

���������������۾���
�����ǣ��������ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0780a14">
�����������䡱������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs0790a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���������䣿

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0800a14">
���������ҵ�ȷ�в���֮������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0810a14">
��Ϊʲô��Ҷ�ʧȥ�������أ�
��Ϊʲô������������أ���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0820a14">
�����ʵ���˳̶����𡭡�
������ƽʱ���������ѹ���������ı���
������𣿡�<RUBY text="������������">���ǲ�һ����</RUBY>����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0830a14">
�����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
�����Ǻţ������ֵ�ʳָ��Ĵָ�ڳ���һ��Ȧ��
��Ȼ�����׼��һ��ʿ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0840a14">
��ֻ����΢��һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����������ָ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0850a14">
���ͱ���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ���ݳ�
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}�ݛAȾ", 4100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureEXadd("�}�ݛAȾ��", 4110, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	DeleteStA(0,true);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�ݛAȾ��", 500, 1500, 1500, Dxl2, false);
	Fade("�}�ݛAȾ��", 250, 1000, null, true);
	Fade("�}�ݛAȾ��", 250, 0, DxlAuto, true);
	FadeDelete("�}�ݛAȾ", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������������ָ�⣬�·���ʲô�������Ķ������˳�����
��ʿ�������嵯����һ�¡�

���޷��Գ�ʶ�������Ծ��
�����з�����ֵ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�z_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, -30, -90, "cg/ev/resize/ev909_��҆��_m.jpg");
	CreateTextureSP("�}��", 3000, -30, -90, "cg/ev/resize/ev909_��҆��_m.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	SetBlur("�}����", true, 3, 500, 50, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0541]
���������︽���ˡ�
���������Ŵ���������ĸ�����ʿ��ץס���װ�׵�
���ݴ���Ѫɫ���������θ������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0860b02">
��������ά�ˣ���

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0870b02">
����ά���ϵȱ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se���L_����_�z_���01");
	CreateSE("SE01b","se�M��_ճ���|_���띢���02");

	CreateTextureEXmul("�}��Ѫ�{", 4120, Center, Middle, "cg/anime/Right/blood_B_6.png");
	CreatePlainEXadd("�}��д", 4110);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 3, 500, 50, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����ֱ�������
�����ʿ��Ц�ˡ�

������ȥ�ƺ���������
������ֻ��¶��Ȯ�ݵı��顣

��������������̧���ϰ���
�����÷���������

{	MusicStart("SE01a",0,1000,0,1000,null,true);
	MusicStart("SE01b",0,1000,0,1000,null,true);
	Fade("�}��Ѫ�{", 0, 1000, null, true);
	FadeDelete("�}��Ѫ�{", 300, false);
	Fade("�}��д", 0, 1000, null, true);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1000, 1000, null, false);
	FadeDelete("�}��д", 1300, false);}
��������ײ��װ�ס�
������ҧ����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0880b02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��Ӧ�ò�������˺���
����������ҧ��

����ʹ�Լ��������Ѿ����ѡ�
������ϲ�õĺ�������û������ҲҪ���ϵ���ҧ
װ�ס�

�������·�����������̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0890b02">
��������

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0900b02">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//����҆�¡��֥쥹�ȥե������`
	CreateSE("SE01","se���L_��҆��_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}��", 3000, -780, -720, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @180, @0, null,true);
	FadeDelete("�}ɫ��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
��ʿ����������ɢ��촷ۡ�
��Ȼ�������ɨ����δֹͣ��

��ʿ����װ���ϣ��ƺ�ճ��ʲô������
�������°͡�ֻ��������ҧס���°ͣ�װ����
�����װ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0910b02">
��������������������������!!
���쵰��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE00","se���L_�|��_�C�v�|����02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Zoom("�}��", 0, 1100, 1100, null, false);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateSE("SE01b","se���L_�|��_�C�v�|����02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPadd("�}����", 4910, Center, Middle, "cg/ev/resize/ev910_��҆����Ԫ���å�m.jpg");
	CreateTextureSPover("�}��", 4900, Center, Middle, "cg/ev/resize/ev910_��҆����Ԫ���å�m.jpg");
	Rotate("�}��*", 0, @0, @180, @0, null,true);

	CreateTextureEXover("�}���µ�", 4010, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureSP("�}����Ԫ��", 4000, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	StR(4800, 315, -160,"cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Fade("�}���µ�", 0, 600, null, true);
	FadeStR(0,true);
	FadeDelete("�}ɫ��", 100, false);
	SetBlur("�}����", true, 3, 500, 50, false);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateWindow("�}��", 15000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	CreateTextureEX("�}��/�}�����}װ��", 15100, -980, -1240, "cg/st/resize/3d�y�Ǻ�_����_���Lblm.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
��˻�����������к��������һͬ�ڸ���ա�
��Ҳ�����Ѿ����ǲ����ˣ����ѻ�����Ȼ��ȷ��
��׼��ɫ��Ӱ��������������롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}���������r", 19500, Center, Middle, "cg/ef/ef044_��c.png");

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0920a14">
���ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
�����Ǻ���ϸ����ָ���ٴΰڳ�<RUBY text="������">����ָ</RUBY>����״��
��Ȼ����ʧ��

��������
�����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����󤫤󤫤󤫤�
//���|���ǥ��ԥ󷵤�
	CreateSE("SE01","se���L_����_�z_���01");
	CreateSE("SE01a","se���L_�|��_����02");
	MusicStart("SE01*",0,1000,0,1500,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(20);

	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");

	StR(4800, 130, -330,"cg/st/3d�y�Ǻ�_����_���Lb.png");
	FadeStR(0,true);

	Delete("�}��*");
	Fade("�}ɫ��", 100, 0, null, true);

	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01aa","se���L_�|��_����01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Fade("�}ɫ��", 100, 0, null, true);

	CreateSE("SE01b","se���L_����_�z_���01");
	CreateSE("SE01bb","se���L_�|��_����02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Fade("�}ɫ��", 100, 0, null, true);

	CreateSE("SE01c","se���L_����_�z_���02");
	CreateSE("SE01cc","se���L_�|��_����01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);
	Fade("�}ɫ��", 100, 0, null, true);

	CreateSE("SE01e","se���L_����_�z_���01");
	CreateSE("SE01ee","se���L_�|��_����02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(20);

	FadeDelete("�}ɫ��", 2000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
��������������ζ�׷���ϵ��ٶȱ��۵����Ǻŵ�ָ�⡣

����һ˲����쳹������ʧ��������

���ܹ�ȷ�ϵ���ʵֻ�������
����������һ����

��ǹ��һ����û�д������Ǻŵ�װ�ס�
����Ȼ�����������ڲ��ϵ������Ŀ��Ҳһֱ����ȷ�ġ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0930a14">
�����Ƕ�ô��׾����ָ���ɰ���
����ʿ����Ҫ������Ů���ۼ����Ļ���
Ҫ������ϸ��һ����С���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0940a14">
���������ɴ򶯲����κ�Ů����
������˼ҿ��ǻ�����԰��Ƶ�Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEz00","se���L_�|��_�C�v�|����02");
	MusicStart("SEz00",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ�g����", 30000, "#FFFFFF");
	Wait(10);

//��������ݳ���һ�ݤ��i����ؤ��ΤǷ�ɢ�����ޤ���
	//CreateWindow("�}��", 15000, 0, 144, 1024, 288, false);
	//SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 15010, "#66FFCC");
	CreateTextureSPmul("�}��/�}�ݱ���", 15020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	//CreateTextureEX("�}��/�}�����}װ��", 15100, -980, -1240, "cg/st/resize/3d�y�Ǻ�_����_���Lblm.png");
	Fade("�}��/�}�����}װ��", 0, 1000, null, true);
	Move("�}��/�}�����}װ��", 0, -1080, @0, Dxl2, false);

	//CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	//CreateTextureEXadd("�}��/�}���������r", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	//CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	//CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");

	Delete("�}ɫ�g����");

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -520, -400, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Wait(10);
	SetBlur("�}��/�}�����}װ��", true, 2, 500, 50, false);
	Move("�}��/�}�����}װ��", 100, -1284, -1125, Dxl2, true);
	CreateSE("SE00","se���L_����_�z_���01");
	CreateSE("SE00a","se���L_�|��_����02");
	MusicStart("SE00*",0,1000,0,1500,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ�������=20;
	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}���������r", 0, -98, -465, null, true);
	Zoom("�}��/�}���������r", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}���������r", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("�}��/�}�����}װ��", 100, -865, -1170, Dxl2, true);
	CreateSE("SE01a","se���L_����_�z_���02");
	CreateSE("SE01aa","se���L_�|��_����01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("�}��/�}���������r", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}���������r", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}���������r", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}���������r", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}���������r", 300, 1000, 0, 100, null, "cg/data/slide_01_02_2.png", false);
	FadeDelete("�}��/�}���������r", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -415, -346, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("�}��/�}�����}װ��", 100, -1178, -1061, Dxl2, true);
	CreateSE("SE01b","se���L_����_�z_���01");
	CreateSE("SE01bb","se���L_�|��_����02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -220, -470, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("�}��/�}�����}װ��", 100, -990, -1173, Dxl2, true);
	CreateSE("SE01c","se���L_����_�z_���02");
	CreateSE("SE01cc","se���L_�|��_����01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 30, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -326, -565, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("�}��/�}�����}װ��", 100, -1087, -1268, Dxl2, true);
	CreateSE("SE01e","se���L_����_�z_���01");
	CreateSE("SE01ee","se���L_�|��_����02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", false);
	FadeDelete("�}��/�}����������", 450, true);

	SetBlur("�}��/�}�����}װ��", false);
	Move("�}��/�}�����}װ��", 6000, -1280, @0, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�����µ�����������Ц�š�

����������ʲô��
����ָ�⽫�ڵ����ȥ��

������������������

�����Լ�˵���ڶ��������š�
������ȥ���š�

��Ȼ��ƾ��ǰ�Ĺ⾰ֻ���Ʋ����һ�����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 300, 1000, 0, Dxl2, true);
	Delete("�}��");

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs0950b02">
��Ŷ����
��ŶŶŶŶ����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh
	CreateSE("SE01","se���L_�|��_�h�T����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 6100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateTextureSP("�}��", 6000, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateSEEX("SE01a","se���L_��҆��_����02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("�}����", 6100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Zoom("�}����", 0, 1100, 1100, null, true);
	Shake("�}����", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	DeleteStA(0,true);
	Delete("�}����*");

	MeimetuAction();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
�����޻ع�ͷ���������������ڿ�̽��ͷ����
��������Ƥ���ĺ���������ҹ�����衣

��������Ҫ���������

�����õ��裬�㽫Ŀ��ٻٴ�����ħ�ڡ�
����������ʹ�����Ǻţ�Ҳ�޷��㿪��

������֪��֪��������в�ء�
�����Ǻſ���ȥ��̫���ˣ�����̾��һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0960a14">
����������֮�ˡ�
��δ�õ�Ů���ӵ������㽫�˵�ӹ��֮��
��׼�˼ң�������ô���£���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0970a14">
���Թ�Ĵֱ���Ҫ�������۵ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
�������Ǿ���һ��Ļ������û��
����ȥ��
�������������İɡ�

�����µĺ����������˼��ޡ�
������˼������������Ѿ���ɡ�

�����Ǻ�˿��δ����
����δ֪����в�������κη�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0980a14">
���ߡ�����
��ʲô����<RUBY text="��������">���ֶ���</RUBY>�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//���o�ݳh�k��
	CreateSE("SE01","se���L_��҆��_����03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�ץ���*");
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ev/resize/ev912_��҆�¸o�ݳh���å�_bl.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/resize/ev912_��҆�¸o�ݳh���å�_bl.jpg");
	SetBlur("�}��", true, 3, 500, 50, false);
	Zoom("�}��*", 0, 2000, 2000, null, true);

	Fade("�}����", 5000, 1000, null, false);
	Zoom("�}��*", 10000, 500, 500, Dxl2, false);
	Wait(1000);

	Zoom("�}��*", 500, 600, 600, Dxl2, false);
	Shake("�}��", 500, 0, 50, 0, 0, 1000, Dxl3, false);

	CreateWindow("�}��", 5000, 636, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#66FFFF");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Rotate("�}��/�}�����}װ��", 0, @0, @180, @0, null,true);
	Move("�}��/�}�����}װ��", 0, @280, @0, null, true);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	CreateColorEXadd("�}��/�}�ݸ���", 6000, "#FFFFFF");
	CreateColorEXover("�}��/�}��ɫ�o�ݳh", 5500, "#FFFF00");
	CreateTextureEXmul("�}��/�}��ɫ�o�ݳh��", 5510, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	Fade("�}��/�}��ɫ�o��*", 0, 800, null, true);
	DrawTransition("�}��/�}��ɫ�o�ݳh��", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_02_0.png", false);
	DrawTransition("�}��/�}��ɫ�o�ݳh", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Fade("�}��/�}�ݸ���", 3000, 950, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
������������
������ǰ��˫�۳�ʮ�ֽ��棬���Ǻŵֵ�����һ����


��������վ����������
�����͵�ʱ�����ʹ�����˲�䡣

������������

������һ�仰������������
��<RUBY text="����">����</RUBY>��Ϊ������ô��ġ�

��������Ϊ�޷���ô�롣
��Ϊ�˷񶨶������˼����

����ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs0990a14">
�����<RUBY text="����">�Ⲩ</RUBY>���ڲ��ƻ���
��ԭ����ˡ����ò�����

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1000a14">
����Ҫ����<RUBY text="��������">��ɽ��ţ</RUBY>�ɡ���
�����̶ֳȵĴ򷨣��ػ����Ǻ�����������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1010a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);

//���ե�å��壿
	CreateSE("SE01","se����_���ͥ륮�`�ŗ�");
	CreateSE("SE01a","se���L_�n��_���Ľ��e02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, false);
	Zoom("�}��", 300, 10000, 10000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	Delete("�ץ���*");
	FadeDelete("�}��ܞ", 2000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
����ɫ���ߺ�Ȼ�ſ���˫�ۡ�
������ͻȻ������һ�����ݵض���������

����һ˲�䣬����Ĵ���<RUBY text="������">�ܽ���</RUBY>��

�����������Ǵ��ڡ�
�����ܵ�װ��Ҳȫ�������·𱻻��յ��ı�һ�㣬
����������������״��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1020a14">
��������Ⲩ����ȥ�Ļ����㿴������������
��ʹ���Լ���������������
�������ˡ���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1030a14">
���԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
������ͷ�����գ���µ��ۣ����һ���Ƕ���˵�ġ�
����������������Ѱ���ҵ�ͬ�⣬��Ҳû��ʲô�ûش�
���ġ�

����ȫ����ʹ�����Ĺ���ս��
���Ǹ����ھ�����ʲô�����ء����������Ǻ�����ν�
���ƻ����ء�

����ȫ�޷���⡣
��
��Ҳ����˵��<RUBY text="��">��</RUBY>�����Һ����Ǻ�֮��Ĳ����

������ĳ���޷������ľ�ͷ�ľ�ͷ��
����һ����Ԫ���������硣

�����������Ǹ��ط���
�������֮����ΪңԶ��

�����������ܵ�����
���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	CreateTextureSP("�}�ݿ����}��", 1200, Center, Middle, "cg/st/3d��`�����_�T��_ͨ��.png");
	Move("�}�ݿ����}��", 0, @350, @-17, null, true);
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_04_00_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_04_00_1", true);

	SetNwC("cg/fw/nw�ǣȣѸo�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//���ܥ��������`������`��!?��
//������㣯�ǣȣѸo�T������
<voice name="����㣯�ǣȣѸo�T����" class="����������" src="voice/ma04/020vs1040e006">
����������?!��

//���ܥ�����Screw you�D�D��
//�����������`�������餤�ΰk������
{	NwC("cg/fw/nw�ǣȣѸo�T����.png");}
//������㣯�ǣȣѸo�T���¡�
<voice name="����㣯�ǣȣѸo�T����" class="����������" src="voice/ma04/020vs1050e007">
���ɶ�ɱ���㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm08",0,1000,true);

//���ǣȣѸo�T���u��
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateTextureEX("�}�ݿ����}��", 1180, Center, Middle, "cg/st/3d��`�����_�T��_ͨ��.png");
	Request("�}�ݿ����}��", Smoothing);
	Zoom("�}�ݿ����}��", 0, 950, 950, null, true);
	Move("�}�ݿ����}��", 0, @-150, @240, null, true);

	Fade("�}�ݿ����}��", 300, 1000, null, false);
	Move("�}�ݿ����}��", 300, @-30, @0, Dxl2, true);

	CreateSE("SE02","se����_����_���S01");
	MusicStart("SE02",0,1000,0,900,null,false);
	CreateTextureEX("�}�ݿ����}��", 1160, Center, Middle, "cg/st/3d��`�����_�T��_ͨ��.png");
	Request("�}�ݿ����}��", Smoothing);
	Zoom("�}�ݿ����}��", 0, 750, 750, null, true);
	Move("�}�ݿ����}��", 0, @-210, @-130, null, true);

	Fade("�}�ݿ����}��", 300, 1000, null, false);
	Move("�}�ݿ����}��", 300, @-30, @0, Dxl2, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1060a14">
�����������𡭡�
����������ؾ۳�һȺ�����ô������ͳ������

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1070a14">
����Ҫ������Ů����Ļ�������Ҫ<RUBY text="��������">�ŶӵȺ�</RUBY>�
������Ҳ�á���

//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1080a14">
�������������һ��ʼ�Ͳ��ý���ڣ�
�����ɣ��ù��������ǵĶ��֣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš��[��Ǥ�롣
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se���L_����_��ͻ�M02");
	CreateSE("SE03","se���L_����_��ͻ�M02");

	CreateSE("SE001","se���L_����_��ͻ�M01");

	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("�}�ݿ����}��", 1000, @-40, @0, null, false);

	Wait(50);

	Move("�}�ݿ����}��", 1000, @-40, @0, null, false);

	Wait(50);

	Move("�}�ݿ����}��", 1000, @-40, @0, null, false);

	WaitKey(300);

	MusicStart("SE01",0,1000,0,1150,null,false);
	SetBlur("�}�ݿ����}��", true, 1, 500, 30, true);
	Move("�}�ݿ����}��", 200, @-1200, @-40, Axl2, false);
	Zoom("�}�ݿ����}��", 200, 500, 500, Axl2, false);


	Wait(60);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("�}�ݿ����}��", true, 1, 500, 30, true);
	Move("�}�ݿ����}��", 200, @-1200, @0, Axl2, false);

	WaitKey(200);

	MusicStart("SE03",0,1000,0,900,null,false);
	SetBlur("�}�ݿ����}��", true, 1, 500, 30, true);
	Move("�}�ݿ����}��", 200, @-1200, @120, Axl2, false);
	Zoom("�}�ݿ����}��", 200, 3000, 3000, Axl2, false);

	Wait(180);

	Fade("�}ɫ��", 100, 1000, null, true);

	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}ɫ��");

	CreateTextureSP("�}�ݱ���", 2000, InRight, -450, "cg/bg/resize/bg043_���΍uɽ��_03l.jpg");
	StL(2100, @-512, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	FadeStL(0,true);

	Move("�}�ݱ���", 150, @512, @0, Dxl2, false);
	Move("@StL*", 150, @512, @0, Dxl2, false);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
������Ϸ������һ����ת�䡣
���������Ͽյ�������ӡ������£�Ϯ����������˾
�ĵ��

��ӭ�������Ǻš�
��չ����ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	DeleteStA(0,true);

	Wait(150);
	DrawDelete("�}ɫ��", 300, 1000, "slide_07_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811a]
���������Ƿ�������Ա���֮Ϊս�����д����ʵ���ء�

����ô�����ǺŶ���Ȼ����<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se���L_�|��_�C�v�|����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");

	CreateTextureSP("�}������", 2100, -70, -170, "cg/ev/resize/ev302_94ʽ���_l.jpg");

	CreateSE("SE02a","se���L_����_��ͻ�M02");
	CreateTextureSPmul("�}���yһ", 3010, -340, -330, "cg/st/3d�y�Ǻ�_�T��_ͨ��3.png");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("�}���yһ", 300, -470, -360, Dxl2, false);
	Request("�}���yһ", Smoothing);

	FadeDelete("�}ɫ��", 300, true);

	MFlash(30, 8);

	CreateSE("SE02b","se���L_����_��ͻ�M01");
	CreateTextureEXmul("�}���y��", 3020, -30, -80, "cg/st/3d�y�Ǻ�_�T��_ͨ��4.png");
	Request("�}���y��", Smoothing);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("�}���y��", 300, -160, -40, Dxl2, false);
	Fade("�}���y��", 300, 1000, null, true);

	CreateSE("SE02c","se���L_����_��ͻ�M02");
	CreateTextureEXmul("�}���y��", 3030, 150, -130, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Request("�}���y��", Smoothing);
	MusicStart("SE02c",0,1000,0,850,null,false);
	Move("�}���y��", 300, 280, -80, Dxl2, false);
	Fade("�}���y��", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811b]
����ʮ��ǹ��ķ�϶�䣬����ָӦ����ɱ�Ľ��У�
���ֵ��赸��
���ԡ��������赸��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1500,null,false);

	Move("�}���yһ", 300, -1300, -576, Dxl2, false);
	Wait(50);
	Move("�}���y��", 300, -1024, 576, Dxl2, false);
	Wait(50);
	Move("�}���y��", 300, 1024, @0, Dxl2, true);

	WaitKey(300);

	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("@MF*");
	Delete("�}��*");
	Delete("�}���y*");
	Delete("�}������");

	CreateTextureSP("�}�ձ���", 1000, Center, Middle, "cg/bg/resize/bg203_�����ݳ�������a_03.jpg");
	CreateTextureSP("�}�j�~��", 2010, -410, -110, "cg/st/3d�ȥ�`��_�T��_ͨ��.png");
	CreateTextureSP("�}�j�~һ", 2000, 120, -280, "cg/st/3d�����_�T��_ͨ��.png");
	Request("�}�j�~*", Smoothing);
	Zoom("�}�j�~��", 0, 800, 800, null, true);
	Zoom("�}�j�~һ", 0, 740, 740, null, true);

	DrawDelete("�}�\Ļ", 150, 1000, "circle_01_00_0", true);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,100,0,1000,null,true);
	MusicStart("SEL01b",2000,100,0,1500,null,true);

	CreateTextureEX("�}�y", 1800, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Move("�}�y", 0, @0, @10, null, true);
	Zoom("�}�y", 0, 20, 20, null, true);
	Move("�}�y", 1000, @0, @-10, DxlAuto, false);
	Fade("�}�y", 300, 1000, null, true);

	SetVolume("SEL*", 5000, 300, null);
	Zoom("�}�y", 5000, 100, 100, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811c]
����ͬ����������
�����Ǻŷ��еĹ�����������������Ļ��ƣ�
������������ʻ��������ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("��001","se���L_����_��ͻ�M04");
	SetVolume("SEL*", 5000, 350, null);

	Zoom("�}�ձ���", 5000, 1200, 1200, null, false);
	Zoom("�}�j�~*", 5000, @1000, @1000, null, false);
	Move("�}�j�~��", 5000, @-500, @0, null, false);
	Move("�}�j�~һ", 5000, @500, @0, null, false);
	Zoom("�}�y", 5000, @60, @60, null, false);
	Wait(1600);
	MusicStart("��001",0,1000,0,1000,null,false);
	Wait(1400);
	Zoom("�}�y", 1000, 1500, 1500, Dxl3, false);

	Wait(400);

	SetVolume("SE*", 200, 0, null);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 3100, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");
	SetVertex("�}����", 850, 140);
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}�\Ļ");

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, false);

	SetVolume("��*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811d]
���Ҵ���ؿ������ԡ�
���ڹ���ϯ�ϣ���վ�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820a]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1090a01">
������!!��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820b]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1100a01">
��������
�����á����������������µ�ʱ�򣡡�

//��������
<voice name="����" class="��������" src="voice/ma04/020vs1110a01">
��<RUBY text="����������">�����ڼ���</RUBY>��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
�������ڼ��٣�
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1120a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
������!!

����һ˲�䣬�ҵ���ʶ�������ѡ�
�������Ǻų���֮�����������ȫ��Ե����裬
����ת����

�������ʿ��������<RUBY text="����">����</RUBY>��
���⵱ȻҲ����ҵ������ɱ��ԭ��

��Ȼ��������ЩҲ������
�������Ͳ���Ӧ�ö�������ĺü�������ʧ������ȥ�ˣ�

�������������<k>
���ѵ�˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1130a00">
����<RUBY text="����">��ǰ</RUBY>��Ƭ��ȥ����?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1140a01">
����������ܡ���
�������ѳ�Ϊ<RUBY text="����">Ұ��</RUBY>��
������Ѱ��<RUBY text="����">����</RUBY>�����Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
�����ܵأ����˶�ĵط�ǰ������
��ȷʵ�д˿��ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1150a01">
��һ��Ҫȥ��ֹ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1160a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890a]
���������϶��Ļش�
���ҵ�˼�����Ȼ��ֹ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se���L_��҆��_�Ƅ�02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	CreateTextureEX("�}��҆", 10000, -680, InBottom, "cg/ev/resize/ev909_��҆��_l.jpg");
	Move("�}��҆", 6000, @0, -150, DxlAuto, false);
	Fade("�}��҆", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890b]
���ڿ��ҵ������У�����һֻ�������͵Ķ�����
�������������������

{	SetVolume("SEL01", 2000, 0, null);
	CreateSE("SE01","se���L_�|��_�C�v�|����02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
����ʹ�Ѿ������𻵣�ȴ����׼���е������ͣ����
����
��
����������֮�У�Ҳ����<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�}����", 10010, Center, Middle, "cg/ev/ev003_�y�Ǻ��¼�����`����.jpg");
	Fade("�}����", 500, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0891]
������ط�����һ����������
�������ƻ��������ɱ�Ľ�פ����ʿ���ǡ���

��Ϊ���������ǣ��������ֹ���Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 20000);
	Wait(1);
	CreateColorSP("�}ɫ�\", 19000, "#000000");

	Delete("�}��҆");
	Delete("�}����");

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("�}��д", 300, true);
	FadeDelete("�}ɫ�\", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1170a01">
������ô��?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1180a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
����ô����
������ô���źá�������֪���ġ�

���޷��ڶ�ʱ���ڽ�����ȫ�������
����������Ѿ�ֻ�д����ˡ�

�������û�п���������ս�ѡ�
�������µ�������ǻ�ƽ���𡪡�������һ���Ҽ��š�
����Ӧ����������ȥ��������������ˣ��ҲŻ��Ӧ��
���Ǳ�������Σ�յĵ�·��ȥ��

����ֻ������һ�˵�������Ŀǰ��״��ս����
������ֻ���ų�������˳λ��

������<RUBY text="��������">����˳λ</RUBY>��
�����ֿ����Դ��ǴӺζ����İ���

�������Զ��׼�����ʵֻ��һ����
������ô�����ڼ�Ҳ���˻�<RUBY text="������">��ν��</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1190a00">
���Ƚ�����
���������ǿ��ҵľ��ţ�
�������ѹ�������Ǻţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1200a00">
�����ϣ����룡��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1210a01">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�\Ļ", 16000, "#FFFFFF");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
���������������˷����ƽ�����
��ȫ��ȼ���˷�Ծ�ĳ嶯��

�������������㣡
�������������е�ʲôʱ���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1220a14">
�������𡭡�
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
�����Ǻ�������ߡ�
���ڽ��ֵ����´��ݲ��ȵ�ɢ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//���⡿
<voice name="��" class="��" src="voice/ma04/020vs1230a14">
������������Ҳ��Ȳ���ȥ���ء�
���ܺá�������������<RUBY text="������">�ö���</RUBY>�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 1000, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 1000, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
���������䣬��Ĩ��Ӱ��Ӱ�Χ����������ʧ�ˡ�
��ʮ��ͻȻ��������Ҳδ���¡�

��������ʹ����ħ����
��ֻ�������÷��������ѡ�

��Ȼ���������ļ�����������ת���ܹ����쳣������
�����ۿ�ֻ����������ʧ��һ�㡣
����פ�������߼Ⱦ����־�㵡�

��ֻ�в������������ǺŲ�ӵ�еĳ������ܡ�
����������Ϯ���ˣ�

{	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���Ұں����ơ�
����ʹ�˽����ǹ�����ν�ĵֿ���

���´μ�����Ĩ��ɫ��˲�䣬�������������жϣ�
Ҳ�����Ը�̾�䲻�ϳ���
��
��Ȼ������û��������

���������ߵ���Ӱ�����ڱ���������ġ�
�����޵�ͷ�ϡ�

{	CreateSE("SE01","se����_냇��_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 200, 600, Axl2, false);}
�����������ŵض������������֡�
��ָ����ֵ��ǡ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se����_냇��_�Ѱk��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1240a01">
�����ѡ�!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1250a00">
����ô��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
������ֹ����ʱ�䶼û�С�

{	CreateSE("SE02","se����_냇��_������");
	MusicStart("SE02",0,1000,0,1250,null,false);}
�����ǺŽ������Ź�����ִ������װ�׵����ڡ�

����Ȼ������ʮ�����������������ⶼ����������

{	CreateSE("SE02a","se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);}
�����ڵľ��ޡ�
������Ц������������������������


������Խ��������ŭ�𣬹���߶��ٶ۵ĽŲ��򲻿���
׷�ϵĵ���׷ȥ��ȫ����¶���ڻ�֮�¡�
��������û�������Ƶ������ϣ����Ǻ������š�������
�㿪�ȴ��ŵ����������ҹ���з��衪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02a", 1000, 0, null);
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�\Ļ", 16000, "#FFFFFF");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}ɫ��");

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1260a01">
��������
�������ˣ���

//��������
<voice name="����" class="��������" src="voice/ma04/020vs1270a01">
���Ǹ����ѡ����Ͼ�Ҫ�����ˣ�
����<RUBY text="����������">֮ǰ�ļһ�</RUBY>һ����
���ڱ���������ֹ�����У���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1280a00">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
���������������һɲ�ǣ������ش��ʱ�䶼ʡ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	Move("�}��*", 150, @-60, @-200, Dxl2, false);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);

	DrawDelete("�}�\Ļ", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se���L_��҆��_�Ƅ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
��׷������ҹ����ҫ����Ӱ������ǰ���������ľ����
���ҽ�һ����׷����������ȥ��

���ǽ����Թ���ǰ�е�Ŀ�꣬���ı�Ӱ�����ӽ��еĴ�
СҲ<RUBY text="��������">û������</RUBY>��
���ҷ�Ҳֻ����ͬ�����ٶȷ��С�

��������˻��ǽӽ�����׼Ŀ�ꡣ
������̫����

��������ȫû�н�ע�����ֵ�����ߡ�
��ֻҪ׷��������Ҫ�ҵ�©����ʮ�������ˣ��ҽ��ٹ�
ͷ���ĵ��ж�׼ĳһ�㡣

����ס�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓ġ�������`��
	CreateColorEX("�}ɫ�\", 10000, "#000000");

	CreateTextureSPadd("�}�݄���", 6000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreatePlainSP("�}��д", 5000);
	SetBlur("�}��д", true, 3, 500, 80, false);

	Fade("�}ɫ�\", 300, 1000, null, false);
	Zoom("�}��д", 500, 1200, 1200, Dxl2, false);

	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", false);

	WaitAction("�}ɫ�\", null);

	Delete("�}��д");
	Delete("�}�݄���");

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(10010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE04a","se���L_����_��ꪏ���02");
	MusicStart("SE04a",0,1000,0,850,null,false);
	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}ɫ�\");

	CreateTextureSPadd("�}�ݻĸ�", 13010, -100, -100, "cg/ev/resize/ev909_��҆��_m.jpg");
	CreateTextureSP("�}�ݻ�", 13000, -100, -100, "cg/ev/resize/ev909_��҆��_m.jpg");
	Zoom("�}�ݻĸ�", 0, 1250, 1250, null, true);
	SetBlur("�}�ݻĸ�", true, 3, 500, 80, false);
	FadeDelete("�}ɫ��", 150, false);

	FadeDelete("�}�ݻĸ�", 1000, false);
	Shake("�}�ݻĸ�", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}�ݻĸ�", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1290b02">
����ŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
�������������������б�ˡ�
����Σ�յ�ƽ���ϳ����ķ���һ�������޴������
�������������۷������䵽���ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateSE("SE03","se���L_��҆��_ܞ��01");
	MusicStart("SE03",0,1000,0,750,null,false);
	CreateColorSP("�}��ܞ", 30000, "#FFFFFF");

	Wait(10);
	Delete("�}�ݻ�*");
	CreateTextureSP("�}��", 2000, Center, -230, "cg/ev/ev122_�R��������҆��.jpg");
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("�}ɫ�\");
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
��һ�뱻���ڵ������Ľ��и�ǳ�ˡ�
���Ѿ��ɲ������˰ɡ�������������̽���ˡ�


������Ť����Ʒ���Ͽ�Ϯȥ��
������һ��ҲҪ��ϧ��һ˲ҲҪ��ϧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1300b02">
����Ҫ������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_��҆��_����05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev910_��҆����Ԫ���å�.jpg");
	Zoom("�}��", 0, 1000, 1000, Dxl2, false);
	Request("�}��*", Smoothing);

	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
����ʿ��е���
���в���������ǹ�ڶ�׼���ҡ�

��û�бܿ���ʱ�䡣
��Ҳû�ո��˵��ɱ�С�

�����޷�ά��ԭ״��˫���������ʮ�ֽ�����
���������Լ������������˶���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݣ�", 4000, Center, Middle, "cg/ev/ev503_�����i������.jpg");
	Fade("�}�ݣ�", 300, 750, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0000]
������̫����
����ȫ����Ϊ��ͷ��

����͸��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down2(20000,@0, @0,2000);
	SL_downfade2(10);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 3100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}ɫ�\");
	Delete("�}�ݣ�");

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
����׼װ������Ȼ��ɵ������Ѻ۵�һ����������ȫ��
͸��ն�ϣ���������屻һ��Ϊ����

�����ҵĹ��ԣ�ʹ���ײ���˵ر�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1310a00">
������
���������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
����������Ե���ʶ���˻���������Զ����ȥ��
���к������ڽ��Եģ��Ľ����ӡ�

��������
������������ĺ����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1320a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á����Ӥ����
	CreateSE("SE01","se�ճ�_����_���_����");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1330a00">
����������?!��

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/020vs1340b48">
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
������΢΢������
�������ɢ�š���û�п����ҡ�Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/020vs1350b48">
�������ն�������������

//�����B��
<voice name="���B" class="���B" src="voice/ma04/020vs1360b48">
���ն���������
���ڡ��������𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1370a00">
���ǣ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/020vs1380b48">
������������
���ܾ��á��������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
�������š�
�������ܣ����ĵܵ�����Ҳ΢���������ţ�Ť�������塣


�����������ţ����þ��ˣ�
��
���ᴩȫ��İ��ĸУ����Ҳ������ڵء�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1390a01">
����������

//��������
<voice name="����" class="��������" src="voice/ma04/020vs1400a01">
����û������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1410a00">
��ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_냇��_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, Axl2, true);

	CreateTextureSP("�}�ݻ�", 4900, -680, -850, "cg/ev/resize/ev122_�R��������҆��l.jpg");
	Move("�}�ݻ�", 6000, @0, -570, DxlAuto, false);

	WaitKey(300);

	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
���һ�æ̧��ͷ��

����������?!

�����Ȼ�ؿ��Ź��
�����������Ѿ����ˡ�

�������ġ�ƾ������ľ������ܶ϶���
���⸱����ֻ�ữΪ��м��

����ô�����ѡ�Ӧ��Ҳ��һ����𡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
//��������
<voice name="����" class="��������" src="voice/ma04/020vs1420a01">
��<RUBY text="��������">�������</RUBY>��
��ֲ�롰�ѡ��ģ�����������ߣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1430a00">
��!!��

{	CreateSE("SE01a","se����_냇��_�Ѱk��01");
	Fade("�}ɫ��", 200, 750, Axl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1440b02">
����ŶŶŶŶŶŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_rightdown2(5100,@0, @0,1500);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");

	Delete("�}ɫ��");
	Delete("�}�ݻ�");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE01a","se���L_����_�z_���04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݸ�", 110, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateTextureSP("�}��", 100, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Request("�}��*", Smoothing);
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Zoom("�}��*", 0, 1300, 1300, null, true);
	SetBlur("�}��*", true, 3, 500, 30, false);
	Delete("�}ɫ�\");
	Shake("�}��*", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��*", 200, 1100, 1100, null, false);
	FadeDelete("�}�ݸ�", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1200]
�����͵���ͬʱ��á�
�������ն��Ҳ��ͬһ˲�䡣

�������ս��¡�
����Ϯ���ߵ������ཻ��

����פ���Ľ�У��
���������Ľ��а���ȫ�����ʿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1210]
//��������
<voice name="����" class="����" src="voice/ma04/020vs1450a00">
������������!!��

{	FwC("cg/fw/fw���`���å�_����b.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1460b02">
�������ǰ���
�������ǰ�!!��

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1470b02">
����Ȼ����Ȼ���ҵ�ͬ������
���ڹ��������ƫƧ�ط�����

{	FwC("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1480b02">
�������˼�����?!
������������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/020vs1490b02">
��Ϊ��ĸ�״�½����Ӧ��һͬΪʥս��ս��
���ǣ�
��������������������������!!��

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/020vs1500a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	StL(1000, @-75, @0,"cg/st/3d���������_����_�i��.png");
	StR(1100, @75, @0,"cg/st/3d�����˜�_����_���L.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1220]
���ö����ȸ�״�⻰�����༥Ҳûʲô����ɡ�
����Ϊ���ǲ�������Ϊ�޹��������������ġ�
����Ϊ�����ҹ�����ͬ��ս������������ġ�

��Ȼ�������ķ�ŭ����ʵ�ġ�
������Ҳ�ǡ�

������Ҳ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_�����01");
	SL_down2(5100,@0, @-288,2000);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_downfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1222a]
��һ��һ�����������˷�ŭ��
���ǰ���һ���������ű�ʹ��

�����޻��ʵ������������Һ�壬����Ѫɫ
���䵽�����ϡ�

����������<K>
��
����֮����

�������Źرա�
��һ�У�ʲô������ʡ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���ء����Ф���`��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_centerout2(5100,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centeroutfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se����_Ѫ_Ѫ���֤�01");
	SL_centerdamN(@0, @0,1500);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1230]
���ҡ���
��ɱ�����Ρ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_021.nss"

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
	Fade("@�}����", 800, 250, null, true);
	Wait(200);
	}

}