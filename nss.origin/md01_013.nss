//<continuation number="1230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_013.nss_MAIN
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
	#bg011_��������_01a=true;
	#ev001_�y�Ǻ��¼�����`����=true;
	#ev139_�y�򚢺�_a=true;
	#ev101_�ץ��`��_c=true;
	#ev106_���w��Ҋ�¤�����_d=true;
	#ev112_һ���򤪊������ä��������=true;
	#ev117_��`�����龰_a=true;
	#ev123_�󄇤�֤ĥ��`���å�����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_014.nss";

}

scene md01_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_012.nss"

//���Ф���
//���O�z�����������ӣ�
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg011_��������_01a.jpg");
	CreateSE("SE01","se�ճ�_����_���_��07");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SoundPlay("@mbgm22",0,1000,true);

	WaitKey(1500);

	StR(1000, @30, @200,"cg/st/3d����֩��_���.png");
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md01/0130010a01">
��������Ȼ�㻹����Ҫ��ɫɫ������ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130020a00">
������ôҲ�����ˡ�
����ֻ��ͻȻ֮���벻��������ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130030a01">
���������
���ǣ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130040a00">
����Ϊ����������࣬���԰����������

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130050a01">
������������

//��������
<voice name="����" class="��������" src="voice/md01/0130060a01">
�����������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ��٤�
	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������侲֮�����ٴα����������������á�
����Ϊ���ղŵ���������ĵط��ƺ��ֱ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md01/0130070a01">
���������������£�֮ǰһ�ζ�û�����ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130080a00">
����Ϊ����û��Ҫ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130090a01">
���š�
����ʹ���Ų��ܣ�֮��Ҳ����ġ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130100a00">
���������Ҹı������ˡ�
����������һֱ��Ҫ�ı䡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130110a01">
����
����ô���£���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130120a00">
����Ϊ���ߵ�״̬��������ΪӦ�øı䡣
������������ġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130130a00">
��Ϊ�˻������Ǻš���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130140a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130150a00">
����������״���������޷�սʤ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130160a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130170a00">
��������ʵ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130180a01">
��������Űɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130190a00">
���ǽ����ļ�һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ǹ�ʱ���߾͸õ���Ŀ��ľ��硣��ϸ�ĺ������
�������߲������ֱ仯������ͬ��Ŀ��Ӧ���ǲٿ��ߵ�
ָʾ�����в�����Ӧ��ʱ����С����

�������ܵؽӽ�<RUBY text="Zero">��</RUBY>��
����˵������ΪֹҲû���˴ﵽ���䶥�塣������֪��
�����Ǹ�������ڶ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md01/0130200a00">
�����Ǻ��ƺ������ˡ�
����Ȼ��֪����ô�����ġ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130210a01">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130220a00">
��������ȣ����ǵ�ʱЧ��Ҫ���Ӻܶࡣ
���������ǡ���<RUBY text="����������">�����˲��</RUBY>�ͱ������ˡ���

//��������
<voice name="����" class="����" src="voice/md01/0130230a00">
��ֻҪ������Ʋ���أ�����ս�����ٴΣ����
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130240a01">
��������˵��
�������������ǰ�Ϳ��ǹ��ˡ���

//��������
<voice name="����" class="��������" src="voice/md01/0130250a01">
������Ӧ��������ϵͳ�ĵ��������ơ�
�����⻹�йؽڲ��ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130260a00">
��ֻ�����Ŭ����Ӧ�����޷�����İɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130270a01">
���������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130280a00">
���ļ�һ�£��ǲٿ��ߺͽ��еĿ��⡣��

//��������
<voice name="����" class="����" src="voice/md01/0130290a00">
���ǶԶ���<RUBY text="����">����</RUBY>�����ۡ���
��Զ���ʣ�������ʡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130300a01">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130310a00">
�����ԡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130320a00">
���㲻��������������ң�ֻҪ��Ϊ���߾Ϳ�
���ˡ�
������һ���ʹ���㡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130330a01">
������������

//��������
<voice name="����" class="��������" src="voice/md01/0130340a01">
�����෴�ɡ�
����ֻҪ��Ϊ�ҵ�����Ϳ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ԡ�
�����Ǿ��������ۡ�

������Ϊֹһֱ��ˡ�
�����ҡ���һ�δΰܸ����Ǻš�

�����뵽��Ϊֹ��
����ֹ���Ǻţ�������ֹ�Ƿ����ѣ���������Ҫ�����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md01/0130350a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130360a01">
�����������ظ����ٴ�Ҳһ����
�����ֶԻ�����

//��������
<voice name="����" class="��������" src="voice/md01/0130370a01">
���㲻���ò�����Ҳһ��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130380a00">
���š�
�����ԣ��ʹ��������Э�ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130390a01">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130400a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����02");
	MusicStart("SE01",0,1000,0,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ҷ��ҵĽ��е�ͷ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/0130410a00">
�������ף�������Ǻŵ�ս����
�Ǿ����޷��������˵ġ�
���Ҳ�����˵�����Ϊ�����ˡ���

//��������
<voice name="����" class="����" src="voice/md01/0130420a00">
�����������Ͽ������־����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130430a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130440a00">
����Ҳϣ�����ܹ��Ͽɡ�
����ս������Ҳ�޷��������ˡ��ұ���Ҫ��ֹ
�⡭����

//��������
<voice name="����" class="����" src="voice/md01/0130450a00">
�������ˣ�������
���Ͽ��ҵ���־�ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130460a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130470a00">
���ҵ�ϣ��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������Ӧ�û���ʲô�仯��

�������Ƿ���������Ρ�
�����෴�������ܷ����������ã����ǻ����Ͽ����
�¡�

�������ҵ���־��������ս�����������
������Ҳ�Դ�������־��������ս����

�����ǲ��ַ��Է�����־���������ء�

�����Ǹø���������һ��ġ�
�������������Ŭ���öԷ�����֮ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md01/0130480a01">
�������������塣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130490a00">
������Ϊ�С�
���������Ǳ�Ҫ���¡���

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130500a00">
��Ϊ�����Һ��㹲ͬս������

{//������äȄӓe
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130510a01">
������������Ϊֹ������Ҳ��һ��ս���İɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130520a00">
�������ǵ���ֻ��<RUBY text="����">����</RUBY>ս�����ѡ�
������Ϊֹ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130530a00">
����û���Ͽ��㣬��Ҳ��һ����
������ֻ��������������⣬������ƭ������
������½���װ�ס���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130540a00">
����ΪҪ�򵹹�ͬ�ĵ��ˣ����Բ���ǿ��Ϊ��
���ߵ����ӡ���
�����ǣ�ȴ�޷��������Ǻš���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130550a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130560a00">
������սʤ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130570a00">
��Ϊ��ʤ����������
������������붼���ԡ�����Ҫ�������ҵ���
����Ҳ���ԡ���ֻ�ǣ�������Ҳ���Ų�������
����־����ϣ�����Ͽɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130580a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ٴ�����
���������д�����ֻ������ĳ�Ĭ��

����Ȼ������̫���˰ɣ������̫���ˡ�
����Ϊ���ߣ��Ҹðѽ��е����Լ�������һ�룬������
����ȴû�о�������µ����е��ںޡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md01/0130590a01">
������ΪʲôͻȻ˵���ֻ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130600a00">
����Ϊ��֪���ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130610a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130620a00">
���཭���������ҿ������Լ���ǰ�Ļ��Ρ���
���ǻ���Ҳ��������Ĺ�ȥ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130630a01">
��!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130640a00">
������Ϊ�Լ����˱�Ǹ���¡�
�����⿴�����˵���������Ⲣ���ұ��⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130650a00">
����������ս�������ɡ���
���㲻�����õ����ɣ������Ҳ֪���ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130660a01">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130670a00">
����Ҳ֪���ˣ����Ǵ���һ�岢�������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ƶ���֡�
�������������䣬����ʵ�ǽ���ȴ��������ƽ����ֿԸ
����

���뵽����ɶ�ȥ����ĸ���������ҵĺ���Ҳ��ӿ����
�����ǣ����Ȼ���Ǵ����Թ�ޡ��Ҹе�����Ҳ������
ĳ�ֿ��µĶ�������Ҳ������û��ȥ���뿼�ǣ�������
Ʋ��һ�ߡ�

�����ң�������������û����������������������<k>
��Ҳ�޷���ȫͬ�⡣

����Щ�������޷���ȫ���ܡ�

������������ˡ�
�������ϱ���������ȫ���ӻ��Ŀ����ڣ����������־�
����ȥ��ս֮�⣬��ȫ�Ҳ�������ƽ��ս�ҵ�ϣ���ɡ�

���ڿ����������龰������ڣ���֪�����ƶ��������
�����м��е�����˼�

��ͬʱ������˼�����µģ�������ҽ�ֵ��ź���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md01/0130680a00">
������������Ҳϣ�����ܹ����������˽ᡣ
������������ġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130690a00">
���������Ͽ������־����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130700a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130710a00">
������ͬ���Ͽ��ҵ���־�𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130720a01">
�����а�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ������������}��ʾ�ˑ���

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md01/0130730a00">
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130740a01">
���ҵ��뷨����ı䡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130750a00">
���Ҳ�������ı��뷨��
����ֻ��ϣ�����Ͽɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130760a01">
���Ҳ��Ͽɡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130770a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130780a00">
�����Ǵ�����
�����Ǳ���ʤ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130790a00">
�����Ǳ����ǿ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130800a01">
���š�
����Ҳ��Ϊ�б�Ҫ�ļ�һ�¡���

//��������
<voice name="����" class="��������" src="voice/md01/0130810a01">
�������������ҵ���־��
�����Լ�����־˯ȥ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130820a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���Ҽ縺�����κ����񣬲��ܽ������ˡ�
����������縺�����κ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md01/0130830a01">
������
������������

{	SetVolume("@mbgm*", 1000, 0, null);}
//��������
<voice name="����" class="��������" src="voice/md01/0130840a01">
�����������޹ء���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130850a00">
��ʲô��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130860a01">
���ұ���������������

//��������
<voice name="����" class="��������" src="voice/md01/0130870a01">
�������Ѿ�û�취�ˡ�
����Ȼ��˵�������ֻ�����û�취����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("�}�ե�å����", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md01/0130880a00">
������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130890a01">
���������Ұ�����
��������һ��<RUBY text="ĸ��">����</RUBY>��<RUBY text="�⹫">ʼ��</RUBY>�����������¡���

//��������
<voice name="����" class="��������" src="voice/md01/0130900a01">
��������Ϊ�������Կ��ƶ�����������ض�Ŀ
��Ϊ��������ģ����Բ��ܳ�Ϊ���ܡ�
��Ϊ�˴ﵽĿ�ġ�����

//��������
<voice name="����" class="��������" src="voice/md01/0130910a01">
��<RUBY text="����������������������������">���Լ��Ĳٿ���Ҳ���Է�������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф���
	CreateSE("SEL01","se����_늓�_���02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("�}�ե�å����", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md01/0130920a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130930a00">
�����ѵ�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130940a01">
���㿴�����ҵĹ�ȥ��Ӧ��֪���˰ɡ�
����Ҳ��������������

//��������
<voice name="����" class="��������" src="voice/md01/0130950a01">
���������ĵ��£���Ҳ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 1, null);

//���ե�å���Хå����y�ǺŤξ���AȾ
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 100, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��
��
��������������������<RUBY text="Mental Pestilence">�������ۡ�Ⱦ</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");

	SetVolume("SEL*", 1500, 1000, null);

	FadeDelete("�}��ܞ", 600, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md01/0130960a00">
������ͣ�°ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0130970a01">
������������

{	FwC("cg/fw/fw��������_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0130980a00">
���ǲ����ϳ�����ֹ������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ԡ����Ǹ���ȥ�����У��������������Ѿ������
�ϸ��ӡ�ˡ�
�������͵����������ң������ִ����޷���ȵİɡ�
�Ǹ�����Ӧ���Ǿ��Եġ���

������������������ڱ����ϡ���û�б��ֳ��κζ�ҡ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md01/0130990a01">
�����ǡ����ܾ���ǰ�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0131000a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0131010a01">
�������Ǹ�ʱ����û����ɫ�����µĶ�����ֻ
���ҵ�װ�׺�ʹ����
�������־��ð��£�
�������Ҳ���Ǻ����׵ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//���AȾ���kɢ�������`��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSPmul("�}��", 4000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md01/0131020a00">
���ء���?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0131030a01">
���ԡ�
���Ǻܼ򵥵ġ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`��ҕ����ࣿ
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSPmul("�}�ݲ��y", 1000, Center, Middle, "cg/bg/bg011_��������_01a.jpg");
	Zoom("�}�ݲ��y", 0, 1500, 1500, null, true);
	DrawEffect("�}�ݲ��y", 0, "Ripple", 400, 400, null);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��
//��������
<voice name="����" class="��������" src="voice/md01/0131040a01">
������������������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���������ҵ���־�����ҵ�����������
�����ǡ�����������־��

��������Ⱦ������������
�����������ܲ���޷��ֿ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��
//��������
<voice name="����" class="��������" src="voice/md01/0131050a01">
������������������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����ɲ���<RUBY text="����">�ڲ�</RUBY>��ʴ���ҡ�
��û���ų��İ취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��
//��������
<voice name="����" class="��������" src="voice/md01/0131060a01">
���������������û�б�Ҫ����

��
//��������
<voice name="����" class="��������" src="voice/md01/0131070a01">
�������������ҡ���û�б�Ҫ����

��
//��������
<voice name="����" class="��������" src="voice/md01/0131080a01">
�����������������ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������ᤤ�����ɫ��
//��������ݳ����������ݤ���ǿ����롹
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	Delete("�}�ݲ��y");

//��������ݳ������ᤤ��
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");

	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

//��������ݳ����ץ��`����
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev101_�ץ��`��_c.jpg");
	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

//��������ݳ������w������
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");
	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

//��������ݳ����m���ˣ�Ԓ���项
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

//��������ݳ����m���ˣ�Ԓ���项
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev117_��`�����龰_a.jpg");
	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

//��������ݳ����m���ˣ�Ԓ���项
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev123_�󄇤�֤ĥ��`���å�����.jpg");
	Fade("�}��ܞ", 200, 100, null, true);
	WaitKey(100);
	Fade("�}��ܞ", 200, 1000, null, true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��
//��������
<voice name="����" class="��������" src="voice/md01/0131090a01">
�������������ԡ�������Ĩ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������}���åף�
//�������������ʤ��e�r�äݤ���
//���Ӥ���`�󡣤ʤ������������äݤ������ե�å��塣
//���z��
	CreateSE("SE01","se����_�Υ���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(10);

	CreateMask("�}��", 6000, 0, 0, "cg/data/noize_01_00_0.png", false);
	Zoom("�}��", 0, 1100, 1100, null, true);

	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݾ���", 5110, 212, -96, "cg/st/resize/st����_ͨ��_˽��l.png");
	CreateTextureEX("�}�ݾ���", 5100, 212, -96, "cg/st/resize/st����_ͨ��_˽��l.png");
	Fade("�}�ݾ���", 0, 300, null, true);
	FadeFR2("�}��/�}�ݾ���",0,1000,400,30,@0,30,Dxl2, false);
	FadeFR2("�}�ݾ���",0,300,400,-30,@0,35,Dxl2, false);

	FadeDelete("�}�ե�å����", 100, true);

	Wait(300);

	Move("�}��/�}�ݾ���", 1000, 212, @0, DxlAuto, false);
	Move("�}�ݾ���", 1000, 212, @0, DxlAuto, true);

	Fade("�}��/�}�ݾ���", 300, 0, null, false);
	Fade("�}�ݾ���", 300, 1000, null, true);

	Wait(300);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");

	Delete("�}��");
	Delete("�}�ݾ���");
	Delete("�}ɫ�\");
	Delete("�}��*");

	Wait(30);

	FadeDelete("�}�ե�å����", 1000, true);

	SetFwC("cg/fw/fw��������_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md01/0131100a00">
��������������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0131110a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ҡ���<k>
��
��������������������<RUBY text="������">������</RUBY>��

���Ǵն����������Ǳ��ˡ�
�������һ��������ҡ�

�����ǣ�Ϊʲô��
����Ӧ���Ǳ����������Ǹ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @-30, @200,"cg/st/3d����֩��_���.png");
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @30, @0, null, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/md01/0131120a01">
�������ء�����

//��������
<voice name="����" class="��������" src="voice/md01/0131130a01">
��Ϊʲô�����һᣡ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0131140a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0131150a01">
�����������ˣ�
���Ҳ���Ҫ���ˣ���

//��������
<voice name="����" class="��������" src="voice/md01/0131160a01">
����ʹû���㡪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������w��
	CreateSE("SE01","se����_����_�z�i��04");

	DeleteStA(300,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/md01/0131170a00">
����Ҫȥ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0131180a01">
�����ﶼ����ν�ɡ�
���Һ����Ѿ�û��ϵ�ˡ���

//��������
<voice name="����" class="��������" src="voice/md01/0131190a01">
����ȥ�ұ�Ĳٿ��ߡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0131200a00">
����˵ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0131210a01">
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȥ��
	CreateSE("SE01","se����_����_���S01");

	CreateColorSaddP("�}ɫ��", 5000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStA(0,true);
	FadeDelete("�}ɫ��", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������˲����ʧ�ˡ�
����û�������κκۼ�������������Ͳ��������ǰ㡣

�����Ų������������ҵĶ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md01/0131220a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0131230a00">
������ȥ׷��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����׿�һ���߼����õ��������Ľ��ۡ�
�����ڣ��Ҳ��ܺʹ������롣<RUBY text="����">��֮</RUBY>��
���ұ���ȥ׷����

�������ȥ׷��������һ����

�����ǡ���
����ô���ء�

������������û�����ɡ�
�������𳤣������ͷŵ�������Ҳ��Ҫ����ʱ�䡣

�����Ҳ��Ҫ����Сʱ��
�����������ܸ�����?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_014.nss"