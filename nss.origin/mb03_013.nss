//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_013.nss_MAIN
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
	#bg073_���ϴ��F����_01=true;
	#bg001_��b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_014.nss";

}

scene mb03_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_012.nss"

//���\
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg073_���ϴ��F����_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ҹ�߻��ƶ��ж����룬��������֮�ʿ�ʼ�ж���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//������
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ƻ��൱�ֲڡ�
��
������Ǳ�������ܴﵽ�ļ���֮��������ǿϮ����ϡ�

����ֱ���ܳ�Ϊ��ս��
���������ж�ִ�����ǲ��ǰ�ɱר�ҵ��Һ�һ����ʱ��
���ƾ��岻����Ҫ���죬��ƾ��Щ����ԭ���Ͳ�������
��ʲô��������ս��

����νʱ�����ƾ��岻����Ҫ���죬����С��Ļ��׼��
�ù�����֮ǰ��������֮�⡣
����Ϊ������ô���ǣ��������ÿ���Ҳ֪����ƾ�����
Ϯ����ս�ж��еľ��Ӳ�ȡ������֮���ǲ����ܵġ�

��ֻ�е����׵�������С����������ʱ����Ψһ�Ļ�
�ᡣ����������һ��Ҳֵ�û��ɡ�
�������������������صأ����Ҷ���ۼ��˴������ӡ�
Ϯ�����ж�ô���ѡ�

�����ǽ����ټ����Ӷ��ٻ������������Щ����ҡ���
��һ������©����
��
����������Ψһ��ϣ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mb03/0130010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ǳ��������ҷ������Ľ�����
������˵����ս�ƻ����������ڲҰܵ������ֳ�һս��

��������˼����ǣ����û��Σ���С�
�������ϣ����ã����ս���Դ���Ԥ֪��ĸо���ȷ��
������ʤ������<k>�䲢����ˡ����ź����Ҳ����й���
�־����ϵ���ԡ�

����ʶ���ɹ��ʻ�ܵ͡�
��������ˣ��Ȳ����ѵķ��겢������ʹ������Ȼ������
����ս��ʧ�ܶ����Һ�һ�����Լ���������ζ��ʲô��Ҳ
�ό����Ҳ��е�Σ�����ء�

����ɱ���׵��ƻ����ưܣ����±������������κε�
���ꡣ
��
��������������ʧ��Ҳ��ʧ�ܵ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Фդá������Ĥ���
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se����_����_�����Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb03/0130020a00">
������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130030a02">
������������


