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

scene mb04_022.nss_MAIN
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
	#bg049_�������_סլ��b_02=true;
	#bg074_�˲��ε���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_023.nss";

}

scene mb04_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_021.nss"

//��ȼ�����bg047��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateSE("SEL01","se����_����_ȼ����K��_L");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("�}��ܞ", 2000, true);

//���ƥ����Ⱥ����
	SetNwH("cg/fw/ny�ǣȣѽ�У.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220010e002">
������һȺ�ƻ��ļһ
��û�뵽���Ǿ�Ȼ�Ż��ջ��Լ��ĳ��򡣡�


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220020e004">
��Ҫ�����𣬶ӳ�����


{	NwH("cg/fw/ny�ǣȣѽ�У.png");}
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220030e002">
�����С�
��˾��ķ������ڵз����Ӽ���֮ǰ����
�������ơ���


//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220040e002">
�������ܷŹ���������Щ�һ
���ҵ����ƽ�С�ĵط�����ͻ����
����������ˡ���


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220050e004">
�����ڼ�����޷��������������ĽӴ�����
���������Ҫ��δ�����


{	NwH("cg/fw/ny�ǣȣѽ�У.png");}
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220060e002">
�������������ǰѵ�·�ó�����
������������޷�����Ļ������Ǿ�ǿ��ͻ�ơ���


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220070e004">
��������������
���º���ܻ��ܵ����ѡ�����


{	NwH("cg/fw/ny�ǣȣѽ�У.png");}
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220080e002">
�����ѣ����������ѡ�
���������ڿ��ڣ���Ȼ���ܵ������ˣ���


//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220090e002">
��������һ��ѡ���⡣
����������Ϊ������ٹ��ս��������Ϊ���
�İ�����ս����


//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220100e002">
������һ���أ���


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220110e004">
�����������Ͽ�������Ӧ���Ǻ��߰ɡ���


{	NwH("cg/fw/ny�ǣȣѽ�У.png");}
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220120e002">
�������ϡ��ⲻ�������ŵ���
��û���������ɵ��ǣ�ʹ���������ж��Ĳ�
���Ǳ����ϵ���Щ����������<RUBY text="����">��ʵ</RUBY>����


//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220130e002">
������Ӧ������������ʵ���ж�����


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220140e004">
���ҳ������룬�Լ��ǲ���ѡ����ְҵ��
���ұ�Ӧ�������������ǣ��������˵����С���


{	NwH("cg/fw/ny�ǣȣѽ�У.png");}
//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220150e002">
����ȫû����Ϊʲôû�������أ�
���㻹�����޴�������ô��ʼ�����ɡ���


//������㣯�ǣȣ�ʿ�١�
<voice name="����㣯�ǣȣ�ʿ��" class="����������" src="voice/mb04/0220160e002">
��������Ӣ�µؽ�ǹ�ڶ�׼��Щ���޴�������
���ǰɡ�
������Ψ�������������ܾ������ս��������
�����Ҵ�����ƽ����


{	NwH("cg/fw/ny�ǣȣ���ʿ��.png");}
//������㣯�ǣȣѱ�ʿ����
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220170e004">
�����ס���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("SE*", 2500, 0, null);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

//���ѩ`�󡢤ѩ`�󡣅g�k�|������
//������˺Ϥ碌�Ʊ��Q�����X������`��
//�����������ä���
//���Ф���顣�C�v�|����
//���ˡ��ν~�С����㥢��������
	CreateSE("SE01","se����_����_������L��05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	SetVolume("SE*", 100, 0, null);

//���ե��`�ɥ���
//��bg049����
//���~�С����Q�����X�Σӣš�����h��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateSE("SE01","se����_����_���Q01");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

//����ʿ���ľ�ϥ����ꥹ���衸Ů��������r��
//���褨��ʤ��ä��������Ȥ����������֟o�����
//��˼���Τǵ��������d���i��Ф��ǣϣˡ�

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ܥ����ϡ�God save our gracious Queen,��
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220180e005">
�������������Ҵȱ�Ů����������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}

//��Long live our noble Queen,
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220190e005">
��������Ը��߹��Ů�����ڡ�������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}


//��God save the Queen!
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220200e005">
������������Ů����������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}


//��Send her victorious,Happy and glorious,
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220210e005">
��������ԸŮ�����������޾���ʤ����
�Ҹ����ٹ⡱������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}


//��Long to reign over us,
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220220e005">
��������Ըʢ�����桱������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}


//��God save the Queen!
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220230e005">
������������Ů����������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}

//�������Ƥ椯����˽~�����ˡ�

//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220240e005">
��������


//�������á�
{	CreateSE("SE01","se�ճ�_��_�����Q��02");
	MusicStart("SE01",0,1000,0,1000,null,false);}

