//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_009.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "mc04_010.nss";

}

scene mc04_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_008.nss"

//���{�Ӻ��u�ġ���ʤȤ����顣
//���M�߷�����������֦

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 100, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	CreateTextureSP("�}����30", 150, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	StL(1100,@0,@0,"cg/st/st��֦_ͨ��_˽��.png");
	StR(1100,@0,@0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(0,false);
	FadeStR(0,false);
	Delete("�ϱ���");

	OnSE("se����_����_���S01", 1000);
	WaitKey(550);
	OnSE("se����_�n��_ܞ��01", 1000);
	StC(1000, @350, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStC(200,false);
	Move("@StC*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm34", 0, 1000, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se����_����_���01", 1000);
	Fade("�ե�å����",100,1000,null,true);
	WaitKey(200);
	StR(1100,@0,@30,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStR(0,false);
	DeleteStC(0, true);
	WaitKey(200);
	OnSE("se����_�n��_ܞ��03", 1000);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	Fade("�ե�å����",300,0,null,false);

	CreatePlainEX("�}��д", 9990);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw��֦_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090010b18">
��ʨ�Ӻ�!?
��������㣡��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090020a03">
���ء�������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090030a06">
��������ʮ��ǰ����������ˡ�
��ûע�⵽��������׳ա�����


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090040a06">
�����а�ۻ��Ǻ���ǰһ����
ֻ�иÿ����Ķ�����������
������û�д�������塣������ǻ���ж���
�Ķ���������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090050a06">
�������޴����ӵ��˵��۾���
���㼴ʹ������Ҳ���Ǵ����ϵ�е��ˣ�Ϊʲ
ô��û������֮�ۣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090060a03">
������
������֮�ۡ�������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090070a03">
������еĻ��������ҾͲ��ñ�һ����������
󢻹�����ı�̬<RUBY text="������">��ǽ��</RUBY>Ϯ���ˣ�
�������Ǻܹ��ذ�������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090080a06">
����˵Ц�ˡ�
����ֻ����׼����һ��������ľ��롣��


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090090a06">
�����ڲ��Ǹ�����������ڵ�ʱ�򣬶��Ҷ���
Ҳ���ԡ�������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090100a03">
����ѽ������ô��
��Ϊʲô���Ͽ����ɱ���ء�������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090110a06">
����Ҳ��Ҫ�����������ڤ����
�����ǡ�����


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090120a06">
����ղ�˵����һ�������޷����ӵĻ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090130a03">
������ʲô�ء�������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090140a06">
�����������������������۵ĸ���
����Ҫ�ҵ��������ţ�����ϲ���ɡ���



{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090150a06">
�������д����ϵ��Ѫ��ȴֻ�ܿ�������ĸ�
��ֻҪ�㲻Ϊ�Լ���������խ�е���������
����ô���������ԣ�
������Ϊ�����׼�����������С����!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090160a03">
������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090170a06">
����֦����˵�Ļ�����Ҳû�����⡭��
����������ҪΪ�˴�Ͷ������ң�����ٰ���
��ڣ��ҷ��������ˡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090180a06">
������������׳־��
�����ñ���ʨ�Ӻ������ͷ����


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090190b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090200a06">
������ֻ�ܿ�����ǰ������㣬
�����۾�Ҫ����̫�࣡
��ǰ�������������㣬�����˻�֦���ˣ�
ֻ����һ��ֵ����϶�����


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090210a06">
��������Ҫ��������ǰǰ���������������⵽
�׻��ǲ�����������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090220a03">
���������ء�
����ô����Ҫ��ʲô��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090230a06">
������֮ǰ˵�Ļ���
�������۷ɴ����������⵽ɱ�����£�
�㶼֪��Щʲô����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090240a03">
������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090250a06">
����һֱ��Ϊ����ɵġ�
��Ϊ���ػ����õĵ�λ����ɱ���������ļ̳�
�ߡ�������ô�޴������ó��֡���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090260a06">
��������Ҳ����ͬ���������������
������������˵һ��ɡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090270b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090280a06">
��˵�ɣ�����֦��
����֪��Щʲô����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090290a03">
�����ʴ����˰ɡ�����
���������ʾ���ɡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090300a06">
�������еľ�������������û�й�������¡�
��˵��Ϊ���Ѳ�����Ĵ�ʩ����
���޷���⡣�϶������顣��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090310a06">
��������һ���������̹�ס�
������������������̹�׵Ļ�����������ʡ��
�˰ɣ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090320a06">
������������Ů���ꡣ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ꡣ�����Ϥ�
	OnSE("se����_����_�����01", 1000);
	CreatePlainEX("�}��д", 9990);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090330a03">
���ء�����


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090340a06">
��˭ɱ���۷ɴ��ˡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090350a03">
����������£�
��������֮�󡭡���Ҫ��������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090360a06">
���⻹���ʡ�
���������˲�������ᶼҪ�����ҳ���
���ֿ����׼�����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090370a03">
���ߡ����ߺߡ�������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090380a06">
��Цʲô����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090390a03">
����ô�������С�
���Ҳ��ܸ����㡭����


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090400a06">
����������֦����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф�����������

	OnSE("se����_����_̤���z��01_L",1000);
	WaitKey(500);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0031]
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090410e177">
������!?��

{	SetVolume("@OnSE*", 1000, 0, null);
	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090420e178">
���⡭�����ǡ�����


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090430a06">
������̫���ˡ�
�����ǲ�ץ�����ߣ����������ʲô�ء���



{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090440e178">
���ǣ��Ǹ�����
����Ϊ������Щ���ҡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090450e177">
���ƺ���������֦�������⣬
�����������ڸ��š�����


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090460a06">
���������ˡ�
�������Ѿ�����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090470a06">
�����������ˣ�������˸��ڻ�֦������ߡ�
�����������澲�����ţ�
ֱ�������ĵ�ɧ����������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090480e178">
���ǡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090490e177">
�����죬��������һ�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��֦_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090500b18">
��������


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090510b18">
����㡣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090520a03">
��һ���������


{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0090530b18">
���������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֦�ȱ�ʿȥ��
	OnSE("se����_����_�}���i��02_L", 1000);
	DeleteStL(300, false);
	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090540a06">
����ô������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090550a03">
��������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090560a06">
����˵һ�������
������Ϊ�һ���������á���



{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090570a06">
������˵������Ҫȫ��̹�ף��������ģ���



{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090580a03">
�������������������ӡ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090590a06">
������ȥ���Ǻ�ƻ����ü�����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090600a03">
��������
������ȥ����ưɡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090610a06">
������������


{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090620a06">
��ι��
���㡣��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ɡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090630e179">
���ǡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0090640a06">
���ü�������
�����н�ʵ�����ӡ����ӡ����д��ӡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ɡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0090650e179">
��������
�����������̾�ȥ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0090660a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������󡣤������l�����F�줿��
//�����ܞ�Q

	SetVolume("@mbgm*", 300, 0, null);

	CreateSE("SE01","se�ճ�_����_���_��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ClearWaitAll(0, 0);

}

..//������ָ��
//�Υե����롡"mc04_010.nss"