{	SoundPlay("@mbgm27",0,1000,true);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130040a00">
�����컯��֮�±�Ů�ӱ�ס�����ˣ����˻���
ô��������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130050a02">
�����и���ѽ��
����Ҫ�ǿ��������������ˣ��϶�һ���ߵ���
���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130060a00">
���ǿ϶��ᶳ���ġ��ſ��ҡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130070a02">
��û��ϵ��
�����ڵ����ֲ���Χ�۵����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130080a00">
�������������������ҵĻ��������׼�������
����������


{	FwC("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130090a02">
�����ڿ��Ǵ����Ŷ���������ڴ���Ŷ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130100a00">
�������Ҳž������š�
������������ô����أ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130110a02">
�������ն���������
����ʵ��û�нڲ٣���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130120a00">
���Ų��ǡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130130a02">
����ô����������������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130140a00">
��ֻ�Ƕ��Լ��������������κλ�����ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130150a02">
��������Ҳ���׸����������
�������Ѿ��������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ߴߴ��������߶�ţ�һ���뿪���ҡ�
���������ʵ����½��н�Զ��

{	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	DeleteStR(300,false);}
�����ϣ������ϻ����ˡ�
�����Ƶ��Ҹ�ǰ����Ҫ����ҵĴ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb03/0130160a00">
���������ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130170a02">
��Ҳ��ɡ���


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130180a00">
����������ҵ���������ô�죿��


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130190a02">
����ʱ��˵����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130200a00">
���������ǲ������Ρ���


{	FwC("cg/fw/fwһ��_Ц�b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130210a02">
���Ǻǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130220a00">
�����𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130230a02">
���ǰ���
�����ϵķ�Ҳ��ǿ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130240a00">
�����Ҷ���쵽�ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130250a02">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ٲ��죬����Ҳ�����ˡ�
�������ܸо�������<RUBY text="��������">��������</RUBY>��
��Ȼ������Ϊ������ʽ����֮ǰ�����±��������½���
�ɡ�

�����������µı�Ե����סһ�����Դ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130260a02">
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130270a00">
��������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130280a02">
��û����ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130290a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����е���ŮͻȻð����ôһ�仰��

�����ӡ�
����ǰ��Ϊ�ҹ�����΢Ц���Լ���֪����Ϊ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130300a02">
����Ϊ�ն���������ȥ��Щ������
������û���⡣ֻҪ�����Ŵն�������û�¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130310a00">
������������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130320a02">
��һ����Ӯ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������<RUBY text="����">ʤ��</RUBY>֮���������ҵĲ�����
������仰˵�����ڡ�

����Ů�������ġ�
��ӵ���޹�������������Ϊ�˷�����������꣬��
�����������ҫ�ۡ�

����ʶ�Ŀ��
���߹����ϡ�
��
�����������Ȼ����δ�䡣

����λ��Ů�����������������롣

����������������Ϊ�Ρ���
�����޷����������ֹ��֮���ء�

��Ϊ����Ҫפ���ء�

�����Ĵ�ͣ�����ӵ�����������ǽ��������Ϊ����
������եȡ���ǵ�����������Ψһһλվ������һ����
����豩���Ĳ�ѷǿ�߷�����ս����Ů����
����ͬ���塣������ӡ���֮�ںϡ�

������������һ�е���ǰ��
��Ϊ����ͣ���˽Ų��ء�

���ι�������⡣
����Ů��������ҫ��â������ʲô����

�������ֹ�Գ��ͷ�Ե�<RUBY text="��������">ĳЩ����</RUBY>��
�����ڰ�����������������Ķ�����ȴΪ��������˹�
�ġ�

������Ϊ�Ρ���
</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130330a02">
�����Ǿ�����ֱ��ȥС���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130340a00">
����������
����Ȼ��������������Ҳ������ô˳������


//��������
<voice name="����" class="����" src="voice/mb03/0130350a00">
��ƽʱ�Ļ���Ż��а���ȥС���ۣ������ڿ���
ֻ�о����ô�������ۡ�
���������а��֣������ͨ���ϸ������Ҳ����
���ϰ��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����������ǣ���ĵ��ؾ���ٵ��������ƣ�С������
����������ʽ��սǰ�Ľ���״̬�С�
����Ҫ��·ҵ�ѷ�����

�����е�Ȼ���������Ѳ�߶��ڻ����ǻ�������һ����
��·������û�з�����
�����׵����ǵ������ȷ����˵Ĺ���ʱ��Σ���ԣ���
�Բ������ⷬ����̬�ƵĲ��ְɡ�

���������Ƿ�Ӧ���ȡ�����������������˽�ʵ��֮��
����˵�����жϡ�
������С��������˵�������������Ȼ�İ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb03/0130360a00">
�����ܰ뵺����ȫ����С�����Ĺ�Ͻ֮�¡���
Ϊ���иۿڽ����޷�ʹ�ò�����ȫ�Ŀ��ǡ�
�����ǵĴ����ְ���������


//��������
<voice name="����" class="����" src="voice/mb03/0130370a00">
�������ﵽ���ſ��Գ�����ʿ��֮��ͽ�����ߡ�
������΢����Щʱ�䣬����취�����Ҳ����
���ͨ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0130380a02">
��Ҫ����װ�׺�ֱ�ӷɹ�ȥ�Ļ����������ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0130390a00">
��һ������С����վͻᱻ�����
���ȵ��﹫�����ͻ���ȫ���ڰ�Χ֮�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateStencil("�}����",1000,center,Middle,128,"cg/st/3d�y�Ǻ�_����_���Lb.png",false);
	SetAlias("�}����","�}����");
	CreateColorEX("�}����/ɫ", 1050, "#000000");

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg001_��b_01.jpg");

	Move("�}����", 0, @256, @0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������ʵ���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}����100", 1000, 1000, null, true);
	Fade("�}����/ɫ", 2000, 500, null, false);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0165]
�����������<RUBY text="������">�Ǽһ�</RUBY>������ᱻһ����ɢ��
��
�����ǵ�ȥ��С������һ��Ŀ�ġ�

������֮���������޵ġ����཭���µ����ԣ��Ҳ�û��
���ǡ�
���������ֳ�û�еõ��κ��鱨����ô�����������ҵ�
���ǹ�������

{	FadeDelete("�}����/ɫ", 500, false);}
�������ǣ�С������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_014.nss"