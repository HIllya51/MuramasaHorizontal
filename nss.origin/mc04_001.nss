//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_001.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���B��֦=true;

	$PreGameName = $GameName;

	$GameName = "mc04_002vs.nss";

}

scene mc04_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc03_027.nss"


//�����B��ۡ
//�����g
//�����ϡ���֦
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSP("�}����20", 100, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 2000, true);

	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);
	SoundPlay("@mbgm20",0,1000,true);
	StR(1100,@0,@ 0,"cg/st/st��֦_ͨ��_˽��.png");
	StCL(1100,@50,@ 0,"cg/st/st����_ͨ��_˽��.png");
	StL(1000,@-90,@ 0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	Move("@StL*", 300, @20, @0, Dxl1, true);

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010010a06">
�����ϵ��¡���֦���ˡ�
��ʱ���Ҫ���ˡ���


{	FadeStCL(300,false);
	FadeStR(300,false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010020b49">
��������


{	#voice_on_���B��֦=true;
	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010030b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010040a06">
�����λ����׼������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010050b49">
��������

//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010060b49">
��������

//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010070b49">
����������
��ʨ�Ӻ𡣡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010080a06">
�����¡�
���˴ζ�������壬����˵����Ρ���



{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010090a06">
��Ϊ������֣������޿ɱ���֮һ������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010100b49">
���⡭�������ס�
�������ף����ǡ�����


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010110a06">
����Ȼ���ף������������ԡ�
��������Ϊ���������ޡ���
���������֮�����ߡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010120a06">
��������������˵���־��
���κ��µľ��񣬶����Թ���Ϊ�ء���



{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010130b49">
������������


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mc04/0010140e123">
��ʨ��ʨ�Ӻ���¡��������ˣ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010150a06">
������<RUBY text="������">������</RUBY>��
�����������ˡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010160a06">
�����Խ�Ϊ��ʵ����Ů��
�������Կ��в�ʵ֮������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mc04/0010170e123">
���ҡ�����û�������˼������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010180a06">
�����޴��⣿
����֪���������飬ȴ���������֪�����𣿡�



{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010190a06">
������鳼����


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mc04/0010200e123">
��ʲô������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010210a06">
�������ʸ��̷��ڵ���֮�ࡣ
������ȥ����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ����
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0010220e171">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ��Ů���B��ȥ�롣�ӣŤǱ�F��

	DeleteStA(200,true);
	OnSE("se����_����_����02", 1000);
	WaitKey(200);
	OnSE("se����_����_����������_L", 1000);

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0031]
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mc04/0010230e123">
������£���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ɥ��]�ޤ롣�Ф���
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se�ճ�_����_���]���01", 1000);
	WaitKey(300);
	StCL(1100,@50,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStCL(300,false);
	

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0032]
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010240b49">
���ȡ����ȵȣ���


//���ɥ���������
{
	StL(1000,@-90,@ 0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010250a06">
�����¡���


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010260b49">
����������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010270a06">
��������һ�顣
���������˵����ʵ����


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010280a06">
��<RUBY text="��������">��������</RUBY>���κμ�ֵ��
����ֵ������Դ�ϳ��ߣ�������Ԫ˧��
��������λ�������졣��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010290a06">
�����������������
������κ��µĴ���������ѭ������



{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010300b49">
����������������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010310a06">
�����¡�
���������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mc04/0010320b49">
��������ǰȥ׼����
�������Ժ򡣡�


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010330a06">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ϡ�ȥ��

	Move("@StCL*", 200, @-20, @0, Dxl1, false);
	DeleteStCL(200,true);
	StR(1100,@0,@ 0,"cg/st/st��֦_ͨ��_˽��.png");
	FadeStR(200,true);
	SetFwC("cg/fw/fw��֦_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0033]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010340b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010350a06">
����֦����Ҳ�롭����


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010360b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010370a06">
��ʲô�£���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010380b18">
������������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010390a06">
������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010400a06">
����֦�����������ǡ�
����ȥ׼������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010410b18">
����������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010420a06">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010430a06">
����ǰ��׼���ҡ�
���̴��ڵ��Ż�֦���ˡ���


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010440b18">
����㣡��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010450a06">
��������������������


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010460b18">
����˵�Ļ����������Ƿ�㡣
��������������㣡��


{	Move("@StL*", 300, @50, @0, Dxl2, false);
	DeleteStL(300,false);
	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010470a06">
������<RUBY text="�̣���">ƭ��</RUBY>����


//���{�Ӻ𡢻�֦���Ĥ��ࡣ�ӣű�F��
{	OnSE("se����_����_������01", 1000);
	Shake("@StR*", 100, 7, 0, 0, 0, 1000, Dxl3, false);
	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010480b18">
�������ء�����


{	DeleteStR(300,false);
	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010490a06">
��ֻ��������ӵ�Ʒ�ԣ���δ�ܵ��̺á�
����Ȼ����Ϊ��Ϯ�˲�֪�����ߵ�Ѫ����
�����Ľ��Ҳ����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010500a06">
��<RUBY text="��������">���ֻ�ɫ</RUBY>��ȻҪ��Ϊ����ĺ�������
��ʵΪ�����ǧ��֮�ܡ�
��ȫ��������Ϊ�����������㡣��


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010510a06">
����һ��ԭ�����£���֦���ˡ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010520b18">
���ء�����������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010530a06">
���³�֮�󡭡�
����һ�Σ������ϸ���̡����û�֦���˶���
�߱�Щ���˵�Ʒ�ԡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010540b18">
�����������������
���ſ��ҡ�����̬����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010550a06">
��������


//�����֡�
{	OnSE("se����_����_�y�ߤĤ�", 1000);
	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010560a06">
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 990);

//�����B��������뻨֦

	OnSE("se����_����_���S01", 1000);
	StL(1000,@20,@ 0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-20, @0, Dxl1, false);
	FadeStL(300,false);

	Wait(200);

	OnSE("se����_�n��_ܞ��03", 1000);
	Shake("�}��д", 300, 0, 10, 0, 0, 1000, Dxl1, true);
	Delete("�}��д");

	WaitKey(700);

	StR(1100,@0,@50,"cg/st/st��֦_ͨ��_˽��.png");
	OnSE("se����_����_�᤺����01", 1000);
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);
	WaitKey(300);
	SetFwC("cg/fw/fw��֦_Ұ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010570b18">
�������ޡ�
����������ѪҲ�Ѻȡ�̫��ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010580a06">
�����㹷������������ҧ�ˡ�
�������Ը��ƺ��Ѿ���Ť���ˡ���



{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010590a06">
�������Ҳ��������
��ʧȥ���۷ɴ��˵�ϣ��֮��
�������ֻʣ�����ˡ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010600b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010610a06">
��Ϊ���ð��ϵ��ºʹ����֮�����º��ӣ�
��Ҫһ��<RUBY text="����">Ŧ��</RUBY>����
�����������������ܹ�����������
�����������ɡ���


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010620b18">
�����������þ���ɣ�
������Ϊ����Դ���һֱ���ڲ����ϡ���



{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010630a06">
��������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010640b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010650a06">
���ѻ�֦���˴�ȥ����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�¡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0010660e172">
���ǡ����ǣ���


//������㣯���B��ʿ�¡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0010670e172">
�����죬����롭����


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010680b18">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ǳ������ɤ��`��
	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(150,true);

	CreatePlainSP("�}��д", 5000);

	OnSE("se���L_�Ɖ�_���k02", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(300);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���B��ʿ�¡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0010690e172">
��ʲ����ʲô!?��


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010700b18">
��������ը��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��ɤ��`��

	OnSE("se���L_�Ɖ�_���k02", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,20,Dxl2, true);
	WaitKey(300);

	OnSE("se���L_�Ɖ�_���k01", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, true);
	WaitKey(300);

	SetFwC("cg/fw/fw�{�Ӻ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010710a06">
������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010720a06">
�������ڡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
	OnSE("se���L_�Ɖ�_���k05", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,60,Dxl2, false);

	CreateVOICE("����㣯���B��ʿ��","mc04/0010730e173");
	MusicStart("����㣯���B��ʿ��",0,1000,0,1000,null,false);

//	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//<PRE @box0>
//[text0070]
//���ܥ����Τ�
//������㣯���B��ʿ�á�
//<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0010730e173">
//����Ϯ��������!!
//���ǵ�Ϯ����������������������������!!��

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��֦_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0010740b18">
������������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0010750a06">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("����㣯���B��ʿ��", 2500, 0, null);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc04_002vs.nss"