//<continuation number="990">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_002.nss_MAIN
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
	#bg032_��ᦌm�������a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_003.nss";

}

scene mc01_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_003_3.nss"

//����ᦌm
//����Ӣ�۾��Ȥι��å��`��"mb01_003_3.nss"
//�����䤡���褦���Ƥ��줿�ʾ������󡫡�����
//�������l����ؤ�ͤФʤ�ʤ����l����������

	PrintBG("�ϱ���", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("�}ɫ�\", 100, "#000000");

	Delete("�ϱ���");

//�����ߣ��ե�������ǰ��bgm������1������Ƥ����ΤǤ�������ȫ�������ޤ���
	SetVolume("@mbgm*", 100, 0, null);


//�����ߣ�ǰ���`��Ȥ��֤äƤ����Τǥ����ȥ�����
//���o�Ϥ�ؤ�С�����һ���l����ؤ�ͤФʤ�ʤ���
//���l������


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������˵��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦
	StC(500, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	FadeStC(300,true);

	WaitKey(1000);

//������`�����ؚ�
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	CreateTextureSPmul("�}�݄���Ѫ", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("�}����500", 500, true);

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	Wait(12);

	Delete("�}�݄���Ѫ");
	FadeDelete("�}ɫѪ", 3000, false);

	CreateTextureEX("�}�ţ�15", 150, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	CreateTextureSPmul("�}�ţ�׷��", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("�}�ţ�15", 50, 1000, null, true);

	WaitAction("�}ɫѪ", null);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/0020010a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������˵<k>��������������<k>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020020a11">
��������������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020030a10">
��������

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020040a10">
����˵����
����֪���ܲ�������е���οһЩ��������Щ��
�һ���Ҫ˵����

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020050a10">
����û�б�Ҫ���κθ���У���������
�����������˶�ô���̵��£��´���������ҡ�
��������ҲӦ�������е�����

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020060a10">
���������㲻��Ϊ�˸е�ʹ�ࡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ž������������ĵķ�ʽ�ɡ�
��������֮��û���κ����塣��Ϊ������ص��������
�ڴˡ�ǿ����ĳ�˵��������������Ĵ���Ĩɱ��һ��ʵ
�������⡣

�����ε����ڣ���ֻ�Ǵ�Ҫ�ġ�
�����ң��Ҳ�û�н������Ľ�ڡ�

����Ȼ���ж��������Ӧ����֯���´�������ˣ�����
�������������˵��������Ȩѡ��������Ļ�����ô
��Ҳ���ò�Ϊ�Լ��ľ��ϸ���
����װ��֪�飬�Ұ첻����

������������Σ��������ʵ��������������ľ��ϡ�
��ѡ���Ƿ��ȡ������Ǹ�����ߵġ��޹��ġ���һ
���˵�������

�����������������ۣ����۶�ֻ��һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc01/0020070a00">
�������¡�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020080a10">
��˳�㣬����һЩ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020090a00">
�������ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������λش���Ҫ˵���ڵ�ʱ��ȴͻȻ
����ȥ�˻����Ȼ���
����������������������ǰ����һ�µĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020100a10">
�������������ڵ��£�����ֹ��һ����
�������˵��ǣ�浽<RUBY text="��������">����Ϊֹ</RUBY>�����������е�
�ж�����

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020110a10">
��������ȥ׷�����Ǻ������Ҳ�����Ͽɵġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020120a00">
�����������¡���
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������
��׷�����Ǻţ�����ԭ����ʹ����

���������޹ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020130a10">
�����ԣ��ڽ����Ϻ����Ǻŵ���ȫ�����֮��
�Ҳ�������Ծ��������
���㲻���ٻؾ������ˡ���

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020140a10">
���һỹ�����ɡ�
��Ҳ����㰲�����֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������󡸱O�ޣ�������ץȤ�ӛ��λ�äνyһ������ޤ�����
	SetVolume("@mbgm*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

��ʲ<k>
��
��
����������������������������������ô��

����˵ʲô��
������������˵��ʲô�����ղţ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020150a10">
��������������Σ�
�����ټ����������������һ��ʱ���𣿡�


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020160a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020170a00">
���𳤡���

{	StL(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStL(300, false);
	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020180a11">
�������˵����ش𹬵��µĻ�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020190a00">
������<RUBY text="������">������</RUBY>��
������Ϊʲô����ô���Ƶ��£��ܹ�Ĭ����������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020200a10">
�����ƣ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020210a11">
��ע����Ŀ��ǣ�������
��������ǰ�Ŀ�����������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020220a00">
������
���ѵ��������֪����������𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020230a00">
���ղ���˵�ġ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020240a11">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020250a00">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020260a11">
���ǰ���
��û����

{
	SoundPlay("@mbgm16",1000,1000,true);
	CreateSE("SE01","se����_����_ߵ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @30, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, false);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020270a00">
������֮ǰ��Լ����ͬ!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020280a10">
����������������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020290a11">
��������
���������¡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020300a00">
����û�����ǡ�����
������ǰ��ȷʵ����Լ���ˡ���


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020310a00">
����һ�ж�����֮�󣬾ͽ������Ϸ�ͥ��
�������̣���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020320a11">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020330a00">
���ѵ�����Ҫ�����Լ�������𡭡�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020340a11">
�������ʱ����ôԼ���Ļ��������޷�
�����Լ��ɡ���


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020350a00">
��������ֻ�Ƿ�������!?��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020360a11">
����û���κ���Ҫ�ܳͷ���������
�����繬��������һ�㡣��

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020370a11">
������������֮��������ÿһ���£��������Һ�
�����µ��Ͽ��½��еġ�
���������������κ������ʶ��������ǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020380a00">
�����ԡ�������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020390a11">
��ûʲô���ԡ�
��<RUBY text="����">����</RUBY>�Ҳ���������������ж�����

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020400a11">
���������Լ��޷��������εĻ����Ͳ�������ȥ
���ˡ�
������������Ȼ���°ɣ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020410a00">
���Ҳ��ǵ����������Ƶ����������ϡ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020420a11">
����������û����ж����������ĵ�����������
��ʵ������ˡ�
����ʹ���������־�������Ϸ�ͥ��Ҳ����ͬ
���Ĳöϡ���

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020430a11">
�����������β�����<RUBY text="����������">��ָʹ֮��</RUBY>���е���
����Ӧ��<RUBY text="��������">ָʹ֮��</RUBY>�����𡣡�


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc01/0020440a00">
����û�б����
�����ҡ�������������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020450a00">
����ô����ǰ���Ǽ��µ���Դ���ָ����׷������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020460a11">
����������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020470a00">
����ʱ������ɱ���ˡ�
���Ǽ��������Ǻ�����ɡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020480a00">
���㻹û�����ǰɡ�
���𳤡����յ���Ң������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020490a11">
��������


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020500a00">
����ɱ����<RUBY text="��������">�������</RUBY>!!
�������ң�������˫��!!��


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020510a11">
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020520a11">
���������⡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020530a00">
������!!��


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020540a11">
���ҴӲ���Ϊ����ɱ�����ҵ����ӡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020550a00">
������ɱ�ġ�
�����������񶨣��ⶼ�ǲ�������ʵ����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020560a11">
���Ҳ�������Ϊ��
����������ô˵����

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020570a11">
���������⡭��������
��������<RUBY text="����">����</RUBY>��ֻ�������ҵس�Ϊ�������ߡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020580a00">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020590a00">
����ô�������ǡ���
��������ζ����Ὣ�ҡ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020600a11">
��������

{	DeleteStR(300, false);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020610a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������Ź����
	CreatePlainEX("�}��д", 990);

	OnSE("se���L_����_Ź��01",1000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	WaitKey(1000);

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020620a11">
������������
�����ǲ�������ǿ����ȥ��ɱ���ϡ���

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020630a11">
�����Ǻŵ���Ҳ�ǡ�
��������޷�������ȥ�Ļ������ǻ���ͬ����
һͬ�е���������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020640a00">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020650a11">
����ͽ��ܹ����µĴȱ��ɡ�
���������Ѿ��㹻���ˡ��������ʸ�õ�ƽ��
����Ϣ����


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020660a00">
���Ҳ�Ҫʲô�ȱ���
����Ϣ�����⡢�������ӱܣ���Щ��ͳͳ
��Ҫ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020670a00">
������Ҫ���Ƕ��
��������������������Ӧ�ı�Ӧ����

//��������
<voice name="����" class="����" src="voice/mc01/0020680a00">
��˭�����ԡ�����������κ��˶����ԡ�
�������������ĳ���ˡ������о��ҵ���״��
һ��һ��ض�����̶���ִ�̡���


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020690a00">
�����������Ϊ���̡�
���ǲ��ǡ��������!!��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020700a11">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020710a10">
��������������
���㣬��Ҫ���𡭡�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020720a00">
�����������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Դ������������⣬��ҡ��ҡͷ��
������������Ŀ�ù������Σ���������ǿ�������˵���
���������ٵ��Լ����ϡ����������Ҹе��ޱȵؿ־��
���

���־嵽ȫ��ս����θҺ��ӿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc01/0020730a00">
���Ҳ���������
���Ҷ����Ŀ־�ʤ��һ�С�����������������
Ҫ������ʳ����Ϊ����Ҳ�����ȥ���������
�־���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������ݿ־壬�Ҵ�ս���ļз��ɢ������������
�����룬����ʰ���Լ���һ��������
�����ѻ�ü��䱰�ӣ���һ�����Լ������ò����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020740a10">
�������Ļ�������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020750a00">
��������Ϊ��ˣ��ҲŸ�Ӧ��ȥ����
�������¡���

//��������
<voice name="����" class="����" src="voice/mc01/0020760a00">
��������������µõ���������ֻ����������
���ݶ��ѡ��Ʋ����Ǵ�����
����ֻ�Ǽ򵥵���ɱ��������ķ������ѡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020770a00">
���ҽ��Լ���Ϊ���������������ε�ǿ�Ӹ���
���ˡ�
�������������ˣ������Խ��Ҵ�����Ϊ�ͷ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020780a11">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020790a00">
����ˡ��������¡�
������ظ���������ĳͷ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�𤭤�02");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ұݷ��ڵء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc01/0020800a00">
������������ִ�̣�
������������֮���ұض�����ҵغ��ޣ���
��ȱ�����������ɱ�������������������л
���

//��������
<voice name="����" class="����" src="voice/mc01/0020810a00">
���ڵ��Ͻ���̨֮ǰ��ʱ����һ�һֱ��
�޾���ʹ����������
�������£��������ˣ���

//��������
<voice name="����" class="����" src="voice/mc01/0020820a00">
����������������֮���ڴ�����Լ����
���Ὣ���ֽ�ָ����Ҵն���������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020830a10">
��������

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020840a10">
�����С�����


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020850a00">
�������£���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020860a10">
������������޷������Լ������У���Ҳû
�취��������Ҳ���������϶�ȥ��Щ��ͷ�Ÿ�
���ѡ�
�����ǣ�������ˣ������Ժ���������أ���

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020870a10">
�����������ˣ�������Ҳû���κβ���������


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020880a00">
���������ߵ����ۣ�
��ԭ�����������û���ܹ��������ߵķ�����
�����Ѿ��޷��ٿ���˵��������û��ʲô��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020890a00">
������Ҫ������ͬ�ȵĳͷ�������������վ��<RUBY text="����">�Ե�</RUBY>
��λ���ϡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020900a10">
��������

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020910a10">
���Ҳ��ǲ�������Ļ���
�����������ǲ��С���

//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020920a10">
���㲻������
�����޷����ܡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020930a00">
�������𳤣���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020940a11">
��������Ϊ��ȥ��������Ļ����Ǿʹ�����
�ǻ���ȥ��ȥ��Щʲô�ɡ�
���������û���κ����壬�������ȥ��Щʲ
ô��ȴ��������ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020950a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����С�
�����ǲ����ס�

����������ʲô�������ס�

���ⲻ����û����������⡣
�������ǲ��������⡣

��ֻ�ǣ����������뷣�����⡣
������Ӧ��������֮���س̶�����ĳͷ���

�����ѵ����������������
���������������

����ĸ��<k>
�������۷ɡ�<k>
��ʀ��<?>
{Wait(100);}
�֡���

�����ɱ����Щ�˵��ң�������Ӧ�ĳͷ����޷��õ��Ļ���
��<RUBY text="������������������������������">�����Ǿ�����Ϊ��ʲô���������</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����m��
<voice name="���m" class="���m" src="voice/mc01/0020960a10">
������������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020970a00">
��������������������Ҿܾ���
����ԭ�¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0020980a00">
��������ô�Ҿʹ˸�ǡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0020990a11">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc01_003.nss"