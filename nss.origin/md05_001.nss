//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_001.nss_MAIN
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
	#bg026_���ӘSɽ��a_02=true;
	#bg066_���ӘS���ڤΤɤ�_02=true;
	#ev237_�դ˕N�ä�����_a=true;
	#ev237_�դ˕N�ä�����_b=true;
	#ev237_�դ˕N�ä�����_c=true;
	#ev239_�衩�������_a=true;
	#ev801_�����}����`�����Σ�_a=true;
	#ev240_����״�r���h_a=true;
	#ev240_����״�r���h_b=true;
	#ev240_����״�r���h_c=true;
	#ev240_����״�r���h_d=true;
	#ev240_����״�r���h_e=true;
	#ev240_����״�r���h_f=true;
	#ev240_����״�r���h_g=true;
	#ev240_����״�r���h_h=true;
	#ev240_����״�r���h_i=true;
	#ev240_����״�r���h_j=true;
	#ev240_����״�r���h_k=true;
	#ev240_����״�r���h_l=true;
	#ev240_����״�r���h_m=true;
	#bg049_�������_סլ��b_02=true;
	#bg049_�������_סլ�إ��b_01=true;
	#ev239_�衩�������_b=true;
	#ev239_�衩�������_c=true;
	#ev239_�衩�������_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_002.nss";

}

scene md05_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_062.nss"


//�����ӘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",2000,700,0,250,null,true);

	OnBG(100, "bg026_���ӘSɽ��a_02.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

	Wait(1000);

	SoundPlay("@mbgm32", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ס�˱����Ĳ����һ����ȴû�취�Ӹ�Դ��������
�������ˡ�
  �����ؽӽ���������������������սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ�bg066
	CreateTextureEX("����", 200, @0, @0, "cg/bg/bg066_���ӘS���ڤΤɤ�_02.jpg");
	Fade("����", 1000, 1000, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������뿴��յ�Ը���������������档
  ���ڵ������ֳ����˼����������õ��Ļ�����������

  �ò��������������������Ҳ�����������£�����һ��
̧ͷ���졣
  ������������������һ��֮ң�ĵط���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ա��ڶ�̫ꖡ�ev237a
	CreateTextureEX("�ڶ�̫�", 210, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_c.jpg");
	SetVolume("SE01L*", 2000, 1000, null);
	Fade("�ڶ�̫�", 1000, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ֵ�������Ȼ�����

  �����Ѿ��������ĳƺ���Ϊ�ڶ�̫����
  ���ǽ�����۶��������ƣ�ʵ��������̫�������Ǻ�
�޹�ͨ�㡪������������������������˶�����Ȼ�ų�
ǿ�ҵĹ�âȴ�ƺ��������ȵȵȡ�

  ��˵��Ŀǰ��ר��֮�䣬�ձ齫���Ʋ�Ϊ��Ȼ������
��Ϊ�����һ�ֻ���
  ����Ҳ���ڼƻ�ҪΪ��ȷ����α��������ʽ���顪��
������������´������ʵ�аɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/0010010a00">
��������ǹ��𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010020a07">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ȼ����˥���������ȴ������ԥ�أ��϶��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 20000, 700, null);

//���ţ֣��衩������
	CreateTextureEX("����в衩��", 240, @0, @0, "cg/ev/ev239_�衩�������_a.jpg");
	Fade("����в衩��", 1000, 1000, null, true);
	Delete("�ڶ�̫�");

	Wait(500);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010030a07">
�����ǹ������¡���Ҳ�Ǵӵص׵�������ų�
������Ŷ��
  ��Ȼ�Ҳ����������˭������˭����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010040a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010050a07">
���������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010060a00">
����������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010070a07">
���Ҹ��������İɡ��Ǹ���쵰�����ĺ�����
�������������������ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010080a07">
��������������ҡ������
���������ǹ������µ�����Ŷ��һ���ǵġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010090a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010100a07">
������������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010110a00">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010120a00">
���Ҿ��������õ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������ճ��ֵڶ�̫��������һֱ�����Ŵ���������硣
  �ڶ��Իص��Ļ�������֪Ϊ�Ρ�����ô��������������
���Ǻŵĸ衣

  ����������������֮�����嶯�ģ����µĸ衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 20000, 0, null);

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010130a07">
�����������ڽ��������ס��
  ��Ҷ���������֪���أ����Ź������µĸ�
������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010140a00">
�����������ԭ���𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010150a00">
�����ԣ��Ż������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010160a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������û�лش�
  ֻ�������ʾ�˿϶���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ���������`��

	CreateTextureSP("�����}00", 230, @0, @0, "cg/ev/ev801_�����}����`�����Σ�_a.jpg");
	CreateTextureSPadd("�}����100", 230, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	Fade("�}����100", 0, 700, null, true);


	Fade("����в衩��", 1000, 0, null, true);
	Delete("����в衩��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����Ǹ����񡻽����������û�й�ȥ��á�Ȼ������
���̵�ʱ���ڷ�����������صľ�䣬������ȥ��ʷ
�ļ��꣬������ʮ��ı仯�൱�˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������؇��쥤���ؤ�
//���н��|��ʾ�������T�ꣿ

	CreateTextureEX("����״�r01", 240, @0, @0, "cg/ev/ev240_����״�r���h_a.jpg");
	Fade("����״�r01", 1000, 1000, null, true);

	Delete("�}����100");

	WaitKey(1000);

	CreateTextureEX("����״�r02", 250, @0, @0, "cg/ev/ev240_����״�r���h_b.jpg");
	Fade("����״�r02", 1000, 1000, null, true);
	Delete("�����}00");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������н������������ڱ��ȷ����ڴ�Ӣ����ĸ���
<RUBY text="Islam">�ؽ�</RUBY>���ҷ׷ױ�����
  ���ǹ�ȥҲ�����������¡�������û���κ����ף���
�ҹ���֮��Ҳû������������ͻ�������壬�����쳣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���й�
	CreateTextureEX("����״�r03", 260, @0, @0, "cg/ev/ev240_����״�r���h_c.jpg");
	Fade("����״�r03", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ͬ���ڴ�Ӣ������µĴ󺺵۹��У���͢�ڵ���װ
������ط����������ң��ټ������ڵı�����һ�뱬����
  ��˵�ʵ��Ѿ�����Ӣ��������ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڥ���
	CreateTextureEX("����״�r04", 270, @0, @0, "cg/ev/ev240_����״�r���h_d.jpg");
	Fade("����״�r04", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������ǰ뵺��ҲƮ���˷�����Ӣ�����̡�
  �����Ǹ�����˹�ơ����ʸ硤�͹��ɵ½�������
Ϊ���˵��������ܸߣ����������<RUBY text="Reconquista">�����ո��˶�</RUBY>��
����ǿ����ս���ڴ�Ӣ���������Ƶ�����������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ꥢ

	CreateTextureEX("����״�r05", 280, @0, @0, "cg/ev/ev240_����״�r���h_e.jpg");
	Fade("����״�r05", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������������뵺�ϣ�<RUBY text="Duce">ͳ˧</RUBY>Ľ�����ᶫɽ����
  ����Ӧ������֮ǰ�Ĵ�ս��������Ŀֻ��˵��
�ޱȵĹ��졪��������˻����кܶ��˼������������£�
ʹ���������������ϸ��ǡ�

  ��ֱ����ֻҪ�г�Ϊ����ս����������������������
��ð�ƻ�������νһ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ꥹ����

	CreateTextureEX("����״�r06", 290, @0, @0, "cg/ev/ev240_����״�r���h_f.jpg");
	Fade("����״�r06", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������Ӣ�����Լ�Ҳ������ط����˾�䡣
  ���ϸ�Ľ׼������ѹ�ȣ��Ͷ��߽ײ��ڸ��ر�����
����Ϯ���ʲ��ң�����Ϯ���׶���������ʹ֮һƬɧ�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݩ`����

	CreateTextureEX("����״�r07", 300, @0, @0, "cg/ev/ev240_����״�r���h_g.jpg");
	Fade("����״�r07", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��Ҳ��֪�Ƿ��ǿ����˴�Ӣ����Ļ��ҡ�
��<RUBY text="Russia">���</RUBY>������������ʼ���Բ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϥ��եꥫ
	CreateTextureEX("����״�r08", 310, @0, @0, "cg/ev/ev240_����״�r���h_h.jpg");
	Fade("����״�r08", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������ϲ��ĵ���ʿ�߹���Ϊ�˽������Ӣ����֮��Χ
�ƽ��ʯ������˶�������ܶ�����ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���˥�`���`���ɡ����`���ȥ�ꥢ

	CreateTextureEX("����״�r09", 320, @0, @0, "cg/ev/ev240_����״�r���h_i.jpg");
	Fade("����״�r09", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���Ĵ������ܶ���������Ϊ����ԭס�����ݵ������
��֮��Ҳȼ����ս��
  
  ���У����Ӣ����û��ֱ����ϵ�ĵ��򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥饸��ȥ��를�����

	CreateTextureEX("����״�r10", 330, @0, @0, "cg/ev/ev240_����״�r���h_j.jpg");
	Fade("����״�r10", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������½�Ķ��ۣ������밢��͢��ս�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ɥͥ���
	CreateTextureEX("����״�r11", 340, @0, @0, "cg/ev/ev240_����״�r���h_k.jpg");
	Fade("����״�r11", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ͳһ��ӡ������������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ȥӥ��

	CreateTextureEX("����״�r12", 350, @0, @0, "cg/ev/ev240_����״�r���h_l.jpg");
	Fade("����״�r12", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��̩����������������ٶȿ�ʼ��ע���ĶԿ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ޤ�ȡ���Ϥ���줿�����ȫ�Ƴ��ʾ
//��ȫ�������ʾ

	CreateTextureEX("����ȫ��", 360, @0, @0, "cg/ev/ev240_����״�r���h_m.jpg");
	Fade("����ȫ��", 1000, 1000, null, true);
	Delete("����״�r*");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���������������ס�

�������ڵ����ϵ�ս�����֣���֪���������Ǹ���
��������<RUBY text="����">ȫ��</RUBY>ȼ���������Χ�ս���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ�bg066

	FadeDelete("����ȫ��",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����Ҳ�����⡣
  ���������פ����ս����ϰ���Եس����ţ�����
�صĵ�Ļ�����������У�ʹ��Ļ�����פ�����Բ�
���ڲ����ѡ��������Ļ��ҳ̶����������ˡ�

���������Եľ��Ҷ�����������һ������ʶ֮ʿ����
�ŵģ����ִ�������Դ�Ӣ����Ϊ�׵�ר��ͳ�ε��ۺ�
�Ծܾ���־���֡�
  ��ֻ�ǡ���<k><RUBY text="��������������������">������־�������Ľ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md05/0010170a00">
��Ҳ����˵�����Ǻŵľ�����Ⱦ��ʹ��ȫ����
�����𣿡�

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010180a07">
����Ϊ��Χ̫�㣬��Ⱦ�Ľ��ȱȽ�����
������ֻҪ�ٹ�һ�����ҡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010190a07">
��ȫ���඼���Ϊֻ��ս���Ŀ����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010200a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010210a00">
��Ҳ����˵���������罫����𡣡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010220a07">
����Ϊ��װ�ױ����������߻�������Ŷ��
����ʱ�ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010230a00">
����ȷʵֻ����<RUBY text="����">��ʱ</RUBY>���Ѱɡ�
  �����ܽ������߾���ά����ᡣ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010240a07">
���ǰ�������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010250a07">
������Ὣ���������������ء�
  ��������֮ǰ�Ͷ���ɲ��������ء���ֻʣ��
���ֿ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������
��
������û����Ҳ�п��ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg049b

	CreateTextureEX("��", 210, @0, @0, "cg/bg/bg049_�������_סլ�إ��a_01.jpg");
	Fade("��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������壬�����ڵ������潵�ꡣ
���ꡪ��Ҳ��֪��������Ƿ���ȷ��

��<RUBY text="��������������">����Һ��Ĺ���</RUBY>��������������
���ⶫ����Ϯ��������ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
	CreateColorEX("�ۥ磻��", 15000, "WHITE");
	Fade("�ۥ磻��", 1000, 1000, null, true);

//��bg049c
	CreateTextureEX("��2", 210, @0, @0, "cg/bg/bg049_�������_סլ�إ��b_01.jpg");
	Fade("��2", 0, 1000, null, true);
	Delete("��");
	FadeDelete("�ۥ磻��",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������øõص��������ʱ����������Ķ���Ҳ����
���졣
�����������ˮ����͸��������ͬʱȴ���н�������
���������ʡ�

��������޽�չ���Ӵ��������ʵ����м����ʻᷢ��
ͬ���ı��죬������Ե��顣
  �����ѱ���������������������ڶ���δŪ�����

��ֻ�Ǳ�ɡ����񡱵��˶�ֹͣ���������
�����Ǻ������ʵ���ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	FadeDelete("��2",1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/md05/0010260a00">
����Ȼ�����������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010270a07">
��������û���ɽ����ͬ���أ������Ѿ���ȫ
��Ϊ�����ͬ�����ء�
  ʵ���ϵ��������������Ҳ��֪������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010280a07">
����������Ϊ�������������һ���İɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010290a00">
��������Щ���꣬�վ�Ҳ�ᡪ����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010300a07">
������ȫ���򡭡�
  ������ͬ�������˶���ʱ�䡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010310a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010320a00">
���������磬����𡭡���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010330a07">
��������ȥ�Ļ���ȷʵ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���Է·���𰸴�һ������������ϣ������Ĺ���
�϶�������Ԥ�ԡ�
��������Ҳ��������Ȼ���°ɡ�

����Ϊ���������ֻ���ģ����Ǳ��ˣ��������Լ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//��ev239

	CreateTextureEX("����в衩��", 220, @0, @0, "cg/ev/ev239_�衩�������_a.jpg");
	Fade("����в衩��", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md05/0010340a00">
��Ȼ��������ô�죿��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010350a07">
���ţ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010360a00">
�����ǡ��������ᡣ
�������Ը�Գ����ٻ�����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010370a00">
����ô����������ô�죿��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010380a07">
��˭֪����
  ���˭Ҳû���ǹ���֮�������ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010390a07">
�����Ҳ����������㣬�Ӷ���ɱ��
  �����µ����ź�ڣ����ڴ󳳴��ְɡ���
�ܾ������������Ƚ϶ࡣ��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010400a00">
���������ǡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010410a07">
����˵���İɣ����������ĵ����Ҽ��š�
  ����Ҳ�������̶ֳȡ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010420a07">
�����Լ���Ҳһ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010430a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���դ��\̫�
	CreateTextureEX("�\̫�", 230, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_c.jpg");
	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",2000,1000,0,250,null,true);
	Fade("�\̫�", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/md05/0010440a00">
��������������ֹ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010450a07">
��������ֹ������𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010460a00">
���ǰ�����

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010470a07">
���Ǿ�ֻ���ƻ����Ǹ��˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���Է·�ָ�����������������ʵ�������ֱ����޷�
�������������ָ����ա�
�����Ǹ��򵥵Ľ��ۡ���Ȼ��������Ԫ�ף���ôֻҪȥ
���������ܽ�������ˡ�

�����ǣ�û�а취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md05/0010480a00">
������������ζ����ﲻ�ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010490a07">
����ô��������Խ�˴����㡣
  ���������ߵķ����ܴﵽ�ĸ߶ȡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010500a07">
��ֻ������ױ����ڳ����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010510a00">
����û��Ȥ�ܵ�������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ڴ�֮ǰ�Ҳ����㳢��<RUBY text="Science��Fiction">�ƻ�С˵</RUBY>����ַ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev239
	SetVolume("SE01L", 10000, 0, null);
	FadeDelete("�\̫�",1000,true);

//�����ߣ��衩��̨�~���������碌
//���������äƤ���Ф����衹

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010520a07">
�������ȴ������ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010530a00">
���ȴ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010540a07">
���Ǹ���������
����������һ���ή��ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010550a07">
�����ˡ�
��Ϊ�˵õ������Ķ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010560a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����ή�䣿
���Ǹ����塭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010570a07">
����磬��ȴ������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010580a07">
���������Լ���״̬������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010590a00">
������״̬�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev239a
//��a���Ȥ��ΤޤޤʤΤ�ӛ���ʤ� inc�Ѿ�
	CreateTextureEX("����в衩��02", 230, @0, @0, "cg/ev/ev239_�衩�������_b.jpg");
	Fade("����в衩��02", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��������˫�۽�����ס�ҡ�
����˫�����𽥱�ÿն���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010600a07">
��������Ŷ��
�������ҶԸ�磬�����Ҹ档��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010610a07">
��ֻҪ��绹�Ǵն���������;���Ӯ���˹�
�����¡�
  ��Ϊ�������£��Ǵն��⡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010620a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010630a07">
�����Ҫ�������Ӣ�ۡ�
  ֻ���ػ�����ΪĿ�ġ����������ˡ�
��Ϊ��ӹ�֮�����������ʹ�ߡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010640a07">
����Ϊ������Ӣ�ۡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010650a00">
�������ҡ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010660a07">
�������ʸ�����ν��
  ����Ψһ�ķ���Ŷ����硣��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010670a07">
���򵹹������£���������İ취��ֻ���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010680a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010690a07">
������������Ŷ��
����磬�����ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010700a07">
����������������衣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010710a07">
���Ը�磬
�������硣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev239b

	CreateTextureEX("����в衩��021", 230, @0, @0, "cg/ev/ev239_�衩�������_c.jpg");
	Fade("����в衩��021", 1000, 1000, null, true);
	Delete("����в衩��02");

	Wait(500);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010720a07">
�����ġ����������䡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010730a00">
��������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010740a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev239

	FadeDelete("����в衩��021",1000,true);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010750a07">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010760a00">
������裿��

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010770a07">
�������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010780a00">
���������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010790a07">
������
���Һ��롭����������Ļ��𰡡���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010800a07">
�����룬
���������κ��������İ���������˯������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010810a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010820a07">
�������������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010830a07">
�������˵Ļ쵰������������
�Ѿ���ɹ������µĸ�����
�����Ҹ������������ᡣ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010840a07">
������������Ҳ������Զ�ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010850a00">
������衣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010860a07">
���š�
���������ͺܺá���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010870a07">
����͡���˯�����ˡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010880a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev239c

	CreateTextureEX("����в衩��03", 230, @0, @0, "cg/ev/ev239_�衩�������_d.jpg");
	Fade("����в衩��03", 1000, 1000, null, true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010890a07">
����硣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010900a00">
�������š���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/0010910a07">
���ټ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010920a00">
�����������š���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0010930a00">
���ټ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå��������ƥ�������
	SetVolume("@mbgm*", 2000, 0, null);

	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����������
��ܥԽ������������裬ȥ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����`���Ф�
	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"md05_002.nss"