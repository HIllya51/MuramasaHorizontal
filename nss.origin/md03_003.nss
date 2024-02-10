//<continuation number="1940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_003.nss_MAIN
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
	#bg057_���ӘS������_03=true;
	#bg045_���ӘS�ǹ������g_03a=true;
	#ev222_�衩���_a=true;
	#ev222_�衩���_b=true;
	#ev222_�衩���_c=true;
	#ev222_�衩���_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_004.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#md03_003=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md03_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================

..//������ָ��
//ǰ�ե����롡"md03_002.nss"


//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg057_���ӘS������_03.jpg");
	FadeBG(0, true);

	CreateSE("�i��", "se����_����_ľ����ä���i��01_L");
	MusicStart("�i��", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030010a07">
���ɵúã���硣��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030020a00">
��ʲô����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030030a07">
�����Ǹղš�
����Ȼ�뵽ץס�׵������߷������
�������ϼ�޻��ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030040a00">
��Ŷ�����Ǹ�������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030050a00">
����Щ�����Ļ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030060a07">
���ǡ��𡫡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030070a07">
������������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030080a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�i��", 1000, 0, null);


//���衩����g��bg045

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg045_���ӘS�ǹ������g_03a.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������ֳ����һ�����䡣
�������ƺ���ܥԽ�������������ľ�ס����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��˽��

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030090a07">
����֮�к��������ˡ�
������û������ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030100a07">
������Ъ�Űɡ�
�������쿪ʼ��Ҫæ��һ����Ϳ�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������̫��һ��̾������
��������������<k>

���Ҵӱ�����ס�����Ĳ��ӡ�

��ǿ�������������������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se����_�n��_ܞ��01", 1000);


//���衩����ȥ
	DeleteStL(300,false);

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030120a07">
��������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030130a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��衩���u���

	CreateTextureEX("�u���", 5000, @0, @0, "cg/ev/ev222_�衩���_a.jpg");
	CreateTextureEX("�u��죲", 5000, -512, -110, "cg/ev/resize/ev222_�衩���_al.jpg");
	Request("�u��죲", Smoothing);
	Zoom("�u��죲", 0, 800, 800, null, true);
	Fade("�u��죲", 1000, 1000, null, false);
	Move("�u��죲", 2000, @100, @-300, Dxl2, true);
	Fade("�u���", 0, 1000, null, true);
	Delete("@OnBG*");


//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	CreateTextureSP("�u���", 5000, @0, @0, "cg/ev/ev222_�衩���_a.jpg");
	CreateTextureSP("�u��죲", 5000, -512, -110, "cg/ev/resize/ev222_�衩���_al.jpg");
	Request("�u��죲", Smoothing);
	Zoom("�u��죲", 0, 800, 800, null, true);
	Move("�u��죲", 2000, @100, @-300, Dxl2, true);

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================


	FadeDelete("�u��죲", 1000, true);
	Wait(1000);
//�����S���v���ƤϤޤ�δ�Q�ǡ����⤽�⡸�ѐۡ��ä�냇�ݤ���ʤ� inc�Ѿ�
	SoundPlay("@mbgm19", 0, 1000, true);

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030140a07">
��ѽ��������!?
���������ʲô��������!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030150a07">
���ȡ�ͣ�֣�ͣ��ͣ�֣���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030160a00">
���𳳡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ѹ��ס��ƴ�������Ľ�С�����������������
��ͬʱ��һֻ�ֲ�ͣ�ذ��������·���

�����·����ַ�Ӧ���൱�����������ȴû�жԴ�
��ʾ���͡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030170a07">
���������ʲô������!?��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030180a00">
�������㲻���ף���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030190a07">
����˵�ǲ������أ����Ǻ��������ء�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030200a00">
���ַ��㡣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030210a07">
���ۡ�������Ȼ����
����Ҫǿ�ҿ��飡������
Ҫ�úð�������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030220a07">
��Ů��������Ҫ����׼���ģ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030230a00">
���Ǿ�׼���ɡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030240a07">
�����ڱ��ַ����п��ܽ���׼������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030250a00">
������������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030260a07">
����ֹ���ӱ��˵Ļ�������
������Ҫ˵��һ�°�������������Ϊʲô��
����ô��������ͻ���ͽ������˵ȼ�!?��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030270a00">
��˵������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ظ�������ʡ�
���ֵĶ���ȴ���ɲ�ͣ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md03/0030280a00">
����˵��������ɣ�����衣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030290a07">
��˵��˵��ʲô����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030300a00">
�����Ҵ��������Ʒ�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ž�װ�ı��ƣ���Խ˵Խ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md03/0030310a00">
�����ҵ���������������һ����˸��٣�
�������Ǻ��֡���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030320a07">
��������Ϊ�Ǹ�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030330a00">
����ʲôʱ���Ϊ��������ˣ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030340a07">
���ǡ���ֻ��������ʽ���
���Ҿ���������ݸ��Ҳ�ð��¡���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030350a00">
��������¡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ҵ�����ס¶�����鷿��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030360a07">
��ѽ����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030370a00">
�������ˡ�������衣
������ǿ��һ�顣��

//��������
<voice name="����" class="����" src="voice/md03/0030380a00">
���Ҳ���Э���㡣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030390a07">
���š����š�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030400a00">
������ҪЭ���ҡ���

//��������
<voice name="����" class="����" src="voice/md03/0030410a00">
��Ϊ�����ȹ⡣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030420a07">
���š�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030430a00">
�������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ץס���ӵ���ʩ��������
��<RUBY text="������">��ȷ��</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md03/0030440a00">
����û��Ҫ�������������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030450a07">
����������
����Э������ƴ��������ȫ��Э������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030460a07">
����˵�ǲ����ҵ�Ŀ��!!��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030470a00">
����֪����
��ֻҪ�㲻��������˳�򣬾����ˡ���

//��������
<voice name="����" class="����" src="voice/md03/0030480a00">
����ֻ��Ϊ����ж���
��ܥԽ������ֻ�жԹ�����֮ʱ��
�ҲŻ�����㡣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030490a07">
���ǡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030500a00">
�������𡭡�
�����鷳����

//��������
<voice name="����" class="����" src="voice/md03/0030510a00">
��������������Ҫ�͸ո�<RUBY text="��������">��Щ�һ�</RUBY>������
��ÿ���˶���������ֹ���м�����ë������
����˵��Щ��������Щ���ˡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030520a07">
�����������������ء���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030530a00">
����λ�ӹ���֮�ס���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030540a07">
���ҡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030550a00">
�������񶼾����ۡ�
���Һ���ⲻ����ѧ��С�������顣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030560a07">
���������ǵ��ǣ�
�������Ծ����Ǻܱ�Ǹ����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030570a07">
�������Ҿ�����Ϊ���ٻ�ȽϺð��¡�
��������˵���������ֽ������
��Ҳ������ж�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030580a00">
���ߣ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030590a07">
����ˡ����Ǹ�����
���Ҿ��룬�������ԭ���ң�
�һ�ܿ��ĵġ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md03/0030600a00">
���������ˡ�
���ȶ���ʵҲû���ı��ˡ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030610a00">
����Ȼ��ˣ��Ҿ;������ø��ٵ���ݺ��ˡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030620a07">
���á���
������ϲ������������ǰ���ĸ���ˡ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030630a07">
����һ���Ჹ����ģ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030640a00">
������
���Ǿ�������ʵ���š���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030650a07">
���õġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030660a07">
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030670a07">
��������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030680a07">
����!?
���Ѳ����ҵ�Σ��״��һ�㶼û�н��!?��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030690a00">
����������ʵ���š���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030700a07">
����������������
������Ǹ�������˵�Ǹ���Ҫ������������
Ҫ�����మ��һ�������̲��С�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030710a00">
������Ҫ����

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030720a07">
��������
���ǡ����������١�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030730a07">
����硭��ϲ�����𣿡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030740a00">
��������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030750a07">
�������!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030760a07">
��ֻ����Ϊ�����𡫣�
������ô���ַ��ɰ������𡫣���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030770a00">
����������˵��Ҳ������������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030780a07">
����ȫ����!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030790a07">
������
����Ϊʲô��ô������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030800a00">
��ֻ���������������ס��
����ס�����������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030810a07">
����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030820a00">
�������ҵĵ��ߡ�
��Ҫ������һ�㡣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030830a07">
��������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǲ��

	CreateTextureEX("�u���02", 5100, @0, @0, "cg/ev/ev222_�衩���_b.jpg");
	Fade("�u���02", 1000, 1000, null, true);
	Delete("�u���");

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���դ�
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030840a07">
��������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030850a00">
����������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030860a07">
���ǡ��Ǹ���
���ղŵĻ�����˵һ�Ρ��ϣ��� ����塣��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030870a00">
������壿��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030880a07">
����˵һ�Ρ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030890a00">
�����������ҵĵ��ߣ�
������衣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030900a07">
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030910a07">
������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030920a00">
������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���о����������ˡ�
���������ˣ��ò��Ź���Щ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030930a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030940a00">
�������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030950a07">
�������Ǹ�������ô��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030960a00">
��ʲô����

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030970a07">
�������������µ�ʱ�򡭡���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0030980a07">
�����������֮��ġ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0030990a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������ָ�����������һ��ͷ����������档

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031000a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031010a00">
�������������𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031020a07">
���Ǹ��˵������ʵ���ŵġ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031030a00">
������һ��˵�����ԡ�
��������Ҳû��ϵ��ֻ�������㰲������
����˵������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031040a07">
������ħ������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031050a00">
������˳��Ҳͦ�õġ�
����˵������ʲô����������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031060a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031070a00">
�����Ǹ�������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031080a07">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����µ���Ů������ȻȾ������ɫ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md03/0031090a00">
���������굽�Ҵ��Ϲ�����

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031100a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031110a00">
���Ѳ��ɣ������ʱ����ĳ��ֵĻ���
��������޴����𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031120a07">
��������ֹ�ߐu�����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031130a00">
�����𣬲���衣
��������δ�����£�ȴ������
�������𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031140a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031150a00">
������ؿɰ�������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031160a07">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������Ұ���Ц��Ļ������������۾���
��������̫�����ߣ���������Ⱦ�����ɫ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md03/0031170a00">
����������ο���ɣ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031180a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031190a00">
��û���𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031200a07">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���ҵ������ϲ������β���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031210a07">
��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031220a00">
���ش��ҡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031230a07">
��û��û�С�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031240a00">
��������

//��������
<voice name="����" class="����" src="voice/md03/0031250a00">
������𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031260a07">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����������涵ص�ͷ��
�������������ѡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md03/0031270a00">
����������
�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����ָ�����������
����С�ı��͵ع���������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031280a07">
��ѽ��������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031290a00">
����׼����������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031300a07">
�������⡢���һ������׵ġ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031310a00">
����ʪ��Ͳ��ý�ȥ��
��������ȻҲ���ǲ���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�������������žƣ���˵����

�����淽��Ӧ�������ֻ������Ĺ��ܰɡ�
��
�����鷳��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md03/0031320a00">
���Լ�Ūʪ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Ҷ�����ο��һ����֪��С�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031330a07">
��������������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031340a07">
��Ҫ��ô����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031350a00">
����ô�����С�
����������ʲô��������

//��������
<voice name="����" class="����" src="voice/md03/0031360a00">
����ʪ�Ļ�<RUBY text="������������">����Ͳ����</RUBY>��
��ֻҪ���Ҳ�����������ˡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031370a07">
��������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031380a07">
���š����š�
��֪���ˡ��������ԡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031390a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����ǹ������������ģ�
�����ǲ����������ϵ�û�оܾ���

��������ô���ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031400a07">
����������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031410a07">
�������š�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031420a00">
������������

//��������
<voice name="����" class="����" src="voice/md03/0031430a00">
����ô�ˣ��ҿ����������ˡ���

//��������
<voice name="����" class="����" src="voice/md03/0031440a00">
��������ʲô����

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031450a07">
�������ڱ�á������ø�硭��
�����������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031460a07">
��������ϣ����ʪ�󡭡�
�һ�ġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031470a07">
����Ϊ�������ǡ���
���������ġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031480a07">
����������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031490a00">
������������

//��������
<voice name="����" class="����" src="voice/md03/0031500a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�������ĺ�����ʼ������Ұ��Ƥ��
��ʼ������
�����������������ˡ�

������ȥ������Ȼ���̡�
��
���������ǣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031510a07">
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031520a07">
���������š���
�������⡭����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031530a07">
���������������𣿡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031540a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������̽�����������
���������ȣ�ˮ��ʮ�㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md03/0031550a00">
������ʲô���¡�������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031560a07">
��˵�Ǳ���̫�����ˡ���
����ֻ��˳Ӧ������Ը������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031570a00">
����˵ȷʵ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���ֲ���ˮ��ͷ��š�˾ͻ��ˮ��
������˵Ҫʪ����ʪ�İɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031580a07">
������ι����
����硭��Ҫ�����˰ɡ�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031590a00">
��������

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031600a07">
����硭������أ�
�����ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���ѹ����������������ϡ�

����֪Ϊ�Σ����ֳ嶯<RUBY text="����">ٿȻ</RUBY>�ܹ�������

���������ˡ�
������Ϊ���ַ���һ����ô���ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/md03/0031610a00">
���ֿ�˫�ȡ���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031620a07">
�������š�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031630a00">
�����������ˡ�
������������ơ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
������֧����������衣
����嶯������������������

��ʡȥ�Դ�Ů���չˡ�
���˿�������ǡ�

����¶�������ٽ�����ȥ��
�����롣

���ᴩ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǲ��
	CreateTextureEX("�u���03", 5200, @0, @0, "cg/ev/ev222_�衩���_c.jpg");
	Fade("�u���03", 1000, 1000, null, true);
	Delete("�u���02");

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031640a07">
������������˻˻˻������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����Ů����������˹��͡�
����ҵ����޺���ͨ��������С�챼ӿ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/md03/0031650a00">
����ȥ��Ŷ����
��֪���𣿡�

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031660a07">
������˻�����š�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031670a00">
���ý���
������������𣿡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031680a00">
����֪���𡭡�����衣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031690a07">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����֪��������ʹ���ǳ��̫ǿ����ȫ��˵������ԣ��
��ֻ����ʪ������������ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/md03/0031700a00">
����Ҫ�������ˡ�����

//��������
<voice name="����" class="����" src="voice/md03/0031710a00">
����Ҫ�����Ϊ���С���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031720a07">
����������˻˻!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	CreateColorEX("�ץե�", 15000, "WHITE");
	Fade("�ץե�", 300, 1000, null, true);
	CreateTextureEX("�u���04", 5000, @0, @0, "cg/ev/ev222_�衩���_d.jpg");
	Fade("�u���04", 0, 1000, null, true);
	Fade("�ץե�", 300, 0, null, true);
	Fade("�ץե�", 100, 1000, null, true);
	Fade("�ץե�", 1500, 0, null, true);

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031730a07">
��������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031740a07">
��������˻������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031750a00">
��������

//��������
<voice name="����" class="����" src="voice/md03/0031760a00">
���߳��ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����Ԥ�����෴��
�����ν������˵Ĵ�Ů����Ȼ��ô���׾͡���

�����ǣ��������Ӧ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/md03/0031770a00">
������������

//��������
<voice name="����" class="����" src="voice/md03/0031780a00">
������Ů�˲���ԭ�¡���

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031790a07">
����������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031800a00">
����Ȼ���ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�������������¸�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/md03/0031810a00">
�����������ͷ�֮ǰ��
���ȵ��ﶥ�塣��

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031820a07">
���������ﶥ�塭������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031830a07">
���ҡ����ҡ��������ղš�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
����־���塢��ʶ���ʵ�˵�ź�����
����Ů�����ƺ���δƮ����ʵ��

�������ͫ����ӳ���ҵ����ݡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031840a07">
����硭����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0031850a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
����ǹ���

���������л�Ҫ����
���������Լ��ڴ��Ļ�Ҫ����

����<RUBY text="����">����</RUBY>�ļ�ֵ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/md03/0031860a00">
���һ�̸���ġ�
���������涼�̵�����

//��������
<voice name="����" class="����" src="voice/md03/0031870a00">
�����ȡ����ӳͷ���ʼ����

{	NwR("cg/fw/nw�衩��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031880a07">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
������������ͷ���û�ˡ�
��Ҫ�����ء������ĵ�����

����ҹ������
��ֻҪ��ʱ�䣬û�н�����˵����⡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//�����������ä�������㤽����

	CreateColorEX("�\", 15000, "BLACK");
	Fade("�\", 1500, 1000, null, true);


	SetNwC("cg/fw/nw�衩��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031890a07">
����������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031900a07">
���ۣ���Ҫҧ�������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031910a07">
���ȡ�������ָ���������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031920a07">
������˻������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031930a07">
���һ���������Թ������ġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0031940a07">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1500, 1500);
	}
//============================================

}

..//������ָ��
//�Υե����롡"md03_004.nss"