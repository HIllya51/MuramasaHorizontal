//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033.nss_MAIN
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
	#bg002_��a_02=true;
	#ev006_�����ο���=true;
	#ev264_����VSѩ܇�=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md06_033.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_032.nss"


//��Ϧ��

//ð�^��BGM��������SE�������ޤ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");

	CreateTextureSP("�}����", 100, InRight, InBottom, "cg/bg/bg204_�����ر���b_02.jpg");
	Move("�}����", 400000, 0, @0, DxlAuto, false);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������������ָ�ĵط���
�����ܡ����ܡ��ٱ��ܡ�

��ʱ�����ʡ������Ϸ��š�
���Դ���������֮�󣬹��˶���ء�

��Ϧ����б��ϼ����Ⱦ���ա�

��û�µġ�Ӧ�ã�ƽ�����¡�
������ѩ����к�Ŀ�ģ���û�б�Ҫ��
��ɱ��������������������������������������������

������һ���ᰲȻ����
������˼����š�

����ʹ�����������Ȼ�Ͼ����硣
�����ܺ������ٴζ����޻�Ӧ����

��������Ȼ���š�
��һ�������ԡ���Ȼ��

�����Ա���Ͽ졣
��Ҫ����ϵ�������ߣ������ȳ�����

�����ܡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg003_Ϧ
	CreateColorEX("�\Ļ", 25000, "#000000");
	Fade("�\Ļ", 1500, 1000, null, true);

	CreateTextureSP("����", 100, @-520, @-300, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	Request("����", Smoothing);
	Zoom("����", 0, 700, 700, null, true);

	Delete("�}����");

	Wait(1000);

	CreateSE("�i��", "se����_����_�i��04_L");
	MusicStart("�i��", 0, 1000, 0, 700, null,true);

	Wait(500);

	FadeDelete("�\Ļ", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ֻ�л��ߡ�
���Ӳݴ��������СС��ʯ��ɢ���ء�

��ѩ���һ�����ľ���������С�
��������ʯ��վ�������ҵķ���
����������

������ͣ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�i��", 1000, 0, null);

	CreateTextureEX("����ޤ�", 1000, @-45, @-210, "cg/st/resize/stѩ܇�_ͨ��_˽��_l.png");
	Request("����ޤ�", Smoothing);

	Zoom("����ޤ�", 0, 485, 485, null, true);

	Fade("����ޤ�", 300, 1000, null, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330010a12">
��Ӵ������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330020a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("�L", "se��Ȼ_�L_��Ұ_L");
	MusicStart("�L", 2000, 800, 0, 800, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������û����������Ӱ��

������Ϊ�ٳ����ʣ��������������
��������ôһ���£�
�����´�����ᱻ���̶��ߣ�
���Բص������ط�ȥ�ˡ�����

���侲��
�������侲��

����ȷ��һ�����ʵ�ƽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0330030a00">
�������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330040a12">
�������Խ�֮�����������԰ɣ�
����������Ц�Ľ��桭����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330050a12">
��������������
�������ҵ��ǲ��ò�������հ��
��������Ҳ���ڸ���������š���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330060a00">
�������������

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330070a12">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ѻ��ʬ���Ц����
��
���侲�����侲��

���������ڶԷ����ϡ�
��ǧ���ܽ��ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330080a12">
�����������������ɡ�
��ֻ�����Ǹ����С������
��ô���񣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330090a00">
��û��Ҫ����˵����
���Ѵ�����������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330100a12">
���ҿ�û�������㽲������¡�
����ô�����㡭����������ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330110a12">
���ٺ٣�����ô���أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330120a00">
����������
�����������Ҹ���ɡ���

//��������
<voice name="����" class="����" src="voice/md06/0330130a00">
��ʲôҪ���Ҷ���Ӧ����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330140a12">
���ۣ��ٺ١�����
�������Ǹм�������
����ʲô�������𡣡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330150a12">
���٣��١��������޴���
����������������ʲô��
������������ʲô��ֵ����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330160a12">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330170a00">
������
���ǣ����Ŀ�ĺ��ڣ���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330180a00">
������Ҫ��ʲô!?��

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330190a12">
��������ô��������ʲô��
�����ޣ��ٺ١���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330200a12">
���ҵ�Ŀ���Ѿ��ﵽ�ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330210a00">
���㵽����˵ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330220a12">
���㻹�����Ӱɣ�
�������������𣿡�

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330230a12">
������������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330240a00">
���ش��ң�
��������������!!��

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330250a12">
������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330260a12">
�������ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330270a00">
������ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330280a12">
�������ˡ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330290a12">
���Ѿ��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ѩ������ظ��ż򵥵Ļ��
���޷���⡣

�����ڣ�
��<RUBY text="����������">�Ѿ�������</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0330300a00">
������˵ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330310a12">
������������������
��������������Ѿ�����ʴ��
�ⲽ����ˡ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330320a12">
���������¶�������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330330a00">
������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330340a12">
�������׵İɡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330350a12">
��ɱ���ˡ�
����˵�����Ѿ�����ɱ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("�L", 100, 0, null);

	CreateColorEX("��", 15000, "#990000");
	OnSE("se����_��_��Ġ����02", 1000);

	Fade("��", 0, 1000, null, true);

	CreateColorSP("�}ɫ�\", 14900, "#000000");

	FadeDelete("��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��
����������������������ɱ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����仰��<k>������������⡣

��ɱ�ˡ�
��������ˡ�

���Ѵ�����
��ɱ�ˡ�

��<RUBY text="������������">�Ѵ���ɱ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0330360a00">
����������ƭ�ˡ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330370a12">
�����������ٺ١�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330380a00">
��ƭ�ˡ���˵�ѡ���

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330390a12">
����������������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330400a00">
��˵�ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_���������", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ѩ���������ȡ��ĳ����˹�����
�������ִ���һȦ�Ķ�����

����ɫ��
����Ѫ����ɺ졣

��ɢ�������Ĺ�ԡ�
�������Ĺ���

��װ�ס�

��������װ�ס�

�����ġ���������Ƭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0330410a00">
����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330420a00">
����������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330430a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Һ�����������֡�

�����кͲٿ���һ��ͬ�塣
����������ʹԶ��ǧ��Ҳһ���ܹ����

�����ﵽ�ˣ��ͻ�������Ӧ��
��������Ӧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0330440a00">
������������

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330450a12">
������������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0330460a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����������ҽűߵ�װ�ס�
���������������������š�

��������㡣
���븽����ʯͷһ�����·�û�м����κ�������

����ɫ��װ�ס�

�����ڣ�<k>ֻʣ�к���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����������r�ģ�
//���ѥ�`��ȸ���ɢ��

	CreateColorEX("�ե�å����", 16000, "WHITE");

//��SE���ե�å���Хå��ãӣŤ��`���Щ`�����
	OnSE("se�M��_�ե�å���Хå�01",1000);

	Fade("�ե�å����",0,1000,null,true);
	CreateColorSP("�}�����\", 1000, "Black");
	StC(1100, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStC(0, true);
	Fade("�ե�å����",200,0,null,true);

	Wait(1000);

	OnSE("se�ճ�_����_�����Ɠp", 1000);

	DrawEffect("@StC*", 3000, "HardSplit", 30, 30, null,false);

	Fade("�ե�å����",300,1000,null,true);
	DeleteStC(0,true);
	Delete("�}�����\");
	FadeDelete("�ե�å����",1000,true);

//���£ǣ�

//���˵Ĥˤ�11�Τۤ���������˼���ޤ�������������������ʤΤ�08��
	SoundPlay("@mbgm08", 0, 1000, true);


	SetFwC("cg/fw/fw����_��ŭ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0330470a00">
���۰�������������������������!!!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	SetBlur("����", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("����", 150, 1200, 1200, Dxl2, false);
	Zoom("����ޤ�", 150, 1200, 1200, Dxl2, false);
	Move("����ޤ�", 150, 50, 110, Dxl2, false);
	Move("����", 150, @250, @-100, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ѪҺ���ڡ�

���ڲݵ��Ͽ񱼣����ۡ�
�������Ǹ����˷ɱ���ȥ��

��ѩ���������������׼�������ȡ�
�����ٶ����Գ��ˡ�

���ɱ������֮ң��
����������ȭ��

������ȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	OnSE("se���L_����_Ź��01", 1000);


	CreateTextureSP("�}����500", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Request("�}����500", Smoothing);
	Zoom("�}����500", 0, 1100, 1100, null, true);
	Rotate("�}����500", 0, @0, @180, @0, null,true);

	Delete("����ޤ�");

	CreatePlainEX("�}��д", 9000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 0, 1400, 1400, null, false);
	Zoom("�}��д", 200, 1000, 1000, Dxl2, false);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("�}��д");

	FadeDelete("�}����500", 300, true);

	OnSE("se����_�n��_ܞ��04", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ݵ���������ɡ�
�����ȵ��䡣

����׷��ǰ��

�����һ����
������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_һ�i", 1000);

	SetFwC("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330480a12">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������

	OnSE("se���L_����_Ź��02", 1000);

	CreateTextureSP("�}����500", 9000, Center, Middle, "cg/ef/ef042_���ô��.jpg");

	CreatePlainEX("�}��д", 9000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 0, 1400, 1400, null, false);
	Zoom("�}��д", 200, 1000, 1000, Dxl2, false);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("�}��д");

	FadeDelete("�}����500", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��ѩ���ȭͷ�ݺ������ҵ����ա�
  ��ʱ��ð���ǡ�

������ν��
��������ֱ��ϥ�ǵ���ʹ�����Է�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	OnSE("se���L_����_Ź��01", 1000);

	CreatePlainEX("�}��д", 9000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 0, 1400, 1400, null, false);
	Zoom("�}��д", 200, 1000, 1000, Dxl2, false);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ѩ�����������һ�Ųȿա�
���������������������

����ץס�ҵ�˫�磬ʹ���������ŵ�ǿ��������
����������ϥ�������ҵĸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	OnSE("se���L_����_���å�02", 1000);

	CreatePlainEX("�}��д", 9000);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 0, 1400, 1400, null, false);
	Zoom("�}��д", 200, 1000, 1000, Dxl2, false);
	Shake("�}��д", 500, 30, 0, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������ˮӿ�Ϻ������Կ�ǻ�����
��Ż�¡�

��ѩ���������������ҵı�����
���������ϡ����ҵĳ��ʹ�ҵ�׵�Ǳ��Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md06/0330490a00">
���ذ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������
������߾�ȫ���ر���ǰ������ơ�

��ǿ�н�ѩ�������
��Ӳ����������ѹ����档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�n��_ܞ��_�}��", 1000);

	CreatePlainEX("�}��д", 9990);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 30, 0, 0, 500, null, false);

	CreateColorSP("�\Ļ��", 10000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}��д");

	CreateColorEX("�}ɫ��", 10100, "#FFFFFF");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0261]
����ͬ��Ҳ��������
������Ť��һ�ţ������˴�

{	CreateSE("���L", "se���L_����_Ź���B��01_L");
	MusicStart("���L", 0, 1000, 0, 1000, null,false);}
��Ź��
����Ź��

��ѩ���һ���������ҡ�
����Ҳͬ������������

{	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, false);}
��Ź��

���ɶ�
��������˿ɶ�������

�������Ѿ�����������

���ɶ�
��ֻ�����ʹ�������ޡ�

{	CreateSE("SE01a","se���L_����_Ź��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);}
��Ź��
{	CreateSE("SE01b","se���L_����_Ź��02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);}
��Ź��
{	CreateSE("SE01c","se���L_����_���å�02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);}
��Ź��
{	CreateSE("SE01d","se���L_����_Ź��01");
	MusicStart("SE01d",0,1000,0,800,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);}
��Ź��

����֪�����䣬��ʣ��һ�����ڶ��֡�

��ѩ���û�ж�����
������Ź���ţ�ȴЦ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("���L", 1000, 0, null);

//��ev264
	CreateSE("SE01","se���L_����_���å�02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Delete("�\Ļ*");

	CreateTextureSP("�}���٣ţ�", 5010, -300, InBottom, "cg/ev/resize/ev264_����VSѩ܇�l.jpg");
	CreateTextureSP("�}����", 5000, Center, Middle, "cg/ev/ev264_����VSѩ܇�.jpg");

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330500a12">
���١����ٺ١���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330510a12">
�������治����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330520a12">
�������ͺá���

{	Move("�}���٣ţ�", 8000, -1022, -300, DxlAuto, false);
	FadeDelete("�}���٣ţ�", 7800, false);
	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330530a12">
����������ױ���͸��������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330540a12">
�����ң���Ҫɱ���Ұɣ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330550a12">
�������ڡ�����Ҫɱ���ң�����ɱ���Ұɡ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330560a12">
�������ͺá�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330570a12">
������Ϊֹ���㶼������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330580a12">
��������ǿ�Լ�ȥɱ�ˡ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330590a12">
��һֱ���������ɣ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330600a12">
���涪�˰�������

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330610a12">
��ɱ���ˡ���
��ȴ��˵�������Լ��ı��⣬��
è�޺��ӡ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330620a12">
���ǾͲ�Ҫȥ��������
������ɱ���������ˣ�����ô˵����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330630a12">
�����ű�������Ĵ����Ҹ��ط����Ӿͺ��ˡ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330640a12">
������һ���ǰ�����ͷ����
��Ϊ�����磬Ϊ�����ȸ�����ˣ�
<RUBY text="����������">һ����е�</RUBY>������ʹ������ʵ����ɱ��֮�⣬
ȴ��Ϊɱ����ô���ˡ��������ᡣ��

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330650a12">
��������������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330660a12">
�������ɱ����ͷ����������
�Լ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330670a12">
�����˷�ŭ����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330680a12">
��������Ż����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330690a12">
�����ڶ�á���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330700a12">
������ܲ�����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330710a12">
����޾ͺޣ���ɱ��ɱ���������Ρ�
ɱ��ı��顣��

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330720a12">
�������Ҷ������ֱ����±�ɱ���Ǹö�á���

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330730a12">
�����������Ƕ�Ϻ��С����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������ˡ�
�����졣

���Ҳ����������������

��Ź��
��Ź��Ϊ���������졣

��û��û�ˡ�
��ѩ���ͣ��Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330740a12">
��ɱ���ҡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330750a12">
��ɱ���ҡ�����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0330760a12">
�������⸱���飬ɱ���ң���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 6000, "BLACK");
	Fade("�\", 500, 1000, null, true);

	OnSE("se����_��_��Ġ����02", 1000);

	CreateColorSP("�}ɫѪ��", 20000, "#990000");

	CreateColorSP("�}ɫѪ", 15300, "#990000");
	CreateTextureSPadd("�AȾ", 15400, @0, @0, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureEXmul("����", 15500, @0, @0, "cg/ev/ev006_�����ο���.jpg");

	FadeDelete("�}ɫѪ��", 300, true);

	Fade("����", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]

��ɱ������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0301]
����ץ��ʯͷ��
����Ӳ�������ʯͷ��

����������ɱ������

��ֻҪ���ڶ�ͷ�ϣ�һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��_��Ġ����02", 1000);
	CreateColorSP("����", 20000, "#990000");

	FadeDelete("�AȾ",1000,false);
	Fade("����", 300, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0302]

��ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0303]
���ң�
���߾�ʯͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k�����������������ʤ�

}

..//������ָ��
//��������"md06_033a.nss"
//�����������ʤ���"md06_033b.nss"



//���x�k֫���`��
scene md06_033.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintBG("������", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("�}ɫѪ", 5000, "#990000");
	CreateTextureSPmul("����", 5100, @0, @0, "cg/ev/ev006_�����ο���.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("ɱ","������ɱ");
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
//��������"md06_033a.nss"
				$GameName = "md06_033a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�����������ʤ���"md06_033b.nss"
				$GameName = "md06_033b.nss";
		}
	}
}