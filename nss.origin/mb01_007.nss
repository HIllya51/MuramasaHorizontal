//<continuation number="550">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_007.nss_MAIN
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
	#ev140_�ҏ��¤��ħ��_a=true;
	#ev140_�ҏ��¤��ħ��_b=true;

	#bg060_�ҏ��¾���_01=true;
	#ev140_�ҏ��¤��ħ��_a=true;
	#ev140_�ҏ��¤��ħ��_b=true;
	#bg023_��Դ̫�μ�_03b=true;
	#bg037_����������`��a_01=true;
	#bg031_��ᦌm����_01=true;
	#ev139_�y�򚢺�_a=true;
	#bg058_�ҿ�c_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName

	//��С���
	//���������ǲ٤򚢤��Ƥ���ʤ顡"mb01_007a.nss"
	//������֦�򚢤��Ƥ���ʤ顡"mb01_007b.nss"
	//$GameName = "mb01_007a.nss";
	//$GameName = "mb01_007b.nss";


//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

//�룺�����餯���ˤȤ⚢���Ƥ��ʤ����`�����붨����ޤ��Τǡ�"mb01_008.nss"

	if($�ٚ��� == true){
		$PreGameName = $GameName;
		$GameName = "mb01_007a.nss";
	}else if($����֦���� == true){
		if($�y�Ǻ�����֦����==true){$PreGameName = $GameName;$GameName = "mb01_008.nss";}
		else{$PreGameName = $GameName;$GameName = "mb01_007b.nss";}
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_008.nss";
	}

}

scene mb01_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_006.nss"


//�������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg060_�ҏ��¾���_01.jpg");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("�}������", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 500, null, true);

	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb01/0070010a00">
��Բ���¡�������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070020a02">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ů����ǰ�������ҵ���һ����Ժ������˵�����ر�
���������ر��ΰ��
����Ȼ���йŶ���������Ϊ������ɲ֮һ��

������˵�ΰ����ˣ�����ɮ�¶���������
���䲻�����������¡������������ֳ�����������ȴ��
���޷��񶨡�

����֪���ǲ�����Ϊ�⸽��������ɲ������Ե�ʣ�����
����������ɽ��һ�����¡��ڶ�Բ���¡����ľ����¡�
�����Կ�������ƽ���˼�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070030a02">
����ǰ�����׾�������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070040a00">
���������𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//�룺������һ������090930��
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070050a02">
���������ǵġ�
������ּ���ȫû�й�ϵ����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070060a02">
�����������ƺ�ÿ�ܶ����ΰݡ�
˵����ÿ�춼����
������һ������Ϊ�����Ժ�����Ų���ˡ���
���ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070070a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ҿ���һ���Աߵ�ʯ����
��������������

��������ү��
������ʮ���������ĵĲö����������Ժ�����𡣿���˵
ʮ�ֺ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb01/0070080a00">
���������һ�����ϸ�ɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070090a02">
���ǰ���
�����۶��ˡ������ǶԼ�����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070100a00">
������ݼ�һ�Ρ�
�������㣬��֪�������Ǹ�ֵ���𾴵��ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070110a02">
��лл��
��������������Щ����ʶ�ն������Ļ���˵��
�����ܽ������Ǽ����ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070120a00">
�������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ��û�м��ˡ�
������������ʲôʱ��Դ������ж��š�

��Ϊ�Լ���ʧ�Ըе�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070130a02">
�������������Ժ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070140a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070150a02">
����Ϊ�������ʱ�򣬸�������¶��һ������
�ı��顣
�������ڷ�����ʲô���������Ǳ��ˡ���ŭ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070160a02">
������û��һ���ǿ��ĵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ����������������Ƶ��૵��
��ͻȻ�䣬�ҿ����˻þ���

��һ�����˵ı�Ӱ��
�����������������������˿��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070170a02">
�������������ˡ�
��������Ϊ���¶��������ս����
��������ġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070180a02">
�����Բ�����һ��ʹ��ı��顣
��������������ʱ�ž������ᡣ��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070190a02">
������Ҳһ�����ᡣ
���͸���һ������������˵������Ҳ�������
�����ĵĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-30, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	Move("@StR*", 0, @30, @0, null, true);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����Ů�ع�ͷ����
�������ҡ�

���������Ƶ�Ŀ�⡣
�������������Ƶ�Ŀ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070200a02">
���ն���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070210a00">
��һ��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070220a02">
��������֪������ƭ�˵ġ�
�����Ǻ��޵���Ķ�թ
������֪������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070230a02">
����Ϊ�ն������ǡ���
������ֵ���������ˡ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070240a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070250a02">
�����ǡ����Բ���
����֪��Ϊʲô�����޷��������š�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070260a02">
�����������ʸ������
��������ȷ�ϣ��Ҿ��޷����ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070270a00">
��һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����һ˲�䡣
���ҵ��������������ء�

������ֹ����
���������ڴ���ʲô��

����֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070280a02">
����ش��ҡ�
���������ǲ�����ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070290a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070300a02">
���㡭����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ħ��һ˲��ʾ
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev140_�ҏ��¤��ħ��_a.jpg");
	Wait(10);
	FadeDelete("�}�ţ�", 50, true);

	SetFwC("cg/fw/fwһ��_ŭ��c.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070310a02">
��ɱ������֮�˵����顣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ħ����å�
//��˲�g�ۥ磻�ȥ�����
//���ӣš����Q������˺Ϥ碌�ƾ��ڻ���ؑ���
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev140_�ҏ��¤��ħ��_b.jpg");
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	WaitKey(300);
	Fade("�}ɫ��", 100, 1000, null, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se��Ȼ_��_�R��02");
	CreateSE("SEL01","se��Ȼ_ˮ_����01_L");
	MusicStart("SEL01",3000,500,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�}�ţ�");
	FadeDelete("�}ɫ��", 600, true);


	Wait(1500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb01/0070320a00">
������Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Щ�¡�
�����֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070330a02">
����ѩ���
���Ǹ�Ʀ��˵�ġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070340a02">
����˵�ն�������ֻ�Ǹ�ɱ�˷�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070350a02">
����˵����Ϊ�����Ǻš�������ս������
��ɱ�˺ü���������ˡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070360a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070370a02">
����ƭ�˵İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ֱ����������ߣ��������ҡ�
�������ҡ�

���������ҡ�
����Ϊ���ţ����Բź��¡�

��Ϊ���̵Ŀֲ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070380a02">
�������������ƭ�˵ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070390a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070400a02">
����˵��
����˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ԡ��ǲ�����ġ���
���������˵��һ���ͻ����š�

��������ϸ�ı�⡣
��ֻҪ�������㹻�ˡ�

��ֻҪһ�仰��һ���ͻ������ҡ�
��ֻҪ����һ�仰��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����¾����`��
//���������ˡ�
//��������ݳ�����ǥե饰������ޤ���
	SetVolume("SEL01", 500, 1, null);

	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	Delete("�}����*");

//��������ݳ�����һ�¡�
	CreateTextureSP("�}����", 100, Center, Middle, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	StL(1000, @-60, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStA(0,true);
	SetTone("�}����", Monochrome);
	SetTone("@StL*", Monochrome);
	CreateTextureSPmul("�}�ݚ�¾", 2000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Delete("�}�ݰ�д");
	Wait(10);
	Fade("�}ɫѪ", 50, 0, null, true);

	Wait(50);

//��������ݳ����ڶ��¡�
	Fade("�}ɫѪ", 0, 1000, null, true);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03b.jpg");
	StR(1100, @-30, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StCR(1000, @-150, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(0,true);
	SetTone("�}����", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("�}�ݚ�¾", 2000, Center, Middle, "cg/anime/Right/blood_B_7.png");
	Wait(10);
	Fade("�}ɫѪ", 50, 0, null, true);

	Wait(50);

//��������ݳ��������¡���������ե饰���٤Ƿ�᪡�
	Fade("�}ɫѪ", 0, 1000, null, true);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");
	StL(1100, @30, @0,"cg/st/st��·_ͨ��_˽��.png");
	StCL(1000, @150, @0,"cg/st/st��_ͨ��_˽��.png");
	FadeStA(0,true);
	SetTone("�}����", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("�}�ݚ�¾", 2000, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Wait(10);
	Fade("�}ɫѪ", 50, 0, null, true);

	Wait(50);

//��������ݳ����ڣ��¡���ɫ���Ȥ��ҥ���Τ����ݳ��o����
//��������ݳ����ڣ��¡��r����Ф��ҥ���Τ����ݳ��o����

//��������ݳ����ҥ�������֦�򚢤��Ƥ���ϡ�
	Fade("�}ɫѪ", 0, 1000, null, true);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	StR(1100, @120, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStA(0,true);
	SetTone("�}����", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("�}�ݚ�¾", 2000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Wait(10);
	Fade("�}ɫѪ", 50, 0, null, true);

	Wait(50);

//��������ݳ����y�ǥ饹�ȡ�
	Fade("�}ɫѪ", 0, 1000, null, true);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
	SetTone("�}����", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("�}�ݚ�¾", 2000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	DeleteStA(0,true);
	Wait(10);
	Fade("�}ɫѪ", 50, 0, null, true);

	Wait(50);

	Fade("�}ɫѪ", 200, 1000, null, true);

//��������ݳ���Ԫ�λ���ˑ��롹
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}Ѫ", 5000, "#CC0000");
	OnBG(100,"bg060_�ҏ��¾���_01.jpg");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("�}������", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 500, null, true);

	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	WaitKey(500);

	SetVolume("SEL01", 2000, 500, null);

	FadeDelete("�}Ѫ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����һ����������޶á�
��ֻҪ˵һ�仰�ͺá�

���������
��˵�ó��ڵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb01/0070410a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070420a02">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070430a02">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070440a02">
��Ϊʲôһ�仰����˵����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070450a00">
�������ҡ�����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070460a02">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��˵������˵�Ҳ�֪����
��˵������˵���Ǻ�˵�˵���

������˵�ͺá�
��ֻҪ����˵���Ͳ���ʧȥ�����Ů��������

�����ܼ�������Ŀǰ�Ĺ�ϵ��
�����ԡ�

��˵��

��˵�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mb01/0070470a00">
����ɱ�˷�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070480a02">
��������


{	SetVolume("SE*", 5000, 0, null);
	SoundPlay("@mbgm32",3000,1000,true);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0070490a00">
��ѩ���һ��˵���ˡ�
���Ҳ������˺Ͷ��ˡ���


//��������
<voice name="����" class="����" src="voice/mb01/0070500a00">
���һ�������ȫ��ɱ�⡣
��ֻ�Ǹ�ɱ�˷����ѡ���


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0070510a02">
��ƭ�ˡ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����
/*
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("�}�����������L", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("�}�����������L","�}�����������L");
	Fade("�}�����������L", 0, 0, null, true);
	SetAlias("�}�����������L", "�}�����������L");
	Request("�}�����������L", Lock);

	Rotate("�}�����������L", 0, @-60, @0, @0, null,true);
	Zoom("�}�����������L", 0, 3000, 3500, null, true);

*/
	CreateTextureEX("�}����", 5000, Center, Middle, "cg/bg/bg058_�ҿ�c_01.jpg");
	Fade("�}�����������L", 2000, 1000, null, false);
	Fade("�}����", 2000, 1000, null, true);
	Delete("�}������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����������ѵ���Ů�Ľк�����
����������������������ؼ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mb01/0070520a00">
���ǵ������۷���
���ں�Ұľɽ�����֮ʱ�������ȵ�������
�ꡣ��


//��������
<voice name="����" class="����" src="voice/mb01/0070530a00">
������ɱ��������


//��������
<voice name="����" class="����" src="voice/mb01/0070540a00">
�����ǵ�����ҵڶ����������Ǹ�С������
�������и�Ϻ�����ˣ�����������Ů����


//��������
<voice name="����" class="����" src="voice/mb01/0070550a00">
�����Ƕ�����ɱ�ġ���

</PRE>
	if($�ٚ��� == true){
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else if($����֦���� == true){
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else{
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}


}


..//������ָ��
//��С���
//���������ǲ٤򚢤��Ƥ���ʤ顡"mb01_007a.nss"
//������֦�򚢤��Ƥ���ʤ顡"mb01_007b.nss"


//���x�k֫���`��
scene mb01_007.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ٚ���","����֦����");
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
//���������ǲ٤򚢤��Ƥ���ʤ顡"mb01_007a.nss"
				$GameName = "mb01_007a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������֦�򚢤��Ƥ���ʤ顡"mb01_007b.nss"
				$GameName = "mb01_007b.nss";
		}
	}
}