//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220250e005">
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä��򤤤��|�򘋤��롣������á�
	CreateSE("SE01b","se���L_�|��_������01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��Who's there!?
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220260e005">
��˭!?��


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220270e138">
��������


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220280e005">
��С����������


//��Go,away
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220290e005">
�����Ա�ȥ����


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220300e138">
��������


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//��Hurry up!
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220310e005">
����㣡��


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220320e138">
��������


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220330e005">
���ɶ����Բ�ͨ��
���ô�ͻ���˵�Ļ�����Ӧ���ǡ�����


//��Ƭ�Ԥ�
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220340e005">
���㣬���Ա�ȥ��
����㣬�뿪�����


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220350e138">
��������


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220360e005">
��������


{//���k�hһ��
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}
//��Go!
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220370e005">
�����ߣ���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220380e138">
��ɱ�˷�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӹ���ʯ��Ͷ����
//�����Ĥä�ʳ�餦
	CreateSE("SE01","se���L_����_Ź��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	FadeDelete("�}�ե�å����", 100, false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220390e005">
��������


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220400e005">
���⺢�Ӿ�����ʯͷ���ҡ�����


{//���k�h�Ѥ�Ѥ�
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);}
//��Fuck a duck!
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220410e005">
�������ɵ���ˣ���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220420e138">
���Ѱְֻ����ң�
�������軹���ң���


//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220430e138">
�������ң���



