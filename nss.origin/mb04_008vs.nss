//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_008vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_008vs.nss","TurboBlur",true);
	

//���å��ԥå��ãӣ��
	CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg001_��a_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#ev107_˫݆�҇��_d=true;
	#ev153_�����֣��y�Ǻ�_a=true;
	#ev153_�����֣��y�Ǻ�_b=true;
	#ev153_�����֣��y�Ǻ�_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_c=true;
	#ev155_�����֣��y�Ǻţ�_a=true;
	#ev155_�����֣��y�Ǻţ�_b=true;
	#ev155_�����֣��y�Ǻţ�_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_a=true;
	#bg002_��a_02=true;
	#bg052_�����ҵ���_01=true;
	#ev128_�����ι�_a=true;
	#ev901_�y�Ǻ�����ʧ��С����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_009.nss";

}

scene mb04_008vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_007.nss"

//�������֣��y�Ǻ�
//���ϕN��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);



	CreateColorSP("�\Ļ��", 20000, "BLACK");
	Delete("�ϱ���");

//	Cockpit_AllFade0();
	Fade("�}����", 0, 0, null, true);

	CreateTextureSP("�}����100", 18000, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureSP("�}EF100", 18500, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Rotate("�}EF100", 0, @180, @0, @0, null,true);
	Zoom("�}EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("�}St100", 19000, 200, -542, "cg/st/resize/3d�����˜�_�T��_���Lbm.png");
	SetBlur("�}St100", true, 3, 500, 50, false);

	Shake("�}EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("�}St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("�}EF100", 0, 500, null, true);

	OnSE("se����_����_���S03",1000);

	Move("�}St100", 400, @-300, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("�}St100", 400, @-2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����100");
	Delete("�}St100");
	Delete("�}EF100");

//	Cockpit_AllFade2();
	Fade("�}����", 0, 1000, null, true);

//	CP_HighChangeA();
//	CP_AltChangeA();
//	FrameShake();


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm08",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������Ǻ�������߽��п��졣

��ʹ������һ�˳�Ϊ�����ѵģ�����ǿ��ľ�����Ⱦ��
������һ�������޹ؽ�Ҫ��
��ʹ������һ�˳�Ϊ��ǿ���ߵģ����ȱ�������������
�����������������Ҫ��

��ͨ�������߶���ͨ�������ƽ���������Ͳ���õ��ƽ�
����ͨ��ĸ�£�������װ�ף��õ����������Ӷ���ʵ��
���С�
�����ٶ����������е��ƶ��ֶ��У�����֮�

���ܹ������г�������ͧ�����н�������Ī����һ����
��ӵ���������ٶȣ�����ζ�������ڽ�ս�о��о��Ե�
ѡ��Ȩ�����������������ⲫʽ����Ϊ���ģ��ڽ�����
����ת��Ϊ�ƻ���֮�󣬿ɶ�һ�б�������������𺦡�

����ˣ����߱��Ǳ��κα��ֶ���Խ�ģ�ս���ϵ����ߡ�
�����Ǻű���Ϊ�����е����ߣ�Ҳ�ǳ���ͬһ���ʵ���
�ɡ�

����һ������ʹ�÷����ƽ���������װ�ײ�����������
�в�ͬ�����Ǻ�ֻ��Ҫ�������򵥵ĸ������ñ�ɡ�
����ʹû�����������Ǻ�Ҳ���Է��衣

���������Ǻ��Ǳ�������˫��ģ�����������������
��������������������������
����Ȼ�統����Ϊ����������֮һ��

�����Ǻš�����������ξ������ʶ������������������
���г�ֵ�����������������������Χ��������Լ���
��������������������ٿ��ߵ���������ڿɽ��ܷ�Χ
�����ӻ���٣��������������ı������ķ���

�����ڴ�ԭ����������������дﵽ����ͨ�������޷�
�������һ�����硣
�����硪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, -300, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	Request("�}����50", Smoothing);

//�����ߣ����å��ԥå�===============
	Cockpit_AllFade2();

	CP_HighChange(0,1212,null,false);
	CP_SpeedChange(0,315,null,false);
	MyLife_Count(1,780);
	MyTr_Count(0,300);

	CP_AziChange(0,-171,AxlDxl,false);
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	BGMoveAuto("@�}����50",1);

//�����ߣ����å��ԥå�===============

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0010a01">
���߶�һ��������
���������������˫��ͻȻʧ�ٵľ���
��ô�������ٽ���һ����Ծ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0020a00">
�����Դ�Ϭ��������֮������ȴ��ʧ��׹��
�������������Ц�ɾͿ���ͷ�ˡ�
�����ﲻҪ��ǿ����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0030a00">
������������ĸ߶��ǣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0040a01">
���Ʋ�Լ����{WaitKey(3000);}һ������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0050a00">
��������
��������Ƕ��٣���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0060a01">
��������һ�婖�����ڡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0070a00">
����Щ���ڵ��ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0080a01">
��������С�������ʱ�򡭡�
�����Ǻŵ������Ͼ��������𡣡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0090a00">
�����𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0100a01">
��ֻ����΢һ�㡣�������ĳ��ս���������ˡ�
��������Ǻŵ�������������
��˶��������˵Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ҳ����˵���ڵ����Ǻŵķ���������Ƿȱ��
��������Ļ�����˵��ͨ�ˡ�

���߶�һ��������������ʱ�䲻��һ���ӡ�
��Լ���ҷ���������ʮ����<RUBY text="��������������������">�����ǺŶ��ԣ�̫����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb04/008vs0110a00">
�����������ôС���˿ڣ�Ӧ�úܿ����
�޸��òŶԡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0120a01">
����Ϊ�Ǻܾ��ɵ����٣�˵���������޸���
�����ң�ÿ�����ж���
�Լ��ó��벻�ó��ķ��档��

//��������
<voice name="����" class="��������" src="voice/mb04/008vs0130a01">
�����������Ļ������빥�������Ǽ����޵еģ�
��ȴҲ��Ӧ��������һ���ֵ�װ��ǿ�Ⱥ�������
������������������������ܻ�ߡ�
���������������ģ���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0140a00">
����������
������������ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ͬΪһ��Ҫ�ڵھž��°���ʮ��֮��Ĳ�������
����һ�㣬������ʵ���岻�󡣲�������Ȼ���˵�ͷ��
���������޷�˵����������ġ����������Եֿ���Ϊ
�����Ļ���������ľ綾ʱ����㶫���������õġ�

��ʮ���ĸ߶Ȳ
�������������ߵ�ս��֮�У������ʵ���������
ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h�ãǡ���һ����ʹ�ä����
	CreateTextureEX("�}��18", 18000, Center, Middle, "cg/ev/ev107_˫݆�҇��_d.jpg");
	Fade("�}��18", 500, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ڸ߶��ϸ������Ƶ��ˣ������������������ӹ�����
����ǿ��ͻ�����������Ƶ�������֮�෴�����ò�����
�����������������������ӭ����
��������ǿ���̶����ɽǶ��������ġ�

�����и߶����Ƶ��˵��½��Ƕȣ��������ߵ������Ƕȣ�
�ɴ�����Ϊ��������ϵ���ɴ˿ɶϣ��ڽǶȾ���ũ���
ԽԶ��ʱ������ǿ���Ĳ��Ҳ��ԽС����Խ�ӽ��ũ�
�ȣ��������Ĳ���Խ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}��18", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ڣ�����Ƕ�<RUBY text="��������������">�����ӽ��ũ���</RUBY>��
����Լ�ڰ�ʮ�Ŷ����ҡ�ˮƽ������߶Ȳ�������������
������������

�������������
��������ǺŴ������״̬�Ļ���
����Ƕ�һ�����ǰ�ʮ�ŵ�ŶȰɡ�

����ˮ��н��������������ôһ�仰��

���������������ǶȽ����ũ��ȡ�
�������Լ�����ֱ�ĽǶ��³壬�������Լ�����ֱ�ĽǶ�
��������һ����Ŀǰ�Ѿ�ȷ���ˡ�

�����Ǻ�����޶ȵ�������������Ԯ�������һ�����ͨ��
�����е������������󣬴�ƽ����Ϯ��������
���������������ٶȡ����յ���ֵ���Ƕ���ء�

�������ҷ�����������������������Ϊ����ȷ������
��Ҳ�н���ʮ������һͬ<RUBY text="����">����</RUBY>��������
���е��ᷳ�ˡ�
��������ΪѰ��������ԭ���ͺ������塣

������ֻ��Ҫ�ܴ������װ�׵ĳ̶ȱ����ԣ���������˵
��������������˷ѡ�
����������������ʹ��ʧȥԭ����״����˺�������
�侱�������ѣ������ߵļ�ֵ��ͬ�ȵġ�

������һ���ϣ��������������е��ҷ����Ѷ����������
������
��Ȼ������ײʱ��������������������Ȼ��˫�����Զ���
<RUBY text="������">��Ե�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	CreateTextureEX("�}�ţ�18", 18000, Center, Middle, "cg/ev/ev153_�����֣��y�Ǻ�_a.jpg");
	Fade("�}�ţ�18", 500, 1000, null, true);

	WaitKey(1500);

//��������ݳ����ţ֤β��z�����Ϥ��ʤ��m����Ҫ�{����횡�
	CreateTextureSP("�}�ţ�17", 17990, Center, Middle, "cg/ev/ev153_�����֣��y�Ǻ�_b.jpg");
	FadeDelete("�}�ţ�18", 500, true);

	WaitKey(1500);

//��������ݳ����ţ֤β��z�����Ϥ��ʤ��m����Ҫ�{����횡�
	CreateTextureSP("�}�ţ�16", 17980, Center, Middle, "cg/ev/ev153_�����֣��y�Ǻ�_c.jpg");
	FadeDelete("�}�ţ�17", 500, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Ǻż����½��Ĺ������г���ĳ�����Ļ���
��ô��������˵���ҷ�����ϮҲ�ɵõ�ͬ�ȵĳ������
��������˿ɽ��ҷ�����һ�㣬�ҷ�Ҳ�ɽ����˻��ơ�

������Ȼ��������ˣ�Ҳ����˵˫�����ǶԵȵġ�
�����ݸ߶Ȳ����������������ƣ���������ս���ĳ�ʶ��
��Ϊ�ǳ�ʶ�������ǲ������ɵġ�

�����������ֻ������������ײ�Ļ�����ô������һ��
���ϣ���Ŷ�������������
��Ȼ��ʵ������ǣ����������Լ�����֫��������������
���н�����

�������������򸺵�����Ӱ�쵽����������ÿ��ϸ�ڡ�
���Ҳ�ͱ�Ȼ�ģ��ڸ߶��Ͼ����Ƶ��˵Ĺ����͸�������
�����ߵĹ���������ء�
�������ľ�ȷ�ȱ������ܴ�Ĳ�ࡣ

���ڸ߶��������Ƶ��ˣ������׻��е��ˣ�Ҳ�����׷�
�ӳ���ȫ����������Ҳ����ζ�ţ��乥����<RUBY text="����������">�ɹ��ʺܸ�</RUBY>��
���������Ƶ�������֮��Ȼ�෴��

���ڿ��鶯̬�����뷴Ӧ�ٶ�֮���޵Ŀ�ս�У���һ��
�����е�������Ҫ�����壬��������ԡ�
����ʹ<RUBY text="������">�����</RUBY>�ǶԵȵģ�<RUBY text="������">������</RUBY>�Ĳ��Ҳ���ɴ˲�����

����˫�����п��ܽ����ֻ�����һ�㣬����˵˫����ƽ��
�ģ����ǣ���ɹ���ȴ���в��ġ�Ҳ����˵�����Ƕ���
����������Ч�����ʵĲ��
��һ�Ա�֮��������ˡ�

�����⣬���˫���Ĺ�����Ϊ��������ײ�Ļ�����ô��
��ͱ�ø��Ӽ������ˡ�
���˶�������Ϊǿ���һ���Ὣ��һ��ײ�ɣ��������ֳ�
һ�ߵ��Ľ����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0086]
������������֮���չ�����������£����������
������״����
��������������Ǿũ��ȡ�������½���Ҳ�Ǿũ��ȡ�

������˫��ӭ�����򿿽��˴ˣ������๥������һ˲
�䡪��
����Ϊ���ܵ��������谭�ᵼ�¶�����óٻ�����˱�
�����һ��<RUBY text="��������">��עһ��</RUBY>�س�����

���������෴�����Ǻſ�����������ؽ��й�����
����Ϊ��׼����Ϊǿ���ء�

�������������Ǻ�֮��ĶԾ������໥�������ʽ�Ľ�
��֮ǰ�����ȴ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå����åפ��ƽ��¤�
	BGMoveDelete();

	SetVolume("SE10", 1000, 1000, null);
	SetFrequency("SE10", 1000, 800, null);

	OnSE("se���L_����_��ͻ�M04",1000);

	Move("@�}����50", 1000, @0, @50, Dxl2, true);

	SetFrequency("SE10", 10000, 1200, null);

	CP_HighChange(2500,812,AxlDxl,false);
	CP_SpeedChange(2500,525,AxlDxl,false);
	CloudZoomVertex(2500,@0,@300,AxlDxl,false);
	Shake("@�}����50", 1000000, 1, 0, 0, 0, 1000, null, false);
	Move("@�}����50", 2500, @0, @-1050, AxlDxl, true);
	CloudZoomVertex(500,@0,@-300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ʽ����

��������ƣ���֪�����Ǻ���ʹ�õ������ʽ��
���������Ǹ�����Ƿ����Լ����֣�����ΪС���ǵ���
ʽ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�ե��`��������쥤�ǥ��Х�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");
	Rotate("�}����", 0, @0, @180, @0, null,true);
	Zoom("�}����", 0, @1, @1, null, true);
	Request("�}����", Smoothing);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����Լ�Ұ������ս�񷨡���Ƭ���ı�����ġ�
���ڹ�ȥ�����ν�ս�У�ÿһ�����ǺŶ�������һ��ʽ
�������ɻ��ܵġ�

����Ƭ�����ڵ��˾��и߶����Ƶ������ʱ���ڼ�����
����ǰһ�����ǰ�����Ķ������Դ�����ǿ̫������ʱ
����������ͬʱ�Ի���˵���ʽ��
�����Ǻ������ϸ������˽��е����ԡ���

�����仯Ϊ�˴ӳ��߿ս����³�ͻϮ��ͨ������������
���٣��ڲ�����ǿ������ͬʱ�ӽ����ˣ�֮������˲��
��ǰ�뷭ת�������Գ���������޶�������һ������Ϯ
����֡���������һ����ʽ��

  �������Ǻ�������κ��˶��޷���ɵģ�����ħ����

����δʹ��̫��������ǿ�������ȴ��<RUBY text="������">������</RUBY>�ġ�
������������ᡣ

���������ڳ��������ǿ�������֮�����ǺŵĽ�Ҳ��
����������𡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0150a01">
����������˼���Ļ�����������
�����£����Ǻ�����ʱ���ҽ�װ���ϲ��װ�ס���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/008vs0160a00">
������
�����������õ��𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0170a01">
��������������������ſ��ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������һ������£�������ƽ������������ı���
���ƶ�������֮��Եģ�Ҳ��ͨ��<RUBY text="����������">�任����</RUBY>��ʹ
װ�ױ�����
��˵ʵ�������Ѿ��������ҵ���⡣

��Ȼ����������������ʵ������ʵ��
�����Ǻſ��Խ���һ����׹���似����������һ��ʵ
�ǲ��ɶ�ҡ�ġ�

��ʹ������װ��ȫ������֮�صģ�����ħ�ա�
������ȱ��<k>
��
������ֻҪ��õ����������ꡣ

����Ȼ�������һ����ض�����ˣ�����ʽ���ֶ���
��<RUBY text="������">��ɱ��</RUBY>�������ǽ�����
���ֲ��˽���ʽ��һ����֮�ϵġ�

����Ϊ�����Ƕ�ô��������ʽ��һ������ס��������Ŀ��
���ı��Ӧ�Է����ˡ�

�����硰��Ƭ����һ������ͬʱʵ���Ի���˺�ǿ����
�����ɱ���Ϊ�Ǽ�Ұ����֮�������ʽ��Ȼ���������
�����ڶ���һ��ʽ����ָ�ƵĶ���Ļ����㲻������ˣ
�����ˡ�

  û�����ɷŹ�һ��������ǰ���ս���ǰ�����ĵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	CreateTextureEX("�}�ţ�18", 18000, Center, Middle, "cg/ev/ev155_�����֣��y�Ǻţ�_a.jpg");
	Fade("�}�ţ�18", 500, 1000, null, true);

	WaitKey(1500);

	CreateTextureSP("�}�ţ�17", 17990, Center, Middle, "cg/ev/ev155_�����֣��y�Ǻţ�_b.jpg");
	FadeDelete("�}�ţ�18", 500, true);

	WaitKey(1500);

	CreateTextureSP("�}�ţ�16", 17980, Center, Middle, "cg/ev/ev155_�����֣��y�Ǻţ�_c.jpg");
	FadeDelete("�}�ţ�17", 500, true);

	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������������ͬ�����Ǻŵ���ʽҲ��ͬ����
��������ת��ʱ�򿴴��䶯��������<RUBY text="����">�·�</RUBY>��
϶��ͬʱ�ӵ�����նɱ��ɡ�

������һ���ɿ��Ŀ���ȡʤ�ļƲߡ�
�����ң�����ʽ�Ѳ������ܵ����Ǻ����޷��ƽ���һ
�Ʋߵġ�

���������
������ʽ�Ľ����ϣ����Ǻ������е��ƴ�һ��ʼ���Ƿ�
���ģ��ɴ˱�ȷ���������������ơ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0132b]
������Ȼ����
��
����ȥ�Ľ�ս��������ܵġ�

�����ɸ���򵥡�

��<RUBY text="��������������">ֽ��̸��ʵ����</RUBY>��
����ʤ֮�Ʋ����ǲ���ʵ�У��Ǿͺ��������ˡ�
���˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤С����
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Է�̫���ˡ�
��
����һ�����ϵĸ߶ȴ�ֱ�½���ͨ������������
�����٣���ʱ���ն��ٶ��Ѿ��󵽳����˳���

����һ�ζ�ս���Һ��޷���֮���ر��������ˡ�

���ڶ��ζ�ս����������Ҫ���������й�����˲�䡣
�����ǣ���һ�κ��޷���֮���ر����ܡ�

�������ζ�ս��������������Ұ��Χ�ڵ���һ�̣���
������Ҫ����������
�������ջ��ǣ����޷���֮���ر����ܡ�

��<RUBY text="������������������������">�ջع��������Ѿ���������</RUBY>��
����������Ǻŵ�ս���ٶȡ�

������֪�ĵз���ʽ�����������Ӷ����ʤ������
����˼򵥵�ʤ������ʽ�ǲ������ġ���������˵���
����ʽ��ȴ��֪��ʱ���ܽ��Բ�ʵ�еĻ�����ô���޷�
Ӧ�ԡ�

����ս��������������ʤ�������������ҵġ�
��Ȼ�������Ǻ��Ǻ�������ı�����ȴ��ս��������ͬ
��һ������ˡ�

���ý�֮��Ϊ��ʽ�ļ�����
����ν����ʽ�����ջ��Ƕ�����ʹ�õĶ�����

������������Ӧ�����ֵġ�
�����޷����ڶԿ�<RUBY text="����">��ʯ</RUBY>��

�������Ѿ���Խ���ὣ��Ӧ�Եļ��ޡ�
��
�����������ˣ���Ȼ�Ļ��������е�ִ��Ļ�����

����õİ취Ī���������ﳬԽ���ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ٶȻ؏͡����ϕN

	SetFrequency("SE10", 5000, 1000, null);

	OnSE("se���L_����_��ͻ�M03",800);

	CP_HighChange(2500,1252,AxlDxl,false);
	CP_SpeedChange(5000,325,AxlDxl,false);
	CloudZoomVertex(2500,@0,@-300,AxlDxl,false);
	Move("@�}����50", 2500, @0, @1050, AxlDxl, true);
	CloudZoomVertex(1000,@0,@300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);
	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb04/008vs0180a00">
����������
������һ��ʼ�½�������֪ͨ�ҡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0190a01">
���������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����е��ź�̽�����ȷѸ�ٵ�֪̽�ֶΡ�
���������ֻ��Ƭ�̵����󡪡��ӷ����źŵ��źŷ�����
�����ʱ�䡪������̽������Ǻź�ʱչ��������

���ڹ�ȥ�Ķ�ս�У�����Ϊ�����Ӿ�������ܡ�
���ź�̽������Ч��Χ�������һ���ϣ���ȷ�Ǻ���Խ�ġ�
Ӧ���ܹ�ȷ�����Ӿ�����������鱨��

������Ȼ�������ף���ʹ����Ҳ���������ġ�
����������Ҳ������Ϊ��

������ֻ����ɳ����ϸ΢������Ҳ�������ġ�
��Ҫսʤ���Ļ���������Ҫ����õ��鱨��

�������Ǻ�չ����������һ˲�䡭��
��
���������ԡ�<RUBY text="��������">�������</RUBY>Ҳ��������

��Ҫ����չ������<RUBY text="����">֮ǰ</RUBY>��
�������������й���ǰ��֪̽����չ��������ʱ����ֻ��
��㣬���п���Ӧ�����Ĺ�����

��Ҫ�����ѱƽ��������ٶȵĹ����Ļ���
��Ψһ�ķ������ǳ�Խʱ�䡣

���ⱻ��Ϊ����֮����
���ڼ�Ұ�����У��ⱻ��Ϊ����֮��

����������Ҫ��ν�ĳ���������������ʲô������
��������Ҫ�ģ��Ǿ�ȷ����ʯ�����ɾ�����Ĺ۲졣

������<RUBY text="����">����</RUBY>�Է������Ķ�����
������<RUBY text="����">����</RUBY>�Է�������ǰ�ס�

������΢С���ƶ������Ǽ���Ľ�����
��͸����Щ��Ϣ���ڵ���ʵ��չ������<RUBY text="����">֮ǰ</RUBY>������Ԥ֪��

������������ᣬ�ڵ��˼�������ʱ������С��������
��Ұ�����б���Ϊ������֮�����֮�����������Ǻ���ȴ
�޷��������á�
��������������֮ǰ�㽫��ѹ��ס�����������ǲ����ܵġ�

��Ȼ����������������ȴ���Բ�ȡ�Բߡ���Ӧ���õ���
����������֮��Ϊǰ�ᣬ����ȡ��֮�ȡ�ֻҪ���ڶԷ���
�½�ͻϮ������ǰʮ�ڷ�֮һ��Ԥ֪���Ļ���
���ܾٽ�<RUBY text="����">ӭ��</RUBY>��

�����ǻ���˺ɱ��
�����ǣ����ջᱻ��ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm08", 3000, 500, null);

	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("�}����100", 300, 1000, null, true);

	CloudZoomDelete(0,true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/008vs0200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������ңԶ���Ͽա�
����Ȼ���߽��Ӿ��������ӵ����ޣ�ȴ��Ȼ��
������Է����ĩ�۰�ϸС����Ӱ��

�������޷�̽�顣����Ķ���Ҳ�޴ӵ�֪��
��Ȼ�����鱨Ӧ�ò���ֻ����Щ��

��Ƥ�����ȶȡ������ζ���������������
����Щϸ΢���鱨��һ����ĳ�������š�

�������Ǹ�ϸ΢�ġ�
���Ӿ������������ȫ���޷���Ӧ���ģ�ȴ����
����ЩϸС�鱨�ģ�ĳ����������

������<RUBY text="��������������������������">�������������������ڵĲ���</RUBY>��
��
��
���Ǵ����ŵġ�

��ͨ������Ϊ��Ϣ��һ�ֶ����������ҵ�ȷ���ܵõ���
������Ƭ��յľ�ͷ��

���Ⲣ����Ϊ�Ҹо�����
���෴�ģ�����Ϊ�����Ϣ���Ӵ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�y�Ǻ�", 17100, 150, -350, "cg/st/resize/3d�y�Ǻ�_����_ͨ��s.png");


	Move("�}�y�Ǻ�", 20000, @0, 50, null, false);
	Fade("�}�y�Ǻ�", 2000, 400, null, false);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
�����ڸй���ǿ��Ĳ�����
�����������ڻ��������ħ���������

������̨�翿��ʱ�ܸ��ܵ��磬��ɽ�����緢ʱ������
������һ�㣬������Ϣ����������
���뵥�����������Ϣ��������֮��Ĳ�ࡣһ�������
<RUBY text="��Ϣ">����</RUBY>���ǲ����κ��˺��ӵġ�

������������Ӵ���������ÿ��ϸ΢������仯������
���˺����еظ��ܵõ���
��Ȼ������ȴ���������������ʵ֮�⣬�������һ����
֪��

�����ǣ���Ҳ�㹻��Ϊ���õ������ˡ�
������Ϣ�Ĳ���Ϊ�ݣ���ԭ���޷����������˵ĸй�ĩ��
�ӳ�������

���Ӿ�����
����������
���������

�������������ε���ָ��һ�������������������š�
�������������������Ų�����

�����С�
�����������ĸ������������С�

�������ġ�
�������ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);


//�����롤�y
	EfRecoIn1(18000,600);

	Delete("�}����100");
	Delete("�}�y�Ǻ�");
	CreateTextureSP("�}�������}", 17200, Center, InBottom, "cg/st/st�y_ͨ��_˽��.png");
	CreateTextureSP("�}���뱳��", 17150, Center, Middle, "cg/bg/bg052_�����ҵ���_01.jpg");
	Move("�}�������}", 0, @-256, @0, null, true);
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��Ҫ��Ӧ�����˾�Ҫ�������ĺ�����

������ȥ������������
��Ҳ���ȥ�����Ķ�����

��͸����Щ�ֶ�ֻ�ܸ��ܵ��Է��ڱǵĺ�����
�����ֶ��������Ը�⣬��˭���������١�

�����ԣ�Ҫ����<RUBY text="����������">Ƥ���ĺ���</RUBY>��

��ֻ������Ǿ��޷���ƭ�ġ�
���˵�Ƥ���ǲ������ѵġ�

��ͨ���Լ���Ƥ�������ܸ��ܵõ���
���Է���Ƥ�����Լ���Ƥ����
��ͨ���������໥άϵ��һ��ġ�

��Ƥ���ĺ����ᴫ���Ƥ����
��ȥ���Է��ĺ�����

���Է��ĺ����ܻ�����㣬
������Ҫ�������Ƿ��ء����Ҫ�����Ļ���
�ֻ��ں�ʱ������

��<RUBY text="������������������">��ʶ�����ں���֮��</RUBY>��

�������ţ�������������ɡ�
������ν���ؾ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ꡣ��픷�����ϕN
	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	CreateTextureSP("�}����50", 17000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	CreateColorSP("�}ɫ100", 17010, "BLACK");

	EfRecoOut2(600,true);

	OnSE("se����_��_��Ġ����02",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������������

����һ�ؾ����һ���δʵ������
�����ǣ�����������Ϊ���ֵĻ���

����������ǺŵĻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	OnSE("se����_��_��Ġ����02",1000);
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ȡ�ǰ����L����


	OnSE("se����_��_��Ġ����02",1000);
	WaitKey(2500);
	DrawDelete("�}ɫ100", 300, 500, "slide_05_00_0", true);
	CreateTextureEX("�}����150", 17600, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 20, 20, null, true);
	Move("�}����150", 0, @0, @-100, null, true);
	SetBlur("�}����150", true, 3, 200, 70, false);

	Fade("�}����150", 300, 500, null, true);
	Fade("�}����150", 1000, 0, null, true);


//���դ��򤳤��ˡ��V���y�ǺŤΥ��륨�åȤ�������
//��������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����

����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��������", 17500, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(18000);
	CloudZoomStart(1000,800,800,1000,1000);

//�����륨�å�
	OnSE("se���L_����_�z_���01",1000);


	Zoom("�}����150", 1100, 100, 100, Axl3, false);
	Zoom("�}����50", 1100, 60000, 60000, Axl3, false);
	Wait(300);
//	TurboBlur("�}����������");
	Request("�ץ�����", Start);
	Wait(600);
//	WaitKey();
	Fade("�}����150", 200, 1000, Axl3, false);
	Zoom("�}����150", 200, 50, 50, Axl3, false);
	Request("�ץ�����", Stop);
	CloudZoomDelete(200,false);
	Fade("�}����������", 200, 0, null, false);
	Fade("�}��������", 200, 1000, null, true);

	Delete("�}����������");
	Delete("�ץ�����");

//	EffectZoomadd(17600, 300, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Wait(200);

	SoundPlay("@mbgm12",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ˣ�

�������
��ƽ���ġ��������ڳ�˯���ƽ�Ⱥ�����

�������ڻ������������
���Լ���δ����Ϯ֮ʱ��

���Ҷ�֪����
��͸��Ƥ���ĸо�������ظ�֪�š�

�����������ľ��룬��׼ȷ��ץס���������������Ǻ�
����һ���ߡ�
������������������Ӧ��֪���ġ�

���������Ǻŵĺ�����
���������Ǻŵ���ʶ��

��û��
��
���Ҳ����ܻὫ���ϴ�

������˽�Ҳ��������Ȼ�ġ�
��
����Ϊ��ȥ�������ޱȵع���<RUBY text="��">��</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�����ι�
	EfRecoIn1(19000,600);
	Delete("�}����150");
	Delete("�}����50");
	CreateTextureSP("�}����", 18000, Center, Middle, "cg/ev/ev128_�����ι�_a01.jpg");
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��ÿ�죬
�����ػ��š���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	Delete("�}����*");
	Delete("�}��������");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}����150", 100, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 5, 5, null, true);
	Move("�}����150", 0, @0, @-100, null, true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb04/008vs0210a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ӿ������������뷨��
�������Ҳ���Ҫ��ã��

���µ���񣬲����ٶ�ҡ���ġ�
�����ǵ��ˡ����ˡ���Ӧ��ܵĵ��ˡ�

�������˵ĺ������������������ʶ���������С�
��Ϊ��սʤ����

������Щ�鱨��������һ�о��С�
���ȴ�������Ϣ�ı仯��

��������Ϣ<RUBY text="����">��ҡ</RUBY>����һ˲�䣬
������������Ӧ�Ļ�������Ӯ��

����������
��������������

���ȴ���
���ȴ���һ������ֵģ��о��Ķ�ҡ��

��û������

�����ɣ����ޱ仯��

�����ɺ�ƽ����

����������
��
�����ǣ�ʱ���Ϳ�Ҫ�����˰ɡ���

���Ҿ������ʧ��һ˲�䡣

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƥ����ȱ�ʾ�Ф�
//����˥��`�������뤫�鳬�����٤ǺΤ��������w���
//�����ƥ��ܩ`�󡣻���֥�å������ȡ�
//������һ�����������ݳ���һ����
//����F���ϡ���ԣ�����Ƥ���ʤ�һ˲�Ǥ��줿��


//������ֱ����y�Ǻš�����˄ݡ�
//���Ϥ��ݳ��Ȥ�������ݳ��ȤϾ�����Ĥ��롣������
//���Ͼ���



	CreateSE("SE01","se���L_����_�z_�����w��02");

	Wait(300);

	EffectZoomadd(16000, 300, 200, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Move("�}����150", 150, @0, @100, Axl3, false);
	Zoom("�}����150", 150, 2500, 2500, Axl3, false);

	Wait(140);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 0, 0, null);
	CreateColorSP("�}ɫ�\", 16999, "#000000");
	Delete("�}����150");
	Wait(2000);

	SetVolume("SE*", 2000, 0, null);

	Wait(1000);


	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateTextureEX("�}��17", 17000, InLeft, -400, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	Rotate("�}��17", 0, @0, @180, @0, null,true);
	Zoom("�}��17", 0, @1, @1, null, true);
	Request("�}��17", Smoothing);
	SetBlur("�}��17", true, 1, 250, 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��17", 600, 1000, null, false);
	Move("�}��17", 3000, @-512, @0, AxlDxl, false);

	WaitKey(1000);

	CreateSE("SE01a","se���L_����_��ͻ�M02");
	CreateTextureEX("�}��18", 17010, -512, InBottom, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_bl.jpg");
	Rotate("�}��18", 0, @0, @180, @0, null,true);
	Zoom("�}��18", 0, @1, @1, null, true);
	Request("�}��18", Smoothing);
	SetBlur("�}��18", true, 1, 250, 100, false);
	MusicStart("SE01a",0,1000,0,1200,null,false);
	Fade("�}��18", 600, 1000, null, false);
	Move("�}��18", 1000, @180, @570, AxlDxl, true);
	Delete("�}ɫ�\");

	SetFwL("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/mb04/008vs0220a14">
������<RUBY text="�ƣ�����硡�ģ����̣��������">����ʧ׹��С����</RUBY>������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ä���
	WaitKey(1000);

	SoundPlay("@mbgm37",0,1000,true);


	CreateTextureEX("�}��20", 17020, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");
	Zoom("�}��20", 0, @1, @1, null, true);
	Rotate("�}��20", 0, @0, @180, @0, null,true);
	Request("�}��20", Smoothing);
	Fade("�}��20", 1000, 1000, null, true);
	Delete("�}��1*");

	WaitKey(1000);

	CreateTextureSP("�}��19", 17000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	Zoom("�}��19", 0, @1, @1, null, true);
	Rotate("�}��19", 0, @0, @180, @0, null,true);
	Request("�}��19", Smoothing);
	FadeDelete("�}��20", 1000, true);

	WaitKey(500);

//��������ܥå���
//��������ݳ����ܥå�����������ä���������������ʡ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��
����������������������Ϊ�Լ����Ҹ���
����Tell me the tales that to me were so dear��

��
�������������������ܾúܾ���ǰ��
��������<PRE>��Long long ago, long long ago��</PRE>

��
�������������õ���������Ҫ�Ķ�����
������Sing me the songs I delighted to hear��

��
�������������������ܾúܾ���ǰ��
����������<PRE>��Long long ago, long ago��</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 200, 0, null);

	CreateColorEXadd("�}ɫ300", 18100, "WHITE");
	Fade("�}ɫ300", 1000, 1000, null, true);

	Delete("�}��*");
	CreateColorEXmul("�}ɫ100", 18000, "RED");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	CreateSE("SE01","se���L_�Ɖ�_���k07");
	CreateSE("SE05","se���L_����_�z_���01");
	CreateSE("SE08","se����_���å��ԥå�_����`��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",2000,1000,0,1000,null,false);

	Zoom("@�}����50", 0, 3000, 3000, null, true);


	FadeF4("�}����50", 0, 1000, 10000, 0, 0, Dxl3, false);
	Fade("�}ɫ100", 0, 1000, null, true);


	CP_HighChange(16000,352,AxlDxl,false);
	CP_SpeedChange(16000,225,AxlDxl,false);

	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	CP_RollBarMove("@�}����50", 150, @10, AxlDxl, false);


	OnSE("se���L_�Ɖ�_�z03",1000);


	MusicStart("SE08",2000,1000,0,1000,null,true);
	Shake("@�}����50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@�}����50", 2000, @-200, @-150, Dxl1, false);
	Zoom("@�}����50", 16000, 1000, 1000, Dxl2, false);
	CP_RollBarMove("@�}����50", 300, @-10, Dxl2, false);

	FadeDelete("�}ɫ300", 1000, false);

	Wait(500);

	Fade("�}ɫ100", 300, 0, null, true);
	CP_RollBarMove("@�}����50", 1000, 0, AxlDxl, false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 200, 1000, null, true);

	FrameShake();
//������
//�������`��ʳ��äƤޤ�����˥��`�ࡣ
	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���ܥ������h�餺���Υ����ǡ�
//��������
<voice name="����" class="��������" src="voice/mb04/008vs0230a01">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������ҡ�
��
��������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);
	CP_AllDelete();

	Wait(1000);

}

..//������ָ��
//�Υե����롡"mb04_009.nss"

function TurboBlur()
{

	while(1){
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 100, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 20, 1000, null, true);
	Fade("$�����ʥå���", 80, 0, null, true);
	}

}
