//<continuation number="600">

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

scene mc03_023vs.nss_MAIN
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
	#ev946_�����֣ӥ��å������`_b=true;
	#ev946_�����֣ӥ��å������`_d=true;
	#ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b=true;
	#ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_023vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_022vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//�������֣ӥ��å������`
	SoundPlay("@mbgm13",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}��", 18000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_d.jpg");

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0010a01">
��������������Ǻ���һ�εľ��������ء���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0020a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����罣�����ԡ�
�������<RUBY text="����">����</RUBY>ͻȻ��óٶۣ�
�����֮ǰ�Ծ�����״����ȫһ����

�������Ѿ����߱�������ս���������ˡ�
��֮��ȴ��ŵ�ֻ��׹������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0030a01">
����ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ߴ����´�ָ��ұ����ų�Ĭ��
�����ں����׻�׹����<RUBY text="���">����װ��</RUBY>�Ͽ�һ�������ܽ����

���뵽����������ξ����Σ�գ�����������л���
�����κ���ԥ��
��������װ�ס���ʹ����ʱ��ҰһЩ��Ҳ���������ɡ�


��Ϊ��֮�󲻷���������Ϯ��������һ�����˺�Ӧ����
���ϲߡ�
��
������ʹ�뵽����һ�����Щ��ԥ��

������ʤ���ѷ֡�
����ʹ�Ҳ���Щʲô������Ҳ�����<RUBY text="���">ս��</RUBY>��
������������£���ð�ſ���ɱ���Է���Σ�ռ���ǰȥ
׷�����Ƿ��������ء�

����ʹ���ٴ���Ϯ�Ŀ��ܣ�����ΪҲ���ù��ֵص��ġ�
��
�����Ѿ��˽��˵����ս�����Է��Ѿ������Ϊ��в��
ֻҪС��һ����Ϯ���������׵�Ӧ����

�����ң���������Ҫ������뿪���
��
��ȷ�ϴ��������Ƿ�ƽ�������Ҹ�������ȥ�����¡�

��������в�����Ҫ��׷������������������������
�������˷�ʱ��ģ���ȫ���޴�����Ϊ��
��
������������ô�����ǡ�

