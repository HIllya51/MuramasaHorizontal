//<continuation number="1060">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_021.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma01_021.nss","Moyamoya",true);

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
	#bg019_��У����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����=true;

	$PreGameName = $GameName;

	$GameName = "ma01_022vs.nss";

}

scene ma01_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_020.nss"


	SoundPlay("@mbgm34",0,1000,true);

//���У��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	FadeDelete("�ϱ���", 1000, true);

	WaitKey(1000);

	OnSE("se����_����_�᤺����01",1000);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ֳŵء�
��ϥ��������

���¹�������ʵ���ѿ���
�����Ļ��˵�����û���˿���

��Խ���������ж���
�Ѿ�����ƽϢ��ʹ������������ǿ�ҡ�
�������ʹ�������á�

{	OnSE("se����_����_�𤭤�02",1000);}
��ֱ�����塣
��������վ��������

����ô������ֻ��֧���ϰ���
��������ע�뽩Ӳ���ֱۣ�ǿ��֧��������

�����߲�׽���������ŵ��崨��
���Ծɸ߾���˫�֣���ȫ�����������ɫ����
�������ҿ�����ˡ����������컨�塣


��ʵ���ϲ�����׳�һ�����㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210010b56">
��ι����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210020b57">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ѵ�����Ȼ�����ҵĴ����𡪡��崨�Ļش�����
����Щ���ȡ�
������������ͷת�����������ҵķ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210030b57">
����ô�ˡ�
����Ҫ<RUBY text="����">�ս�</RUBY>���𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210040b56">
����������֮ǰ��
���һ���һЩ��������̡���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210050b57">
��˵����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������Ͽ����崨�����ش���˵��ȥ��
���������롣��һ���ʲô�������ϵĴ�������Ҫ��
��Ȼ��ֻ�Ǹ��׳գ�˵�������߶��ǡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210060b56">
�����ڣ������о����ġ����Ǿ����𣿡�

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210070b57">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210080b57">
���Ǳ��Ǿ��������
���ؼ������ҵ�����֮���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210090b57">
���Ҹ����������ϣ��Ϊ��ָ����
����Ϯ�ҵȵĲ���֢֮����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210100b57">
������֮����ڣ�
����ؽ�ʧȥ��
����ʶ����������ʵ��
���������Ǿ�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210110b57">
����ϲ�ó�ӯ��������
����һ��ػᱻ�����ϵĶ��ⸯʴ��
�����յ����Ϊ�������յ㡭��
��ʵ��������������������һ������

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210120b56">
����������
������ְ�������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210130b57">
��ʲô����

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210140b56">
�����ڣ��������ܵ���<RUBY text="����">�һ�</RUBY>��
����ô�룬���޷�������Ϊ�Ǿ�������<RUBY text="����">��˳</RUBY>
�Ķ���<?>
{	FwC("cg/fw/fw���w_ŭ��a.png");}
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	OnSE("se����_����_ߵ��02",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������˫�ֻ���ذ塣
��ƾ�跴��������΢����̧�����塣

�������Ǽ�϶������˫�ȡ�
���ӹ��������ƣ���Ϊ���Ʋ�����ŵء�

���е�����������������ϵ��˿�˺�ѿ�����
�����������ĸо��ٶȱ��ߡ�

��Ȼ����������ʹ�ࡣ
�����������������̡�

����ֱϥ�ǡ�
�����ϵ����������ӡ���ʹ�����ӡ�

��վ������
�����崨��ǰվ������
��ֱ��<RUBY text="����">����</RUBY>��

���������⡣
���н�˫�ߣ���������

��ֱ����ʱ���崨�ƺ���δ����Ҵ�����ʲô��
��ֻ���þ��ȵ��۹�ע�����ҡ�

����̤����š�
��ϥ������ʹ����֨��֨�ز�����
�����͡�

�����������ս�ȭͷ��
���������Ļ������ӵ����

{	SetVolume("@mbgm*", 1000, 0, null);}
����������ʹ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se���L_����_�z_̤���z��02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	OnSE("se���L_����_Ź��01",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 200, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ȭͷ�����������ϵĸд����޷��á���Ӳ�������ݡ�
�����������ʯͷ�ϡ�������˵������ɽ�ϵ�ͬ�ĳ̶ȡ�

��������Ϊ�Ǻ������顢�þ�ȫ���Ĺ������ҵ�ȭͷ�ܵ�
�ķ����������������
����þ��񻵵����ʵǼ�һ����

����Ȼ����ʹ��

���ұ�һ����Ϊʹ�����Ѿ�ȫ���ն��ˣ�
����������Ƶĸд������ƺ�
���ɽ��ڡ�����֪���ո�Ŭ�����
�����Ѿ���ȫ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210150b56">
���ذ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������ڷ��ڡ�
������м�����Ҫ�Ļ�·�����ˡ�

��Ҫ˵�����ɹ���ֻ�������ߵ�������΢���˻Ρ�
���⻹��������ȫ��������ô���ܹ���

���ҵ������ơ�
����һ��̤����š���ס���壬����������
ƾ��ȫ������������߳���

��������Ѫ�����ҽš�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210160b56">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	CreateSE("SE01","se���L_����_��ж�");
	MusicStart("SE01",0,1000,0,750,null,false);
	OnSE("se���L_����_Ź��03",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 400, DxlAuto, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����в����·�����շ��ߡ�
����ͬ�漣�㣬׼ȷ�ز�׽�����ߵ���򦣬
�������ϻ�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210170b57">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ƾ��֮ǰ�ƻ������ε�Ź��͸ղŵ�׷����
�����������ܵ��£������ˡ�

�����ߵ����ˡ�
��<RUBY text="������������������������">�������һ�ߵ����ߵ�����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	DeleteStL(300,true);

	CreateTextureSP("�}�������", 1000, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	OnSE("se���L_�n��_�zܞ��03",1000);
	Shake("�}�������", 500, 0, 4, 0, 0, 1000, null, true);

	Delete("�}�������");

	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210180b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������ף��
�����������������ұ۵��Ŷ�ͷ����

���Ҹ����ŵ��ڽűߵ����ߡ�
������û���ң������������ߡ����ڡ�

������̬��
���Դ����͵��ڵ��ϵ����ߵ���̬��

������ǡ���ʵ���������ǣ�
���ǳ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210190b57">
������ʲ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ʱ�����ڡ�
���崨��˼ά�����׷������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210200b57">
�����ʲô����

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210210b56">
��ʲô��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm10",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����ŭ���š�

�����Ǵ�������һ
��ʲô����������
�����Լ�����ʲô����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210220b56">
��������
�����ֶ���˭֪��������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210230b57">
��ʲô��������

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210240b56">
���Ų���������
�������ˡ��ң��Ұ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���̽���ɡ�
�������ڿεĻ���

�������㣬����Ī��Ĺ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210250b56">
��������<RUBY text="����">��ŭ</RUBY>����
�����ǵ�Ȼ�İ�!!��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210260b57">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������Ȼ�ġ�
��������Ȼ�ġ�

�����ѱ��˺��˰���
�����ǳ��ǳ��п���˺��˰���
�����˷�ŭ�һ��ܸе�ʲô��

���Ҵ��ĵ��ﲪȻ��ŭ�ˡ�
������֮����û�������ĸ��顣

��������Ϊ���˵ĸ��飬�������Ժ��ջ�������
����ԼԼ���ס�
����������û�С�

������ֻ�з�ŭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210270b57">
����˵������ŭ��
���㡭�������ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���崨һ������һ�ߵ����š�
���ý���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210280b57">
�������ŭ�������ã������õģ�
���Զ�ȥ����֮�����񡭡���ʹ
��ȼ����ŭ������������
��ʲôҲ����ı䡭����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210290b57">
����ƾ��ŭ�ܴ�����!?����Ϊ���ߵ��ң�
���ܴ򵹡����������𣡡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210300b57">
����������ȼ��ŭ����������Σ���
�������߾�����ǰ����Щʲô����
ʲôҲ�����ˣ�
����ˡ���Ψ�о�������

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210310b56">
���Ҳ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ȼ������
��ͨ�����������룬��ֻ�ǵ������֮�������룬
�Ҽ���ܾ���

�����ֶ����Ҳ���Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210320b57">
����˵ʲô������

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210330b56">
������ܲ��ܴ��й�ϵ��
��˭�������Ĳ�࣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ѵ���š�
�����崨�������Լ���

����ֱ������֮ǰ���Լ���
��ֻ����������ߣ�ʲô����û���������ˣ�
�����ˣ�����С�ĺ��ұ����˺���
���������Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�룺������ӛ�Τ⤢��ޤ���
//��<RUBY text="��������">���˰���</RUBY>�������
//������������
//������񶨣�
//�����ԣ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210340b56">
��<RUBY text="��������">���˰���</RUBY>�����
������������
������񶨣�
�����ԣ���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210350b56">
����ˣ�
��Ӧ��ŭ���ս����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210360b57">
������������

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210370b56">
��<RUBY text="��������������������">���ò�ս֮ʱ����ս��</RUBY>��
���ܲ��ܻ�ʤ����֮����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����ֻ�ǲ�������Ľк���
������������ԡ�
�����޵�����ԡ�

��ȴ�ǣ�������
��Ϊ�˾���������֮���һ�α�а��������ۡ�


��������û����ν�������¡�
��û�����롣

�����ڣ�������ʶ����ԭ��

����Ϊ�ҷ����ˡ�
����Ϊ�϶�����Ҳ���������ͷ����ˡ�

�������롣
������ʵ�й��ģ����롣

��������˯�ˡ�
��һֱ�������š�

���������ǣ�
������֮ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210380b56">
����Ҳ���������ս����
��ս�����㿴����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210390b57">
������������

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210400b56">
����ȻҪ���ս���һ���ȫû��ͷ����
�����ǣ��һ�ս����ֻ�����Ǿ����õġ�
��Ϊ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���ҡ�
���Ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210410b56">
��һֱ�������޸е���ŭ����
���޷�ԭ�����ǵ�������Ϊ����
����ı�������硣��������<RUBY text="����">����</RUBY>��
һֱһֱ���Ҷ�����ôϣ���İ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���Ǿ����ҵ����롣
���������������顣

������Ը���Ѿ����ǣ������˵����롣
�����ǣ�����Ҳ��������ˡ�

����Ϊ���ܲ�ս����
��Ϊ�˲��ٱ���������ذ��ᣡ

���Ҳ�֪���ǽ��������п������ĵ�·��
��������֪���Ƿ�����յ㡣

�����ǣ��һ����ҵ�������
��һ��һ����������·�ϡ�

�����������أ�ǰ�����㿴��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210420b57">
��������������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210430b57">
���㻹�ǡ���ʲô��û��Ⱑ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����ҵ����£��Ծ����ŵ��崨����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210440b57">
��û�������ν��ʧȥ��û�����ȷʵ���ڹ��ģ�
�䰮��������֮������н������ŵ���ʵ��
���㻹û����⡣��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210450b57">
���ܿ�ͻ����ס�����ֻ����Ĵ����ھܾ�
�����ѡ������ǲ�����ͻ������ˡ�
������Ұ�����ǣ�����ʧȥ��Щʲô��
������ʧȥ��Щʲô������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210460b57">
��һ��������ҲΨ�о�������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210470b56">
���Æ��°�����ʦ��
�����ǲ�������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ȷ�š�
���϶���

�������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210480b56">
����Ϊ��ʲô��û��ʧȥ������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210490b57">
����������ʲ��ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���������൱�������ϰɡ�
���崨��������һ�γ��ּ�ϡ�

���һ������ܡ�
������С�ĺ��ұ�����Ӱ��
�������������ޱ���ת�����ߵģ�
�п����Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210500b56">
�����˺���������ϧ�Ķ�����
����һ��û�������ҷ�ŭ�����Բ���ԭ���㡣��

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210510b56">
������ʲô��û��ʧȥ����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210520b57">
��������

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210530b56">
������˵����ʧȥ��ʲô!?
��С�ĵ������𣿡������ǰ������������
һ���������������ɡ���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210540b56">
�����һ��������
���һ��Ϊ�������壡��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210550b57">
������!?��

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210560b56">
����������ʲô���ұ��Ľ�����
�������Ǹ���ʧ����ȷһ���
����Ϊ�����˾����Ĳ������ء���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210570b56">
�����ǡ�����һﲻ�������
��������Ϊ���̶ֳȵ�����;�����
��˵����������Ϊװ�����ֵ����붼�����������
��һ�����������˰�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210580b57">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210590b56">
��֮����ʲô!?
����ո�˵��ʲô�����
������֮�����𣿡�

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210600b56">
���ǲ��ǣ����ֶ������ǣ�
��ô���ܱ��������ļһ��ƻ���
������һֱ����ͬ�飡������ǰ��ʼ����

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210610b56">
����������죬��΢���˵�ʲô��
<RUBY text="����������������������">�����ʵ�������ܱ�Ĩȥ</RUBY>��
��������ʧ�����������ǣ���
������������ͬ�飬���Բ������ǣ���

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210620b56">
�����ԣ�
������ʲôҲû��ʧȥ!!��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210630b57">
������������ô�ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�������Ǳ������ţ��崨��������
���Ȳ�ǿ��Ҳ������

��Ϊʲô�������ļһֱ���ղ��Ҷ����ҵ�������
ȴΨ���ǴӰ���
�������ļһ
�������ļһֻ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210640b56">
����˵������֮�ﶼ����С�İɡ�
�����Ǵ����İɡ�
���崨����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210650b57">
���������졣��

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210660b56">
���Ҹ����㡣
����С�Ĳ���������˵������֮���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210670b57">
�����졣��

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210680b56">
����С�����㰡���崨��
��ֻ������֮�����ǰ���ţ�
��ͰѼ���ȫ����������һ��
�����������ڣ�������С��!!��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210690b57">
�����졪��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
������վ��������
���������ǡ�

�����˵�ѹ�ȸС�
�������ս�����ڣ�ʧȥ��ȫ�����ƣ�ɢ����
�������ߵ��ս������

�������Ҿ���վ��ڤ�����һ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210700b57">
��ʲô��û��ʧȥ������С��ֻ���Ҷ��ѣ�
��ʲô��������ëͷС�ӡ������ſڴƻƣ���

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210710b56">
��ʲô�����������㡣
�������ˡ�
�����ñ����������׵�˵����������㡣��

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210720b56">
��<RUBY text="����������������������">��ѱ��˾����ľ�����</RUBY>��
��<RUBY text="����������������">���ǲ�û��ô��С</RUBY>!!��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210730b57">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������ը����
������һ����

�����ߵ�ȫ��ӿ�ֳ��Ѻۡ�
�������ҷ·�����������

������������ҡ���š���������
������ʾ��װ���ڲ�Ķ�ҡ��
������ŭ��

�����÷��衣
����Ȼ��ŭ��

{	OnSE("se���L_����_������02",1000);}
��̫���������˶��죬ֱָ�Ͽա�
��Ҫ�ǿ�������һ���������촦��

�����ң���Ҳû�в���ô�������ɰɡ�

����ע����̫����
��Ҫ˵����Ҳʵ�ڹ��ڷ��������С�

���������ȣ����ܲ��ܶ㿪��
��������һ�㣬��һ����Ҫ����ѧ��������������

����֮�󣬻�Ҫ����С�ĺ��ұ������������ѡ�
����������һ�����˻��ʾ��ܸ������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�����ǣ����������
�����Բ��������

�������ǵ�ս֮ʱ��
�����ԣ�ս����

�����۶�����������ǿ�С�
�����������ߡ�

���뾡һ�а취��
���þ�һ���ֶΣ�
��ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210740b56">
����������ɣ�ų�򡣡�

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210750b57">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(1000);

//��һ�W
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 10, "#000000");
	DrawDelete("�ϱ���", 100, 100, "slide_06_00_0", true);

	OnSE("se���L_����_�����01",1000);
	SL_down(@0,@0,2000);
	SL_downfade2(10);

//�����
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 100, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	OnSE("se����_����_֩������¤�01",1000);
	DrawDelete("�ϱ���", 100, 100, "slide_04_01_0", true);

//�������`��
	SetVolume("@mbgm*", 500, 0, null);
	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}�ե�", 150, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 15000, "#000000");
	DrawTransition("��ܞ", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}*");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	DrawDelete("��ܞ", 250, 100, "slide_01_03_1", true);

	StL(1000, @30, @0,"cg/st/3d���_����_�i��.png");
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210760b57">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
��Ӳ�ʵ�������
����������̫����
�����ҷ��˵��崨��

��ʲô��
��������ʲô��

�����ߵ�̫�������һ��䡪����˲�䡣
����ʲô���˹�����

����˿��һ��ϸ��ʲô������
�����ż�������⣬����š��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210770b57">
�����ǣ�
���ѵ��ǡ����������ϵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);
	CreateColorSP("��ܞ", 1500, "#000000");
	DrawDelete("�ϱ���", 250, 100, "slide_01_03_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
���崨ת��ͷ��
�������������Ψһ���ſڡ�

�������������޾��ĺڰ����������κ���Ӱ��
�����ǡ�

{	CreateSE("SE01","se����_����_ľ����ä���i��01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);}
�������˽Ų�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//�����ʤ�
//��������
<voice name="����" class="����" src="voice/ma01/0210780a00">
���߽������ʿ�ĸ��ԡ�
������ʧ�ܰɣ��崨���
����ǿ�������޷��ȼ��ġ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210790b57">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
�����󣬾��������Ļ�������

����Щ���졣
���ƺ�������������˭��������

��ɳ��ɳ����
���ذ巢�������죬����̤ѩ���������Ǹ��˳����ˡ�

���޴����Ӱ��
���·����ںڰ��е��������ա�

���·�����ɵĵ��ܣ�����Ӱ����Ӱ�и��ֳ�����
��������ʶ�ģ�ֻ���൱��ʱ����һͬ�ж����Ĵ�����Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 600, 0, null);
	SoundPlay("@mbgm04",0,1000,true);

	CreateColorSP("�}��ܞ��", 10, "#000000");

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,true);

	FadeDelete("��ܞ", 600, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�������ն�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 300, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	StL(200, @0, @0,"cg/st/3d���_����_ͨ��.png");
	FadeStL(0,true);
	DrawDelete("��ܞ", 1000, 100, "slide_01_03_0", true);

//�������ǈ�
/*
	PrintGO("�ϱ���", 15000);
	CreateColorSP("��ܞ", 5000, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	StL(1000, @0, @0,"cg/st/3d���_����_ͨ��.png");
	FadeStL(0,true);

	DrawDelete("�ϱ���", 250, 100, "slide_01_03_1", true);
	DrawDelete("��ܞ", 250, 100, "slide_01_03_1", true);
*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0611]
���Ǹ��ˡ�
�����ݲ��ȵس��֣����������վ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma01/0210800a00">
�����ܱ߷���������ʧ���¼��У�
ѧ�����䲻�����㷸�µ�������
����ְ����Ա�崨�����

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210810b57">
����������ʲô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreatePlainSP("�ϱ���", 10000);
	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	FadeStL(0,true);

	OnSE("se���L_����_������01",1000);
	FadeDelete("�ϱ���", 300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
���崨���¾���̫�������ʵ���
���Ǳ�����Ϥ�����ǵ����˴�����ʲô��
������Ӧ��û�����ܲ������ɡ�

��Ȼ���ն�����ֻ���䵭�ء�
��Į�����������ʣ����ӽ��ҡ�

������ͣ�ڽ���һ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="����" src="voice/ma01/0210820a00">
�����ĸ����ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
�����Ž�̨�ԱߵĶ�����
���������ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/ma01/0210830a00">
�����һ������װһ�ˣ������갲˯�Ļ�����
��Ҳ������ɱ�������˰ɡ���

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210840b57">
������������˭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}�ե�", 5000, "#FFFFFF");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	OnSE("se���L_����_�����01",1000);
	Delete("�ϱ���");

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,true);
	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	FadeStL(0,true);

	DrawDelete("�}�ե�", 250, 300, "slide_06_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
���崨����ŭ�𣬽�̫�����¡�
�����벢���������������ٶ��Ѿ��������١����ƿ�����
���޵ķ缲�ۡ�

�������ӹ�����ɫ���˵������ѿ�һ���˿ڡ�
��Ѫ��ϸ˿���¡�Ȼ����ʹ��ˣ����ı���Ҳû��
������΢���ı仯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/ma01/0210850a00">
������ʡ����������о�������Ա��
���ն���������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210860b57">
��ʲô������
����ô���Ǹ���ְ�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��ҧ���гݵ�������
��֨֨����أ���ѹ�������ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210870b57">
�������������ҵ��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0210880a00">
��������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210890b57">
����<RUBY text="������">���׼���</RUBY>���β��ܡ�����ʱ����
��Ϊ����ף�����ȴ���������𡪡����죡
���㶮�����𣡡�


//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210900b57">
������ô��������ץס������Ҫɱ���㣡
��û��������ԥ��
�Ƿݳ���������޷�ֹͣ����֮���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0210910a00">
��ԭ����ˡ��������ˡ�
��Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
����ʹ�ܵ���������в��
�������ɣ���Ȼ�侲��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��������
<voice name="����" class="����" src="voice/ma01/0210920a00">
������Ȼ�������ܡ�
���������޵�ͷ������ֻ�ܴ��������ж���
���ҸУ�ֻҪ����һ���д�ľ���
˭������ĵ׸е��߳ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0210930a00">
�����ǣ��ǲ����ܳ�Ϊ�Ź�������ɡ��ñ�
�ڼ�ʹ��������Ľ��ϣ�����мһ��һ��
�������ΪҲ����ʧȥ��ֵ��
��Ӧ�øе��߳ܵ����㡣��

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210940b57">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
�����������������ŭ��ʹ�崨��ס������
��˫��������ɱ�������Ŵ��۵Ĺ⡣

��������ֻ�Ǵ�Ȼ�أ��������ߵĶԾ���

��Ϊ�Ρ�
��Ϊʲô��

���ն�������
����������ﰡ��

�����ˣ������ڵ����¼�����
��׷��<RUBY text="����">�崨</RUBY>��������Ҳ�����⡣

�����ǣ����ڳ�����������ϵ��㣬���ʲô��!?
���ǿ������߰�!?����Ȼ����һ���������ˡ�����
�����������!?

����ʲô�������˰ɣ�
����������Ĺ��

����Ϊ�㣬������Ұľɽ����å��춼�޷�������
�����Ǹ�ֻ�ܹ�����ĵ�ų����

��������å���ս������������
�͸�û�����ܺ�����ս���˰ɣ�
���㲻�Ͽ�����Ҳ̫����˰ɣ�

��������
��������
��Ϊʲô��

������վ�����ҵ���ǰ!?
������Ҫ�ػ�����һ���������ҿ�����ı�Ӱ��

��Ϊʲô�㻹����ô����!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0210950b56">
�������������ǣ�ȷʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
��ȷʵ����û��
��<RUBY text="������">��Щ��</RUBY>�����̸��ҵġ�

��������ǰ��˵����Щ���ġ�
��ȷʵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//��������
<voice name="����" class="����" src="voice/ma01/0210960a00">
�����޵ֿ���ǿ���������͵ļ��ͣ�
����Ǩŭ���޹ʷ�������
���崨��������״��Ȼ���ˡ�
��������Ĳþ��Ҳ�������þ���֮������

{	FwC("cg/fw/fw���_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210970b57">
��ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
��৵�һ�����ն�����̧������ۡ�
��������յ��ֵ���

����ָʾ֮�
������ʲôʱ��ʼ��������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0210980b57">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawTransition("�}��ܞ", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("�ϱ���", 15000);

	CreateTextureSP("�}����100", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	SetShade("�}����100", MEDIUM);

	Zoom("�}����100", 0, 5000, 5000, null, true);
	Move("�}����100", 0, @0, @1000, null, true);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/st/resize/3d����֩��_����m.png");
	Move("�}����", 0, @0, @25, null, true);
	Request("�}����", Smoothing);
	Rotate("�}����", 0, @0, @0, @180, null,true);



	CreateMask("�}�ޥ�����", 200, 0, 0, "cg/data/effect_01_00_0.png", false);
	SetAlias("�}�ޥ�����","�}�ޥ�����");

	CreateColorEXadd("�}�ޥ�����/���", 200, "#BBBBBB");
	Fade("�}�ޥ�����/���", 0, 300, null, true);

	SetAlias("�}�ޥ�����/���","�}�ޥ�����/���");

//�ץ����ζ��x
	CreateProcess("�ץ������", 5000, 0, 0, "Moyamoya");
	SetAlias("�ץ������","�ץ������");

//�ץ��������`��
	Request("�ץ������", Start);

	DrawDelete("�ϱ���", 250, 100, "slide_02_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
��֩�롣
�������ޱȾ޴�ģ���ɫ֩�롣

���������컨���ϣ������·���
����������˸������Ĺ�â��

�����ּ��������ʹ��󣬲������������ܷ����Ĺ�â��
�����Ǹ����������ļ�����

�������Ĵ�֩�롣
��δ��ͷ�������Ļ����ն������г���<RUBY text="��">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

	SetBacklog("��������������������������", "voice/ma01/0210990a00", ����);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��������
<voice name="����" class="����" src="voice/ma01/0210990a00">
��
��������������������������

</PRE>
	SetTextEXC();
	Request("@text0800", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(150, @-100,@-576,"cg/st/3d����֩��_���.png");
	FadeStC(0,true);
	FadeDelete("�}����", 300, false);
	Move("@StC*", 1000, @0, @+576, Dxl1, true);

//������`�󡣴������z�ѩ`�Ĥ˷��x

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("�ե�", 300, 1000, null, true);

	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�ե�", 10000, "#FFFFFF");

	DeleteStC(0,true);

	OnBG(100,"bg019_��У����_01.jpg");
	FadeBG(0,true);

	Delete("�ץ������");
	Delete("�ϱ���");

	FadeDelete("�ե�", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
��֩�뱬�ѣ���ɢ������
���ں�ɫ���˵���Χ���衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0211000b56">
�������ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
�����ڣ�����֮������塣
�����ڣ����ڷ�������ʵ��

��������ˡ�
������ˣ�ȴ�޷����š�

����ɫ��������֮�ʣ�һֻ���ٴΣ���������������
������װ��֮�ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0211010b56">
�������ܡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
�������²����ܷ�����
�������ܵġ�

�����߼�Ϊ�����ޣ���Ű��֧���ߡ�
���ڴ��û����������������ߡ�

����ʹ�С�
��Ҳ���������������⣬��������ͬ���Ķ�ħ��

�����߼�Ϊ���
�����߼�Ϊ��֡�
��������̰ʳ��С֮���Ұ�ޡ�

��ӵ������֮�˽���Ϊһ��˽������ʩչ��
����������ʹ��;������һ����֪��

���������ʵ��
���������ʵ��

�����ԡ���
���������ˣ������ڡ�

��Ϊ�������ս�����ߣ�
��Ϊ���ػ�����֮�˵����ߣ�
�������������ﶼû�У�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0211020b56">
�������������ڡ���
��Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
��Ϊʲô�����������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*

//�����֤�򸲤���ƬĿ��Җ��
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(300,true);

//	CreateSE("SE01","se����_��x_�k��03");//���ߩ`ע��
//	MusicStart("SE01",300,1000,0,500,null,true);
	OnSE("se����_��x_�k��03",1000);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="����" src="voice/ma01/0211030a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5000);


//�����֤�ǰ����Ф�
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);

	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��������
<voice name="����" class="����" src="voice/ma01/0211040a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//�������`��
//�����ߡ��������l�Tξ����

	#av_����=true;

	SetVolume("@mbgm*", 30, 0, null);

	CreateColorSPadd("�ե�", 10000, "#FFFFFF");
	MovieSESet(16000,"mv����װ��","se����_mv��_����װ��");
//	MovieSEStart2(300,1000);
	MovieSEStart(2000);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

	DeleteStA(0,true);
//	StC(1000, @120,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	StC(1000, @0,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);

	CreateColorSP("�}�ϰ�ܞ", 5000, "#000000");
	CreateTextureSP("�}�ϴ���", 5100, -490, -1400, "cg/st/resize/3d�����˜�_����_ͨ��l.png");

	OnSE("se����_�z_װ��05",1000);

	Move("�}�ϴ���", 6000, @0, -600, DxlAuto, false);
	FadeDelete("�ե�", 2000, true);

	WaitAction("�}�ϴ���", null);

	WaitKey(1000);

	CreatePlainSP("�}�������", 6000);

	Delete("�}��*");

	FadeDelete("�}�������", 1000, true);


/*���åȥ����ݳ�����==================================================

	CreateWindow("�}�ף�", 2000, 0, 40, 1024, 288, true);
	Fade("�}�ף�", 0, 0, null, true);

	CreateTextureSP("�}�ף�/�ãɣ�", 2100, 0, 0, "cg/st/resize/3d�����˜�_����_�i��.png");
	Move("�}�ף�/�ãɣ�", 0, @-750, @-760, null, true);
	Move("�}�ף�/�ãɣ�", 0, @-60, @0, null, true);


	CreateColorSP("�}�ף�/�}��ܞ��", 2000, "#888888");
	CreateTextureSPsub("�}�ף�/�}��ܞ��", 2010, -220, 0, "cg/ef/ef001_�����Ƅ�.jpg");


	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Fade("�}�ף�", 0, 1000, null, true);
	Move("�}�ף�/�ãɣ�", 600, @60, @0, Dxl2, false);
	DrawTransition("�}�ף�", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

*/==================================================================

	WaitKey(1000);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="����" src="voice/ma01/0211050a00">
���崨���������ų���ı�����ˡ�
���������������Ը���֮�������ַ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0211060b57">
����������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`��
	PrintGO("�ϱ���", 15000);
	CreateColorEXadd("�}�ե�", 15010, "#FFFFFF");

	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01a",0,1000,0,1500,null,false);

	OnSE("se���L_�Ɖ�_����02",1000);

	Fade("�}�ե�", 200, 1000, null, true);
	Delete("�ϱ���");

	WaitPlay("SE*", null);
	WaitPlay("OnSE*", null);

}

..//������ָ��
//�Υե����롡"ma01_022vs.nss"


.//�ץ�����=========================================================

..//�����
function Moyamoya()
{
	while(1)
	{
	Fade("@�}�ޥ�����/���", 3000, 100, null, true);
	Fade("@�}�ޥ�����/���", 3000, 300, null, true);
	}
}


