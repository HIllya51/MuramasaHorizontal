//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_001.nss_MAIN
{
	$TITLE_NOW = "��";

	//��e�ޥ����ٌ���
	Conquest("nss/ma02_001.nss","BoyaboyaAction",true);
	Conquest("nss/ma02_001.nss","BoyaboyaSet",true);

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
	#bg001_��a_01=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg020_ɽ�}_01=true;
	#ev501_�������=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
//�룺���ڻ�
	$Others_Flag = 0;
	$OthersFav_After = 0;

	#voice_on_�L���Ҿ�=true;
	#voice_on_��������=true;
	#voice_on_����=true;

	#av_�˰�ʽָ�]���T=true;

	$PreGameName = $GameName;
	$GameName = "ma02_002vs.nss";

}

scene ma02_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma01_026.nss"

//����
//���|������
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg001_��a_01.jpg");

	FadeDelete("�ϱ���", 3000, true);

	WaitKey(1000);

	CreateSE("SE01","se���L_�饤�ե�Ĥ��h��01");
	CreateSE("SE01a","se���L_�饤�ե�Ĥ��h��01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(300);
	MusicStart("SE01a",0,1000,0,700,null,false);

	WaitPlay("SE01a", null);

//���ӵ�ǰ�������_һ�������
//�������z�����ȹ���һ�����ȥ��һ�ˤ���

	PrintGO("�ϱ���", 15000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	StCL(1000, @0, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StCR(1000, @0, @0,"cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);

	FadeStA(0,true);

	FadeDelete("�ϱ���", 2000, true);

	CreateSE("SE02","se����_�n��_ܞ��03");
	CreateSE("SE02a","se����_�n��_ܞ��03");

	MusicStart("SE02",0,1000,0,800,null,false);
	DeleteStCL(300,true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStCR(300,true);


	WaitPlay("SE*", null);

	SetFwC("cg/fw/fw�L��_�@��.png");

	#voice_on_�L���Ҿ�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010010b45">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦���ǣȣ�܊װ
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStR(300,true);

	CreatePlainSP("�}��д", 10000);
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a2.png");
	FadeStR(0,true);
	OnSE("se���L_�|��_������01",1000);
	FadeDelete("�}��д", 300, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010020a03">
���ȡ��ȡ�
����������������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010030a03">
����Ȼ����û��ϲ����ǹе����
����������Ѭ�ˣ������Ҳ���á���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//�����衿
<voice name="����" class="����" src="voice/ma02/0010040a04">
����ѽ����С�㡣
��������Զ��������������ʲô������ء���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010050a03">
���е�Ŷ����
����ͷ����Ŀ���˲�䣬
���ƻ������ٷ���������
�·�ͻ��ָ��ӿ��׵�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0010060a04">
���ǲ���ֻ�Ǳ��������Ű��
����������������𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010070a03">
����ô�¶��۵Ļ������ǵ����ı�̬���ء�
�����źù��֡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0010080a04">
����Ϊ���໹Ҫȥɱ�˵ļһ�ȫ���Ǳ�̬��
�쳣�ߣ���С�㡣��


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010090b45">
���������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(160,true);

//���L��
	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStL(240,true);

	SetFwC("cg/fw/fw�L��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030a]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010100b45">
���⡪��
������ʲô��˼����



</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a2.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030b]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010110a03">
�����������˼����
���Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StCR(1100, @120, @0,"cg/st/st����_ͨ��_˽��.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);
	Move("@StMR*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030c]
//�����衿
<voice name="����" class="����" src="voice/ma02/0010120a04">
���������޵ط��٣������ξ���¡���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010130a03">
�������ξ��
����Ϊ��פ��˾���ǲ��Ѳ��٣��Դ�;�
�ٱ��Ĳ�ǡ����Ϊ���о������ҵ�ְ�𡣡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010140b45">
���ҵ�ʿ���Թ����ʲôʧ��ľٶ���
������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010150a03">
���������񣬳����޶ȵĿ��ۣ����˳�������
��ʩ��˽�̡�
�������ĸ���������Ϊһ����ʿ�ٵ���Ӧ�е�
�����أ���


{	FwC("cg/fw/fw�L��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010160b45">
���������������ټ���ָ�𣡡���͵�����
�ѵ������Ѿ�ί�����������𣡡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010170a03">
���š�
���ڣǣȣѵļල֮�¡���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010180b45">
�������˵�ɿ󹤳̵�����Ļ�������Ѿ����ף�
�����Ҳ�õ��ˡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010190a03">
�����ǣ����վ�ֻ�������ϵĶ�����
��������ʩ����ʵ��������е��飬�ڷ�����
������ʵʱ����ȡ��ֹ״���񻯵Ĵ�ʩҲ����
Ѳ��ٵ�ְȨ��Χ�ڡ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010200b45">
����ʲô��Ц������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010210a03">
����ֻ���Ҹ��˵ļ��⡣
�����������ǲ�����Ϊ���������͵��񲻹��أ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010220b45">
���Ʋ��������Ķ���Ҳ��Ǯ��Ҳ�����Ҳ�ã�
���Ѿ����Ǽһ���Ҫ�Ķ�����������������
���ѵ��ǻ�����������ֱϹ������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010230a03">
����ȷ���������𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010240b45">
����Ȼȷ����������̵�һ��Ԥ�㶼���Ǽ�
��һ�����̵��ˣ�
������ѵ�һ�㶼û��˵����!?���Ǽһ��Ѿ�
��Ӧ������������鶼���ź�Ŷ!?��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010250a03">
��������ѽ�����ˡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010260a03">
��ɴ���������ղŵĻ����𣿡����ǣ�������
�����л��ܻ߰������ش�֤���ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0010270a04">
��ʵ�����൱Ϸ���Եķ�չ�أ���С�㡣��


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010280b45">
����ˣ����������Щ����!?��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010290a03">
������û���Ǹ���˼�ء�
���԰ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0010300a04">
����ˡ��ֱ�ԣ���С�㡣
���ӿ͹۽Ƕ����ۣ�������ȫ����ˣ�Ŵ�ξ��
�����ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010310a03">
����ѽ����������
���ǳ���Ǹ�������ǵģ����������鲻�Ǻ�
�˽��ء���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010320b45">
����������
��Ŀ�ġ�����ʲô����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010330a03">
��Ŀ�ģ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010340b45">
����ٵ�Ŀ�ģ���˵����������Ҫʲô��Ǯ��
����˵��Ҫ��ɽ����Ȩ��
���ǵĻ���ֱ˵��û��Ҫ��ô����Ĩ�ǣ��һ�
���ǵģ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010350a03">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010360a03">
��������ͷ���أ�ɴ����
���˼�û������ҵ���˼�ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0010370a04">
��ʵ������ͷ�ۡ�
����������ء��ɴ��ڴ�ξ���µ��Դ��Ͽ�һ
������������������������������������
ô������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010380a03">
���������ν��������
����ô����Ȼ������˵�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㥭������֦���|����

	CreatePlainSP("�}��д", 5000);
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStR(0,true);
	OnSE("se���L_�|��_������01",1000);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0010390a03">
��<RUBY text="�У̣ţ��ӣš��ǣϡ��ԣϡ��٣ϣգҡ��ǣң��֣�">��������ĹѨ��ȥ</RUBY>��
�������Ǻò������ڳ��Ŀӵ���
����Ч�س�����ðɡ���


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0010400b45">
��������Ѿͷ!!!!!!!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���L�࣬װ�ס��˰�ʽ�o�T��ָ�]���˘�
	#av_�˰�ʽָ�]���T=true;

//��ͻ�M

	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 1200, 0, null);
	Fade("�}�ե�", 200, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_ͨ��.png");
	FadeStC(0,true);

	CreateSE("SE01a","se����_�z_װ��04");
	MusicStart("SE01a",0,1000,0,750,null,false);

	Fade("�}�ե�*", 1600, 0, null, true);


	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	OnSE("se���L_����_������01",1000);
	FadeStC(300,true);

	CreateTextureSP("�}����", 1000, Center, Middle, "cg/st/3d�˰�ʽָ�]��_�Tͻ_���L.png");
	SetBlur("�}����", true, 3, 500, 50, false);
	Zoom("�}����", 0, 700, 700, null, true);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("�}����", 300, 5000, 5000, null, false);
	Fade("�}�ե�", 250, 1000, null, true);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}�\��", 100, "#000000");
	FadeDelete("�ϱ���", 3000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ط��١�����Ȼ�ƺ�������ʧȥ�����λ�ľ���������
���Լ��Ľ��У�װ�������ҪԾ���˲�䣬���˲���
ʶ���Լ������ȡ�ж���
��ͬʱ��Ҳ��ʶ�����Ѿ��ϲ��ϵ���ʵ��

����ֹ�Ǹ��޴����������Լ������Ρ�
�����˵��޴���������ԭ��������Щ�����ֻʣ��
��һ����

����������һ���˶ϡ�
������ν����Ѫ�ٴη���֮ǰ��

��û�и����Ǹ����˵ı��߲������Сɽ��ǰ��ֹ����
�����˻ں޲��ѡ�

����������ֻ���������õ�������ȥ�ͺá�
��
����������

���ɺ޵����Լ�������˥��
��Ϊ��ս�ط��ٽ��е�׼����Ҫ�ķѵ�ʱ�䳬��Ԥ�ϣ�
����ֻ������������̬�񻯡�

��������ɲ��Ҳ�ǡ�

������ƶ����ӱ���ʴ��������˵�Ǵ���һ
���ġ����Ǹ�����Ů�ӹ��ƻᱻɱ���ɡ�
��ȻҲ���ܲ�˵���������ܡ�
�����ǣ����ƺ��������ȴ��ӵġ�

�����˿������ﱻɱ���Ļ������»������ֻ���
���������˲��˽����䶯̬����Ҳ֪�������ս����
��ܣ������ڱ�ռ�����״��

�����������פ���������������������Ļ�����

�������Ǹ�Ů�Ӳ�����ô����Ӧ���Ǵ���ˣ������Ǿ�
��������ʾ����������פ��˾�����ݡ�
��û�����ܹ���֤��פ������Ϊ�������򵱵ؾ�������

������������ֹ�Ǹ����ˡ�
������ֹ���ɣ��������Դ���
��
��Ȼ����

�������վ��޷�������

���������£�һ�������ںޡ�
����������ձ���ɽ�����䣬�ɻ�Ҫ�ڻں�����
����һ����

����������𼲳塣
��˺����գ����Ƶ��档

������ֻ�����򣬽��ǵ�ͬ��α��Ʒ�Ľ��У��������
���ٶ��������վ��������޷�����ġ�
����̸��֮���⣬���������Ƕ���������ʵ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
	OnSE("se���L_����_�����01",1000);
	SL_centerin(@0, @0,1000);
	SL_centerinfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ȥ��ֹ��
��
��������Ը�š�

����ֹ��һ����
��Ψ���ǽ�ƾ��������޷��󼰵�һ������
û���ˡ���ȥ��ֹ��

����ֹ֮��������ȥ���������˽ᡣ

����������Ը��
������û��Ӧ��Ŀ��ܡ�

����������
����ȥ���й���

�����й���Ӧ�������ڵĺ������Ծ����������赶��
֮�ˡ�
�����������ܹ��������Ǵ��ڵġ���������ʵ�������죬
����������������������ŵ���ʵ��

�������Ҳû�С�
�������Ѿ�ʧȥ������
������������ʱ���̺��Ĳ�����ϣ�����������硣

�����˵�Ը���޷������κ�����ߡ�
����ʹ�ܹ�������Ҳû���κ��˻�������

��û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������z�߄��ġ������`��
	CreateSE("SE02","se���L_����_�����02");
	MusicStart("SE02",0,1000,0,800,null,false);

	SL_rightdown(@0, @0,1500);
	SL_rightdownfade2(10);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���κ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���˰�ʽ�򴵤��w�Ф�
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}�ե�", 5000, "#FFFFFF");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	StL(1000, @30, @10,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	FadeStL(0,true);

	OnSE("se���L_����_���nͻ01",1000);
	Delete("�ϱ���");
	FadeDelete("�}�ե�", 2000, false);

	Shake("@StL*", 800, 1, 2, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-60, @0, Dxl1, true);

	WaitAction("�}�ե�", null);

	PrintGO("�ϱ���", 15000);

	CreateColorSP("�}�\", 5000, "#000000");
	DrawDelete("�ϱ���", 200, 1000, "slide_01_03_1", true);

	CreateCamera("��", -100, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����10", 0, Center, Middle, "cg/bg/bg020_ɽ�}_01.jpg");
	Zoom("��/�}����10", 0, 1500, 1500, null, true);

	CreateTextureSP("��/�}�����}����", 250, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	SetVertex("��/�}�����}����", center, bottom);
	Zoom("��/�}�����}����", 0, 750, 750, null, true);

	Request("��/*", Smoothing);

	MoveCamera("��", 3000, @-70, @50, @100, AxlDxl, false);

	SoundPlay("@mbgm04",0,1000,true);

	DrawDelete("�}�\", 2000, 1000, "slide_01_03_1", false);

	Wait(1800);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ʺ��ɫ��Ծ���š�
������Ѫɫ����졣

���·����������һ�㡣

�����صļ�����
������ĵ��С�
��������������Ϣ�����ǿ����Ͳ�������ɧ����

����ľ��ֻ���
�������콵����������Ȫ���

�����ǣ�ʲô��
�����Ǻ��

������
�����ô���
����Ҳ���޴��ϵĿ��ܡ�

��Ȼ���˿̣�������������

�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0010410b06">
��үү����
���Ǹ�����ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������������Ů�����ʣ��������д𰸡�
���Ǿ���Ϊ�������֪����

���������裬����
������ѪҺ֪����
����ұ�����Ѫ���ǳ���Ӱ�������֪������

�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������m�����ݳ�
	CreatePlainSP("�}��д", 10000);

	CreateTextureEXadd("�}�݄���", 3010, Center, Middle, "cg/ev/ev501_�������.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev501_�������.jpg");
	BoyaboyaAction();

	FadeDelete("�}��д", 2000, true);

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�}ɫ��", 2000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������֮���С�
�����У����������ߡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);



}

..//������ָ��
//�Υե����롡"ma02_002vs.nss"

.//�ץ�����======================================================

..//����Τ��᤭
function BoyaboyaAction()
{
	CreateProcess("�ץ����ܥ�", 5000, 0, 0, "BoyaboyaSet");
	Request("�ץ����ܥ�", Start);
	Request("�ץ����ܥ�", Disused);
}

function BoyaboyaSet()
{
	begin:
	while(1)
	DrawTransition("@�}�݄���", 0, 0, 300, 100, null, "cg/data/circle_07_00_0.png", true);
	{
	DrawEffect("@�}�݄���", 3000, "LowWave", 0, 20, null);
	Fade("@�}�݄���", 800, 500, null, true);

	Wait(200);

	Fade("@�}�݄���", 2000, 0, null, true);
	}
}