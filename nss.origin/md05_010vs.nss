//<continuation number="1380">

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

scene md05_010vs.nss_MAIN
{

	

	//CP_AllSet("����");

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
	#ev241_ɭ�ǰk�⤹�����_a=true;
	#ev241_ɭ�ǰk�⤹�����_b=true;
	#ev241_ɭ�ǰk�⤹�����_c=true;
	#bg204_�����ر���_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#ev242_���񼤤����k��_b=true;
	#ev242_���񼤤����k��_c=true;
	#ev242_���񼤤����k��_e=true;
	#ev243_�رܙC�Ӥ�Ȥ����_b=true;
	#bg001_��a_02=true;
	#bg204_�����ر���_01=true;
	#ev929_��������������=true;
	#bg202_�����ݳ�����ɽa_02=true;
	#ev241_ɭ�ǰk�⤹�����_d=true;
	#ev241_ɭ�ǰk�⤹�����_e=true;
	#bg107_��ʿɽ픻��b_00=true;
	#bg201_�����ݳ������нֵ�_02=true;
	#ev924_�y�Ǻ��|�I���ħ����=true;
	#ev238_�����̫ꖤ��¤Ƚ���_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_010vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_009.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//�����L�_ʼ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,716);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,557);
	CP_SpeedChange(0,548,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2981,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	//�������
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	CreateTextureSP("�}�ձ���", 110, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	MoveFFP1("@�}�ձ���",20000);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

//���������T��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���󷽣���ս�ƺ���Ȼչ����
����������������������������������Ѿ�װ��
�����ҵ�Ƥ����

��˦�����ŵĲ�����ҳ�����ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿɽ픤�
	CreateSE("SE00","se���L_����_���ϕN01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	SetVolume("SEL*", 10000, 0, null);

	CreateTextureSP("�}�ձ����r", 100, Center, InTop, "cg/bg/resize/bg106_��ʿɽ�h��b_00l.jpg");

	//�����ȥ
	CloudZoomFade(600,false);

	Move("�}�ձ����r", 800, @0, @-100, DxlAuto, false);

	Fade("�}�ձ���", 300, 0, null, false);
	Move("�}�ձ���", 300, @0, @200, null, false);
	Wait(300);
	MoveFFP1stop();
	Delete("�}�ձ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ִ�ɽ����
�����Ϸ�����һȦ���ҽ�<RUBY text="����">����</RUBY>ȫò�����۵ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��ˮ��������ɭ�֣������Υ���󥰥른�ࣿ
//���ĩ`�������Ȥ����ˤ�ϲ�ֹ����äݤ��}��
//�������ȤΌ��Ȥ���ΤǤ�����ʾ��
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",3000,750,0,500,null,true);

	CreateTextureEX("�}�ţ֣�", 18050, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("�}�ţ֣�", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureEX("�}�ţ�", 18100, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_a.jpg");

	Fade("�}�ţ�", 1000, 1000, null, true);
	Delete("�}�ţ֣�");

	WaitKey(1000);
	Cockpit_AllFade0();

	CreateTextureSP("�}�ţ֣�", 18000, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_b.jpg");
	Move("�}�ţ�*", 3000, @0, -340, null, false);

	Wait(2800);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,500,0,1000,DxlAuto,false);
	FadeDelete("�}�ţ�", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0010a01">
������ˮ��ɭ�֡�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ĵ���ܽӽ���ǰ����ʵ��
����͸�������Ӵ��۸��ӵ������γɵ����
���塪��Ҫ˵��ɭ��Ҳȷʵ���������Ϊ��

�����ǲ�û��������µĸ�ϵ����Ư���ڿ�����һ�㣬
֤�����������ֲ�����ɵ�ɭ�֡�
���������˷���ģ�͡�δ���֮ʱ���ǰ����ģ�͹Ǽ�
����ǰ�ľ����ĳ�̶ֳ���˵�����ơ�

��Ȼ������ֻ�ǹ����״����˵��
����������ʱ������һ���۲죬���뵽�Ķ���
���Ȼ��ͬ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�⡣�ڄ���
	CreateSE("SE01","se����_������_�������_ʼ_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateSE("SE01a","se����_������_������");
	MusicStart("SE01a",0,1000,0,2000,null,false);

	CreateTextureSP("�}�ţ֣�", 17000, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_c.jpg");
	CreateTextureSPadd("�}�ţ֣���", 17010, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_c.jpg");
	SetVertex("�}�ţ֣���", 790, 160);
	Zoom("�}�ţ֣���", 1200, 1100, 1100, Dxl2, false);
	FadeDelete("�}ɫ��", 600, true);
	Wait(300);
	FadeDelete("�}�ţ֣���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������<RUBY text="����">��ת</RUBY>��

�����������Ƕ�Ѩ���Ұ����ĥ��������
���졣����˵���������ڴ���ʯ���и�����졣
�����Ǹ���������һ�£���ɭ�֡���֮�䶯��

��֦��һ��Ϊ����
����һ�������������֦����
��������֦����������״������ƶ��š�

�������ط���֦�����ء�
��ɢ���ļ�֦��ĩ�˿�ʼ������һ�壬
�ص����ɡ���ȴ����չ���������״��

���Ǹ���̬ʹ�����뵽�˾޴�Ļ�е�������ǹ�����


������������Χȴδ�ܷ����������Ǻŵ���Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 5000, 500, null);
	SetVolume("SE01", 5000, 0, null);

	CreatePlainSP("�}��д", 19000);
	Wait(1);
	CreateTextureSP("�}�ݽ�", 17100, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	CreateTextureEXadd("�}�ݽ�", 17110, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("�}�ݽ�", 0, 500, null, true);
	FadeDelete("�}��д", 500, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/010vs0020a00">
���Ǿ��ǡ����𡭡���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0030a01">
�������š�����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0040a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0050a00">
������������������ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ڴ����϶��Ļش�������ӿ�ϸ��ӵĸо���
���һ��ǽ���ȥ�ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0060a01">
�������Ǹ�������<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0070a01">
�����ǵġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0080a00">
������������ǽ���
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ϊ����֮�������Ϻ��Ϊ����
�ĵ���ӵ���Ź㷺�������Ǹ����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0090a01">
���š�
����Ȼ�������š���
ֻ����������ȷ����ô˵��������

//��������
<voice name="����" class="��������" src="voice/md05/010vs0100a01">
�������������һ�������ٲ������ˡ�
�����������Ǿ��ǡ���<RUBY text="����">ԭ��</RUBY>����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0110a01">
�����ǽ��еġ�
�����Ƕ���ʦ�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 1, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110a]
������衪��
�������ֶ���������������ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	CreateTextureSP("�}�ݻ���", 5000, Center, Middle, "cg/ev/ev238_�����̫ꖤ��¤Ƚ���_b.jpg");
	SetTone("�}�ݻ���", Monochrome);

	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110b]
����ңԶ�Ĺ�ȥ�����н���������������
�����������ڵصף���������ˮ������
Ҫ���������棬�ٽ������Ƽ���
ʹ�ñ���Ϊ���еļ��õ�����������

���������������Ϊ���񡱵ķ�չ��ʷ��˵
����ȷ�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateTextureSP("�}�ݽ�", 17100, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	CreateTextureEXadd("�}�ݽ�", 17110, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("�}�ݽ�", 0, 500, null, true);

	FadeDelete("�ϱ���", 1000, true);
	SetVolume("SE*", 2000, 750, null);
	FadeDelete("�}ɫ�\", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0120a01">
�������ϼ�Ϊ΢С�ġ�����һ��ɳ�ӻ�Ҫ
΢С����Ƭ������������������

//��������
<voice name="����" class="��������" src="voice/md05/010vs0130a01">
���Ǿ��ǽ�������֮Դ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0140a00">
������Ҳ����˵������������˼����
���Ƕ���<RUBY text="����������������������">��ͬ���������еļ�����</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0150a00">
��������ǧ�������򱶵ġ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0160a01">
�����ڡ������ס�����
�������޷����㡣��

//��������
<voice name="����" class="��������" src="voice/md05/010vs0170a01">
���ܶ���֮��ӵ���뽣��ͬ�ʵ��������Լ�����
��ȫ���ܱ����������ģ������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0180a00">
����������
�������ϣ��п��ܶԿ��𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0190a01">
��������һ�������������
���������ĸ��ԣ�Ҫ�����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0200a00">
���š���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0210a01">
���������Զ֮����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0220a00">
��������ȷ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����̬Խ��������ʰ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md05/010vs0230a00">
�����ǰ���
��������Ⱦ���ķ���Դ���Ǹ��ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0240a01">
�����ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0250a00">
�����ƻ����Ǹ��Ͳ�����ֹ��Ⱦ����
���Ӱɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0260a01">
�����ǡ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0270a00">
������û��ѡ�������˰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0280a01">
�����ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������i��
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d������K_�T��_ͨ��b.png");
	Move("�}�ݴ���", 0, @288, @0, null, true);
	Shake("�}�ݴ���", 2160000, 1, 2, 0, 0, 1000, null, false);

	CreateTextureSP("�}�ݿձ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	SetVertex("�}�ݿձ���", right, middle);

	$�������ǉ��� = 2.50;
	$�������ǽM�z���� = $�������ǉ��� * 1000;

	$���Ƅ�Ӌ����ʂ� = ImageHorizon("�}�ݿձ���") * $�������ǉ���;
	$���Ƅ�Ӌ���{���� =  $���Ƅ�Ӌ����ʂ� -1124;
	$���Ƅ�Ӌ���a���� =  $���Ƅ�Ӌ���{���� * (1);

	Zoom("�}�ݿձ���", 0, $�������ǽM�z����, 1000, null, true);
	Move("�}�ݿձ���", 100000, @$���Ƅ�Ӌ���a����, @0, null, false);

	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SEL*", 600, 0, null);

	CreateSE("SEL10a","se���L_����_������01_L");
	CreateSE("SEL10b","se���L_����_������02_L");
	MusicStart("SEL10a",2000,750,0,1000,null,true);
	MusicStart("SEL10b",2000,750,0,1500,null,true);

	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md05/010vs0290a00">
������ˣ��ϰɡ�
���ұ��Ͳ����������кξ壡��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0300a01">
���˽⣡
����һ��������߱��֮ս�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���M��
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,750,0,500,null,true);

	SetVolume("SEL1*", 300, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	Move("�}�ݴ���", 300, @-1500, @0, Axl2, false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	DrawTransition("�}ɫ��", 150, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	WaitKey(500);

	Delete("�}�ݿձ���*");
	Delete("�}�ݴ���*");

	CreateTextureSP("�}��", 17000, Center, -30, "cg/ev/ev242_���񼤤����k��_a.jpg");
	Request("�}��", Smoothing);
	CreateSurfaceEX("�}��������", 10000,1000,"@�}��");
	Fade("�}��������", 0, 1000, null, true);

	FadeDelete("�}ɫ��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������Ȼ����
���ǡ�������Ȼ�ڶ���ȴ������Ҫ��
������߲�ȡʲô�ж������ӡ�

��������Ϊ��û����ʶ���ҵĴ��ڰɡ�
��������˵��������������û�о߱�
ѧϰ��֪�ⲿ����ٲ�ȡ���Ӧ���ж��Ļ��ܰ���

������ֻ�ǵ����������飬
��ûʲô���µ��ˡ�
����Ȼ���ֹ�ģ���ƻ���Ҫ�����൱�Ĺ���
��ֻҪ������и��ȡ�������ж�����뻹������ɵġ�


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md05/010vs0310a00">
������ȷ��ȫò��
�������������ֱ��ػع�ȥ����

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0320a01">
���˽⡣��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��������", 1000, 2000, 2000, null, false);
	Wait(500);
	Move("�}��", 500, @-256, @0, null, false);
	Rotate("�}��������", 600, @0, @0, @-10, null,true);

//��ͻȻ�����񤬹��
//���ӣţ������
	SetVolume("SEL*", 500, 0, null);
	CreateSE("SE01","se����_������_�����01");
	MusicStart("SE01",0,1000,0,1200,null,true);
	CreateColorSPadd("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}��");
	Delete("�}��������");
	FadeDelete("�}ɫ��", 600, true);

//��������������
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(300,680);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,500);
	CP_SpeedChange(0,500,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2977,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	Delete("�}��*");

	CreateTextureSP("�}�ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateSE("SE01a","se���L_����_�z��������03");
	CreateSE("SE01b","se���L_����_�z_���02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Shake("�}�ձ���", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("@CP_Frame*", 800, 0, 30, 0, 0, 1000, Dxl2, false);

	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md05/010vs0330a00">
���ȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ᤤ�Υ���
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0340a01">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ǡ�����δӲ�������������ġ���<k>
��
���Ǹ������������

�����
����֮ǰ��ǿ�ˡ���<k>�⣬������������ǿ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ӌ������
	CreateSE("SE01a","se����_���å��ԥå�_����`��");
	CreateSE("SE01b","se����_���å��ԥå�_̽��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,true);

	MyLife_Count(300,999);
	CP_IHPChange(300,1,null,false);
	CP_PowerChange(300,500,null,false);

	MyTr_Count(300,999);
	CP_SpeedChange(300,0,null,false);

	CP_AziChange(300,360,null,false);
	CP_RollBarMove2(300,360,Dxl2,false);

//������
	CP_HighChange(3000,300,null,false);
	CP_AltChange(1000,-90,null,false);
	Move("�}�ձ���", 3000, @0, @-1152, AxlDxl, false);
	Zoom("�}�ձ���", 3000, 2000, 2000, null, false);

//������󡸣ãУ���λӋ�ȥ�`��Щ`�����뤿��˴����򼚤����ֶϡ�
	//Wait(1700);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

	CreateSE("SE01b","se����_���å��ԥå�_̽��02");
	MusicStart("SE01b",0,1000,0,1000,null,true);

//������󡸣ãУ���λӋ�ȥ�`��Щ`�����뤿��˴����򼚤����ֶϡ�
	//Wait(1000);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

//���ӣ������������С�����ʤ�
	SetVolume("SE01", 2000, 100, Axl2);

//������󡸣ãУ���λӋ�ȥ�`��Щ`�����뤿��˴����򼚤����ֶϡ�
	//Wait(2000);
		Wait(300);

	Zoom("�}�ձ���", 10000, 5000, 5000, null, false);

		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(500);
		CP_RollBarMove2(500,360,null,false);
		CP_AziChange(500,360,null,false);
		Wait(1000);
		CP_RollBarMove2(1000,-360,null,false);
		CP_AziChange(1000,-360,null,false);

//��Ӌ�����˄ݡ��؏�
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01a","se����_���å��ԥå�_������02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorEXover("�}ɫ�C��", 5000, "#33FF00");
	Fade("�}ɫ�C��", 300, 1000, null, true);

	CreateSE("SE01b","se����_���å��ԥå�_������04");
	$�Еr�g=RemainTime("SE01b");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//������󡸣ãУ�������������Ԫ�ˑ�����
	MyLife_Count(200,500);
	CP_IHPChange(200,10,Dxl2,false);
	CP_PowerChange(200,1000,Dxl2,false);

	MyTr_Count(200,500);
	CP_SpeedChange(200,500,Dxl2,false);
	CP_RollBarMove2(600,0,null,false);

	CP_AziChange(200,0,Dxl2,false);

	Fade("�}ɫ�C��", $�Еr�g, 0, Axl2, false);
	DrawDelete("�}ɫ�C��", $�Еr�g, 100, "slide_02_00_0", true);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CP_AltChange(300,45,Dxl2,false);
	Move("�}�ձ���", 600, @0, @1728, AxlDxl, false);

	Wait(500);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("�}��*");
	CreateTextureSP("�}�ݿ�", 100, Center, InBottom, "cg/bg/resize/bg002_��a_02.jpg");
	Move("�}�ݿ�", 650, @0, @300, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0350a01">
�����������ס����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0360a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��Ʈ����һ���������ʶ��Ȼ�����أ�
���е���ҡ�

���������������Զȥ�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md05/010vs0370a00">
��������ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0380a01">
��ֻ����������ɢ���ѡ�
���б��ڲ�����������ָ���Բ�ǿ
��������ɹ��ˡ���

//��`����̨�~�Υ��å��������ޤ�����
//��������
<voice name="����" class="��������" src="voice/md05/010vs0390a01">
//��������ţ����ǡ���
//���ղ�ֻ������<RUBY text="����">��Ӧ</RUBY>�����𣿡�
��������ţ����ǡ���
���ղ�ֻ������<RUBY text="����">��Ӧ</RUBY>�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0400a00">
����Ӧ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0410a01">
������Ϊ���ĵ��»���ȸԾ֮ʱ
ͻȻ���͵�����ˮ�Ļ��ͻᷢ�������ɡ�
�����ͬ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������˵����<RUBY text="����">�ո�</RUBY>ֻ������ɧ��������

���Ƕ�ʲô�������˷�Ӧ��<k>
��
�����������ǵĽӽ���

��Ҳ����˵��<k>
��
���������ǵĴ��ڱ�����ʶ���ˣ�

�����һ����������<k>
��
��������������

��ֻ���Ǹ����񡱲�֪�������顪��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������ʂ�
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("�}����", 3100, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	CreateTextureSP("�}��", 3000, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	Zoom("�}����", 0, 1500, 1500, null, false);
	Zoom("�}����", 3000, 1000, 1000, Dxl2, false);
	FadeDelete("�}����", 3000, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0420a01">
��������������������ô����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0430a01">
�����Ӱ���������!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0440a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ر�
	CreateColorEX("�}ɫ�\", 6000, "#000000");
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl2, true);

	CreateSE("S01","se���L_����_�z_�ϵ�������01");
	MusicStart("S01",0,1000,0,1000,null,false);

	Delete("�}��*");

	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("�}ɫ��");

//����������Ҫ�ϥ���ӥƥ��֥饹�ȡ�
//���ʤ󤫤����`��Τ��ޥ���οդ�؞���Ƥ����ޤ�����
//������������Ώ��󤵤�һ�ݤ˥����쥯�Ȥ��ݳ�����
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݣ���", 3100, Center, Middle, "cg/ev/ev242_���񼤤����k��_c.jpg");
	CreateTextureSP("�}�ݣ�", 3000, Center, Middle, "cg/ev/ev242_���񼤤����k��_c.jpg");
	Zoom("�}����", 0, 1500, 1500, null, false);

	Delete("�}ɫ�\");

	Zoom("�}����", 300, 1000, 1000, Dxl2, false);
	FadeDelete("�}����", 300, true);

	CreateTextureEXadd("�}�ݣ���", 2910, -30, -260, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bl.jpg");
	CreateTextureSP("�}�ݣ�", 2900, -30, -260, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bl.jpg");
	SetBlur("�}�ݣ�", true, 3, 500, 30, false);
	Zoom("�}�ݣ���", 0, 1500, 1500, null, false);
	Delete("�}�ݣ�*");

	Zoom("�}�ݣ���", 300, 1000, 1000, Dxl2, false);
	Fade("�}�ݣ���", 300, 800, null, true);
	Move("�}�ݣ�*", 300, -450, -115, Dxl2, true);
	FadeDelete("�}�ݣ���", 1000, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md05/010vs0450a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0460a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 19000);

	Delete("�}��*");

	Cockpit_AllFade2();
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/bg001_��a_02.jpg");

	//�������
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	MoveFFP1("@�}�ձ���",20000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FadeDelete("�}��д", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����Ҫ˵Щʲô��ȴ�Ų��˿ڡ�
����������������Ҫȷ���Լ�������״����
�ҽ�̫���ֿ���������غ��ʵ���״��

�����ְ���ͺ��ϣ�Ȼ�����·��ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/md05/010vs0470a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0480a01">
������ʲô�£���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0490a00">
���ⲻ���Ǹ��˵��Ʋ⣬Ȼ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����һ������˼·��һ�����ص�ѡ���Դǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md05/010vs0500a00">
������ղŵĲ���ֱ�ӻ��У�
����ҵĽ������������Ĳ���Ӱ���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0510a01">
����Ȼ���в���Ӱ����!!
�������еĻ�����һƬָ�׶���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������Ϊʲô�����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0520a01">
�����ǳ����ļ��������������һ����
��������̵������ˡ��ᱻ���÷��飬
Ȼ��������Ҳĥ�飬��ʧ����Ӱ���١���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0530a00">
��������ݳ�����
�������ͨ�����������з�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0540a01">
���Ǿ���ͬ�ڹ��̵�ʯͷ��<RUBY text="��">��</RUBY>ˮ�ĳ̶ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������֮�еĻش�

���ܶ���֮���Ǳ���Ҫ�������˶���ôһ���°���
��
��Ȼ������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoIn1(19000,600);
	CreateTextureSP("�}����", 18990, Center, Middle, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����m.jpg");
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0331]
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md05/010vs0550a00">
������<RUBY text="������������">���Ǻŵļ���</RUBY>�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0560a01">
�������ǰ���
�����ݳ�����<RUBY text="ĸ��">����</RUBY>����;߱�����������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0570a00">
����Ȼ�Ǹ����񡱾������Ǻ��𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0580a01">
����Ȼ��Ⱦ����ȷ�Ǵ����﷢����
���������Ǹղŵ������
��û��ɢ����<RUBY text="ĸ��">����</RUBY>����Ϣ������

//��������
<voice name="����" class="��������" src="voice/md05/010vs0590a01">
������ô������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0600a00">
�������ǵ�Ҳ�ǡ�
����Ҳ�������ǹ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��������˵���Ҿ�����û�н�������˼����
��������������˵������������ʶ��˼ά���
Ҳ�ǲ�μ��͵�ԭʼ�Ի��

�������뷨Ҳ���ܲ����ǰ�����˼��
����������Ȼ�����������Ϊ�ǰ��ˡ�
��������Ϊ�Ǹ������ڲ���������ν
��������ȴ�ֲ�����ͬ�Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0610a01">
�������Ǳ�������ô��
����<RUBY text="����">��ʳ</RUBY>����<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0620a01">
��ֻ�м��ܣ��������á�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0630a00">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0640a00">
����ʹ������������ô���¡�
������Ҫ��������Ҳ����ı䡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0650a01">
�������ţ�û����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������٤ӽӽ�
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	//�����ȥ
	CloudZoomFade(0,false);
	MoveFFP1stop();

	Cockpit_AllFade0();

//������������
//���ܤ��`��
	CreateSE("SE02","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݣ���", 2910, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_c.jpg");
	CreateTextureSP("�}�ݣ�", 2900, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_c.jpg");
	Zoom("�}�ݣ���", 0, 1500, 1500, null, false);

	Delete("�}ɫ�\");

	Zoom("�}�ݣ���", 300, 1000, 1000, Dxl2, false);
	FadeDelete("�}�ݣ���", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md05/010vs0660a00">
���������������������ǽ�����
��Ϊ������������֪�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0670a01">
�������ǡ�
����Ȼ��֪�����ǻ��е��⣬������Ϊʳ����
���߽�������Ϊ�������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����֮������ҲҪ������˵أ�
�������Ĺ����Ż�ֹͣ��
�����ⲻ��˵���µ����Ҳ�������������ߡ�

������Ҫ�ر�Ҳ����ʲô���¡�

������ǰ��׼�����������ԣ���׼����Ҳ���ߡ�
Ҳû��Ԥ���������Ŀ����˶��켣��ֱ�ӷ����ˡ�
���Լ�ע��Ļ��������ɶ����

��Ȼ�������������Ӹղŵ�һ��������ʵ�ڷ�ͬһ�㡣
�����Ѿ������ᱻ���˼�Цų�����µľٶ��ӵ�ԶԶ�ģ�
����Խ�ռ䴫������<RUBY text="����">����</RUBY>���Ǽ�����ȫ��

�������������л�������
�����£���ǰ����������ȫ����ɡ�

��������ǳɹ��ʾųɵĶĲ���Ȼ��
��һ�ɵķ��ճ��ֵļ���Ҳ�ܴ�
��Ҫ�����ܿ��١�Ѹ�ݵذ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
//��Ұ̫��һ�W�����ɩ`��
	CreateSE("SE01a","se���L_����_��ꪏ���02");
	CreateSE("SE01b","se���L_�n��_�nͻ01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1500,null,false);
	CreateColorSP("�}�\Ļ", 20000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ݣ�");

	CreateTextureSPadd("�}����", 3010, -55, -190, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

//����������ͣ�
	CreateSE("SE02","se����_������_�����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�������á�
���ռƻ���׼�������ִ�С�İ��Ӳ����ܳ���
����Ұ̫��һ�����н���

������֦��������ɢ��
��
���񡱵İ�������ȷ�����ˡ�

�����У�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0680a01">
�������������£���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0690a00">
����?!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���˱�
//�����񡢷��k�������w�Ф�������
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݣ���", 2910, Center, -30, "cg/ev/ev242_���񼤤����k��_e.jpg");
	CreateTextureSP("�}�ݣ�", 2900, Center, -30, "cg/ev/ev242_���񼤤����k��_e.jpg");
	Zoom("�}�ݣ���", 0, 1500, 1500, null, false);

	Delete("�}��");

	Zoom("�}�ݣ���", 300, 1000, 1000, Dxl2, false);
	FadeDelete("�}�ݣ���", 300, true);

	Wait(300);

	CreateSE("SE03","se���L_�Ɖ�_���k04");
	CreateSE("SE03a","se���L_����_�z��������03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ݱ���", 4000, Center, Middle, "cg/bg/bg106_��ʿɽ�h��b_00.jpg");
	Wait(1);
	Delete("�}�ݣ�");
	CreatePlainSPadd("�}��д", 5000);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1000, 1000, null, false);
	FadeDelete("�}��д", 1000, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md05/010vs0700a00">
������
���������ղ�����ô���£���

//�����ߣ������Ϥ碌����
//����׼Ŀ���ȫ��ų�������
//�������ּ���Ҳ���еġ�
//����������Χ�������ƺ��ͻ��ɢ��
//��������
{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0710a01">
����׼Ŀ�꣬��ȫ��ų�������
�������ּ���Ҳ���еġ�
����������Χ�������ƺ��ͻ��ɢ����������

//��������
<voice name="����" class="��������" src="voice/md05/010vs0720a01">
������������ȫ�����乥��������Ҳ��Σ�ա���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0730a00">
������˵������׷�ʹ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",2000,750,0,500,null,true);
	CreateTextureEX("�}�ݽ�", 5000, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_a.jpg");
	Fade("�}�ݽ�", 1000, 1000, null, true);
	Delete("�}�ݱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������ʹ��<RUBY text="�ȣ�������䡤������">һ����ս��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/md05/010vs0740a00">
�����ǣ�����Ҳ������
��ȫ�޷��������⡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0750a01">
���š�
�������ȷ����������ݵ�������
��������������Ǹ�Ϊ����������������ˣ�
<RUBY text="����������">�Ƕ�������</RUBY>ֻ�Ǹ�����ľ޴�������ѡ���

//��������
<voice name="����" class="��������" src="voice/md05/010vs0760a01">
�����Ȳ��Ǿ����޵У�Ҳû�г�Խ����
���ܵ��ƻ��Դ�����ǻ����ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��˵��û��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���T��
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}��*");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d������K_�T��_ͨ��.png");
	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	Wait(2000);

	SetVolume("SEL*", 100, 0, null);

//������������
	CreateSE("SE02","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("�}�ݣ���", 3100, Center, -30, "cg/ev/ev242_���񼤤����k��_c.jpg");
	CreateTextureSP("�}�ݣ�", 3000, Center, -30, "cg/ev/ev242_���񼤤����k��_c.jpg");
	Zoom("�}����", 0, 1500, 1500, null, false);

	Delete("�}�ݱ���");
	Delete("�}�����}");

	Zoom("�}����", 300, 1000, 1000, Dxl2, false);
	FadeDelete("�}����", 300, true);

//���ܤ���
	CreateSE("SE03","se���L_����_��ͻ�M01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}�����}װ��", 19100, InLeft, -134, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bl.jpg");
	SetBlur("�}��/�}�����}װ��", true, 3, 500, 60, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	Move("�}��/�}�����}װ��", 400, -480, @0, Dxl2, false);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/md05/010vs0770a00">
����������һ�ο�����
��<RUBY text="��������">�˽��۳�</RUBY>����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0780a01">
�������˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ͥ륮�`�ϕN
	CreateSE("SE01","se����_��x_��`�륬��_�ʂ�");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateWindow("�}����", 19500, 636, 0, 340, 576, false);
	SetAlias("�}����","�}����");
	Zoom("�}����", 0, 0, 1000, null, true);
	CreateTextureSP("�}����/�}��������", 19510, -360, InTop, "cg/ev/resize/ev905_����늴œĵ�_cm.jpg");
	Move("�}����/�}��������", 450, 265, @0, Dxl2, false);
	Zoom("�}����", 300, 1000, 1000, Dxl2, true);

	WaitAction("�}����/�}��������", null);

	Move("�}����/�}��������", 3000, 265, -277, DxlAuto, false);

	WaitAction("�}����/�}��������", null);

	CreateSE("SE01a","se���L_�n��_���Ľ��e02");
	MusicStart("SE01a",0,1000,0,2000,null,false);
	CreatePlainSPadd("�}����/�}��д", 19900);
	Wait(150);
	FadeDelete("�}����/�}��д", 300, true);

//�����������ؓ�
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se���L_����_���������ؓ�");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}����", 19550, Center, Middle, "cg/ev/ev929_��������������.jpg");
	CreateTextureSP("�}��", 19560, Center, Middle, "cg/ev/ev929_��������������.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}��", 0, 1100, 1100, null, true);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(300);

//�������ɩ`��
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19610, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 19600, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����", true, 3, 300, 100, false);

	Delete("�}��*");
	Delete("�}ɫ��");

	Zoom("�}����", 500, 1250, 1250, Dxl1, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, false);

//����������ͣ�
	CreateSE("SE04","se����_������_��ν~��");
	MusicStart("SE04",0,1000,0,750,null,false);

//�������x�ѡ���ʿɽ�Ϥ��ŵ�
	PrintGO("�ϱ���", 25000);
	CreateSE("SE05","se���L_����_��ͻ�M02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "slide_02_01_1", true);

	CreateTextureSP("�}�ݱ���", 100, Center, -4960, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
	Move("�}�ݱ���", 10000, @0, -2100, null, false);

	CreateTextureSP("�}�ݴ���", 1000, Center, Middle, "cg/st/3d������K_�T��_ͨ��b.png");
	Rotate("�}�ݴ���", 0, @0, @0, @120, null,true);
	Move("�}�ݴ���", 0, @0, @576, null, true);

	Move("�}�ݴ���", 450, @0, @-1500, null, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", true);

//��bg107�������x���å׻���
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}�ݴ���");
	CreateTextureEX("�}�����ñ���", 110, Center, Middle, "cg/bg/resize/bg107_��ʿɽ픻��a_00l.jpg");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg107_��ʿɽ픻��a_00l.jpg");

	Fade("�}�����ñ���", 0, 500, null, true);
	Shake("�}�����ñ���", 650, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateSE("SE06","se���L_����_�z_�ŵ�02");
	MusicStart("SE06",0,1000,0,1000,null,false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/md05/010vs0790a00">
�����?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0800a01">
��Ч����֣���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��ʩ���������ٵ�ն������
��Ӧ�������Խ��ʮ���������̶ֳȵ�������
����?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//����������ͣ�
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,750,0,500,null,false);
	CreateSE("SE04","se����_������_�����02");
	MusicStart("SE04",0,750,0,500,null,true);
	CreateTextureEX("�}�ţ�", 18100, Center, -30, "cg/ev/ev241_ɭ�ǰk�⤹�����_d.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����Ȼ���񡱵������������ˡ�
��ˮ��ɭ�ֵ�һ���֣����ֳ������˶�����ҵ���ҿ��ķ�
֮�����ò��

���������Ѿ��������൱��ʹ����
�����ڡ��񡱵İ����þ������������Ǵ���������
�ҿ����Ѿ���ס˫�������ҹ��˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ڄ���
//����΄Ӥ�
	CreateSE("SEL01a","se����_������_�������_ʼ_L");
	CreateSE("SE01","se����_������_������");
	MusicStart("SEL01a",0,1000,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEXadd("�}�ţ֣���", 18010, Center, -30, "cg/ev/ev241_ɭ�ǰk�⤹�����_e.jpg");
	CreateTextureSP("�}�ţ֣�", 18000, Center, -30, "cg/ev/ev241_ɭ�ǰk�⤹�����_e.jpg");

	CreateColorEXadd("�}ɫ��", 19900, "#FFFFFF");

	Fade("�}�ţ֣���", 1500, 1000, null, false);
	FadeDelete("�}�ţ�", 1500, false);
	Fade("�}ɫ��", 300, 1000, null, true);

	Wait(500);

	FadeDelete("�}ɫ��", 500, true);
	FadeDelete("�}�ţ֣���", 5000, false);

	SetVolume("SEL01a", 2000, 0, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0810a01">
�����ǡ�������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0820a00">
������֮�С�
������ȴӵ����һ�������֮�������̶ֳ�
���첻������������ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0830a01">
��������ô������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0840a00">
��һ����ɱ��
���������޷�������������ܼ򵥡���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0850a01">
��������<RUBY text="����">����</RUBY>���ɣ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0860a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/3d������K_����_�i��.png");
	FadeStR(0,true);

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("�}�ţ�*", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����Űε���

�������Ǹ���̫������ʽ��
����ȡ�ص�Ұ̫����������һ����

����Ȼһ�ζ�δ���ù���������֪����
������Է��ǡ���Ҳһ���ܻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/md05/010vs0870a00">
��������׼��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���񡢰k��
//�������܇졣���g���֤��
//�����Σ��ǥ饹���`������`����ܤ���
	CreateSE("SE01","se����_냇��_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	DrawEffect("�}�����ñ���", 200, "LowWave", 0, 200, Axl2);
	Fade("�}ɫ��", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0880a01">
�����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0890a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
��<RUBY text="����������">��Ұ�ڻζ�</RUBY>������

����ʲô��

��Ԥʾ��ʲô��

��������Ȼ��
�������ƺ�������˭����ૡ�

��
��������������������Ҫ������Ӵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("@StR*", 200, @200, @0, Dxl2, false);
	DeleteStR(200,true);

//�����Щ`��һ˲ǰ�ޤǤ����������R������
//��bg107a
	CreateSE("SE02","se����_������_���g����");
	CreateSE("SE02a","se���L_�Ɖ�_����02");
	CreateTextureEX("�}�ݱ�����", 19010, Center, Middle, "cg/bg/bg107_��ʿɽ픻��b_00.jpg");
	CreateTextureSP("�}�ݱ���", 19000, Center, Middle, "cg/bg/bg107_��ʿɽ픻��b_00.jpg");

	CreateTextureEX("�}���ñ���", 110, Center, Middle, "cg/bg/bg107_��ʿɽ픻��b_00.jpg");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg107_��ʿɽ픻��b_00.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Fade("�}�ݱ�����", 0, 500, null, true);
	Shake("�}�ݱ�����", 2000, 1, 20, 0, 0, 1000, Dxl2, true);
	Delete("�}�ݱ�����");
	Delete("�}�ݱ���");
	Delete("�}�����ñ���");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/md05/010vs0900a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��˲�䡣
��գ��֮�䣬�ҵ��������ڵ����ꡣ

���ѱ�<RUBY text="����">ѹ��</RUBY>��
����Ӱ��Ҳ��δ�ü�����Ȼ���١�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);

	CreateTextureEX("�}���ñ���", 100, Center, -700, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureSP("�}����", 100, Center, -700, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");

	FadeDelete("�ϱ���", 300, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/md05/010vs0910a00">
��������ʲô?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs0920a01">
������
���ռ䱾��Ť���ˡ���

//��������
<voice name="����" class="��������" src="voice/md05/010vs0930a01">
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
���ռ�Ť��?!

������������������������������
��
���������ԡ���ʵ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�y�ǺŤ��|�I���
	CreateTextureEX("�}�ݻ���", 100, Center, Middle, "cg/ev/ev924_�y�Ǻ��|�I���ħ����.jpg");
	Fade("�}�ݻ���", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
�����뵽�ˡ�
�����Ǻŷ������������С�֮ʱ�����ڲ�����
��ǿ�������������˿ռ�Ť�������󡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}�ݻ���", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�룺��������������090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0940a01">
�����ֶ����������ܽ��з�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0950a00">
��������������һ�������ܲ�
��Ψһ�Բ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
��������ˣ�Ҫ��Ե���<RUBY text="��������">�ռ�Ť��</RUBY>��
���ķ�Χ�����ж���ء�
������Ϊ�Ѿ����ѣ���ʵ��ȴδ�����빥����Χ��
���������Ҳ���ܻᷢ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���񡢰k��
//�����g�������ס��֤�
	CreateSE("SE01","se����_냇��_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	Fade("�}���ñ���", 200, 500, null, false);
	DrawEffect("�}���ñ���", 200, "LowWave", 0, 200, Axl2);
	Fade("�}ɫ��", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("�}���ñ���", 600, false);
	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0960a01">
����������û�꣡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs0970a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
����ô�죿

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����ܤ��ޤ��h�����x�ѣ��ڱ����̽��

}

..//������ָ��
//�����ܤ��ޤ��h�����x�ѡ�"md05_010vsb.nss"
//���ڱ����̽����"md05_010vsa.nss"


//���x�k֫���`��
scene md05_010vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("�}����", 100, Center, -700, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("���������ѵ�Զ�ĵط�","Ѱ���ڵ���");
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
//�����ܤ��ޤ��h�����x�ѡ�"md05_010vsb.nss"
				$GameName = "md05_010vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���ڱ����̽����"md05_010vsa.nss"
				$GameName = "md05_010vsa.nss";
		}
	}
}