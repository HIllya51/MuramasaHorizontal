//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_049vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//���x�k�ߥ���"mc04_050vs.nss"
	//���x�k�ɹ���"mc04_051vs.nss"
	//$GameName = "mc00_001.nss";

	$SelectGameName="@->"+$GameName+"_SELECT01";
	call_scene $SelectGameName;

	call_scene @->mc04_049vs_002.nss;

	$SelectGameName="@->"+$GameName+"_SELECT02";
	call_scene $SelectGameName;

	if($mc04_049vs_001 == true && $mc04_049vs_002 == true){
		$GameName = "mc04_051vs.nss";
		$mc04_049vs_001 = false;
		$mc04_049vs_002 = false;
	}else{
		$GameName = "mc04_050vs.nss";
	}


}

scene mc04_049vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);

..//������ָ��
//ǰ�ե����롡"mc04_048vs.nss"


//������������

	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg001_��a_01.jpg");
	CreateTextureSP("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}��", Smoothing);
//	Rotate("�}��", 0, @0, @0, @-50, null,true);
	Zoom("�}��", 0, 1000, 1000, null, true);
	Move("�}��", 0, @0, @-1300, null, true);
	SetBlur("�}��", true, 1, 200, 100, false);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @90, null,true);
	Fade("�}������", 0, 300, null, true);


	Shake_Loop("@�}��","shake02");

	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	FadeDelete("�ϱ���", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("�}����50", 30000, @0, @-1500, Dxl2, false);
	Move("�}��", 2000, @0, @1300, Dxl2, true);
	FadeF4("�}��", 0, 1000, 60000, 0, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��֮ǰ�����ָ����еĵ������ٴ�ʧȥ����������
��ȷ����״��ʱ�����Ҳ��ɵ�ս��������

������׼��

���������ƽ��������Ҳ�رյ�����˾ۼ�������
��<RUBY text="��������">һ��׹��</RUBY>��һ����ͼ�ٴ�
ʹ���ǿֲ���һ�䡣

����ȫ�ǿ��˵���Ϊ��
�����ǣ�û���κξ��ȵı�Ҫ��

��������׵ж��ԣ���������Ȼ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");

	OnSE("se���L_����_��ͻ�M01",1000);

	Move("�}��", 300, @-1500, @0, Dxl2, true);

	Fade("�}����100", 300, 1000, null, true);
	Delete("�}��");
	Delete("�}������");

//�������ѥ�`����
	SetFwC("cg/fw/fw����_���L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/049vs0010a00">
���������١�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Śݼ���
	OnSE("se����_��x_��������01",1000);
	EffectZoomadd(18500, 300, 100, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg", true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/049vs0020a00">
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_b.jpg");
	Shake_Loop("@�}����200","shake01");

	OnSE("se����_��x_��������02",1000);

	Fade("�}����200", 300, 1000, null, false);
	EffectZoomadd(18500, 500, 300, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_b.jpg", true);

	Delete("�}����100");


	CreateTextureEXadd("�}����������", 10500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(10000);
	CloudZoomStart(1000,800,800,1000,1000);

	Request("�ץ�����", Start);

//�����å��塣
	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg002_��a_01.jpg");
	Shake_Loop("@�}����50","shake01");
	Fade("�}����200", 500, 0, null, false);
	Zoom("�}����200", 500, 2000, 2000, Axl2, true);
	Delete("�}����200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������ϣ��ҷ�Ҳ�������塣
�����ݴ�����������

�����ﳬԽ���߳�ʶ�ļ����ٶȡ�
������߼��ľ����ý���Ҳ����Ī�����ٶȡ�

���������û���κζ�����׷�ϰɡ�
��
��
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);

	CreateTextureSP("�}����300", 18000, Center, Middle, "cg/ev/ev004_����֦������_b.jpg");
	EffectZoomadd(18500, 500, 300, "cg/ev/ev004_����֦������_b.jpg", true);

	Wait(300);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/049vs0030a00">
��û��˦����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������˫�۲���������ϵĶ�����
����ʶ�����������������׽ס�ˣ�Ƥ���·����
�ź��š�

���������ͼ������ܣ��ض����޼ƿ�ʩ�ر�����
��������������ʡ�
�����ǣ�����˳�ȥ�ֻ�õ�ʲô�Ʋ���

����Ȼ�ѱ���׽���ᱻ��ȡ�Ȼ�Ҳ�Ǳ�Ȼ�ġ�
�����ҵ��˵���������<RUBY text="����">����</RUBY>������ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�ѥ�ɥå������
	EfRecoIn1(18500,100);

	CreateTextureSP("�}����", 18000, @0, @0, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ǲ��Ǵ�����������ǡ�
�������ִ��ɳ��ļ�ʸ����;�иı�·�ߣ��ᴩ���ҡ�


�����Զ�׷�٣�����Զ�̿��ƣ��޷��������ۡ�
����Ȼֱ���������Ǻ��ߣ���Ҳ���޸��ݡ�

��һ��ȷ�����ʵ�ǣ�<RUBY text="����">û��</RUBY>�ܿ��ķ�����

�������Ǻ�����ʽ��Ӧ�ö���ͨ�����ٷ��г�Խ���ֲ�
׽Ŀ��ļ��ޣ�Ȼ������
�������������壬��������ٶȶ��޷�˦���Ļ���Ҳֻ
�з�����

�����������������ر��ֶΣ������鱨���㡣

�����ֵ���ʽ����һ�ξ�����ȫ�ƽ�Ĳ��ܣ��ܲ���
������Ե��

����ˡ�������

������ض����������
������ض����С�
��
����������������������Ϊǰ�����Ӧ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(100);

	Delete("�}����*");
	Delete("�}����300");
//�����ߣ������å��ԥåȄ���һʽ================
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);
	CreateSE("SE10","se���L_����_��ͻ�M05");


	FrameShake();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,52,null,false);
	CP_IHPChange(0,3,null,false);

	Cockpit_AllFade2();


	MusicStart("SE10",2000,300,0,1000,null,true);
	BGMoveAuto("@�}����50",1);
//�����ߣ������å��ԥåȄ���һʽ================

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ʸ������������һ�κ�����ʱ��Ҳû�С�
�����ڼ���ʱ���ڽ������ռ����⡣

�����Ժ��и��ֵ��з�ֻ��һ����
��
����������֮����

���������ļ�ʸ��һ�����䡣
����Ѫ��֮�����˶��ԡ������ǵǷ��켫֮ҵ��

�������о�������ߣ���ֹ��ʸ��ƾ̫��һ������ǹ
��Ҳ�������¡�

���ɼ��������ߣ�Ҳ���ò���ͬΪ���ߵĵ����ù���
���ļ�ʸ����������в��
���ڵ�����ݳ�ǹ�����߹�����ǰ�������Ǿ�����ǿ
���ķ�����Ҳ�������������ľ��ء�

��������˼�ʸ�ǳ�Խ���ѵ�����֮�¡�
��
��
���������Ҳ��ò����������֮�¡�

��������������ô���̫�����޷��������
�����޷�ɱ���Ǹ����ˡ�

��Ҫ����������ٴα���ת�����У�������Ҳ��׹�䡣
�����˸ղ�һ��֮�����嵽�Ｋ�޵ĵ���ʱ���Ѿ�
��ʼ��

�������޷����¼�ʸ���ܱ���ɶ��֡�
��
��Ҫ��β��ܰ쵽��

������ӵ�г�׿�Ķ�̬��������Ӧ�ٶ��Լ��˶�������
��ȻҲ�����ܰ쵽��
������������������һ�־�û�г������˷���Ĵն�
�������ԣ��������Ҳ�����ܡ�

��ƾ�輼�ɶ�Ӧ��Ψһ�Ŀ������˰ɡ�
����������ϰ�ļ�Ұ��������û�д����������״��
Ч�ĵ���֮����

�����ԡ���<k>
��Ψ�����ڣ�����<RUBY text="������������">�ڴ˴�����ʽ</RUBY>��

��³ç��ѡ��

�����ֵ���ͼ��
���ɹ���΢����΢��

����������ס����˿һ��Ŀ����ԣ����޷�ɱ��
�Ǹ�����ʿ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 3000, 0, null);


//���Х���������
	CreateTextureEX("kana", 18100, 0, Middle, "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureEX("�}EV100", 18000, 0, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 1, 300, 100, false);

	Move("kana", 0, @-200, @+100, null, true);



	Fade("kana", 300, 1000, null, false);
	Fade("�}EV100", 300, 1000, null, false);
	Move("kana", 300, @-300, @250, Dxl2, true);


	Move("�}EV100", 0, -390, 140, null, true);

	EffectZoomDXadd(18500, 1000, 100, "#FFFFFF", "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg", false);
	OnSE("se����_�z_װ��06",1000);
	FadeDelete("kana", 250, false);
	Move("�}EV100", 500, 0, 0, Axl3, false);
	Zoom("�}EV100", 500, 1000, 1000, Axl3, true);

	Wait(500);



	CreateSE("SE�ܥ�����","se����_�Х���_�ѥ�`���_L");
	MusicStart("SE�ܥ�����",1000,1000,0,1000,null,true);
	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������������ˡ�
��
����Ƥ���ϵļ�Ƥ��񣬻��ез�ɱ����Ƚ�������
����ʣ�µ�ʱ���Ѳ���һ�롣

��û�дӶ෽�ӽ�̽�ַ�������ԣ��
������������ѡ�񡱡�

��<RUBY text="����������">���ĸ��Ƕ�</RUBY>˼���ء�
��Ҫ���������ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc04/049vs0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 18000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	Fade("�}ɫ100", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ѡ��˼���÷���ѡ������֮��
��Ϊ��ȷ����ȷ����Ҳ��Ҫ˼�������Ǿ����ڶ�����ֻ
��ζ��ʱ����˷ѡ��������³��ܱ���������������

������ѡ�񡱰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ��ե�å���Хå��ݳ����뤫�����ߤɤ���

	CreateColorEXadd("�}ɫ�ե�å���Хå�", 18500, "WHITE");

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev942_�����֣����.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev958_�L���R�\��.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev943_�����֣���ɽ.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev180_����Ƥ椯���å������`���إå�_c.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);
	CreateTextureSP("�}����", 18000, @0, @0, "cg/ev/ev187_㑷�������_a.jpg");
	Fade("�}ɫ�ե�å���Хå�", 200, 200, null, true);

	Wait(500);

	Fade("�}ɫ�ե�å���Хå�", 100, 1000, null, true);

	Delete("�}����");
	FadeDelete("�}ɫ�ե�å���Хå�", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
���ն��������ϻ����˴�����ս�����顣
�����п��ܾͰ�����һ����ͨ����ȷ�𰸵�������

���ҳ��Ǹ�������

��Ȼ����һ��ѡ��
����״֮�µ�Ҫ����ʲô����Ҳ��Ҫͨ��ѡ����������

������ѡ�����Ҫ�㣬�ο����о�ս����¼���������
�Կ��з�������ս����

����ô����ѡ��ɡ�
��ѡȡ������ҵ�һ�ι�ȥ��

�����ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k��⏴���ȤΑ��L���L���Ҿ��ȤΑ��L���LħС̫�ɤȤΑ��L��ѩ܇�һ�i�ȤΑ��L������ҰС�ĤȤΑ��L�����B�{�Ӻ�ȤΑ��L


}


scene mc04_049vs_002.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("�}ɫ100", 18000, "BLACK");


	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ҫ���ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k���Է֤�ؓ��״�r�������Γp��״�r�����T�Γp��״�r�����T��ҕ�������T��Ŀ�ģ����ΐ���
//������ϡ����B�{�Ӻ𡹡����T��ҕ����


//���������x�k֫�Ǥϥե饰�Τ߻؅�

}

..//������ָ��
//���x�k�ߥ���"mc04_050vs.nss"
//���x�k�ɹ���"mc04_051vs.nss"

//���x�k֫���`��
scene mc04_049vs.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CP_AllDelete();

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("�}ɫ100", 18000, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice06("���崨���ս��","�볤���Ҿ���ս��","���ħС̫�ɵ�ս��","��ѩ���һ�ص�ս��","������ҰС�ĵ�ս��","�����ʨ�Ӻ��ս��");
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
//⏴���ȤΑ��L
		}
		case @�x�k֫��
		{
			ChoiceB06();
//�L���Ҿ��ȤΑ��L
		}
		case @�x�k֫��
		{
			ChoiceC06();
//�LħС̫�ɤȤΑ��L
		}
		case @�x�k֫��
		{
			ChoiceD06();
//ѩ܇�һ�i�ȤΑ��L
		}
		case @�x�k֫��
		{
			ChoiceE06();
//����ҰС�ĤȤΑ��L
		}
		case @�x�k֫��
		{
			ChoiceF06();
			$mc04_049vs_001 = true;
//���B�{�Ӻ�ȤΑ��L
		}
	}
}

scene mc04_049vs.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("�}ɫ100", 18000, "BLACK");
	CP_AllDelete();

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice06("����ĸ���״��","����������״��","���������״��","���������","�����Ŀ��","�����Ķ�");
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
//�Է֤�ؓ��״�r
		}
		case @�x�k֫��
		{
			ChoiceB06();
//�����Γp��״�r
		}
		case @�x�k֫��
		{
			ChoiceC06();
//���T�Γp��״�r
		}
		case @�x�k֫��
		{
			ChoiceD06();
//���T��ҕ��
			$mc04_049vs_002 = true;
		}
		case @�x�k֫��
		{
			ChoiceE06();
//���T��Ŀ��
		}
		case @�x�k֫��
		{
			ChoiceF06();
//���ΐ���"
		}
	}
}



