//<continuation number="350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018.nss_MAIN
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
	#bg025_�ӵ�ɽ�}��ɭa_01=true;
	#bg025_�ӵ�ɽ�}��ɭa_02=true;
	#bg025_�ӵ�ɽ�}��ɭa_03=true;
	#bg020_ɽ�}�ӵ�_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_017.nss"

//����ɽ�h������
//����ɽ�h����Ϧ

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	Wait(500);

	OnBG(100,"bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	FadeBG(1000,true);

	Wait(500);

//���������ɩ`��
	CreateSE("SE01","se���L_�Ɖ�_����01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorEXadd("�}�ե�", 5100, "#FFFFFF");

	CreateTextureSP("�}�ţ�50", 5000, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	SetBlur("�}�ţ�50", true, 4, 500, 100, false);

	Fade("�}�ե�", 0, 400, null, true);
	Fade("�}�ե�", 700, 0, null, false);

	FadeFR2("�}�ţ�50",0,1000,400,0,0,20,Dxl1, true);

	Wait(1300);



//����ɽ�h����ҹ

	PrintGO("�ϱ���", 1000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_03.jpg");
	FadeDelete("�ϱ���", 1000, true);

	Wait(500);

//���������ɩ`��
//���������ɩ`��

	CreateColorEXadd("�}�ե�", 5100, "#FFFFFF");

	CreateTextureSP("�}�ţ�50", 5000, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_03.jpg");
	SetBlur("�}�ţ�50", true, 4, 500, 100, false);

	CreateSE("SE02a","se���L_�Ɖ�_����01");
	CreateSE("SE02b","se���L_�Ɖ�_����01");
	MusicStart("SE02a",0,1000,0,1250,null,false);

	Fade("�}�ե�", 0, 400, null, true);
	Fade("�}�ե�", 700, 0, null, false);

	FadeFR2("�}�ţ�50",0,1000,400,0,0,40,Dxl1, false);

	Wait(100);

	MusicStart("SE02b",0,1000,0,750,null,false);

	WaitAction("�}�ţ�50", null);
	Wait(1300);



//����ɽ�h������

	PrintGO("�ϱ���", 1000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	FadeDelete("�ϱ���", 1000, true);

	Wait(500);

//���������ɩ`��

	CreateColorEXadd("�}�ե�", 5100, "#FFFFFF");
	CreateTextureSP("�}�ţ�50", 5000, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	SetBlur("�}�ţ�50", true, 4, 500, 100, false);

	CreateSE("SE03","se���L_�Ɖ�_����01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("�}�ե�", 0, 400, null, true);
	Fade("�}�ե�", 700, 0, null, false);

	FadeFR2("�}�ţ�50",0,1000,400,0,0,20,Dxl1, true);

	Wait(3300);

//���ӵ�ǰ
	SetVolume("SE*", 300, 0, null);
	SetVolume("OnSE*", 300, 0, null);

	PrintGO("�ϱ���", 1000);

	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
�������糿��
����Ա�˴������ʮ��������ˣ���װ����ӵ�
�Ĺ�������˳���ؽ����š�
���м���ϸխ�ķ�֧��·ʵ�����Ѿ������ˡ�

���ط�������Ӧ���Ѿ������˰ɡ�
��������û�з��֡�

������֮��Ӧ�û�������Ӧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�b.png");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	FadeStR(300,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0180010a03">
����ô�ټ��ˣ��������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180020a00">
���á�
���������ǳ�����չˣ�������ξ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����Ѿ�׼���û�ȥ������֦���ʹ����к���

������������֮��Ҫ��������ʱ�䣬��Զ·
�ص���פ��˾���
���������Ѳ��ٵ����֧Ԯ��

���ҵĻػ����ô�������֦����һЦ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0180030a03">
��������ʲô�ء�
�����չ˵������ҡ���������Σ��֮�У�
������Ҳ�����ҡ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180040a00">
������Ҳһ����
�����û����ξ���µĻ����������һ����
�����鷳�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��û�д������罻�����˵����
��ʵ���ϣ���һ����ӹ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/ma02/0180050a04">
����С�㣬�ն����ˡ�
�����˵��ٱ�֮��͵���Ϊֹ�ɡ�
��ɴ����������ʱ���������ֻ�
�ټ��ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0180060a03">
����ѽ������Ҳ��ô����
����ʵ��Ҳ��ô���á���֪Ϊʲô�ܾ���
�;������˵�Ե�ֲ��ᵽ��Ϊֹ�ء���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180070a00">
���ǡ�
��������ô�����ҵ����ҡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0180080a03">
�����ԣ��������ˡ�
���������ᣬ�ټ��ɡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180090a00">
�������ǵġ�
����Ե�Ļ��������ټ��ġ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0180100a04">
���ն����ˡ�ף�����˲�¡����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180110a00">
���ǳ���л��
���̴Ӹ���Ҳ�ౣ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ˤ������}��ȥ
	CreateSE("SE01a","se����_����_�i��01_L");
	MusicStart("SE01a",0,800,0,800,null,true);
	DeleteStR(300,true);

	SetVolume("SE01a", 5000, 0, null);
	CreateSE("SE01b","se����_����_�i��01_L");
	MusicStart("SE01b",0,800,0,650,null,true);
	DeleteStL(300,true);

	SetVolume("SE01b", 5000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0059]
������������ȥ�ˡ�
  ���ˬ�ĽŲ����⿴�ž����˾���ˬ�졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01*", 1000, 0, null);
	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180120b55">
�������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180130a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������Ƿ����������Ӱ������Դ̫���ˡ�
��һ�߸����Ž�����С�����͵���Ӱ��������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180140b55">
����ô������Ϳ������ˡ�
�����µ�Ѳ����ȵ��������ǵط��ٵ�����
�ȺĹ⡭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180150a00">
����Ȼ��
�������Ա�ļ����ӻ��Ϊʤ���Ĺؼ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180160b55">
�������Ļ����������
���Ǽһ�����Գ�����Ҳ��ֻ�����ӵ�β��
��ô������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180170a00">
���ټ��ϴ�����ξ���ϼ��������������ǰ�
�����������ֵȴ���ξ�����Ļ����Ϳ�ν
�ǳɹ���һ���ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180180b55">
���ɲ��ܱ���ô����ڴ�����
�����ǲ�������������һ������һЩ
�ж��ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180190a00">
���ǡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180200b05">
��үү����
����ʿ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ͻȻ����Զ�������˺�����������
��ɽ��һ���С���ϣ���С����ӰС���Ź�����
�Ա߻���һ��������СһȦ��СС��Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-60, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StCR(1010, @60, @0,"cg/st/st�դ�_ͨ��_˽��.png");

	FadeStR(300,true);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180210b55">
����ô�ˣ�
����˵������̫���ڽӽ�����ġ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180220b05">
�������Բ���
���������Ƕ��ˣ������쿪ʼ��һֱ��������
�ɣ������Ǵ�Ŷ�û�г��緹�ɡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0180230b06">
�������ˣ�
�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����׵���Ů���ֵ���ش򿪱��ŵİ�����
���������ǣ�����׼���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180240b05">
����ʿ���ˡ����Ǹ����������鷳���𣿡�


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180250a00">
��лл�㡣
�����ã��Ҿ��ö��Ӷ��ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180260b55">
�������ǰ���
�����Ŷ���Ҳ����ս����������һ�ݰɡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0180270b06">
���԰ɣ���


{	FwC("cg/fw/fw�դ�_�n��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180280b05">
��ι���֣�
�������ǣ������á�������˼ֻ�з��š�
�������ǲ衣��


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0180290a00">
�������΢������
��ʀ���Ǹ�������ġ���


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180300b05">
��������������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180310b55">
����Ҫ̫���������á�
����Ȼ����������ο���Ҫ��Ȣ����ȥ�ˡ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180320b05">
��ү��үү����


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0180330b55">
���ǺǺǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��˫�ձ��ͨ�����Ů������Դ̫���˳����Ц������
��������ݺ������ڵ����գ����˻�Ȼ������������
״����

����������ͨ��������곤����Ů���˰�����
��
��������

������Ķ��������൱��Ĳ��
��һ���ǽ�С�ġ���״�ÿ��ķ��ţ�������һ��
��״ȴ�ǳ��ֲڣ����Ҽ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0180340b05">
��������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0180350b06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��֮���Ҳ��ɵøо��������������쳣���ȵ����ߡ�
����ô����

���ȳ���һ���أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//���x�k���_���ʷ�������ʷ�

..//������ָ��

//���_���ʷ���"ma02_018a.nss"
//������ʷ���"ma02_018b.nss"

//���x�k֫���`��
scene ma02_018.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	SoundPlay("@mbgm30",0,1000,true);
	PrintGO("������", 30000);
	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("��״�ÿ��ķ���","���ͺ����ķ���");
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
//�_���ʷ���"ma02_018a.nss"
				$GameName = "ma02_018a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//����ʷ���"ma02_018b.nss"
				$GameName = "ma02_018b.nss";
		}
	}
}