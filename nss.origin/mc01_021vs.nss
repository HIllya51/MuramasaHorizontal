//<continuation number="470">

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

scene mc01_021vs.nss_MAIN
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

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_021vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc01_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,378);
	CP_SpeedChange(0,372,null,false);

	CP_PowerChange(0,650,null,false);

	CP_HighChange(0,1200,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,1,null,false);

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	FrameShake();

	CreateTextureSP("�}�ݿ�", 100, InLeft, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	Move("�}�ݿ�", 0, @0, @144, null, true);

	CP_HighChange2(60000,1300,null,false);
	Move("�}�ݿ�", 60000, @0, @144, null, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,600,0,1000,null,true);
	MusicStart("SEL01b",2000,600,0,1500,null,true);

	Zoom("�ϱ���", 150, 1500, 1500, Dxl2, false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0010a01">
��������û�°�!?��


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0020a00">
����������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0030a00">
���������٣�����û�£�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������˱�֯��������ش��е�ѯ�ʣ��������
�����Լ���˵�Ļ���
���ͷ���ͨ����ͬ������������ּ�޷�����ȷ����
�����������Ҳ�޷������ˡ�

������ľ��ν�һ���񻯣�����������࣬�ƺ�ֻ
Ҫ��������ͻ��г�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0040a00">
���е�ʧȥ���ɵĵط��ƺ�����ɢ��������
�������Ӻ����ȶ�����޷�����֮ʱ�����൱
Σ�հɣ�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0050a01">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ֻ��׹�䡣
�����ߵķ���ֻ����ת���󱳵ķ����ƽ������޷�
�����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0060a01">
��������
�����������������ֶΣ���Ȼ�ö�����

//��������
<voice name="����" class="��������" src="voice/mc01/021vs0070a01">
���������޻���˵��
�����̽Ѱǰ�������ǵû��ݵ��ɹ�Ϯ��
�����𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0080a00">
����Ҳû��˵��������ǰ����
���ö���ս�������ߣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 100, null);
	CreateTextureEX("�}���ɹ��u��", 18000, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");
	SetTone("�}���ɹ��u��", Monochrome);
	Fade("�}���ɹ��u��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ɹ�Ϯ����������˵��ν��Ԫ��ս��֮ʱ����ս����ʼ
ʱ�ɹ����߾�ѹ���Ե�ʤ���ձ���ʿ��ԭ������ɹŵ���
���˶��Գ�ɫ���ó����ս�����⣬Ҳ�й����ö������
�ء�

���ܽ�ϸ΢�Ĳ��˱�Ϊ���ˣ�����ת��Ϊ�����˵ľ綾
���һ������Ч�ı����ɡ�
������������ʹ���������ʷ��������ʹ�õ�����������
������Ҳ��ʵ�顣

����δ����������֮�䵹����������������ϵ����ӡ���
����ӲҪ�ٳ�һ���������ҵľ����ù��������ӣ���Ԫ��
��֮�⣬����������ңԶ�Ŵ�ʷ�ķ����ˡ�
�����ң�����û������ʹ�ù���������

��������Ϊ�����ֶ����������漫��Υ���������ĸ�ʱ��
�ĸ����ҵ����߶��ض�����������еġ�����Ϊս������
�ġ��������۰ɡ�


����ʿӵ�б���ͨƽ�����������������Ա����Ϊ��
�ڵ�ģ����
����������ʿ��ô���ܻ�ʹ�ö�ҩ�������ֶεص�ȡʤ
���أ�

��������ʶ��Ӧ����ʿ������Ҳ�����õĴ�ͳ��

��
���ܾ��á����Ǹ����ﲢû��������ʶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 750, null);
	FadeDelete("�}���ɹ��u��", 1000, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0090a00">
������ô����Ҳ�����н�չ�ɡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0100a01">
���ǰ����Ǿ����Ǽһ��ƣ�����ص��ذɡ�
���������ڡ�����Ҫ����Ǹ���ҩ�����⡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0110a00">
������ʲô����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0120a01">
��������ʲô����������ȫ��֪��
����Ȼ�ܲ��������ұϾ�û��ѧ��
�Ƿ���֪ʶ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0130a00">
������û��
�����ǣ�Ӧ�������׶�ҩ�����������
�������ʲô�ط���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0140a00">
���ںδ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ��֪֮���꣬����ѧ�̶Ȼ�����������ġ�����
ͳ��Ϊ��������ȴ�ǳ��ḻ��
��������֢״�����������ų���������������ʵ�ʶ���
�Լ��ƻ��Ӵ�������֯�ĸ�ʴ����

�����һ�������ƻ�ѪҺ���Ӷ�������ܵ�ѪҺ���أ�
������Ϯ������񾭵��񾭶��ء���
�����֪������һ�ֶ���˵���������ж��������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0150a01">
�����񾭶���
����˵�Ǵ��˿ڴ�����Ѫ����ɢ������
��ɥʧ�������ܵ����񾭡���

//��������
<voice name="����" class="��������" src="voice/mc01/021vs0160a01">
�����Ҽ���Ҳ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���񾭶���
���Լ�������ĩ�����ֳ��쳣������֢״��

��ӡ��ģ����֪ʶ�У���֮������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0170a00">
���������඾��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0180a01">
�����ࣿ��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0190a00">
��������֮�������Ǻ���Ķ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����඾��
����ʮ��ǰ���ձ���ĳ������ԭ�Ĳ�ʿ�״γɹ�����
��ȡ��������

�����ձ���֮���Ի�������һ��������������żȻ��
���Ǳ�Ȼ��
���������ձ����Թ������ͷǳ���Ϥ��ʳ�ġ�

��<RUBY text="������������������">����������������ζ</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ�\", 500, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0200a01">
��Ҳ����Ҳ����˵����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0210a00">
���մ���ȥ���ܿ�ͻ�������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0220a01">
������ⶾ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0230a00">
������Ļ��ܺ��������õ��𣿣�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0240a01">
������Ӧ�����С�
����Ȼ��Ҫֹͣȫ���ж������Ѽ����ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������˵�����ڲ���������ʵ�С�
����ʹ�����ֹ۵����Ϊ����������ǣ�Ҳ������ȡ��
�ⶾ��ʱ�䡣

�����඾������������δ���˹��ϳɵĳɹ�����������
����Ϊ����������ս�����ڼӹ��Ļ�����ʹ����ֱ�Ӵ�
����������ȡ�ġ�һ�㾭����ȡ�ĺ��඾�ɡ�


��������˵ز��Ķ��֡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0250a00">
���ҿɲ���Ϊ���˻�ͬ�������ǡ�С��ֹ���ģ�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0260a01">
��������ˣƶ���ʱ���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0270a00">
���ܹ��ӻ����������𣿣�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0280a01">
������Ӧ��û�����⡣
�����Ų��˶�á���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0290a00">
����ս�پ��ɣ�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0300a01">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��Ҳ����˵ʱ���ܵ����ơ�
������ʱ������ԭ���ʹ��ڡ�

������ʱ�����Ƶĳͷ��Ǵ��п���ʹ�����Լ�
���������������ת��Ϊ�����������
��
�����������ü��ˣ����Ǹм�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ���Ӥ����٤��g����
//������äȥ����Ĥ����ꡣ
	CreateTextureEX("�}�ݿ��ݳ���", 100, InLeft, -945, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SE01a","se���L_����_�ռ�����01");
	CreateTextureEX("�}�����ر���", 200, InLeft, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	SetVertex("�}�����ر���", left, middle);

	$�������ǉ��� = 2.50;
	$�������ǽM�z���� = $�������ǉ��� * 1000;

	$���Ƅ�Ӌ����ʂ� = ImageHorizon("�}�����ر���") * $�������ǉ���;
	$���Ƅ�Ӌ���{���� =  $���Ƅ�Ӌ����ʂ� -1200;
	$���Ƅ�Ӌ���a���� =  $���Ƅ�Ӌ���{���� * (-1);

	Zoom("�}�����ر���", 0, $�������ǽM�z����, 1000, null, true);

	Wait(1);

	SetBlur("�}�����ر���", true, 2, 500, 80, false);
	SetBlur("�}�ݿ�", true, 2, 500, 30, false);
	SetBlur("�}�ݿ��ݳ���", true, 2, 500, 30, false);

	CP_SpeedChange2(0,372,null,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",900,1000,0,850,null,false);
	Fade("�}�����ر���", 300, 1000, AxlAuto, false);

	Move("�}�ݿ�", 300, @-512, @0, null, false);
	Move("�}�����ر���", 1800, @$���Ƅ�Ӌ���a����, @0, AxlDxl, false);

	CP_AziChange(1800,21,AxlDxl,false);
	CP_RollBarMove2(600,87,AxlAuto,true);

	Wait(200);
	Shake("@CP_Frame", 300, 0, 20, 0, 0, 1000, Dxl3, false);

	Wait(400);
	Shake("@CP_Frame", 300, 0, 30, 0, 0, 1000, Dxl3, false);

	CP_RollBarMove2(600,-2,DxlAuto,false);

	Fade("�}�ݿ��ݳ���", 0, 1000, null, true);
	Delete("�}�ݿ�");

	Wait(450);
	Shake("@CP_Frame", 300, 0, 60, 0, 0, 1000, Dxl3, false);

	SetVolume("SE01a", 900, 0, null);
	Fade("�}�����ر���", 150, 0, DxlAuto, false);
	Move("�}�ݿ��ݳ���", 150, @-512, @0, Dxl2, true);



	FrameShake();

//�����T������
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("�}�ݺ���", 1100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Move("�}�ݺ���", 0, @-330, @30, null, true);
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 50, 50, null, true);
	Move("�}�ݺ���", 300, @30, @-30, null, false);
	Fade("�}�ݺ���", 300, 1000, null, true);

	OnSE("se����_���å��ԥå�_��å�����",1000);
	CockPit_LockSet(@-300,@0);
	CP_LockOnFade(300,"on",false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��ԭ��Ϊ�Ѿ���ȷ��ʤ�����Ʊ����׸ı䣬�ұ��Ƶ�
��Ͷ��·�����˿��������������ơ�
����������ȥҲ�������һȦ��

����Щ����ֻ����Ϊ�������ϵ������������Ļþ���
�����ǣ�ͻ�����ٶȺ����Ƶ�����ȴ�Ǳƽ���ǰ��
��ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

//�����å������`
	CreateTextureEX("�}��", 18000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Fade("�}��", 1000, 1000, null, false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/021vs0310b33">
��ѽ�������������ذ�����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����˵ķ�����������ʧȥ��������ʽ��
������Ϊ���ȵ��˷��𣬻�����Ϊ��������أ�
���ҼȲ�֪��Ҳ�������ס�

����Ӧ�öԸ���ֻ�е�����С�
�����ض��ֱ����綾�ĸ���Ҫ���Ӧ�ԡ�

�����ڣ���ʱ��Ӧ����������ר���ڷ��ء�
����Ȼ����ȻҲ��<RUBY text="��������">�Թ�Ϊ��</RUBY>�ķ�������

������ʹ���ĸ��Բߣ��ֶδ��·�Ϊ���֡�
��չʾ���˵�̫�����ɣ��򡪡������ؼ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ý����Կ���������Կ�


}

..//������ָ��
//�􄇼��ǌ������롡"mc01_021vsa.nss"
//����x�ǌ������롡"mc01_021vsb.nss"

//���x�k֫���`��
scene mc01_021vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ý����Կ�","������Կ�");
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
//�􄇼��ǌ������롡"mc01_021vsa.nss"
				$GameName = "mc01_021vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//����x�ǌ������롡"mc01_021vsb.nss"
				$GameName = "mc01_021vsb.nss";
		}
	}
}

