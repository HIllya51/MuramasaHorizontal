//<continuation number="1000">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_020.nss_MAIN
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
	#ev145_�@�Ӥ򷸤�ͯ��_a=true;
	#ev145_�@�Ӥ򷸤�ͯ��_b=true;
	#ev145_�@�Ӥ򷸤�ͯ��_b02=true;
	#ev145_�@�Ӥ򷸤�ͯ��_c=true;
	#ev145_�@�Ӥ򷸤�ͯ��_d=true;

	#ev145_�@�Ӥ򷸤�ͯ��_a=true;
	#ev145_�@�Ӥ򷸤�ͯ��_b=true;
	#ev145_�@�Ӥ򷸤�ͯ��_b02=true;
	#ev145_�@�Ӥ򷸤�ͯ��_c=true;
	#ev145_�@�Ӥ򷸤�ͯ��_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_021.nss";

	//��ꥳ�쥯������á���������������
	#mb02_020=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene mb02_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================

..//������ָ��
//ǰ�ե����롡"mb02_019.nss"

//�����ϥ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ݱ���", 100, -170, -520, "cg/bg/resize/bg067_���ӘS�����ܘS��_01bl.jpg");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200010b49">
������ͯ��ͯ�ģ�
��ͯ�ĺ���!!��


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200020b49">
���졭����ͣ�£�
����ô������������ǿ�����ѣ���


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200030a09">
����ô������


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200040b49">
��������


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200050a09">
������˵��ʲô��
�����£���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200060b49">
��ʲ��ʲô����


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200070a09">
�����ź���ƶɮ��������ͷ�ϡ�
����ν���棬�����ŵ�˫�ױ���Ҳ�������뿪
��̨�����ǹ�ء���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200080a09">
������֮�£���<RUBY text="����">����</RUBY>������ϴ��������
���˿̣������½⡣��


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200090b49">
�����ˣ�
���Ҿ�������ֹͣ���־ٶ�!!��


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200100a09">
����ѽ����ѽ��
�����ǲ�����ŵ�������°�������Ϊ�ѡ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200110a09">
���������ʵ�ڼ�ֵĻ���
���β����������Կ��أ���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200120b49">
����˵ʲô������


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200130a09">
����˭�ܰ��ҹźӹ�����
������ͯ�ĸ�ɮ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200140a09">
������̨������������
���������������̴Ӱɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200150b49">
������������


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200160b49">
��ȥ����
����ȥ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T�����ˡ��Ӥ���

	StL(1000, @-120, @0,"cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	StCR(1000, @-30, @0,"cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	StR(1000, @180, @0,"cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	FadeStL(300,false);
	Wait(50);
	FadeStR(300,true);
	Wait(50);
	FadeStCR(300,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200170b49">
�����ǣ�
��������������𣡡�


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200180b49">
������ȥ��ֹͯ�ĺ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��Ӥ���
	WaitKey(1000);

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200190b49">
���㡢���ǡ�����


{	NwC("cg/fw/nw��\��.png");}
//������㣯��\����
<voice name="����㣯��\��" class="����������" src="voice/mb02/0200200e250">
���ҵȷһ�ڸ��𱣻����µİ�ȫ��


{	NwC("cg/fw/nw��\��.png");}
//������㣯��\�¡�
<voice name="����㣯��\��" class="����������" src="voice/mb02/0200210e251">
����ź��н����˱���������ѳ����ҵ�ְ��
��Χ����


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200220b49">
������������

{	StCL(1000, @0, @30,"cg/st/st����_ͨ��_˽��.png");
	Move("@StML*", 300, @60, @-30, DxlAuto, false);
	FadeStCL(300,false);
}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200230b49">
���Ρ�����˭���У�
������ֹͯ�ģ���


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200240b49">
�����ˣ�
����ֹͯ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����`��
	WaitKey(1000);

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200250b49">
������Ϊ������Ӧ��
�����ˣ������ˡ�����


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200260a09">
��̫�����ˣ������ëС��!!��


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200270b49">
��!?��


{	FwC("cg/fw/fwͯ��_�m��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200280a09">
����֪��Ϊ����������<RUBY text="����">�Լ�</RUBY>�������𡭡���
���ǻ���˵��ֻ�����Լ����������Ե�ɰ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200290a09">
��<RUBY text="������������">�����õ����</RUBY>ͻȻ����˵��������
˭��������!?
��ֻ������ᷳ���ˣ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200300a09">
����Ϊ��ξ͸�����ε����ӣ���������ţ�
����Ҫ��������Щ̧���ӵ������鷳����

//�룺�����������ݤ�����090930��
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200310a09">
����ָ��ʹ�Ŀ��ǡ���
�����ǵȵ��㲻��Ҫ�����κ��ˣ��������ֽ�
��ͯ�ĺ��д�ס��ʱ����˵��!!��


{	FwC("cg/fw/fw����_��ʧ.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200320b49">
������������
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��á�����i��������
	CreateSE("SE01","se����_�n��_ܞ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 1000, 3, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StML*", 300, @-10, @30, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fwͯ��_�m��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200330a09">
�������������޶˴����ˡ�
��ӣ��С�㣬�õ��ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200340a09">
����ô��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���@�ӊ����u��ͯ��
	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	DeleteStA(0,true);


	Wait(500);

//============================================
//��ꥳ�쥯������á���������������
}else{
	//״�B���x
	CreateTextureSP("�}�ţ�", 5000, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_a.jpg");

	//�ꥳ����Ĩ��
	RecoIn();
	SoundPlay("@mbgm36",0,1000,true);
}
//========================================================

	SetFwR("cg/fw/fw�@��_�ֲ�b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200350b28">
��ѽ������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200360b28">
����Ҫ��
�����ʲô����


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200370a09">
�����б����л������֮����
����С���ƺ�������ݻ������ʡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200380a09">
���Ǿ�Ϊ��λչʾһ���ɡ���


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200390b28">
�����ҷ�������
������£����ˣ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200400a09">
���롣
���涯�����涯������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ӣ��С��ķ���ֻ��ͽȻ��
�����������赸���������ˣ�ѩ��֮����¶���⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�@��_�ֲ�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200410b28">
��ѽ��������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200420a09">
��ŶŶ��������ô������
���ز�֮��������������Ȼ������ȴ��������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200430a09">
������紵ɢ��ҲҪչʾ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
[text0090]
��������������������ܿ��������ߡ������Ƕ񶾵ĺ�
��ȴ���Ź�����
����������סС������壬���Ͼ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����Ѥ�01");
	CreateTextureSP("�}�ţ֣�", 4990, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_b.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}�ţ�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ű��������˫�飬��¶����̨�԰׵ĵƹ��¡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_��ʧ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0200440b49">
��������


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200450b28">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ܲ�Ӧ�еĺݶ��Դ���С�㡣
���Լ�ʧ�����ǵ��������ꡣ

�����˵����ߣ�ɲ��֮�䡪��
���䴩�˶Է������޽��㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200460a09">
�����룡���ܲ���Ŷ��С�㣡
����ô��������ô��������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200470a09">
��һ˿���ҵ������ϣ�������һ������������
�����Ƕ�ô����Ļ��棡��


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200480b28">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ֣���", 4980, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_b02.jpg");

	CreateSE("SE01","se����_����_�����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}�ţ֣�", 500, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��С����ǿ����������ɵ����֣����·�������֮����
������߬�����У��ݺ����顣

{	CreateSE("SE01a","se����_Ѫ_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
��Ҳ���Ѿ�ʧȥ�����ǡ�
����ʹָ����Ѿ�����֭Һ������û��ͣ�����еĶ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200490a09">
�����ֺ���֮�С�
��С�����ǲ��̡���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200500a09">
��û�취���Ǿͻ��仨�ɡ�
�����ɣ����ſ�˫�ȣ���


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200510b28">
��ͣ�£�
���㡭��̫�޳��ˣ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200520a09">
����������
��Ҫ˵�޳ܣ����ܱȵ������ڵ�С�㡣��


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200530a09">
���������Լ�����
�����ֹ��е�ǧ��С�㣬ȴҪ��������ǰ¶��
˽��֮������


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200540b28">
������!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200550a09">
�����Ǵ��۸���
����Ϊ��䣬��ΪС������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200560a09">
�����ǿɰ������Ļ�Ӵ����


{	FwR("cg/fw/fw�@��_�ߐu.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200570b28">
���ء������ء�������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200580a09">
�����ǿ�ϧ��������������δ�š�
��������Щɨ�ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200590a09">
�������Һ��С���
��ʹ�������ţ�����λ���Ͱɣ���


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200600b28">
����������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200610b28">
��ס����ס�֡�����


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200620a09">
���ǺǺǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤äȡ�
	CreateTextureSP("�}�ţ֣�", 4970, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_c.jpg");
	FadeDelete("�}�ţ֣���", 1000, true);

	SetFwR("cg/fw/fw�@��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200630b28">
���ء�������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200640a09">
��Ӵ��������
�����ǲ������ǲ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200650a09">
������Ϊ��������ء���
��û�뵽���ɾͲ��������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200660a09">
����ô��С�㡣
����������ǰ��¶����������������𣿡�


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200670b28">
�������������㡭���⣡��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������Ϣ���ٵ�ӣ��С�㡣
���źӹ���Ц��ʮ�ֵ��⣬����������Ҳһ���ַ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200680a09">
����������
��С���ˬ����ϰɣ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200690a09">
��ƶɮҲҪ�������ˡ���
������������


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200700b28">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ƹϡ�Ѫ���ĩ`�äȡ�
	CreateTextureSP("�}�ţ֣�", 496, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_d.jpg");
	FadeDelete("�}�ţ֣�", 1000, true);

	SetFwR("cg/fw/fw�@��_�ֲ�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200710b28">
���ء�����


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200720b28">
���ء������ء���!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200730a09">
��̫���ˣ������ˣ�
�����ö�ô������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200740a09">
��ѩ��ӳ������졭��
����ô���µĻ�!!��


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200750b28">
�������źӡ���������������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200760b28">
����������ͯ�ġ���!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200770a09">
��Ŷ�����롣
����ô���������ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200780a09">
����ô����ҲҪ���һ����
�������š���ӣ��С�㡣����С��
ͬ����������֮�ڴ���Բ��¼���
�ɣ���


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200790b28">
������������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200800a09">
����Ȼ������С�㱾����˵�Բ���
���������˵�ҵ���������Ρ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200810a09">
��˵�ɡ�
����������ں�����˵���������Ǿ���������
һ��֮����������


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200820b28">
������������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200830a09">
���Բ���ǧ�𰡣�
�����������ްɣ���


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200840b28">
����������!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200850a09">
����Ȼ����


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200860b28">
����������!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200870a09">
����Ȼ����


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200880b28">
������������ħ��
����������������!!��


{	FwR("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200890a09">
����Ȼ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����ȳ������壬��������ǰ�⵽�ַ���С������š�
���ַ�С��ĸ�ɮȴ������Ȼ�Եá�

������һ�����˵�<RUBY text="����">�ߺ�</RUBY>���ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200900a09">
�������ֺ���������ˬ����
�����Ƕ�ô�����񾭵ĳ�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200910a09">
����������������
��С�㣬���Ҫ������ס�ң������ҳɷ�����
������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200920a09">
�����ϲ��Ψ�˼��С�
�����������ζ��ƶɮ����ȥ���������磬Ҳ
���ٻ����ģ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200930a09">
�������������ˣ���


{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200940b28">
���ء���������!!��


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200950a09">
������ĸ��ֺúÿ����ɣ�
�������㱻���˲������ӵ�ģ������
��ϸ���Űɣ���


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0200960b28">
��!?
�������������ԣ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200970a09">
��ŶӴ����Ҫ�Ҷ���
��������ô�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200980a09">
�������ż����һ����㻳�еġ�
��֮���ء������ֵ�<RUBY text="������">��ͥ��</RUBY>�ˡ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0200990a09">
������Ҳ����һ����ȤŶ��
���۹�����������������!!��


{	FwR("cg/fw/fw�@��_�ֲ�b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0201000b28">
����Ҫ����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
	//���ե��`�ɥ�����
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//������ָ��
//�Υե����롡"mb02_021.nss"