//<continuation number="210">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_011.nss_MAIN
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
	#bg007_��m��·b_01=true;
	#bg060_�ҏ��¾���_01=true;
	#ev001_�y�Ǻ��¼�����`����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_012.nss";

}

scene mb01_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_010.nss"

//���
//������`�}
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg007_��m��·b_01.jpg");
	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 16;
	CreateEffect("�}������", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 500, null, true);

	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ٴ�����������
���ڻ�ɫ�����ƺ��ǳ�ϲ�������Ͽա�����ҹ��ɢȥ��
�����ְ�ռ����ղ�����ȥ��

������ɡ�ߵ����ˮ�鴥���ֱ��������쳣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mb01/0110010a01">
��������
�����ױ�����ʲô�ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110020a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0110030a01">
��������ʹ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110040a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 100, -1024, -50, "cg/ev/resize/ev101_�ץ��`��_a.jpg");

	Move("�}��", 8000, @120, @0, null, false);
	Fade("�}��", 1000, 750, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������ֹ���Ǻš�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mb01/0110050a01">
�������������
��������ɢ����


//��������
<voice name="����" class="��������" src="voice/mb01/0110060a01">
��������˭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110070a00">
�������ס���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0110080a01">
����������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110090a00">
�������ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������ĶԻ������������ظ�����ҹ��Ȼ������
���ټ�ǧ����������ʡ�
�������ס����������Լ���������ʲô��

�������ϡ���������֮�����Ⱥ�ۼ���ͻȻ���ֲ���
���ȷ�Ѫ��ġ���ɱ¾���󡪡����Ǻš�
��������͵�ج�Ρ��ҵ�ʹ�����ǽ�֮�սᡣ

����Ϊֻ�����ܹ�������
����Ϊ����ĸ�и���ϣ����
����Ϊ�����ҵ����á�

���ұ���ȥ����
�����ܽ�˭���ڽ��¡�

����������Ϊֹ������������
�����������������Ь��̤����������������

�����Ҳһ����
������Ҳһ����

����Բ���µȴ������һ��Ҳһ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���륷�`��ޤȤ�
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 5000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 3100, Center, Middle, "cg/bg/bg060_�ҏ��¾���_01.jpg");
	StR(4000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(0,true);

	Fade("�}��ܞ", 300, 400, null, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0110100a02">
���ն�������
�����޷�ԭ���㡣��


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0110110a02">
����Ҫɱ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	DeleteStA(0,true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb01/0110120a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��㡣
	CreateSE("SE01","se����_����_ˮһ�i");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ϥ�ǵ�ʹ�У�ʹ�����ѹ�����
����֪������̤����ˮ�ݣ�����һ�ӡ�

���ɽ���ˮ��ӳ��һ�����ڵ��ϵ�������̬��
����ô�Ǳ��Ļ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mb01/0110130a01">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110140a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��Ǳ���ڸ����Ľ���ĬĬͶ�����������˷��ꡣ
�����һ��������޶õ�վ��������

���ù��˵����壬ȴ����س��ء�
�����������ɰѾ�ϥ�Ǳ�����ĵز���

���ƺ��ǲ������صĳ���ѹ��ĳ����
��ĳ������ͷ���С���������������ط���

�������ϳ����Ÿ�����
������֫��֨���졣

�������һ��ս����
�������е����壬�ܳ��ء�

���Ǹ���Ů���Ծ���ԭ�¡�
�����ڴն��������������������µ���������˵�޷�ԭ
�¡�

�����

��������û�����顣
��û�������������Ҳ�޷�ԭ�µ��

�����ܿ�ˡ���

���ǣ�Ϊʲô����
���ұ��뷴���ء�

���������ܱ�������

������
�������ܡ�

����˫���������������
��������ָ�����Ѫ��

������޷����ǡ���
��ΪʲôҪ�����þ���

������Ӧ��������

�������ͬ����Ĺ�ƽ�ԣ�����Ӧ��
  �Թ����ڹ����ֵĵ����𡭡�

���ԡ�
�����ǵ�Ȼ��

��ֻ������û�г����Ʋ��ҵ��˶��ѡ�
��ֻ�Ƿ�����Ϊ����Ϊ���ѡ�

�������ڣ���һ���ˡ�
���ֳ���Ӻ����������Ƿ������������ߵ��˽����ˡ�

����ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/mb01/0110150a01">
��������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110160a00">
�����������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����������ĶԻ���

���Ҳ��������ӱܵ�����֮�С�
��������̡��������ܵ��Խ���
������ʱ��δ����

�����������ʹ��֮���Ҿ�û�����������ʸ�

�������ס�
�������װ���

�����ǡ������롣
�����ǲ������ӱ����С�

����˭���б���ȥ�������顣
���������ﶼ�л���Ӧ����ʹ����

����û���ܹ�����������
�����˶�����δ��֮����ȥ��

�������������˵ʹ�����ӱ�������������
�����ܡ�

�������������е�����һ������������ɱ������Ȼ֮
�䱻����δ��������һ����
�����Ƿ�Ӧ���Ļ��ûڣ��ڴ�������ʹ�����ȥ�ء�

���Ƿ��������ȷ�Ĺ����ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/mb01/0110170a01">
��������
��������������Ǻš�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110180a00">
����������˵���ٴΡ�
��<RUBY text="������">������</RUBY>����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0110190a01">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0110200a00">
�����ұ��졭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXmul("�}��", 3000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ӹ׸�ԡ�
������ҷ����Լ����ϵ�ʹ������ʧȥ�ľͲ���������
һ�˵�������

{	Fade("�}��", 1000, 500, null, false);}
�����ǺŻ����ɱ¾��
��ʹ���Ƿ�񡭡�ɢ�����ѡ�����������

����ʷ����������ǰ��δ�е��ֶ�����ʷ�ᡣ
��������������̬�ݱ����ˡ�

{	FadeDelete("�}��", 1000, false);}
����������ֹ��
����Ȼ����ɾ޴�����ѣ�������Ҫ��ֹ�����ߵĶ���
��������

����������
��Ҫ����Ը�����졪���������һ��һս��

���޳��������Ķ��
����֮�򵹡���̤���ҡ���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb01/0110210a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Ҳ������ڡ�
��˼��ֻ�������ض�Ȧ�Ӱ��ˡ�

������ʱ��Ҳ��������ġ�
�������޸����¡�

��Բ�����ѽ�����ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_012.nss"