���ҽ�<RUBY text="MetalEcho">װ��ͨ��</RUBY>�Ĳ��������ƥ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,360);
	CP_IHPChange(0,5,null,false);
	CP_PowerChange(0,250,null,false);

	CP_SpeedChange(0,555,null,false);
	MyTr_Count(0,427);

	CP_HighChange(0,1250,null,false);

	$냇�ݷ�λӋ=Random(10)+40;
	CP_AziChange(0,$냇�ݷ�λӋ,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	Move("�}�����}����", 0, @0, @-100, null, true);
	Zoom("�}�����}����", 0, 40, 40, null, true);
	Request("�}�����}����", Smoothing);

	MoveFRP1("@�}�ݺ��ձ���",30000,30,30);
	MoveFRP2("@�}�����}����",28000,20,20);

	FadeDelete("�}��", 1000, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0040a00">
����ս�еĵ���ע�⡣
������������ս�����򡣡�


//��������
<voice name="����" class="����" src="voice/mc03/023vs0050a00">
�����������״�����ѿ��ơ�
���Ҷ϶������޷�����ս������


{	FwL("cg/fw/fw���å������`_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0060b33">
������������


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0070a00">
���������׹���
������������Լ�Ŀ�����ѻ����Ʋ⵽����
�жϲ��ؼ��ڼ�������


//��������
<voice name="����" class="����" src="voice/mc03/023vs0080a00">
�����������ˣ��ҷ��Ĳ������׷��������Ҳ
���뿪�˴�����


{	FwL("cg/fw/fw���å������`_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0090b33">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������û�лش�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0100a00">
���ظ�һ�顣
�����뿪������򡣡�

//��������
<voice name="����" class="����" src="voice/mc03/023vs0110a00">
���������ϣ����ս���ף���Ҳֻ��Ӧս��
��
������Ӧ���Ѿ�����ˣ��Թ����ս�����ڲ�
���ܻ����ҡ���


{	FwL("cg/fw/fw���å������`_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0120b33">
������������


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0130a00">
������ս������׾�ӡ�
�������ֱ��������ֵĻ��彻ս���ˣ�����
�͹���ĵ�����������֪��ʱ���ˣ����ֺ���
Ҳֻ���˷ѡ���

//��������
<voice name="����" class="����" src="voice/mc03/023vs0140a00">
�������Ҫ���ң�����Ӧ��Ѱ�Һ��ʵ���ʦ
��������֮����
��Ϊ�����Ŀ�ģ���ι��ﳷ��Ҳ���ϲߡ���
���ҵ��Ҹ档��

//��������
<voice name="����" class="����" src="voice/mc03/023vs0150a00">
���������ϰɡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��û�лش�

���ش��ǡ�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0160b08">
�����������ٺٺٺٺٺ١�����

//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0170b10">
����������������

//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0180b13">
����ѽ��ѽ��ѽ��ѽ������

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0190b33">
������������
���ߺߣ�������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������û�лش�
��û���ܳ�֮Ϊ�ش�Ķ�����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0200a01">
����������


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0210a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������������Ҫ�ߴ����¶����ġ���ҧ���ս���̫
���ĵ�����
���Է���Ȼ�����������޷����������ĶԻ���


�����ǣ�����ô�졣
����������ֻʣ����½�����������޶������ˡ�


��Ӧ���Ѿ�ʲô���������ˡ���
��
����ֻ�ж����ڲ���������

�������Ǻ�ɫ������ӳ�����ҵ�����Ĥ�С�
������Ķ���û��ֹ����


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0220b10">
����˵֪��������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0230b13">
��֪�����ǵ�Ŀ�ġ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0240b33">
��������<RUBY text="����������">û�б�ɱ��</RUBY>������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0250b08">
����������������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0260b13">
�������������ܡ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0270b10">
�������ǻ�ȥ������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0280b08">
������������������������


{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0290a00">
����������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0300b10">
����������Ӯ����


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0310b33">
����Ӯ������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0320b13">
����Ӯ����


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0330b08">
������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0340b10">
����ô���ء���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0350b13">
����ô�죿��


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0360b08">
���ס�������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0370b33">
��ʲô��ô�졣
��ֻ����ô��ɡ��԰ɣ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0380b10">
���š���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0390b13">
����ѽ����


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0400b08">
������������������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0410b33">
����ӮҲ��Ҫ������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0420b13">
��ɱ���ͺá���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0430b10">
��ɱ���ͺá���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0440b08">
���ס�����������


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0450b33">
��ɱ�˰ɡ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/023vs0460b10">
��ɱ�˰ɡ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/023vs0470b13">
��ɱ�˰ɡ���


{	FwL("cg/fw/fw���å������`��_ͨ��.png");}
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/023vs0480b08">
���׹�������������������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��۩`��ʂ�
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}��", 19010, Center, 144, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	Move("�}��/�}��", 5000, @0, @-190, null, false);

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	CreateTextureSP("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��b.png");
	Move("�}�����}����", 0, @0, @-60, null, true);
	Request("�}�����}����", Smoothing);
	Zoom("�}�����}����", 0, 80, 80, null, true);

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0490a01">
���������Ǹ�����


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/023vs0500a00">
���׷���������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������ø��ٳ��׵���
�����ǡ������ִ��ڣ�������ά��ƽ���״̬�������
һ�����޷����еġ�

��������Ҳ����վ��ԭ�صȶԷ������
��
��������<RUBY text="���">����װ��</RUBY>��׼�����ٻرܡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��b.png");
	Move("�}�����}����", 0, @0, @-100, null, true);
	Zoom("�}�����}����", 0, 40, 40, null, true);
	Request("�}�����}����", Smoothing);

	Zoom("�}��", 300, 1000, 0, Dxl2, true);
	Delete("�}��");

//���ر�
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(0,525,null,false);
	MyTr_Count(300,510);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������֪���������޷���ء�
��Ϊʲô��Ҫ������֪������

������ʹ��ˣ���Ҳ�����һ���ˡ�
��ֻҪ�ܹ��ܿ���һ�����Ǹ������û�й��������ˡ�

��ֻҪ����һ������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 19100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	Fade("�}��", 1000, 1000, null, true);

	SetFwL("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0510b33">
����ᡷ

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0520b33">
�����ڡ�

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/023vs0530b33">
������������������������������!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);

//�����å������`���x
	CreateSE("SE01","se����_�z_���å������`���x");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 19100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_c.jpg");
	FadeDelete("�}ɫ��", 1000, true);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0540a00">
��ʲô������


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0550a01">
������!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������������ˣ�
����Ϊ�����<RUBY text="������������">�������˳���</RUBY>��

������˵��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0560a00">
����ɱ����!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}�����}*");

	CreateTextureSP("�}�����}������", 1000, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}������", 0, @-256, @576, null, true);
	Zoom("�}�����}������", 0, 150, 150, null, true);
	Rotate("�}�����}������", 0, @0, -180, @0, null,true);

	CreateTextureSP("�}�����}������", 1000, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Zoom("�}�����}������", 0, 150, 150, null, true);
	Move("�}�����}������", 0, @200, @-400, null, true);
	Rotate("�}�����}������", 0, @0, -180, @0, null,true);

	Request("�}�����}����", Smoothing);

	CreateSE("SE00","se���L_����_���ϕN01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	DrawDelete("�}��", 150, 100, "zoom_01_00_0", true);

//���饤���`����ե��`��혤�ͻ�M
//������������ʳ�餦��
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�����}������", 400, @-800, @400, null, true);

	Wait(200);

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("�}�����}������", 0, @0, 0, 60, null,true);
	Zoom("�}�����}������", 200, 3000, 3000, Dxl2, false);
	Move("�}�����}������", 200, @300, @-100, null, false);

	Wait(170);

	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}ɫ��", 19900, "#FFFFFF");

	Wait(12);

	Delete("�}�����}������");

	CreatePlainEX("�}��д", 1000);
	Fade("�}��д", 0, 300, null, true);
	Shake("�}��д", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,300);
	CP_IHPChange(300,4,null,false);
	CP_SpeedChange(2000,500,null,false);
	MyTr_Count(300,457);
	Shake("@CP_Frame*", 700, 30, 0, 0, 0, 1000, Dxl2, false);

	Delete("�}�����}������");
	Wait(10);
	FadeDelete("�}ɫ��", 200, true);

//��������ݳ����ҤΥ��`��
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Rotate("�}�����}������", 0, @0, -180, 90, null,true);
	Move("�}�����}������", 400, @100, @-1000, null, true);

	Wait(200);

	Move("�}�����}������", 0, @700, @0, null, true);


	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("�}�����}������", 0, @0, @0, -90, null,true);
	Zoom("�}�����}������", 200, 3000, 3000, Dxl2, false);
	Move("�}�����}������", 200, @-400, @100, null, false);

	Wait(170);

	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}ɫ��", 19900, "#FFFFFF");

	Wait(12);

	Delete("�}�����}������");

	CreatePlainEX("�}��д", 1000);
	Fade("�}��д", 0, 300, null, true);
	Shake("�}��д", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,240);
	CP_IHPChange(300,3,null,false);
	CP_SpeedChange(2000,450,null,false);
	MyTr_Count(300,366);
	Shake("@CP_Frame*", 700, 0, 30, 0, 0, 1000, Dxl2, false);

	Wait(10);
	FadeDelete("�}ɫ��", 200, true);

	SetFwL("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0570a00">
���ء�������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���Ҵ������ܵ���<RUBY text="����">˫��</RUBY>��ͻ����
�����벻���Ҷ㿪��

���粿���ؼ�����
�����������ص����ˡ�����һ˲���ҵĶ���ͣס�ˡ�


�����
�����ǵ��˵�Ŀ�ġ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��۩`��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 19010, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_c.jpg");
	CreateTextureSP("�}��", 19000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_c.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Cockpit_AllFade0();

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0580a01">
���㿪!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����Ķ㣿

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ϣ��£��ң���

}

..//������ָ��
//���ϡ�"mc03_023vsa.nss"
//���¡�"mc03_023vsb.nss"
//���ҡ�"mc03_023vsb.nss"
//����"mc03_023vsb.nss"

//���x�k֫���`��
scene mc03_023vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm12",0,1000,true);
	CreateTextureSP("�}��", 100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_c.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("��","��","��","��");
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
			ChoiceA04();
//���ϡ�"mc03_023vsa.nss"
				$GameName = "mc03_023vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//���¡�"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���ҡ�"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//����"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
	}
}