{//��ʯ�B�A
	CreateSE("SE01","se���L_����_Ź��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	FadeDelete("�}�ե�å����", 100, false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//��Stop!
	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220440e005">
��ס�֣���


{//���k�h
//��ʯ
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);
	CreateSE("SE01","se���L_����_Ź��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	FadeDelete("�}�ե�å����", 100, false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//��Stop,Boy!
	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220450e005">
��ס�֣��������С��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ĥä�ʳ�餦
//���Ϥ��ߤǰk�h
//�������ä��㤤�ޤ�����
//���ӹ��������
//��Ѫ����
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se���L_�|��_ȭ�|�k�h01",1000);
	CreateSE("SE01","se���L_����_Ź��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#CC0000");
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	FadeDelete("�}�ե�å����", 100, false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se����_Ѫ_�����01");
	CreateSE("SE01c","se����_�n��_ܞ��04");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01b");
	WaitKey($�Еr�g);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeDelete("�}����", 1000, false);

	Wait(1500);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220460e005">
��������


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220470e005">
��������


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220480e005">
������ɡ�����


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220490e005">
���ҡ���û������׼���ġ�����


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220500e005">
����ֻ�������������ѣ�


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220510e005">
������ȴʧ�֡�����


//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220520e005">
��������ô�ᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ڤ���Ѫ
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPmul("�}�݄���", 4000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Wait(10);
	FadeDelete("�}�݄���", 600, false);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220530e005">
��������


//����O���ϡ�oh����ͬ��
//��O Lord our God arise,
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220540e005">
��������������������
�����������������������


//��Scatter her enemies,And make them fall
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220550e005">
��������ΪŮ�����¼�����ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0062]
//��������
<voice name="����" class="����" src="voice/mb04/0220560a00">
��һ��Ϊ��Ů����
��һ��Ϊ�˹����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	WaitAction("�}�݄���", null);
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(500,true);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220570e005">
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220580a00">
���������������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220590a00">
�������Ҳ���������㡣
����Ϊ�Լ��������ս����ȷ�����һ������
����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220600a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫѪ", 5000, "#CC0000");
	Fade("�}ɫѪ", 300, 1000, null, true);
	CreateTextureSP("�}��Ѫ", 4000, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");
	WaitKey(200);
	FadeDelete("�}ɫѪ", 600, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb04/0220610a00">
�����䱳��ͬ��Ҳ��<RUBY text="������������">δ�ܾ������</RUBY>��
��һ��Ҳ�ǲ�������ʵ������


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220620e005">
������!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220630a00">
����ɱ�����Ǹ����ӡ�
����һ��ʵ��������ڵġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}��Ѫ", 600, false);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220640e005">
��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220650a00">
�������٣ϣա����ңš��ǣգɣ̣ԣ١���


{	NwC("cg/fw/nw�ǣȣѱ�ʿ.png");}
//������㣯�ǣȣѱ�ʿ�¡�
<voice name="����㣯�ǣȣѱ�ʿ��" class="����������" src="voice/mb04/0220660e005">
���ް���������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�ȥ���ʿ
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);
	ClearWaitAll(2000, 1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb04/0220670a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220680a01">
������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220690a00">
����һ���Ѿ����������˰ɡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220700a01">
���š�
���Ǹ�ʿ����ͬ�鶼�����������н��ˡ�����


//��������
<voice name="����" class="��������" src="voice/mb04/0220710a01">
�������ǡ�������������
���������û�еĻ�������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220720a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220730a01">
����Ŷ�����Щ���ܹ���Ȱɡ�
����Ϊ������ֹ��һ���ֵ�ʿ��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220740a00">
��ֻ��<RUBY text="������">��Щ��</RUBY>���ѡ�
�����ǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220750a00">
��������û�ܾ���Щ�ˡ�
��û���ü�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220760a01">
�������ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ͷ����űߡ�
����Ҳ���ᶯ�����к���

���Լ���Զ�������ڵ��ϵ�һ����Ů��
��
����Щ�ˣ��Ҷ�������������ȥС��;����ͣ�����Ŀ�
�ȵ����һ���ˣ���񱻾�����ս��֮�С�

����֪��������������ԭס�񣬻��Ǳ��ѵ��˵ء�
����������Σ����������ڴ˵أ�<RUBY text="����������">�ս�������</RUBY>��

�����ǲ����ˡ�
��
��������仰�������������еĸ��顣

��ͬʱ������ͷ�Ļ�����������顣
���Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/0220770a00">
�������㣬Ϊ�ζ�ս����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220780a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������û�лش�
���Ⲣ���Ƕ��������ʡ�

�������ʵĶ���Ҳû���κλ�Ӧ��
�������޷������ش��ˡ�

���к�һ�������أ�ſ�ڵ��ϡ�
����Ϊ���Ѿ��ӻ����������࣬��Ϊ��һ��ʬ�塣��Ȼ
��������

��û���˻ش��ҵ����ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb04/0220790a00">
��Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ظ�������Ӧ������⡣
��
��Ϊʲô����û�����ߣ�

��Ϊʲô������ʯ�飿
��Ϊʲô��<RUBY text="����������">Ҫ������ִ</RUBY>��

���ǳ���˫�ױ�ɱ�ķ�ŭ��
��
��������˵��ͨ�ˡ�

�����ǣ����������Ļ��͸�Ӧ�������ˡ�
����Ȼ֪�������޷�սʤ�����Ǿ����������֮����
Ѱ�ٸ���Ļ��ᡣ�����źϺ�����

������Ϊʲô����
����ô³ç�����������أ�

����������֮�����޷����͵ġ�

����ô����
����ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��˲�ꡢһ�����ӹ�
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);


	StR(7000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(0,true);
	SetTone("@StR*", Sepia);
	CreateTextureSP("�}���뱳��", 6000, Center, Middle, "cg/bg/bg074_�˲��ε���_01.jpg");
	SetTone("�}���뱳��", Sepia);
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 200, null, true);

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

	SetNwC("cg/fw/nw�ӹ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220800e138">
���㲻�����𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0220810a02">
���ǰ���
�����е㺦�¡���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220820e138">
�����㻹��Ҫս���𣿡�


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0220830a02">
���š���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb04/0220840e138">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0220850a02">
����Ϊ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	DeleteStA(0,true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/0220860a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������������
��������Ǹ�һ��׷���������ꡣ

�����Բ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb04/0220870a00">
��̫ҫ���ˡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220880a01">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220890a00">
��һ����
��������壬̫��ҫ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����Ϊ�������Ĺ�ԡ�
������˿����١�

�����߱��������㿹���ǿ����־���ˣ�
�����ᱻ�Ƿݹ�ԡ�������<RUBY text="����">�յ�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb04/0220900a00">
����������֪�����ڵ������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220910a01">
��������֪���ġ�
������Ҫȥ�����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220920a00">
���ǰ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220930a01">
�������������Ѿ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220940a00">
����֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����̧��һֻ�֣�����˽��еĻ���
���������������򵥵�һ��������������ǰ���˿�����
��Ѫ��

���������������Ѿ�̫�����ء�
�������������Ǹ����ϳ�������塪�����巵
������ֱ����������֮ǰ��ս�������ܵ��ˣ������״
����ԶԶ�����������ܳ��ܵļ��ޡ�

��������վ���š�
����ʹ�Ѿ���Խ�˼��ޣ�Ҳ�Ծ�վ���š�

���Ⲣ����ʲô�漣��
���������Ϊֻ��Ƿծ��ƴ���ض����ծ�ˣ�һ����Ҫ
�ӳ���ծ���޵���Ϊ��

��ĩ·����ע����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mb04/0220950a00">
�����ڵ��µĻ����Ҿ��޷��������ˡ�
��<RUBY text="����������">�޷�������</RUBY>����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220960a01">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220970a00">
������֮ǰ�һ���Ҫȥ��ɵ����顣
������һ���¡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/0220980a01">
������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0220990a00">
���ң���


//��������
<voice name="����" class="����" src="voice/mb04/0221000a00">
��Ҫ�����һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_023.nss"